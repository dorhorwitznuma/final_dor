(function () {
  'use strict';

  const STORAGE_KEY = 'garden-planner-state-v1';
  const SVG_NS = 'http://www.w3.org/2000/svg';

  const ITEM_TYPES = [
    {
      id: 'concrete',
      label: 'משטח בטון',
      color: '#d6d8d6',
      shape: 'rect',
      defaultWidth: 3,
      defaultHeight: 2,
      category: 'hardscape',
    },
    {
      id: 'lawn',
      label: 'דשא',
      color: '#7fc96f',
      shape: 'rect',
      defaultWidth: 4,
      defaultHeight: 3,
      category: 'green',
    },
    {
      id: 'hedge',
      label: 'גדר חיה',
      color: '#2f7d45',
      shape: 'rect',
      defaultWidth: 4,
      defaultHeight: 0.7,
      category: 'green',
    },
    {
      id: 'tree',
      label: 'עץ',
      color: '#3f8f45',
      shape: 'circle',
      defaultWidth: 1.6,
      defaultHeight: 1.6,
      category: 'green',
    },
    {
      id: 'flowerbed',
      label: 'ערוגת פרחים',
      color: '#f2a6c6',
      shape: 'rect',
      defaultWidth: 2.5,
      defaultHeight: 1,
      category: 'green',
    },
    {
      id: 'path',
      label: 'שביל',
      color: '#c8b89a',
      shape: 'rect',
      defaultWidth: 1.2,
      defaultHeight: 4,
      category: 'hardscape',
    },
    {
      id: 'deck',
      label: 'דק',
      color: '#bf8f5f',
      shape: 'rect',
      defaultWidth: 3,
      defaultHeight: 2.5,
      category: 'hardscape',
    },
    {
      id: 'pergola',
      label: 'פרגולה',
      color: '#e6c47a',
      shape: 'rect',
      defaultWidth: 3,
      defaultHeight: 3,
      category: 'hardscape',
    },
    {
      id: 'fence',
      label: 'גדר',
      color: '#9b8b7a',
      shape: 'rect',
      defaultWidth: 5,
      defaultHeight: 0.25,
      category: 'boundary',
    },
    {
      id: 'water',
      label: 'נקודת מים קיימת',
      color: '#2f9bd8',
      shape: 'circle',
      defaultWidth: 0.45,
      defaultHeight: 0.45,
      category: 'water',
    },
  ];

  const typeById = new Map(ITEM_TYPES.map((type) => [type.id, type]));

  const refs = {};
  const state = loadState();
  let toastTimer = null;

  document.addEventListener('DOMContentLoaded', init);

  function init() {
    cacheRefs();
    populateTypeSelect();
    bindEvents();
    syncFormsFromState();
    render();
  }

  function cacheRefs() {
    refs.svg = document.getElementById('plan-svg');
    refs.plotForm = document.getElementById('plot-form');
    refs.plotWidth = document.getElementById('plot-width');
    refs.plotHeight = document.getElementById('plot-height');
    refs.itemForm = document.getElementById('item-form');
    refs.itemType = document.getElementById('item-type');
    refs.itemWidth = document.getElementById('item-width');
    refs.itemHeight = document.getElementById('item-height');
    refs.itemX = document.getElementById('item-x');
    refs.itemY = document.getElementById('item-y');
    refs.itemLabel = document.getElementById('item-label');
    refs.statusText = document.getElementById('status-text');
    refs.selectedEmpty = document.getElementById('selected-empty');
    refs.selectedDetails = document.getElementById('selected-details');
    refs.selectedActions = document.getElementById('selected-actions');
    refs.deleteSelected = document.getElementById('delete-selected');
    refs.summaryGrid = document.getElementById('summary-grid');
    refs.exportPlan = document.getElementById('export-plan');
    refs.clearPlan = document.getElementById('clear-plan');
    refs.toast = document.getElementById('toast');
  }

  function populateTypeSelect() {
    ITEM_TYPES.forEach((type) => {
      const option = document.createElement('option');
      option.value = type.id;
      option.textContent = type.label;
      refs.itemType.appendChild(option);
    });
  }

  function bindEvents() {
    refs.plotForm.addEventListener('submit', onPlotSubmit);
    refs.itemForm.addEventListener('submit', onItemSubmit);
    refs.itemType.addEventListener('change', applySelectedTypeDefaults);
    refs.svg.addEventListener('click', onCanvasClick);
    refs.deleteSelected.addEventListener('click', deleteSelectedItem);
    refs.exportPlan.addEventListener('click', exportPlan);
    refs.clearPlan.addEventListener('click', clearPlan);

    document.querySelectorAll('[data-attach]').forEach((button) => {
      button.addEventListener('click', () => attachItem(button.dataset.attach));
    });

    document.querySelectorAll('[data-nudge]').forEach((button) => {
      button.addEventListener('click', () => nudgeSelected(button.dataset.nudge));
    });
  }

  function loadState() {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (!raw) return defaultState();

      const parsed = JSON.parse(raw);
      return {
        plot: {
          width: numberOr(parsed.plot?.width, 12),
          height: numberOr(parsed.plot?.height, 8),
        },
        items: Array.isArray(parsed.items) ? parsed.items.filter(isKnownItem) : [],
        selectedId: null,
        draft: null,
      };
    } catch {
      return defaultState();
    }
  }

  function defaultState() {
    return {
      plot: { width: 12, height: 8 },
      items: [],
      selectedId: null,
      draft: null,
    };
  }

  function isKnownItem(item) {
    return Boolean(item && typeById.has(item.type) && item.width > 0 && item.height > 0);
  }

  function saveState() {
    localStorage.setItem(
      STORAGE_KEY,
      JSON.stringify({
        plot: state.plot,
        items: state.items,
      })
    );
  }

  function syncFormsFromState() {
    refs.plotWidth.value = state.plot.width;
    refs.plotHeight.value = state.plot.height;
    applySelectedTypeDefaults();
  }

  function applySelectedTypeDefaults() {
    const type = getSelectedType();
    refs.itemWidth.value = type.defaultWidth;
    refs.itemHeight.value = type.defaultHeight;
    if (type.id === 'water') {
      refs.itemLabel.value = 'נקודת מים';
    } else if (refs.itemLabel.value === 'נקודת מים') {
      refs.itemLabel.value = '';
    }
  }

  function onPlotSubmit(event) {
    event.preventDefault();
    const width = readPositiveNumber(refs.plotWidth, 'רוחב המגרש');
    const height = readPositiveNumber(refs.plotHeight, 'עומק המגרש');
    if (!width || !height) return;

    const outOfBounds = state.items.some(
      (item) => item.x + item.width > width || item.y + item.height > height
    );

    if (outOfBounds) {
      showToast('יש פריטים מחוץ למידות החדשות. הזיזו או מחקו אותם לפני הקטנת המגרש.');
      refs.plotWidth.value = state.plot.width;
      refs.plotHeight.value = state.plot.height;
      return;
    }

    state.plot.width = width;
    state.plot.height = height;
    state.draft = null;
    saveState();
    render();
    showToast('מידות המגרש עודכנו.');
  }

  function onItemSubmit(event) {
    event.preventDefault();
    const item = readItemFromForm();
    if (!item) return;

    addItem(item);
  }

  function onCanvasClick(event) {
    if (event.target.closest('.item-group')) return;

    const point = getSvgPoint(event);
    const width = readPositiveNumber(refs.itemWidth, 'רוחב הפריט');
    const height = readPositiveNumber(refs.itemHeight, 'עומק הפריט');
    if (!width || !height) return;

    const x = clamp(round(point.x - width / 2), 0, Math.max(0, state.plot.width - width));
    const y = clamp(round(point.y - height / 2), 0, Math.max(0, state.plot.height - height));

    state.selectedId = null;
    state.draft = { x, y, width, height };
    refs.itemX.value = x;
    refs.itemY.value = y;
    render();
    showToast('המיקום סומן. ניתן לשנות מידות או ללחוץ "הוסף לתכנית".');
  }

  function readItemFromForm() {
    const item = readItemTemplateFromForm();
    if (!item) return null;

    const x = readNonNegativeNumber(refs.itemX, 'X');
    const y = readNonNegativeNumber(refs.itemY, 'Y');
    if ([x, y].some((value) => value === null)) return null;

    item.x = round(x);
    item.y = round(y);

    if (!isInsidePlot(item)) {
      showToast('הפריט חורג מגבולות המגרש. עדכנו מיקום או מידות.');
      return null;
    }

    return item;
  }

  function readItemTemplateFromForm() {
    const type = getSelectedType();
    const width = readPositiveNumber(refs.itemWidth, 'רוחב הפריט');
    const height = readPositiveNumber(refs.itemHeight, 'עומק הפריט');
    if ([width, height].some((value) => value === null)) return null;

    return {
      id: createId(),
      type: type.id,
      x: 0,
      y: 0,
      width: round(width),
      height: round(height),
      label: refs.itemLabel.value.trim(),
    };
  }

  function addItem(item) {
    state.items.push(item);
    state.selectedId = item.id;
    state.draft = null;
    saveState();
    render();
    showToast(`${getItemLabel(item)} נוסף לתכנית.`);
  }

  function selectItem(id) {
    state.selectedId = id;
    state.draft = null;
    render();
  }

  function deleteSelectedItem() {
    if (!state.selectedId) return;

    const item = getSelectedItem();
    state.items = state.items.filter((candidate) => candidate.id !== state.selectedId);
    state.selectedId = null;
    saveState();
    render();
    showToast(`${getItemLabel(item)} נמחק מהתכנית.`);
  }

  function nudgeSelected(direction) {
    const item = getSelectedItem();
    if (!item) {
      showToast('בחרו פריט להזזה.');
      return;
    }

    const next = { ...item };
    const step = 0.5;
    if (direction === 'up') next.y -= step;
    if (direction === 'down') next.y += step;
    if (direction === 'left') next.x -= step;
    if (direction === 'right') next.x += step;
    next.x = round(next.x);
    next.y = round(next.y);

    if (!isInsidePlot(next)) {
      showToast('אי אפשר להזיז את הפריט מחוץ לגבולות המגרש.');
      return;
    }

    Object.assign(item, next);
    saveState();
    render();
  }

  function attachItem(side) {
    const selected = getSelectedItem();
    if (!selected) {
      showToast('בחרו קודם פריט שאליו תרצו להצמיד.');
      return;
    }

    const draft = readItemTemplateFromForm();
    if (!draft) return;

    const centeredX = selected.x + (selected.width - draft.width) / 2;
    const centeredY = selected.y + (selected.height - draft.height) / 2;

    if (side === 'top') {
      draft.x = centeredX;
      draft.y = selected.y - draft.height;
    }
    if (side === 'bottom') {
      draft.x = centeredX;
      draft.y = selected.y + selected.height;
    }
    if (side === 'right') {
      draft.x = selected.x + selected.width;
      draft.y = centeredY;
    }
    if (side === 'left') {
      draft.x = selected.x - draft.width;
      draft.y = centeredY;
    }

    draft.x = round(draft.x);
    draft.y = round(draft.y);

    if (!isInsidePlot(draft)) {
      showToast('אין מספיק מקום להצמדה בצד הזה בתוך גבולות המגרש.');
      return;
    }

    addItem(draft);
  }

  function clearPlan() {
    if (!state.items.length) {
      showToast('התכנית כבר ריקה.');
      return;
    }

    if (!window.confirm('למחוק את כל הפריטים מהתכנית?')) return;

    state.items = [];
    state.selectedId = null;
    state.draft = null;
    saveState();
    render();
    showToast('התכנית נוקתה.');
  }

  function exportPlan() {
    const payload = {
      exportedAt: new Date().toISOString(),
      units: 'meters',
      plot: state.plot,
      items: state.items.map((item) => ({
        ...item,
        typeLabel: typeById.get(item.type).label,
        areaSqm: round(item.width * item.height),
      })),
    };

    const blob = new Blob([JSON.stringify(payload, null, 2)], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = 'garden-plan.json';
    document.body.appendChild(link);
    link.click();
    link.remove();
    URL.revokeObjectURL(url);
    showToast('קובץ התכנית ירד למחשב.');
  }

  function render() {
    renderSvg();
    renderSelection();
    renderSummary();
    updateStatus();
  }

  function renderSvg() {
    refs.svg.innerHTML = '';
    refs.svg.setAttribute(
      'viewBox',
      `${-0.7} ${-0.7} ${state.plot.width + 1.4} ${state.plot.height + 1.4}`
    );
    refs.svg.style.aspectRatio = `${state.plot.width} / ${state.plot.height}`;

    refs.svg.appendChild(createGrid());

    const border = svgEl('rect', {
      x: 0,
      y: 0,
      width: state.plot.width,
      height: state.plot.height,
      class: 'plot-border',
      rx: 0.08,
    });
    refs.svg.appendChild(border);

    state.items.forEach((item) => refs.svg.appendChild(createItemNode(item)));

    if (state.draft) {
      refs.svg.appendChild(createDraftNode(state.draft));
    }
  }

  function createGrid() {
    const group = svgEl('g', { 'aria-hidden': 'true' });
    const width = Math.ceil(state.plot.width);
    const height = Math.ceil(state.plot.height);

    for (let x = 0; x <= width; x += 1) {
      const className = x % 5 === 0 ? 'grid-line major' : 'grid-line';
      group.appendChild(svgEl('line', { x1: x, y1: 0, x2: x, y2: state.plot.height, class: className }));
      if (x <= state.plot.width) {
        group.appendChild(
          svgText(x, -0.25, `${x}m`, {
            class: 'axis-label',
            'text-anchor': 'middle',
          })
        );
      }
    }

    for (let y = 0; y <= height; y += 1) {
      const className = y % 5 === 0 ? 'grid-line major' : 'grid-line';
      group.appendChild(svgEl('line', { x1: 0, y1: y, x2: state.plot.width, y2: y, class: className }));
      if (y <= state.plot.height) {
        group.appendChild(
          svgText(-0.25, y + 0.08, `${y}m`, {
            class: 'axis-label',
            'text-anchor': 'end',
          })
        );
      }
    }

    return group;
  }

  function createItemNode(item) {
    const type = typeById.get(item.type);
    const group = svgEl('g', {
      class: [
        'item-group',
        item.id === state.selectedId ? 'selected' : '',
        overlapsAnother(item) ? 'warning' : '',
      ]
        .filter(Boolean)
        .join(' '),
      tabindex: 0,
      role: 'button',
      'aria-label': getItemLabel(item),
    });

    const shapeAttrs = {
      class: 'item-shape',
      fill: type.color,
    };

    if (type.shape === 'circle') {
      group.appendChild(
        svgEl('ellipse', {
          ...shapeAttrs,
          cx: item.x + item.width / 2,
          cy: item.y + item.height / 2,
          rx: item.width / 2,
          ry: item.height / 2,
        })
      );
    } else {
      group.appendChild(
        svgEl('rect', {
          ...shapeAttrs,
          x: item.x,
          y: item.y,
          width: item.width,
          height: item.height,
          rx: Math.min(0.12, item.width / 5, item.height / 5),
        })
      );
    }

    if (item.type === 'pergola') addPergolaLines(group, item);
    if (item.type === 'hedge') addHedgeDots(group, item);
    if (item.type === 'water') addWaterIcon(group, item);

    if (item.type !== 'water') {
      group.appendChild(
        svgText(item.x + item.width / 2, item.y + item.height / 2, getItemLabel(item), {
          class: 'item-label',
        })
      );
    }
    addDimensionLabels(group, item);

    group.addEventListener('click', (event) => {
      event.stopPropagation();
      selectItem(item.id);
    });
    group.addEventListener('keydown', (event) => {
      if (event.key === 'Enter' || event.key === ' ') {
        event.preventDefault();
        selectItem(item.id);
      }
    });

    return group;
  }

  function createDraftNode(draft) {
    const type = getSelectedType();
    const group = svgEl('g');
    if (type.shape === 'circle') {
      group.appendChild(
        svgEl('ellipse', {
          class: 'draft-marker',
          cx: draft.x + draft.width / 2,
          cy: draft.y + draft.height / 2,
          rx: draft.width / 2,
          ry: draft.height / 2,
        })
      );
    } else {
      group.appendChild(
        svgEl('rect', {
          class: 'draft-marker',
          x: draft.x,
          y: draft.y,
          width: draft.width,
          height: draft.height,
          rx: 0.12,
        })
      );
    }
    group.appendChild(
      svgText(draft.x + draft.width / 2, draft.y + draft.height / 2, 'מיקום חדש', {
        class: 'item-label',
      })
    );
    return group;
  }

  function addPergolaLines(group, item) {
    const count = Math.max(2, Math.floor(item.width / 0.45));
    for (let i = 1; i < count; i += 1) {
      const x = item.x + (item.width / count) * i;
      group.appendChild(
        svgEl('line', {
          x1: x,
          y1: item.y,
          x2: x,
          y2: item.y + item.height,
          stroke: 'rgba(92, 61, 21, 0.55)',
          'stroke-width': 0.035,
        })
      );
    }
  }

  function addHedgeDots(group, item) {
    const count = Math.max(2, Math.floor(item.width / 0.6));
    for (let i = 0; i < count; i += 1) {
      const x = item.x + (item.width / Math.max(1, count - 1)) * i;
      group.appendChild(
        svgEl('circle', {
          cx: x,
          cy: item.y + item.height / 2,
          r: Math.min(0.16, item.height / 3),
          fill: '#1f5e31',
          opacity: 0.85,
        })
      );
    }
  }

  function addWaterIcon(group, item) {
    group.appendChild(
      svgText(item.x + item.width / 2, item.y + item.height / 2, 'מים', {
        class: 'water-icon',
      })
    );
  }

  function addDimensionLabels(group, item) {
    const y = item.y + item.height + 0.16;
    const x = item.x + item.width + 0.16;

    group.appendChild(
      svgEl('line', {
        class: 'dimension-line',
        x1: item.x,
        y1: y,
        x2: item.x + item.width,
        y2: y,
      })
    );
    group.appendChild(
      svgText(item.x + item.width / 2, y + 0.18, `${formatNumber(item.width)} מ'`, {
        class: 'dimension-label',
      })
    );
    group.appendChild(
      svgEl('line', {
        class: 'dimension-line',
        x1: x,
        y1: item.y,
        x2: x,
        y2: item.y + item.height,
      })
    );
    group.appendChild(
      svgText(x + 0.2, item.y + item.height / 2, `${formatNumber(item.height)} מ'`, {
        class: 'dimension-label',
        transform: `rotate(90 ${x + 0.2} ${item.y + item.height / 2})`,
      })
    );
  }

  function renderSelection() {
    const item = getSelectedItem();
    refs.selectedEmpty.classList.toggle('hidden', Boolean(item));
    refs.selectedDetails.classList.toggle('hidden', !item);
    refs.selectedActions.classList.toggle('hidden', !item);

    if (!item) {
      refs.selectedDetails.innerHTML = '';
      return;
    }

    const type = typeById.get(item.type);
    const warning = overlapsAnother(item)
      ? '<p class="hint"><strong>שים לב:</strong> הפריט חופף לפריט אחר בתכנית.</p>'
      : '';

    refs.selectedDetails.innerHTML = `
      <div><strong>${escapeHtml(getItemLabel(item))}</strong></div>
      <div>סוג: ${escapeHtml(type.label)}</div>
      <div>מיקום: X ${formatNumber(item.x)} מ', Y ${formatNumber(item.y)} מ'</div>
      <div>מידות: ${formatNumber(item.width)} x ${formatNumber(item.height)} מ'</div>
      <div>שטח: ${formatNumber(item.width * item.height)} מ"ר</div>
      ${warning}
    `;
  }

  function renderSummary() {
    const plotArea = state.plot.width * state.plot.height;
    const hardscapeArea = sumAreaByCategory('hardscape');
    const greenArea = sumAreaByCategory('green');
    const waterCount = state.items.filter((item) => item.type === 'water').length;
    const usedArea = state.items
      .filter((item) => item.type !== 'water')
      .reduce((sum, item) => sum + item.width * item.height, 0);
    const freeArea = Math.max(0, plotArea - usedArea);

    const cards = [
      ['שטח מגרש', `${formatNumber(plotArea)} מ"ר`],
      ['שטח פנוי משוער', `${formatNumber(freeArea)} מ"ר`],
      ['צמחייה', `${formatNumber(greenArea)} מ"ר`],
      ['ריצופים / בנוי', `${formatNumber(hardscapeArea)} מ"ר`],
      ['פריטים בתכנית', `${state.items.length}`],
      ['נקודות מים קיימות', `${waterCount}`],
      ['חפיפות לבדיקה', `${countOverlaps()}`],
      ['קנה מידה', 'מטרים אמיתיים'],
    ];

    refs.summaryGrid.innerHTML = cards
      .map(([label, value]) => `<div class="summary-item"><span>${label}</span><strong>${value}</strong></div>`)
      .join('');
  }

  function updateStatus() {
    const selected = getSelectedItem();
    if (selected) {
      refs.statusText.textContent = `נבחר: ${getItemLabel(selected)}. ניתן להזיז, למחוק או להצמיד אליו פריט.`;
      return;
    }

    if (state.draft) {
      refs.statusText.textContent = `מיקום חדש: X ${formatNumber(state.draft.x)} מ', Y ${formatNumber(
        state.draft.y
      )} מ'.`;
      return;
    }

    refs.statusText.textContent = 'לחצו על השרטוט כדי למקם פריט חדש.';
  }

  function getSelectedType() {
    return typeById.get(refs.itemType.value) || ITEM_TYPES[0];
  }

  function getSelectedItem() {
    return state.items.find((item) => item.id === state.selectedId) || null;
  }

  function getItemLabel(item) {
    if (!item) return '';
    return item.label || typeById.get(item.type).label;
  }

  function sumAreaByCategory(category) {
    return state.items.reduce((sum, item) => {
      const type = typeById.get(item.type);
      if (type.category !== category) return sum;
      return sum + item.width * item.height;
    }, 0);
  }

  function countOverlaps() {
    return state.items.filter((item) => overlapsAnother(item)).length;
  }

  function overlapsAnother(item) {
    if (item.type === 'water') return false;
    return state.items.some((candidate) => {
      if (candidate.id === item.id || candidate.type === 'water') return false;
      return rectanglesOverlap(item, candidate);
    });
  }

  function rectanglesOverlap(a, b) {
    return (
      a.x < b.x + b.width &&
      a.x + a.width > b.x &&
      a.y < b.y + b.height &&
      a.y + a.height > b.y
    );
  }

  function isInsidePlot(item) {
    return (
      item.x >= 0 &&
      item.y >= 0 &&
      item.width > 0 &&
      item.height > 0 &&
      item.x + item.width <= state.plot.width + 0.001 &&
      item.y + item.height <= state.plot.height + 0.001
    );
  }

  function getSvgPoint(event) {
    const point = refs.svg.createSVGPoint();
    point.x = event.clientX;
    point.y = event.clientY;
    return point.matrixTransform(refs.svg.getScreenCTM().inverse());
  }

  function readPositiveNumber(input, label) {
    const value = Number.parseFloat(input.value);
    if (!Number.isFinite(value) || value <= 0) {
      showToast(`${label} חייב להיות מספר חיובי.`);
      input.focus();
      return null;
    }
    return round(value);
  }

  function readNonNegativeNumber(input, label) {
    const value = Number.parseFloat(input.value);
    if (!Number.isFinite(value) || value < 0) {
      showToast(`${label} חייב להיות מספר 0 ומעלה.`);
      input.focus();
      return null;
    }
    return round(value);
  }

  function svgEl(tag, attrs = {}) {
    const element = document.createElementNS(SVG_NS, tag);
    Object.entries(attrs).forEach(([name, value]) => {
      element.setAttribute(name, String(value));
    });
    return element;
  }

  function svgText(x, y, text, attrs = {}) {
    const element = svgEl('text', {
      x,
      y,
      direction: 'rtl',
      'unicode-bidi': 'plaintext',
      ...attrs,
    });
    element.textContent = text;
    return element;
  }

  function createId() {
    if (window.crypto && typeof window.crypto.randomUUID === 'function') {
      return window.crypto.randomUUID();
    }
    return `item-${Date.now()}-${Math.random().toString(16).slice(2)}`;
  }

  function clamp(value, min, max) {
    return Math.min(Math.max(value, min), max);
  }

  function numberOr(value, fallback) {
    const number = Number.parseFloat(value);
    return Number.isFinite(number) ? number : fallback;
  }

  function round(value) {
    return Math.round(value * 10) / 10;
  }

  function formatNumber(value) {
    return new Intl.NumberFormat('he-IL', {
      maximumFractionDigits: 1,
    }).format(round(value));
  }

  function escapeHtml(value) {
    return String(value)
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('"', '&quot;')
      .replaceAll("'", '&#039;');
  }

  function showToast(message) {
    refs.toast.textContent = message;
    refs.toast.classList.add('show');
    window.clearTimeout(toastTimer);
    toastTimer = window.setTimeout(() => refs.toast.classList.remove('show'), 3200);
  }
})();
