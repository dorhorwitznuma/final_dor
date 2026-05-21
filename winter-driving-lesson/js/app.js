(function () {
  'use strict';

  const STORAGE_KEY = 'winter-driving-israel-progress-v1';
  const state = {
    currentChapter: 1,
    quizIndex: 0,
    quizAnswers: [],
    inQuiz: false,
    completed: loadProgress(),
  };

  function loadProgress() {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (!raw) return { chaptersPassed: [], finished: false };
      return JSON.parse(raw);
    } catch {
      return { chaptersPassed: [], finished: false };
    }
  }

  function saveProgress() {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(state.completed));
  }

  function chapterUnlocked(id) {
    if (id === 1) return true;
    return state.completed.chaptersPassed.includes(id - 1);
  }

  function el(tag, attrs, children) {
    const node = document.createElement(tag);
    if (attrs) {
      Object.entries(attrs).forEach(([k, v]) => {
        if (k === 'className') node.className = v;
        else if (k === 'html') node.innerHTML = v;
        else if (k.startsWith('on') && typeof v === 'function')
          node.addEventListener(k.slice(2).toLowerCase(), v);
        else node.setAttribute(k, v);
      });
    }
    (children || []).forEach((c) => {
      if (typeof c === 'string') node.appendChild(document.createTextNode(c));
      else if (c) node.appendChild(c);
    });
    return node;
  }

  function renderSources(container) {
    const list = el('ul', { className: 'sources-list' });
    LESSON.sources.forEach((s) => {
      list.appendChild(
        el('li', null, [
          el('a', { href: s.url, target: '_blank', rel: 'noopener noreferrer' }, [s.name]),
        ])
      );
    });
    container.appendChild(
      el('section', { className: 'sources-panel' }, [
        el('h3', null, ['מקורות רשמיים']),
        list,
      ])
    );
  }

  function renderVideo(wrap, video, label) {
    if (!video) return;
    wrap.appendChild(el('h4', { className: 'video-label' }, [label || video.title]));
    const iframe = el('iframe', {
      className: 'video-embed',
      src: `https://www.youtube.com/embed/${video.id}`,
      title: video.title,
      allow:
        'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture',
      allowfullscreen: 'true',
      loading: 'lazy',
    });
    wrap.appendChild(el('div', { className: 'video-frame' }, [iframe]));
  }

  function renderChapterContent(chapter) {
    const root = document.getElementById('chapter-root');
    root.innerHTML = '';
    root.dataset.chapterId = String(chapter.id);

    const article = el('article', { className: 'chapter-article', id: `chapter-${chapter.id}` });

    article.appendChild(
      el('header', { className: 'chapter-header' }, [
        el('span', { className: 'chapter-badge' }, [`חלק ${chapter.id} מתוך 3`]),
        el('h2', { className: 'chapter-title' }, [chapter.title]),
        el('p', { className: 'chapter-tagline' }, [chapter.tagline]),
      ])
    );

    const hero = el('div', { className: 'chapter-hero' });
    hero.appendChild(
      el('img', {
        src: chapter.heroImage,
        alt: chapter.title,
        className: 'chapter-hero-img',
        loading: 'eager',
        decoding: 'async',
      })
    );
    article.appendChild(hero);

    chapter.sections.forEach((sec) => {
      const block = el('section', { className: 'content-block' });
      block.appendChild(el('h3', { className: 'block-heading' }, [sec.heading]));
      if (sec.image) {
        const figChildren = [
          el('img', {
            src: sec.image,
            alt: sec.imageAlt || sec.heading,
            loading: 'lazy',
            decoding: 'async',
          }),
        ];
        if (sec.imageAlt) {
          figChildren.push(el('figcaption', { className: 'figure-caption' }, [sec.imageAlt]));
        }
        block.appendChild(el('figure', { className: 'block-figure' }, figChildren));
      }
      block.appendChild(el('div', { className: 'block-body', html: sec.body }));
      article.appendChild(block);
    });

    const media = el('section', { className: 'media-section' });
    media.appendChild(el('h3', { className: 'block-heading' }, ['סרטוני הדגמה (YouTube)']));
    renderVideo(media, chapter.video, 'סרטון מומלץ');
    if (chapter.videoSecondary) renderVideo(media, chapter.videoSecondary, 'סרטון נוסף');
    if (chapter.videoIsraeli) renderVideo(media, chapter.videoIsraeli, 'רלב"ד — בטיחות בדרכים');
    article.appendChild(media);

    article.appendChild(
      el('aside', { className: 'official-note' }, [
        el('strong', null, ['הערת מקור: ']),
        document.createTextNode(chapter.officialNote),
      ])
    );

    const quizZone = el('section', { className: 'quiz-zone', id: 'quiz-zone' });
    article.appendChild(quizZone);

    const startBtn = el('button', {
      type: 'button',
      className: 'btn btn-primary btn-quiz-start',
      id: 'start-quiz-btn',
    }, ['התחל מבחן סיום החלק']);
    startBtn.addEventListener('click', () => beginQuiz(chapter, quizZone));
    article.appendChild(startBtn);

    root.appendChild(article);
    root.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }

  function beginQuiz(chapter, quizZone) {
    state.inQuiz = true;
    state.quizIndex = 0;
    state.quizAnswers = [];
    document.getElementById('start-quiz-btn')?.classList.add('hidden');
    renderQuizQuestion(chapter, quizZone);
  }

  function renderQuizQuestion(chapter, quizZone) {
    const q = chapter.quiz[state.quizIndex];
    quizZone.innerHTML = '';
    quizZone.classList.add('active');

    quizZone.appendChild(
      el('div', { className: 'quiz-header' }, [
        el('h3', null, ['מבחן — שאלה ' + (state.quizIndex + 1) + ' מתוך 4']),
        el('p', { className: 'quiz-intro-text' }, [MESSAGES.quizIntro]),
      ])
    );

    const progress = el('div', { className: 'quiz-progress' });
    for (let i = 0; i < 4; i++) {
      progress.appendChild(
        el('span', {
          className:
            'quiz-dot' +
            (i < state.quizIndex ? ' done' : '') +
            (i === state.quizIndex ? ' current' : ''),
        })
      );
    }
    quizZone.appendChild(progress);

    quizZone.appendChild(el('p', { className: 'quiz-question' }, [q.question]));

    const form = el('form', { className: 'quiz-form', id: 'quiz-form' });
    const letters = ['א', 'ב', 'ג', 'ד'];

    q.options.forEach((opt, idx) => {
      const id = `opt-${chapter.id}-${state.quizIndex}-${idx}`;
      const label = el('label', { className: 'quiz-option', htmlFor: id });
      label.appendChild(
        el('input', { type: 'radio', name: 'answer', value: String(idx), id: id })
      );
      label.appendChild(el('span', { className: 'option-letter' }, [letters[idx] + '.']));
      label.appendChild(el('span', { className: 'option-text' }, [opt]));
      form.appendChild(label);
    });

    const feedback = el('div', { className: 'quiz-feedback hidden', id: 'quiz-feedback' });
    form.appendChild(feedback);

    const submit = el('button', { type: 'submit', className: 'btn btn-accent' }, ['בדוק תשובה']);
    form.appendChild(submit);

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      const selected = form.querySelector('input[name="answer"]:checked');
      if (!selected) {
        feedback.className = 'quiz-feedback error';
        feedback.textContent = 'יש לבחור תשובה לפני המשך.';
        return;
      }
      const answer = parseInt(selected.value, 10);
      handleAnswer(chapter, quizZone, answer, feedback, form);
    });

    quizZone.appendChild(form);
    quizZone.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
  }

  function handleAnswer(chapter, quizZone, answer, feedback, form) {
    const q = chapter.quiz[state.quizIndex];
    if (answer !== q.correct) {
      feedback.className = 'quiz-feedback error';
      feedback.textContent = MESSAGES.wrongAnswer;
      form.querySelectorAll('input').forEach((i) => (i.disabled = true));
      const wrongSubmit = form.querySelector('button[type="submit"]');
      if (wrongSubmit) wrongSubmit.disabled = true;

      setTimeout(() => {
        resetChapter(chapter);
      }, 2800);
      return;
    }

    feedback.className = 'quiz-feedback success';
    feedback.textContent = MESSAGES.correctAnswer;
    form.querySelectorAll('input').forEach((i) => (i.disabled = true));
    const submit = form.querySelector('button[type="submit"]');
    if (submit) submit.disabled = true;

    state.quizAnswers.push(answer);

    setTimeout(() => {
      state.quizIndex += 1;
      if (state.quizIndex >= 4) {
        completeChapter(chapter, quizZone);
      } else {
        renderQuizQuestion(chapter, quizZone);
      }
    }, 1200);
  }

  function resetChapter(chapter) {
    state.inQuiz = false;
    state.quizIndex = 0;
    state.quizAnswers = [];
    showToast(MESSAGES.wrongAnswer, 'error');
    renderChapterContent(chapter);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  function completeChapter(chapter, quizZone) {
    state.inQuiz = false;
    if (!state.completed.chaptersPassed.includes(chapter.id)) {
      state.completed.chaptersPassed.push(chapter.id);
    }
    if (chapter.id === 3) state.completed.finished = true;
    saveProgress();

    quizZone.innerHTML = '';
    quizZone.appendChild(
      el('div', { className: 'quiz-complete-banner' }, [
        el('h3', null, [MESSAGES.chapterComplete]),
        chapter.id < 3
          ? el('p', null, ['לחץ על החלק הבא בתפריט כדי להמשיך.'])
          : el('p', null, [MESSAGES.allComplete]),
      ])
    );

    updateNav();
    showToast(MESSAGES.chapterComplete, 'success');

    if (chapter.id < 3) {
      state.currentChapter = chapter.id + 1;
      setTimeout(() => goToChapter(state.currentChapter), 1500);
    } else {
      document.getElementById('completion-modal')?.classList.add('open');
    }
  }

  function showToast(text, type) {
    const toast = document.getElementById('toast');
    toast.textContent = text;
    toast.className = `toast show ${type || ''}`;
    setTimeout(() => toast.classList.remove('show'), 4000);
  }

  function updateNav() {
    document.querySelectorAll('.nav-chapter').forEach((btn) => {
      const id = parseInt(btn.dataset.chapter, 10);
      const unlocked = chapterUnlocked(id);
      const passed = state.completed.chaptersPassed.includes(id);
      btn.classList.toggle('locked', !unlocked);
      btn.classList.toggle('passed', passed);
      btn.disabled = !unlocked;
    });
    const pct = Math.round((state.completed.chaptersPassed.length / 3) * 100);
    const bar = document.getElementById('progress-fill');
    const label = document.getElementById('progress-label');
    if (bar) bar.style.width = `${pct}%`;
    if (label) label.textContent = `${pct}% הושלמו`;
  }

  function goToChapter(id) {
    const chapter = LESSON.chapters.find((c) => c.id === id);
    if (!chapter) return;
    if (!chapterUnlocked(id)) {
      showToast(MESSAGES.locked, 'error');
      return;
    }
    state.currentChapter = id;
    state.inQuiz = false;
    document.querySelectorAll('.nav-chapter').forEach((b) => {
      b.classList.toggle('active', parseInt(b.dataset.chapter, 10) === id);
    });
    renderChapterContent(chapter);
  }

  function resetAllProgress() {
    if (!confirm('לאפס את כל ההתקדמות ולהתחיל מהתחלה?')) return;
    state.completed = { chaptersPassed: [], finished: false };
    saveProgress();
    state.currentChapter = 1;
    updateNav();
    goToChapter(1);
    document.getElementById('completion-modal')?.classList.remove('open');
  }

  function init() {
    document.getElementById('lesson-title').textContent = LESSON.title;
    document.getElementById('lesson-subtitle').textContent = LESSON.subtitle;

    const nav = document.getElementById('chapter-nav');
    LESSON.chapters.forEach((ch) => {
      const btn = el('button', {
        type: 'button',
        className: 'nav-chapter' + (ch.id === 1 ? ' active' : ''),
        'data-chapter': String(ch.id),
      }, [ch.title.replace(/^חלק [א-ג׳]+ — /, '')]);
      btn.addEventListener('click', () => goToChapter(ch.id));
      nav.appendChild(btn);
    });

    renderSources(document.getElementById('sources-footer'));
    updateNav();
    goToChapter(state.completed.chaptersPassed.length + 1 > 3 ? 3 : Math.min(3, (state.completed.chaptersPassed.length || 0) + 1));

    document.getElementById('reset-progress')?.addEventListener('click', resetAllProgress);
    document.getElementById('close-modal')?.addEventListener('click', () => {
      document.getElementById('completion-modal')?.classList.remove('open');
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
