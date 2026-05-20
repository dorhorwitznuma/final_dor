<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gardening Artists | קטלוג צמחים למשתלות בישראל</title>
<style>
:root {
    --sage-900: #31483a;
    --sage-800: #476653;
    --sage-700: #6f927a;
    --sage-200: #dce8df;
    --sage-100: #eef5ef;
    --cream: #fbf8ef;
    --white: #ffffff;
    --sand: #ead9b7;
    --blush: #f5e6dc;
    --ink: #26372c;
    --muted: #667568;
    --line: #dbe5dc;
    --shadow: 0 18px 45px rgba(71, 102, 83, 0.13);
}

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    background:
        radial-gradient(circle at top right, rgba(234, 217, 183, 0.45), transparent 30%),
        linear-gradient(180deg, var(--cream), var(--sage-100));
    color: var(--ink);
    font-family: Arial, "Noto Sans Hebrew", "Segoe UI", sans-serif;
    line-height: 1.7;
    margin: 0;
}

a {
    color: inherit;
}

.hero {
    background:
        linear-gradient(135deg, rgba(238, 245, 239, 0.96), rgba(220, 232, 223, 0.88)),
        url("https://images.unsplash.com/photo-1416879595882-3373a0480b5b?auto=format&fit=crop&w=1600&q=80");
    background-position: center;
    background-size: cover;
    color: var(--sage-900);
    padding: 28px 7vw 68px;
}

.nav {
    align-items: center;
    display: flex;
    gap: 24px;
    justify-content: space-between;
    margin-bottom: 70px;
}

.brand {
    align-items: center;
    display: flex;
    font-size: 1.3rem;
    font-weight: 900;
    gap: 12px;
}

.brand-mark {
    align-items: center;
    background: var(--white);
    border: 1px solid var(--line);
    border-radius: 18px;
    box-shadow: 0 10px 26px rgba(71, 102, 83, 0.12);
    color: var(--sage-800);
    display: inline-flex;
    height: 54px;
    justify-content: center;
    letter-spacing: 0.04em;
    width: 54px;
}

.nav-links {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
}

.nav-links a,
.soft-pill {
    background: rgba(255, 255, 255, 0.76);
    border: 1px solid var(--line);
    border-radius: 999px;
    color: var(--sage-800);
    font-weight: 800;
    padding: 9px 15px;
    text-decoration: none;
}

.hero-grid,
.ui-showcase,
.advisor {
    display: grid;
    gap: 28px;
    grid-template-columns: minmax(0, 1.08fr) minmax(320px, 0.92fr);
    margin: 0 auto;
    max-width: 1240px;
}

.eyebrow {
    color: var(--sage-700);
    font-size: 0.86rem;
    font-weight: 900;
    letter-spacing: 0.08em;
    margin: 0 0 12px;
}

h1,
h2,
h3 {
    color: var(--sage-900);
    line-height: 1.12;
}

h1 {
    font-size: clamp(2.3rem, 6vw, 5.2rem);
    margin: 0 0 20px;
    max-width: 840px;
}

.hero-copy {
    color: var(--muted);
    font-size: 1.15rem;
    margin: 0 0 26px;
    max-width: 760px;
}

.hero-actions,
.ui-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
}

.button {
    align-items: center;
    border: 0;
    border-radius: 999px;
    cursor: pointer;
    display: inline-flex;
    font: inherit;
    font-weight: 900;
    justify-content: center;
    min-height: 48px;
    padding: 13px 22px;
    text-decoration: none;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.button:hover {
    box-shadow: var(--shadow);
    transform: translateY(-2px);
}

.button-primary {
    background: var(--sage-800);
    color: var(--white);
}

.button-secondary {
    background: var(--white);
    border: 1px solid var(--line);
    color: var(--sage-800);
}

.hero-card,
.panel,
.rubric-card,
.ui-preview,
.plant-card {
    background: rgba(255, 255, 255, 0.86);
    border: 1px solid var(--line);
    border-radius: 30px;
    box-shadow: var(--shadow);
}

.hero-card {
    align-self: end;
    padding: 28px;
}

.hero-stats {
    display: grid;
    gap: 12px;
    grid-template-columns: repeat(3, 1fr);
    margin-top: 22px;
}

.stat {
    background: var(--sage-100);
    border-radius: 20px;
    padding: 14px;
}

.stat strong {
    color: var(--sage-800);
    display: block;
    font-size: 1.55rem;
}

main {
    margin: 0 auto;
    max-width: 1280px;
    padding: 54px 7vw 78px;
}

.ui-showcase {
    margin-bottom: 58px;
}

.ui-preview {
    overflow: hidden;
}

.ui-toolbar {
    align-items: center;
    background: linear-gradient(135deg, var(--sage-800), var(--sage-700));
    color: var(--white);
    display: flex;
    justify-content: space-between;
    padding: 16px 22px;
}

.ui-dots {
    display: flex;
    gap: 7px;
}

.ui-dots span {
    background: rgba(255, 255, 255, 0.75);
    border-radius: 50%;
    height: 10px;
    width: 10px;
}

.ui-body {
    display: grid;
    gap: 18px;
    grid-template-columns: minmax(210px, 0.8fr) 1fr;
    padding: 22px;
}

.ui-sidebar,
.ui-card {
    background: rgba(238, 245, 239, 0.78);
    border: 1px solid var(--line);
    border-radius: 24px;
    padding: 18px;
}

.ui-menu {
    display: grid;
    gap: 10px;
}

.ui-menu span,
.chip {
    background: var(--sage-100);
    border-radius: 999px;
    color: var(--sage-800);
    display: inline-flex;
    font-size: 0.86rem;
    font-weight: 900;
    padding: 7px 12px;
}

.ui-cards,
.workflow,
.recommendation-list {
    display: grid;
    gap: 14px;
}

.ui-card p,
.section-heading p,
.plant-card p,
.rubric-card li,
.panel p {
    color: var(--muted);
}

.ui-pill-row,
.chips {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 12px;
}

.ui-panel,
.recommendation-card {
    background: linear-gradient(160deg, var(--sage-800), var(--sage-700));
    border-radius: 30px;
    box-shadow: var(--shadow);
    color: var(--white);
    padding: 28px;
}

.ui-panel h2,
.recommendation-card h3 {
    color: var(--white);
    margin-top: 0;
}

.ui-panel p,
.recommendation-card p {
    color: rgba(255, 255, 255, 0.88);
}

.workflow-step {
    align-items: start;
    display: grid;
    gap: 12px;
    grid-template-columns: 42px 1fr;
}

.workflow-step span {
    align-items: center;
    background: var(--cream);
    border-radius: 14px;
    color: var(--sage-800);
    display: inline-flex;
    font-weight: 900;
    height: 42px;
    justify-content: center;
    width: 42px;
}

.section-heading {
    display: grid;
    gap: 18px;
    grid-template-columns: minmax(0, 0.75fr) minmax(260px, 0.25fr);
    margin-bottom: 24px;
}

.section-heading h2 {
    font-size: clamp(2rem, 4vw, 3.1rem);
    margin: 0;
}

.panel {
    padding: 26px;
}

.filters {
    display: grid;
    gap: 16px;
    grid-template-columns: 1.5fr repeat(3, 1fr);
    margin-bottom: 24px;
}

.field {
    display: flex;
    flex-direction: column;
    gap: 7px;
}

label {
    color: var(--sage-900);
    font-size: 0.82rem;
    font-weight: 900;
}

input,
select,
textarea {
    background: rgba(255, 255, 255, 0.9);
    border: 1px solid var(--line);
    border-radius: 18px;
    color: var(--ink);
    font: inherit;
    min-height: 48px;
    padding: 12px 14px;
    width: 100%;
}

textarea {
    min-height: 110px;
    resize: vertical;
}

.rubric-tabs {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-bottom: 28px;
}

.tab {
    background: var(--sage-100);
    border: 1px solid transparent;
    border-radius: 999px;
    color: var(--sage-800);
    cursor: pointer;
    font: inherit;
    font-weight: 900;
    padding: 10px 16px;
}

.tab.active {
    background: var(--sage-800);
    color: var(--white);
}

.plant-grid,
.rubric-summary {
    display: grid;
    gap: 22px;
    grid-template-columns: repeat(3, minmax(0, 1fr));
}

.plant-card {
    display: flex;
    flex-direction: column;
    overflow: hidden;
}

.plant-card img {
    aspect-ratio: 4 / 3;
    display: block;
    object-fit: cover;
    width: 100%;
}

.plant-card-content {
    display: flex;
    flex: 1;
    flex-direction: column;
    gap: 14px;
    padding: 20px;
}

.plant-card h3 {
    font-size: 1.35rem;
    margin: 0;
}

.plant-card h3 span {
    color: var(--muted);
    display: block;
    font-size: 0.9rem;
    font-style: italic;
    font-weight: 500;
    margin-top: 4px;
}

.plant-meta {
    border-top: 1px solid var(--line);
    display: grid;
    gap: 10px;
    margin-top: auto;
    padding-top: 14px;
}

.meta-row {
    display: flex;
    gap: 12px;
    justify-content: space-between;
}

.meta-row strong {
    color: var(--sage-900);
}

.price {
    color: var(--sage-800);
    font-size: 1.2rem;
    font-weight: 900;
}

.source-link {
    color: var(--sage-700);
    font-size: 0.86rem;
    font-weight: 800;
    text-decoration: none;
}

.source-link:hover {
    text-decoration: underline;
}

.empty-state {
    border: 1px dashed var(--sage-700);
    border-radius: 24px;
    color: var(--muted);
    display: none;
    padding: 28px;
    text-align: center;
}

.rubric-summary {
    margin: 58px 0;
}

.rubric-card {
    padding: 24px;
}

.rubric-card ul {
    margin: 0;
    padding-inline-start: 20px;
}

.upload-box {
    align-items: center;
    background: var(--sage-100);
    border: 2px dashed #b8cabd;
    border-radius: 24px;
    display: flex;
    flex-direction: column;
    gap: 12px;
    justify-content: center;
    min-height: 178px;
    padding: 18px;
    text-align: center;
}

.video-preview {
    border-radius: 20px;
    display: none;
    margin-top: 14px;
    max-height: 260px;
    width: 100%;
}

.form-grid {
    display: grid;
    gap: 14px;
    grid-template-columns: repeat(2, minmax(0, 1fr));
}

.full {
    grid-column: 1 / -1;
}

.recommendation-item {
    background: rgba(255, 255, 255, 0.14);
    border: 1px solid rgba(255, 255, 255, 0.22);
    border-radius: 20px;
    padding: 14px;
}

.recommendation-item strong {
    display: block;
}

.total-cost {
    background: var(--cream);
    border-radius: 22px;
    color: var(--sage-900);
    margin-top: 20px;
    padding: 18px;
}

.total-cost span {
    display: block;
    font-size: 2rem;
    font-weight: 900;
}

footer {
    background: var(--sage-900);
    color: rgba(255, 255, 255, 0.86);
    padding: 34px 7vw;
    text-align: center;
}

@media (max-width: 980px) {
    .hero-grid,
    .ui-showcase,
    .section-heading,
    .advisor,
    .rubric-summary {
        grid-template-columns: 1fr;
    }

    .filters,
    .plant-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

@media (max-width: 680px) {
    .hero {
        padding: 24px 6vw 48px;
    }

    .nav {
        align-items: flex-start;
        flex-direction: column;
        margin-bottom: 44px;
    }

    .filters,
    .form-grid,
    .hero-stats,
    .ui-body,
    .plant-grid {
        grid-template-columns: 1fr;
    }

    main {
        padding-left: 6vw;
        padding-right: 6vw;
    }
}
</style>
</head>
<body>
<header class="hero">
    <nav class="nav" aria-label="ניווט ראשי">
        <div class="brand">
            <span class="brand-mark" aria-hidden="true">GA</span>
            <span>Gardening Artists</span>
        </div>
        <div class="nav-links">
            <a href="#plants">קטלוג צמחים</a>
            <a href="#rubrics">חלוקה לפי תנאים</a>
            <a href="#advisor">התאמת צמחים לגינה</a>
        </div>
    </nav>

    <section class="hero-grid">
        <div>
            <p class="eyebrow">תכנון גינה ישראלית בצורה רגועה וברורה</p>
            <h1>בוחרים צמחים נכונים לגינה יפה, רכה ומתאימה לתנאי השטח.</h1>
            <p class="hero-copy">
                בחרו צמחים אמיתיים ונפוצים במשתלות בישראל לפי תנאי הגינה שלכם: שמש, סוג קרקע, השקיה ותקציב.
                כל כרטיס מציג תמונת צילום, מידע בוטני, תנאי גידול וטווח מחיר בשקלים להתרשמות ראשונית.
            </p>
            <div class="hero-actions">
                <a class="button button-primary" href="#plants">לעיון בצמחים</a>
                <a class="button button-secondary" href="#advisor">לקבלת המלצה לגינה</a>
            </div>
        </div>
        <aside class="hero-card" aria-label="תקציר הקטלוג">
            <h2>מתאימים צמחייה לגינה שלכם</h2>
            <p>
                אפשר לעיין בקטלוג, לסנן לפי תנאי שטח, להעלות סרטון קצר של הגינה ולקבל שילוב צמחים מומלץ עם הערכת תקציב.
            </p>
            <div class="hero-stats">
                <div class="stat"><strong id="plantCount">0</strong>צמחים</div>
                <div class="stat"><strong>3</strong>סוגי חלוקה</div>
                <div class="stat"><strong>₪</strong>טווח מחיר</div>
            </div>
        </aside>
    </section>
</header>

<main>
    <section id="plants">
        <div class="section-heading">
            <div>
                <p class="eyebrow">קטלוג צמחים</p>
                <h2>צמחים נפוצים במשתלות בישראל לפי שמש, קרקע והשקיה.</h2>
            </div>
            <p>
                כל כרטיס כולל תמונת צילום של הצמח, מידע בוטני מבוסס ויקיפדיה, תנאי גידול מומלצים
                וטווח מחיר משוער בשקלים לגדלי שתילים ועציצים נפוצים במשתלות בישראל.
            </p>
        </div>

        <div class="panel">
            <div class="filters" role="search" aria-label="חיפוש וסינון צמחים">
                <div class="field">
                    <label for="searchInput">חיפוש חופשי</label>
                    <input id="searchInput" type="search" placeholder="לדוגמה: ריחני, גדר חיה, שמש מלאה, קרקע חולית">
                </div>
                <div class="field">
                    <label for="sunFilter">חשיפה לשמש</label>
                    <select id="sunFilter">
                        <option value="">כל רמות השמש</option>
                        <option value="שמש מלאה">שמש מלאה</option>
                        <option value="חצי שמש">חצי שמש</option>
                        <option value="חצי צל">חצי צל</option>
                        <option value="צל">צל</option>
                    </select>
                </div>
                <div class="field">
                    <label for="soilFilter">סוג קרקע</label>
                    <select id="soilFilter">
                        <option value="">כל סוגי הקרקע</option>
                        <option value="חרסיתית">חרסיתית</option>
                        <option value="לומית">לומית</option>
                        <option value="חולית">חולית</option>
                        <option value="חומצית">חומצית</option>
                        <option value="לחה">לחה</option>
                        <option value="מנוקזת">מנוקזת</option>
                    </select>
                </div>
                <div class="field">
                    <label for="waterFilter">השקיה</label>
                    <select id="waterFilter">
                        <option value="">כל סוגי ההשקיה</option>
                        <option value="נמוכה">נמוכה</option>
                        <option value="בינונית">בינונית</option>
                        <option value="קבועה">קבועה</option>
                    </select>
                </div>
            </div>

            <div class="rubric-tabs" aria-label="חלוקות מהירות">
                <button class="tab active" type="button" data-rubric="all">כל הצמחים</button>
                <button class="tab" type="button" data-rubric="שמש מלאה">שמש מלאה</button>
                <button class="tab" type="button" data-rubric="חצי צל">חצי צל</button>
                <button class="tab" type="button" data-rubric="חרסיתית">קרקע חרסיתית</button>
                <button class="tab" type="button" data-rubric="חולית">קרקע חולית</button>
                <button class="tab" type="button" data-rubric="נמוכה">השקיה נמוכה</button>
                <button class="tab" type="button" data-rubric="קבועה">השקיה קבועה</button>
            </div>

            <div id="plantGrid" class="plant-grid" aria-live="polite"></div>
            <div id="emptyState" class="empty-state">לא נמצאו צמחים שמתאימים לסינון שבחרת. כדאי להרחיב את הקריטריונים.</div>
        </div>
    </section>

    <section id="rubrics" class="rubric-summary" aria-label="הסבר על החלוקה">
        <article class="rubric-card">
            <h3>חשיפה לשמש</h3>
            <ul>
                <li><strong>שמש מלאה:</strong> 6 שעות אור ישיר ומעלה, בדרך כלל בדרום או במערב.</li>
                <li><strong>חצי שמש:</strong> 4-6 שעות אור, מתאים מאוד לכיווני מזרח.</li>
                <li><strong>חצי צל וצל:</strong> אור מסונן, עצים קיימים או אזורים צפוניים.</li>
            </ul>
        </article>
        <article class="rubric-card">
            <h3>סוגי קרקע</h3>
            <ul>
                <li><strong>חרסיתית:</strong> עשירה אך מתנקזת לאט, רצוי לשלב קומפוסט.</li>
                <li><strong>חולית:</strong> מתייבשת מהר ומתאימה לצמחים חסכוניים במים.</li>
                <li><strong>חומצית או לחה:</strong> טובה לשיחים ירוקי עד, צמחי חורש וצמחים טרופיים עדינים.</li>
            </ul>
        </article>
        <article class="rubric-card">
            <h3>השקיה</h3>
            <ul>
                <li><strong>נמוכה:</strong> מתאימה לצמחים עמידים ליובש לאחר התבססות.</li>
                <li><strong>בינונית:</strong> השקיה עמוקה פעם בשבוע בתקופות יבשות.</li>
                <li><strong>קבועה:</strong> לחות עקבית לצמחייה טרופית או צמחי צל.</li>
            </ul>
        </article>
    </section>

    <section id="advisor" class="advisor">
        <div class="panel">
            <p class="eyebrow">התאמת צמחים לגינה</p>
            <h2>ספרו לנו על הגינה וקבלו הצעת צמחייה ראשונית.</h2>
            <p>
                לפי כיוון הגינה, כמות השמש, סוג הקרקע, ההשקיה וגודל השטח, האתר מציע צמחים מתאימים ומחשב עלות משוערת בשקלים.
            </p>

            <div class="upload-box">
                <strong>הוספת סרטון גינה</strong>
                <span>אפשר להעלות סרטון הליכה קצר לאורך הערוגה, החצר או אזור השתילה.</span>
                <input id="videoInput" type="file" accept="video/*">
            </div>
            <video id="videoPreview" class="video-preview" controls></video>

            <div class="form-grid" style="margin-top: 20px;">
                <div class="field">
                    <label for="directionInput">כיוון הגינה</label>
                    <select id="directionInput">
                        <option value="דרום">דרום</option>
                        <option value="מערב">מערב</option>
                        <option value="מזרח">מזרח</option>
                        <option value="צפון">צפון</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorSun">כמות שמש</label>
                    <select id="advisorSun">
                        <option value="שמש מלאה">שמש מלאה</option>
                        <option value="חצי שמש">חצי שמש</option>
                        <option value="חצי צל">חצי צל</option>
                        <option value="צל">צל</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorSoil">סוג קרקע</label>
                    <select id="advisorSoil">
                        <option value="חרסיתית">חרסיתית</option>
                        <option value="לומית">לומית</option>
                        <option value="חולית">חולית</option>
                        <option value="חומצית">חומצית</option>
                        <option value="לחה">לחה</option>
                        <option value="מנוקזת">מנוקזת</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorWater">סוג השקיה</label>
                    <select id="advisorWater">
                        <option value="נמוכה">נמוכה / חסכונית</option>
                        <option value="בינונית">בינונית בטפטוף</option>
                        <option value="קבועה">קבועה</option>
                    </select>
                </div>
                <div class="field">
                    <label for="gardenSize">שטח הגינה במטר רבוע</label>
                    <input id="gardenSize" type="number" min="5" max="500" value="30" step="5">
                </div>
                <div class="field">
                    <label for="densityInput">צפיפות שתילה</label>
                    <select id="densityInput">
                        <option value="0.45">פתוחה ואוורירית</option>
                        <option value="0.65" selected>מאוזנת</option>
                        <option value="0.85">עשירה ומלאה</option>
                    </select>
                </div>
                <div class="field full">
                    <label for="notesInput">הערות מהסרטון או מטרות הגינה</label>
                    <textarea id="notesInput" placeholder="לדוגמה: יש שמש אחר הצהריים, גדר, קרקע חרסיתית, ורוצים פרטיות ופריחה."></textarea>
                </div>
                <button id="recommendButton" class="button button-primary full" type="button">המלצה על צמחים וחישוב עלות כוללת</button>
            </div>
        </div>

        <aside class="recommendation-card" aria-live="polite">
            <h3>תוכנית הגינה שלך</h3>
            <p id="recommendationIntro">מלאו את נתוני הגינה ולחצו על כפתור ההמלצה כדי לקבל שילוב צמחים מתאים.</p>
            <div id="recommendationList" class="recommendation-list"></div>
            <div class="total-cost">
                עלות צמחים משוערת
                <span id="totalCost">₪0</span>
                <small>החישוב מבוסס על ממוצע טווחי מחיר נפוצים במשתלות בישראל וגודל השטח. זו הערכה בלבד; עבודה, אדמה, הובלה ומע"מ אינם כלולים.</small>
            </div>
        </aside>
    </section>
</main>

<footer>
    <strong>Gardening Artists</strong> - התאמת צמחייה לגינות פרטיות בישראל, עם קטלוג צמחים ומחירי התרשמות בשקלים.
</footer>

<script>
const plants = [
    {
        "name": "זית אירופי",
        "botanical": "Olea europaea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Olea_europaea_subsp_europaea.jpg/330px-Olea_europaea_subsp_europaea.jpg",
        "detail": "זַיִת אֵירוֹפִּי, או בשמו הרווח: עץ הזית, הוא עץ או שיח ירוק-עד תרבותי שממלא תפקיד כלכלי ניכר בכל אגן הים התיכון.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 136,
        "priceHigh": 530,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Olive",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Olive",
        "wikipediaExtract": "The olive is a species of subtropical evergreen tree in the family Oleaceae. Originating in Asia Minor, it is abundant throughout the Mediterranean Basin, with wild subspecies in Africa and western Asia; modern cultivars are traced primarily to the Near East, Aegean Sea, and Strait of Gibraltar. The olive is the type species for its genus, Olea, and lends its name to the Oleaceae plant family, which includes lilac, jasmine, forsythia, and ash. The olive fruit is classed botanically as a drupe, similar in structure and function to the cherry or peach. The term oil was originally synonymous with olive oil, the liquid fat derived from olives.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%99%D7%AA_%D7%90%D7%99%D7%A8%D7%95%D7%A4%D7%99"
    },
    {
        "name": "לימון",
        "botanical": "Citrus limon",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Zitonenbaum.jpg/330px-Zitonenbaum.jpg",
        "detail": "לימון הוא מין של עץ מסוג ההדרים, שמגדלים באופן חקלאי בעבור פירותיו הקרויים באותו שם. הלימונים משמשים בעיקר לשם הפקת מיץ, אך גם החרצנים, הציפה והקליפה משמשים בבישול, באפייה ובשימורים. מיץ הלימון מכיל כחמישה אחוזים חומצה ציטרית. רמת החומציות שלו (PH) היא בין 2...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 140,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Lemon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon",
        "wikipediaExtract": "The lemon is a species of small evergreen tree in the Citrus genus of the flowering plant family Rutaceae. A true lemon is a hybrid of the citron and the bitter orange. Its origins are uncertain, but some evidence suggests lemons originated during the 1st millennium BC in what is now northeastern India. Some other citrus fruits are called lemon.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%9E%D7%95%D7%9F"
    },
    {
        "name": "תפוז",
        "botanical": "Citrus sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Viri_Galilaei_%289200926016%29.jpg/330px-Viri_Galilaei_%289200926016%29.jpg",
        "detail": "תפוז הוא מין של עץ מסוג הדרים. התפוז הוא אחד מפירות ההדר הנפוצים ביותר. הוא עגול, וצבעו כתום. לרוב, השם \"תפוז\" יתייחס לפרי, והעץ ייקרא \"עץ התפוז\".",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 200,
        "priceHigh": 760,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Citrus × sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Citrus_%C3%97_sinensis",
        "wikipediaExtract": "Citrus × sinensis, is a broadleaf evergreen hybrid between pomelo and mandarin. Hybrid sweet oranges are commonly cultivated fruits that include Valencia oranges, blood oranges and navel oranges.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%A4%D7%95%D7%96"
    },
    {
        "name": "קלמנטינה",
        "botanical": "Citrus clementina",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Clementine_Israel.jpg/330px-Clementine_Israel.jpg",
        "detail": "קלמנטינה היא פרי הדר קטן ומתוק, הדומה לתפוז קטן או למנדרינה. מבחינה בוטנית, יש המגדירים את הקלמנטינה כמין נפרד תחת השם Citrus x clementina, כזן או כקבוצת זנים של מנדרינה, או כשם נרדף לתפוז חושחש Citrus x aurantium.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 155,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Clementine",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clementine",
        "wikipediaExtract": "A clementine is a tangor, a citrus fruit hybrid between a willowleaf mandarin orange and a sweet orange, named in honor of Clément Rodier, a French missionary who first discovered and propagated the cultivar in Algeria. The exterior is a deep orange colour with a smooth, glossy appearance. Clementines can be separated into 7 to 14 segments. Similar to tangerines, they tend to be easy to peel. They are typically juicy and sweet, with less acid than oranges. Their oils, like other citrus fruits, contain mostly limonene as well as myrcene, linalool, α-pinene and many complex aromatics.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%9C%D7%9E%D7%A0%D7%98%D7%99%D7%A0%D7%94"
    },
    {
        "name": "אשכולית",
        "botanical": "Citrus paradisi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Citrus_paradisi_%28Grapefruit%2C_pink%29_white_bg.jpg/330px-Citrus_paradisi_%28Grapefruit%2C_pink%29_white_bg.jpg",
        "detail": "האשכולית היא אחת מפירות ההדר.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 200,
        "priceHigh": 760,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Grapefruit",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grapefruit",
        "wikipediaExtract": "The grapefruit is a subtropical citrus tree known for its relatively large, sour to semi-sweet, somewhat bitter fruit. The flesh of the fruit is segmented and varies in color from pale yellow to dark red.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A9%D7%9B%D7%95%D7%9C%D7%99%D7%AA"
    },
    {
        "name": "ליים",
        "botanical": "Citrus aurantiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Citrus_collage.png/330px-Citrus_collage.png",
        "detail": "ליים הוא כינוי למספר מינים של פירות הדר או הכלאות שלהם. צבע הפרי ירוק כהה עד צהוב, קוטרו נע בין שלושה לשישה סנטימטרים. הפרי בשרני, ומזכיר בצורתו וטעמו את הלימון. מיני הליים בדרך כלל קטנים מהלימון, ומתוקים יותר.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 140,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Key lime",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Key_lime",
        "wikipediaExtract": "The Key lime, also known as West Indian lime, Mexican lime, or Egyptian lime is a type of lime. While it is treated as a species in botanical classification, it originated as a natural hybrid between Citrus micrantha and Citrus medica (citron).",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%99%D7%9D"
    },
    {
        "name": "רימון",
        "botanical": "Punica granatum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Pomegranate_Juice_%282019%29.jpg/330px-Pomegranate_Juice_%282019%29.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 136,
        "priceHigh": 530,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pomegranate",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pomegranate",
        "wikipediaExtract": "The pomegranate is a fruit-bearing, deciduous shrub in the family Lythraceae, subfamily Punicoideae, that grows to between 1.5–5 metres (5–16 ft) tall. Rich in symbolic and mythological associations in many cultures, it originated in the region spanning the Caucasus and the Iranian plateau — including modern-day Iran, Turkmenistan, Afghanistan and Pakistan. Pomegranate was first domesticated by ancient Iranians in the Iranian plateau and nearby regions about 5,000 years ago. It is extensively cultivated for its fruit."
    },
    {
        "name": "תאנה",
        "botanical": "Ficus carica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/%D7%AA%D7%90%D7%A0%D7%94_%D7%91%D7%9E%D7%A4%D7%9C_%D7%94%D7%AA%D7%A0%D7%95%D7%A8_%D7%A9%D7%9C_%D7%A0%D7%97%D7%9C_%D7%A2%D7%99%D7%95%D7%9F.jpg/330px-%D7%AA%D7%90%D7%A0%D7%94_%D7%91%D7%9E%D7%A4%D7%9C_%D7%94%D7%AA%D7%A0%D7%95%D7%A8_%D7%A9%D7%9C_%D7%A0%D7%97%D7%9C_%D7%A2%D7%99%D7%95%D7%9F.jpg",
        "detail": "תְּאֵנָה, היא שיח ממשפחת התותיים. השיח מגיע לגובה של בין 3–10 מטרים. פרי התאנה הוא אחד משבעת המינים בהם השתבחה ארץ ישראל. שיח התאנה גדל בר ליד מעיינות, לאורך בקעת הירדן ובקעת ים המלח.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 144,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Fig",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Fig",
        "wikipediaExtract": "The fig is the edible fruit of Ficus carica, a species of tree or shrub in the flowering plant family Moraceae, native to the Mediterranean region, and to western and southern Asia. It has been cultivated since ancient times and is now widely grown throughout the world. Ficus carica is the type species of the genus Ficus, which comprises over 800 tropical and subtropical plant species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%90%D7%A0%D7%94"
    },
    {
        "name": "שקד מצוי",
        "botanical": "Prunus dulcis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Shkediya01_ST_04.jpg/330px-Shkediya01_ST_04.jpg",
        "detail": "שָׁקֵד מָצוּי הוא עץ פרי נשיר מתורבת המשתייך לסוג פרונוס במשפחת הוורדיים. מוצאו ובית גידולו הטבעי באזור טרנסקווקז, כלומר באזורים שמצפון-מזרח לטורקיה, גיאורגיה, ארמניה ואזרבייג'ן של ימינו. שקד מצוי הוא אחד ממיני התרבות העתיקים בישראל, והעצים הקיימים בישראל...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 152,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Almond",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Almond",
        "wikipediaExtract": "The almond is a species of tree from the genus Prunus. Along with the peach, it is classified in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the woody shell (endocarp) surrounding the seed.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A7%D7%93_%D7%9E%D7%A6%D7%95%D7%99"
    },
    {
        "name": "תות עץ",
        "botanical": "Morus alba",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Morus_alba_%28Mariemont%29_JPG1a.jpg/330px-Morus_alba_%28Mariemont%29_JPG1a.jpg",
        "detail": "תּוּת הוא סוג של עצי פרי או שיחים נשירים, בעל צֶמֶג ממשפחת התותיים. הסיווג של מיני הסוג שנוי במחלוקת, בין היתר בשל קיום בני-כלאים פוריים; הסיווג המקובל מונה כיום 17 מינים בלבד, אף על פי שיש פרסומים של מעל 180 מינים שונים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 144,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Morus alba",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Morus_alba",
        "wikipediaExtract": "Morus alba, known as white mulberry, common mulberry and silkworm mulberry, is a fast-growing, small to medium-sized mulberry tree which grows to 10–20 m (33–66 ft) tall. It is native to China and is widely cultivated and naturalized elsewhere. The species is widely cultivated to feed the silkworms employed in the commercial production of silk. It is also notable for the rapid release of its pollen, which is launched at greater than half the speed of sound.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%95%D7%AA_(%D7%A2%D7%A5)"
    },
    {
        "name": "שסק יפני",
        "botanical": "Eriobotrya japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Loquat-0.jpg/330px-Loquat-0.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 136,
        "priceHigh": 530,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Loquat",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Loquat",
        "wikipediaExtract": "The loquat is a large evergreen shrub or tree grown commercially for its orange coloured fruits. It is also cultivated as an ornamental plant."
    },
    {
        "name": "אפרסק",
        "botanical": "Prunus persica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Peach_flowers.jpg/330px-Peach_flowers.jpg",
        "detail": "אפרסק הוא מין של עץ פרי גלעיני ממשפחת הוורדיים, המשתייך לסוג פרוּנוּס. השם אפרסק מתייחס גם לפרי העץ.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 152,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A4%D7%A8%D7%A1%D7%A7"
    },
    {
        "name": "נקטרינה",
        "botanical": "Prunus persica var. nucipersica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Nectarines_summer_2006.jpg/330px-Nectarines_summer_2006.jpg",
        "detail": "נֶקְטָרִינָה הוא עץ פרי גלעיני ממשפחת הוורדניים, זן (תת-מין) המשתייך למין אפרסק.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 128,
        "priceHigh": 505,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A7%D7%98%D7%A8%D7%99%D7%A0%D7%94"
    },
    {
        "name": "משמש",
        "botanical": "Prunus armeniaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Apricots.jpg/330px-Apricots.jpg",
        "detail": "מִשמֵש הוא עץ נשיר נושא פרי. הוא משתייך לסוג פרונוס.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 120,
        "priceHigh": 480,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Prunus armeniaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Prunus_armeniaca",
        "wikipediaExtract": "Prunus armeniaca is the most commonly cultivated apricot species. The native range is somewhat uncertain due to its extensive prehistoric cultivation. Genetic studies indicate Central Asia is the center of origin. It is extensively cultivated in many countries and has escaped into the wild in many places. The specific epithet armeniaca refers to the country of Armenia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A9%D7%9E%D7%A9"
    },
    {
        "name": "אבוקדו",
        "botanical": "Persea americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Owoce_Awokado.jpg/330px-Owoce_Awokado.jpg",
        "detail": "אָבוֹקָדוֹ הוא עץ פרי סובטרופי ירוק-עד ממשפחת העריים, ולו כ-15 זנים. מוצאו של האבוקדו במרכז אמריקה, משם הפיצו אותו הספרדים, בתחילה לאמריקה הדרומית, ובהמשך לאפריקה וחלקים מאסיה. לארצות הברית הגיע האבוקדו בתחילת המאה ה-20.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 140,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Avocado",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Avocado",
        "wikipediaExtract": "The avocado, alligator pear or avocado pear is an evergreen tree in the laurel family (Lauraceae). It is native to the Americas, with archaeological evidence of early human avocado use dating back thousands of years across various regions of Central and South America. It was prized for its large and unusually oily fruit. The native range of avocado extends from Mexico to Peru, encompassing much of Central America and parts of northern and western South America.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%95%D7%A7%D7%93%D7%95"
    },
    {
        "name": "מנגו",
        "botanical": "Mangifera indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Apple_mango_and_cross_section.jpg/330px-Apple_mango_and_cross_section.jpg",
        "detail": "מנגו הוא מין של עץ טרופי, שאזור הגידול הטבעי שלו הוא באזורים הטרופיים של הודו וסין. העץ כולל כ-35 זנים, והוא המין המוכר והנסחר ביותר בסוג מנגיפרה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 200,
        "priceHigh": 760,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Mangifera indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mangifera_indica",
        "wikipediaExtract": "Mangifera indica, commonly known as the mango after its fruit, is an evergreen species of flowering plant in the family Anacardiaceae. It is a large fruit tree, capable of growing to a height and width of 30 m (100 ft). There are two distinct genetic populations in modern mangoes – the \"Indian type\" and the \"Southeast Asian type\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A0%D7%92%D7%95"
    },
    {
        "name": "גויאבה",
        "botanical": "Psidium guajava",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Guava_ID.jpg/330px-Guava_ID.jpg",
        "detail": "גויאבה היא סוג של צמח ממשפחת ההדסיים, המונה כ-100 מינים של שיחים טרופיים וסובטרופיים ועצים קטנים, ובהם: גויאבת התפוח, גויאבת ההר, גויאבת התות, וגויאבת קוסטה ריקה. צמחי הגויאבה גדלים בעיקר באיים הקאריביים, באמריקה המרכזית ובצפון אמריקה הדרומית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 152,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Psidium guajava",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Psidium_guajava",
        "wikipediaExtract": "Psidium guajava, the common guava, yellow guava, lemon guava, or apple guava is an evergreen shrub or small tree native to the Americas. It is pollinated by insects. When cultivated, it is pollinated mainly by the common honey bee, Apis mellifera.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%95%D7%99%D7%90%D7%91%D7%94"
    },
    {
        "name": "פיגויה",
        "botanical": "Acca sellowiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Goiaba-serrana%2C_ou_guarobi_%28do_guarani_%27fruto_verde%27%29%2C_Feijoa_sellowiana%2C_em_Bag%C3%A9%2C_RS%2C_Brasil_-_55238473195.jpg/330px-Goiaba-serrana%2C_ou_guarobi_%28do_guarani_%27fruto_verde%27%29%2C_Feijoa_sellowiana%2C_em_Bag%C3%A9%2C_RS%2C_Brasil_-_55238473195.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 136,
        "priceHigh": 530,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Feijoa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Feijoa",
        "wikipediaExtract": "Feijoa sellowiana, also known as Acca sellowiana (O.Berg) Burret, is a species of flowering plant in the myrtle family, Myrtaceae. It is the only species in the genus Feijoa. It is native mainly to the highlands of Colombia, southern Brazil and the hills of northeast Uruguay, but it can also be found in eastern Paraguay and northern Argentina. It is known as quirina or as feijoa."
    },
    {
        "name": "חרוב מצוי",
        "botanical": "Ceratonia siliqua",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Ceratonia_siliqua%2C_total.jpg/330px-Ceratonia_siliqua%2C_total.jpg",
        "detail": "חָרוּב מצוי הוא מין עץ-שיח חורש ים-תיכוני, בינוני, יְרוֹק־עַד הצומח גם בפארק פתוח, ממשפחת הקטניות (Fabaceae). הוא גדל בר ובתרבות סביב אגן הים התיכון ובדרום-מזרח אסיה. בעבר הוא שויך למשפחת הכליליים. החרוב המצוי נחשב בעבר למין יחיד בסוגו, עד אשר בשנים 1979–1980...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 144,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Carob",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carob",
        "wikipediaExtract": "The carob is a flowering evergreen tree or shrub in the Caesalpinioideae subfamily of the legume family, Fabaceae. The carob tree is native to the Mediterranean region and the Middle East. It is widely cultivated for its edible fruit, which takes the form of seed pods, and as an ornamental tree in gardens and landscapes. Spain is its largest producer, followed by Italy and Morocco.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%97%D7%A8%D7%95%D7%91_%D7%9E%D7%A6%D7%95%D7%99"
    },
    {
        "name": "ברוש מצוי",
        "botanical": "Cupressus sempervirens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Cupressus_sempervirens_Corfu.jpg/330px-Cupressus_sempervirens_Corfu.jpg",
        "detail": "ברוש מצוי הוא מין הברוש הידוע ביותר בארץ ישראל והיחיד הגדל בה בר. המין נפוץ בכל מזרח הים התיכון מצפון לוב, דרום יוון, דרום טורקיה, קפריסין, מערב סוריה ולבנון ויש גם אוכלוסייה קטנה באיראן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 240,
        "priceHigh": 940,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Cupressus sempervirens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cupressus_sempervirens",
        "wikipediaExtract": "Cupressus sempervirens, the Mediterranean cypress, is a species of cypress native to the eastern Mediterranean region and Iran. It is well-adapted to the environmental conditions that it lives in due to its ability to survive in both acidic and alkaline soils and withstand drought. Cupressus sempervirens is important in Mediterranean and Middle Eastern culture. In Iran it is both a sacred tree and a metaphor for \"the graceful figure of the beloved\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%A8%D7%95%D7%A9_%D7%9E%D7%A6%D7%95%D7%99"
    },
    {
        "name": "סיגלון חד עלים",
        "botanical": "Jacaranda mimosifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/PikiWiki_Israel_13310_Ben_Gurion_University.jpg/330px-PikiWiki_Israel_13310_Ben_Gurion_University.jpg",
        "detail": "סִיגָּלוֹן חד-עלים או יָקָרַנְדָּה הוא עץ ממשפחת הביגנוניים. המקור לשמו הוא פריחתו בגוון סגול-כחול, ועליו החדים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 260,
        "priceHigh": 1030,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Jacaranda mimosifolia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jacaranda_mimosifolia",
        "wikipediaExtract": "Jacaranda mimosifolia is a sub-tropical tree native to south-central South America that has been widely planted elsewhere because of its attractive and long-lasting violet-colored flowers. It is also known as the jacaranda, blue jacaranda, black poui, Nupur or fern tree. Older sources call it J. acutifolia, but modern authorities usually classify it as J. mimosifolia. In scientific usage, the name \"jacaranda\" refers to the genus Jacaranda, which has many other members, but in horticultural and everyday usage, it nearly always means the blue jacaranda.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%92%D7%9C%D7%95%D7%9F_%D7%97%D7%93-%D7%A2%D7%9C%D7%99%D7%9D"
    },
    {
        "name": "כליל החורש",
        "botanical": "Cercis siliquastrum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Cercis-Siliquastrum.jpg/330px-Cercis-Siliquastrum.jpg",
        "detail": "כליל החורש הוא עץ חורש נשיר במשפחת הקסאלפיניים. פריחתו הבוהקת בחודשי מרץ-אפריל העניקה לו את שמו, אשר משמעותו היא \"כתר החורש\" או \"נזר החורש\".",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 280,
        "priceHigh": 1120,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Cercis siliquastrum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cercis_siliquastrum",
        "wikipediaExtract": "Cercis siliquastrum, European Cercis, commonly known as the Judas tree or Judas-tree, is a small deciduous species of redbud in the flowering plant family Fabaceae which is noted for its prolific display of deep pink flowers in spring. It is native to Southern Europe and Western Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%9C%D7%99%D7%9C_%D7%94%D7%97%D7%95%D7%A8%D7%A9"
    },
    {
        "name": "לגרסטרמיה הודית",
        "botanical": "Lagerstroemia indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Extremosa_%28Lagerstroemia_indica%29_em_um_fim_de_tarde_em_Bag%C3%A9-RS_-_55013179934.jpg/330px-Extremosa_%28Lagerstroemia_indica%29_em_um_fim_de_tarde_em_Bag%C3%A9-RS_-_55013179934.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 220,
        "priceHigh": 850,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lagerstroemia indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lagerstroemia_indica",
        "wikipediaExtract": "Lagerstroemia indica, known as the crape myrtle, is a species of flowering plant in the genus Lagerstroemia of the family Lythraceae. It is native to East Asia, South Asia and Southeast Asia. It is an often multi-stemmed, deciduous tree with a wide spreading, flat topped, rounded, or even spike shaped open habit. The tree is a popular nesting shrub for songbirds and wrens."
    },
    {
        "name": "בוהיניה מגוונת",
        "botanical": "Bauhinia variegata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Bahuinia_variegata.JPG/330px-Bahuinia_variegata.JPG",
        "detail": "בוהיניה מגוונת הוא מין עץ בעל פרחים ממשפחת הקטניות. מוצאו במקור מדרום מזרח אסיה ותת-היבשת ההודית, אך הוא הופץ בעולם כעץ נוי מתורבת.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 260,
        "priceHigh": 1030,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Bauhinia variegata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bauhinia_variegata",
        "wikipediaExtract": "Bauhinia variegata is a species of flowering plant in the legume family, Fabaceae. It is native to an area from China through Southeast Asia to the Indian subcontinent. Common names include orchid tree and mountain ebony.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%94%D7%99%D7%A0%D7%99%D7%94_%D7%9E%D7%92%D7%95%D7%95%D7%A0%D7%AA"
    },
    {
        "name": "ברכיכיטון צפצפתי",
        "botanical": "Brachychiton populneus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Brachychiton_populneus_tree.jpg/330px-Brachychiton_populneus_tree.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 300,
        "priceHigh": 1210,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Brachychiton populneus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Brachychiton_populneus",
        "wikipediaExtract": "Brachychiton populneus, commonly known as the kurrajong, is a small to medium-sized tree found naturally in Australia in a diversity of habitats from wetter coastal districts to semi-arid interiors of Victoria, New South Wales and Queensland. Carrejun and carrejan were the indigenous names of trees in the foothills of the Blue Mountains near Sydney, and the bark was used for twine and fishing lines."
    },
    {
        "name": "פלפלון בכות",
        "botanical": "Schinus molle",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Schinus_Molle.jpg/330px-Schinus_Molle.jpg",
        "detail": "פִּלְפְּלוֹן בָּכוּת הוא מין של עץ ירוק-עד בעל שרף, אריך חיים ומהיר צמיחה שגדל עד גובה של 15 מטרים. מין זה משתייך לסוג פלפלון במשפחת האלתיים ומונה שני תת-מינים. מוצאו בשני אזורים נפרדים באמריקה הדרומית, האחד בהרי האנדים בפרו ובצפון צ'ילי והשני מצפון ברזיל ועד...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 300,
        "priceHigh": 1210,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Schinus molle",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Schinus_molle",
        "wikipediaExtract": "Schinus molle is an evergreen tree that grows to 15 m. It is native to an area from the Peruvian Andes to southern Brazil. The bright pink fruits of S. molle are often sold as \"pink peppercorns\", although it is unrelated to black pepper. The word molle in Schinus molle comes from mulli, the Quechua word for the tree. The tree is host to the pepper-tree moth, Bombycomorpha bifascia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%A4%D7%9C%D7%95%D7%9F_%D7%91%D7%9B%D7%95%D7%AA"
    },
    {
        "name": "טיפואנה",
        "botanical": "Tipuana tipu",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Tipuana_%28tipuana_tipu%29_na_Pra%C3%A7a_da_Matriz%2C_em_Bag%C3%A9-RS.jpg/330px-Tipuana_%28tipuana_tipu%29_na_Pra%C3%A7a_da_Matriz%2C_em_Bag%C3%A9-RS.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 280,
        "priceHigh": 1120,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Tipuana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tipuana",
        "wikipediaExtract": "Tipuana tipu, also known as tipa, rosewood and pride of Bolivia, is a South American tree."
    },
    {
        "name": "אלביציה ורודה",
        "botanical": "Albizia julibrissin",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Albizia_julibrissin_399607509.jpg/330px-Albizia_julibrissin_399607509.jpg",
        "detail": "אלביציה ורודה היא עץ נשיר רחב עלים וחסר קוצים ממשפחת הקטניות. כיום היא משויכת לשבט המימוסיים (Mimoseae) בתת-המשפחה הקסאלפיניים (Caesalpinioideae). תפוצתה הטבעית משתרעת באזורים הממוזגים של אסיה – ממזרח הקווקז דרך איראן ותת-היבשת ההודית ועד סין, קוריאה ויפן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 240,
        "priceHigh": 940,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Albizia julibrissin",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Albizia_julibrissin",
        "wikipediaExtract": "Albizia julibrissin, the Persian silk tree, pink silk tree, or mimosa tree, is a species of tree in the Fabaceae family, native to southwestern and eastern Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%91%D7%99%D7%A6%D7%99%D7%94_%D7%95%D7%A8%D7%95%D7%93%D7%94"
    },
    {
        "name": "דולב מזרחי",
        "botanical": "Platanus orientalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Bursa016.jpg/330px-Bursa016.jpg",
        "detail": "דולב מזרחי הוא מין של דולב, עץ גדול ממדים המצוי לרוב לצד מקווי מים. הוא נציג יחיד של משפחתו בישראל.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 220,
        "priceHigh": 850,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Platanus orientalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Platanus_orientalis",
        "wikipediaExtract": "Platanus orientalis, the Oriental plane, is a large, deciduous tree in the family Platanaceae, growing to 30 m (98 ft) or more, and known for its longevity and spreading crown. In autumn, its deep green leaves may change to blood red, amber, and yellow.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%95%D7%9C%D7%91_%D7%9E%D7%96%D7%A8%D7%97%D7%99"
    },
    {
        "name": "מכנף נאה",
        "botanical": "Peltophorum dubium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Tipuana_tipu.jpg/330px-Tipuana_tipu.jpg",
        "detail": "מִכְנָף נָאֶה הוא עץ נשיר מותנה, יחיד בסוגו בעולם ממשפחת הקטניות. בישראל הוא עץ תרבות גדול המאופיין בפרחיו הצהובים ובתרמיליו שמצוידים בכנף רחבה בעלת עורקים בולטים. מכנף נאה שויך בעבר למשפחת פרפרניים (Papilionaceae). משפחה זו בוטלה ואוחדה עם משפחת הקטניות...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 280,
        "priceHigh": 1120,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Peltophorum dubium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peltophorum_dubium",
        "wikipediaExtract": "Peltophorum dubium is a tree in the family Fabaceae and subfamily Caesalpinioideae. This species is known as ibirá-pitá in Argentina and Paraguay, árbol de Artigas in Uruguay, and Cambuí in Brazil. It is a large tree, growing around 20–25 meters, with a more or less straight trunk.Foliage: bright green, and deciduous\nLeaves: compound, bipinnate, large. Numerous leaves with a central nervous system.\nFlowers: from 2 cm in diameter, arranged in bundles that end in spikes. The bright visible flowers are in corollas. They flower in the summer and at the beginning of autumn.\nFruits: indehiscent{?} legume, flat, leathery, and brown.\nSeeds: cylindrical with hard nuts.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9B%D7%A0%D7%A3_%D7%A0%D7%90%D7%94"
    },
    {
        "name": "הדס מצוי",
        "botanical": "Myrtus communis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Starr_070621-7466_Myrtus_communis.jpg/330px-Starr_070621-7466_Myrtus_communis.jpg",
        "detail": "הֲדַס מָצוּי הוא שיח יְרוֹק־עַד, בעל פרחים לבנים. כשממוללים את עליו, יש להם ריח אופייני. אחד משני המינים בסוג הדס. היחיד ממשפחת ההדסיים (Myrtaceae), שגדל בר בארץ ישראל. בארץ הוא נפוץ בעיקר באזור הצפון, נפוץ גם במזרח התיכון ובאירופה. כצמח תרבות גדל ההדס...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Myrtus communis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Myrtus_communis",
        "wikipediaExtract": "Myrtus communis, the common myrtle or true myrtle, is a species of flowering plant in the myrtle family Myrtaceae. It is an evergreen shrub native to southern Europe, North Africa, Western Asia, Macaronesia, and the Indian subcontinent, and also cultivated.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%93%D7%A1_%D7%9E%D7%A6%D7%95%D7%99"
    },
    {
        "name": "מורן החורש",
        "botanical": "Viburnum tinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Viburnum_tinus_at_Kedumim_1.jpg/330px-Viburnum_tinus_at_Kedumim_1.jpg",
        "detail": "מוֹרַן הַחֹרֶשׁ הוא שיח יְרוֹק־עַד זקוף, צפוף, בעל עלים נגדיים וגדולים ופרחים הערוּכים במעֵין סוככים ופרי ענבה. מין זה משויך לסוג מורן (Viburnum) ממשפחת המורניים. הוא גדל כצמח בר בחורש ים-תיכוני לח סביב אגן הים התיכון, ונפוץ כצמח תרבות ברחבי העולם. לפי...",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Viburnum tinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viburnum_tinus",
        "wikipediaExtract": "Viburnum tinus, the laurustinus or laurustine, is a species of flowering plant in the family Adoxaceae, native to the Mediterranean area of Europe and North Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%9F_%D7%94%D7%97%D7%95%D7%A8%D7%A9"
    },
    {
        "name": "אלת המסטיק",
        "botanical": "Pistacia lentiscus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Pistacia_lentiscus_sp.jpg/330px-Pistacia_lentiscus_sp.jpg",
        "detail": "אלת המסטיק היא שיח סבוך, צבעו ירוק כהה, רב-גזעים, ולעיתים רחוקות עץ קטן בעל גזע יחיד, ירוק-עד ודו-ביתי בסוג אלה ממשפחת האלתיים. היא נפוצה באיים הקנריים ובאגן הים התיכון, למעט חצי-האי סיני. בישראל היא נפוצה בחורשים של החבלים הים-תיכוניים הנמוכים, ואף גדלה...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "חולית",
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Pistacia lentiscus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pistacia_lentiscus",
        "wikipediaExtract": "Pistacia lentiscus is a dioecious evergreen shrub or small tree of the genus Pistacia native to the Mediterranean Basin. It grows up to 4 m (13 ft) tall and is cultivated for its aromatic resin, mainly on the Greek island of Chios, around the Turkish town of Çeşme and northern parts of Iraq.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%AA_%D7%94%D7%9E%D7%A1%D7%98%D7%99%D7%A7"
    },
    {
        "name": "לויקופילום",
        "botanical": "Leucophyllum frutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Leucophyllum_frutescens_%28Purple_Sage%29_W2_IMG_1125.jpg/330px-Leucophyllum_frutescens_%28Purple_Sage%29_W2_IMG_1125.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "חולית",
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Leucophyllum frutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leucophyllum_frutescens",
        "wikipediaExtract": "Leucophyllum frutescens is an evergreen shrub in the figwort family, Scrophulariaceae, native to the U.S. state of Texas, where it is the official \"State Native Shrub of Texas\", and to the states of Coahuila, Nuevo León, and Tamaulipas in northern Mexico. Although commonly known as Texas sage, it is not a true sage and is distinct from the genus Salvia. The species is also called Texas Ranger, Texas rain sage, cenizo, Texas silverleaf, Texas barometerbush, ash-bush, wild lilac, purple sage, senisa, cenicilla, palo cenizo, or hierba del cenizo."
    },
    {
        "name": "היביסקוס סיני",
        "botanical": "Hibiscus rosa-sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Hibiscus_rosa-sinensis_in_northern_Israel.jpg/330px-Hibiscus_rosa-sinensis_in_northern_Israel.jpg",
        "detail": "הִיבִּיסְקוּס סִינִי הוא מין שיח או עץ קטן ירוק-עד בסוג היביסקוס, המונה 241 מינים, ממשפחת החלמיתיים. הוא נפוץ ברחבי העולם ובמיוחד באזורים הטרופיים והסובטרופיים כצמח נוי וגינון עם תתי זנים ומכלואים שונים ומרובים במגוון צורת פרחים וצבעים. מוצאו אינו ברור, וישנן...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Hibiscus × rosa-sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hibiscus_%C3%97_rosa-sinensis",
        "wikipediaExtract": "Hibiscus × rosa-sinensis is a cultigen of tropical hibiscus, a flowering plant in the Hibiscus genus and Hibisceae tribe of the family Malvaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%91%D7%99%D7%A1%D7%A7%D7%95%D7%A1_%D7%A1%D7%99%D7%A0%D7%99"
    },
    {
        "name": "דורנטה",
        "botanical": "Duranta erecta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Duranta_erecta_serres_du_Luxembourg.jpg/330px-Duranta_erecta_serres_du_Luxembourg.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Duranta erecta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Duranta_erecta",
        "wikipediaExtract": "Duranta erecta is a species of flowering shrub in the verbena family Verbenaceae, native from Mexico to South America and the Caribbean. It is widely cultivated as an ornamental plant in tropical and subtropical gardens throughout the world, and has become naturalized in many places. Common names include golden dewdrop, pigeon berry, and skyflower."
    },
    {
        "name": "ננדינה",
        "botanical": "Nandina domestica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Nandina_domestica_cv_Otafukunante1.jpg/330px-Nandina_domestica_cv_Otafukunante1.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Nandina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nandina",
        "wikipediaExtract": "Nandina domestica commonly known as nandina, heavenly bamboo or sacred bamboo, is a species of flowering plant in the family Berberidaceae, native to eastern Asia from the Himalayas to Japan. It is the only member of the monotypic genus Nandina. Despite its name, it is not a true bamboo."
    },
    {
        "name": "פיטוספורום יפני",
        "botanical": "Pittosporum tobira",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Pittosporum_Tobira_JPG0.jpg/330px-Pittosporum_Tobira_JPG0.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pittosporum tobira",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pittosporum_tobira",
        "wikipediaExtract": "Pittosporum tobira is a species of sweet-smelling flowering plant in the pittosporum family Pittosporaceae known by several common names, including Australian laurel, Japanese pittosporum, mock orange and Japanese cheesewood. It is native to Japan, China, Taiwan, and Korea, but it is used throughout the world as an ornamental plant in landscaping and as cut foliage."
    },
    {
        "name": "אוג חרוק",
        "botanical": "Rhus crenata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Dune_Crowberry_-_Rhus_crenata_-_South_Africa_3.jpg/330px-Dune_Crowberry_-_Rhus_crenata_-_South_Africa_3.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Searsia crenata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Searsia_crenata",
        "wikipediaExtract": "Searsia crenata, previously known as Rhus crenata,, is a species of Searsia that is native to South Africa, where it grows in frost-free and light frost areas, especially on beach sand dunes."
    },
    {
        "name": "אבליה גדולת פרחים",
        "botanical": "Abelia x grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Abelia_flowers.jpg/330px-Abelia_flowers.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 36,
        "priceHigh": 175,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Abelia × grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Abelia_%C3%97_grandiflora",
        "wikipediaExtract": "Abelia × grandiflora is a hybrid species of flowering plant in the honeysuckle family Caprifoliaceae, raised by hybridising A. chinensis with A. uniflora."
    },
    {
        "name": "פלומבגו",
        "botanical": "Plumbago auriculata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Plumbago_auriculata_2718.jpg/330px-Plumbago_auriculata_2718.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 28,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Plumbago auriculata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Plumbago_auriculata",
        "wikipediaExtract": "Plumbago auriculata, the Cape leadwort, blue plumbago or Cape plumbago, is a species of flowering plant in the family Plumbaginaceae, native to South Africa and Mozambique."
    },
    {
        "name": "הרדוף הנחלים",
        "botanical": "Nerium oleander",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Nerium_oleander_%282%29.JPG/330px-Nerium_oleander_%282%29.JPG",
        "detail": "הַרְדּוּף הַנְּחָלִים הוא שיח גבוה וחסון, יְרוֹק־עַד ומין יחיד בסוגו ממשפחת ההַרְדּוּפִיִּים. בקיץ הוא ניכר בפריחתו הוורודה, בעלים גִּלְדָּנִיִּים ומוארכים, וידוע ברעילותו הרבה, שכן כל חלקי הצמח מכילים מוהל חלבי רעיל במיוחד. הוא גדל כצמח בר בגדות נחלים...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 36,
        "priceHigh": 175,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Nerium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nerium",
        "wikipediaExtract": "Nerium oleander, commonly known as oleander, rose laurel, be-still tree or rosebay, is a shrub or small tree cultivated worldwide in temperate and subtropical areas as an ornamental and landscaping plant. It is the only species currently classified in the genus Nerium, belonging to subfamily Apocynoideae of the dogbane family Apocynaceae. It is so widely cultivated that no precise region of origin has been identified, though it is usually associated with the Mediterranean Basin.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%A8%D7%93%D7%95%D7%A3_%D7%94%D7%A0%D7%97%D7%9C%D7%99%D7%9D"
    },
    {
        "name": "טקומית הכף",
        "botanical": "Tecoma capensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Starr_080219-2987_Tecoma_capensis.jpg/330px-Starr_080219-2987_Tecoma_capensis.jpg",
        "detail": "טֶקוֹמִית הַכֵּף היא שיח נוי ירוק-עד ממשפחת הביגנוניים, הנפוץ בגנים ובחצרות בישראל ובמקומות רבים בעולם. התפוצה הטבעית של הצמח משתרעת בעיקר באזורים הסובטרופיים, בין טנזניה לדרום אפריקה. שמו נגזר מאזור כף התקווה הטובה, שם הוגדר לראשונה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Tecomaria capensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tecomaria_capensis",
        "wikipediaExtract": "Tecomaria capensis, the Cape honeysuckle, is a species of flowering plant in the family Bignoniaceae, native to southern Africa. Despite its common name, it is not closely related to the true honeysuckle.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%98%D7%A7%D7%95%D7%9E%D7%99%D7%AA_%D7%94%D7%9B%D7%A3"
    },
    {
        "name": "ליגוסטרום יפני",
        "botanical": "Ligustrum japonicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Ligustrum_japonicum_01.jpg/330px-Ligustrum_japonicum_01.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 28,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Ligustrum japonicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ligustrum_japonicum",
        "wikipediaExtract": "Ligustrum japonicum, known as wax-leaf privet or Japanese privet is a species of Ligustrum (privet) native to central and southern Japan and Korea. It is widely cultivated in other regions, and is naturalized in California and in the southeastern United States from Texas to Virginia."
    },
    {
        "name": "קליסטמון",
        "botanical": "Callistemon citrinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Callistemon_citrinus-0878.jpg/330px-Callistemon_citrinus-0878.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Melaleuca citrina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca_citrina",
        "wikipediaExtract": "Melaleuca citrina, the common red bottlebrush, crimson bottlebrush, or lemon bottlebrush, is a plant in the myrtle family Myrtaceae, and is endemic to eastern Australia. Some Australian state herbaria continue to use the name Callistemon citrinus. It is a hardy and adaptable species, common in its natural habitat. It is widely cultivated, not only in Australia. It was one of the first Australian plants to be grown outside the country, having been taken to England in 1770 by Joseph Banks. Its showy red flower spikes, present over most of the year in an ideal situation, account for its popularity."
    },
    {
        "name": "גרווילאה",
        "botanical": "Grevillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Grevilleas.png/330px-Grevilleas.png",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 28,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Grevillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grevillea",
        "wikipediaExtract": "Grevillea, commonly known as spider flowers, is a genus of about 360 species of evergreen flowering plants in the family Proteaceae. Plants in the genus Grevillea are shrubs, rarely trees, with the leaves arranged alternately along the branches, the flowers zygomorphic, arranged in racemes at the ends of branchlets, and the fruit a follicle that splits down one side only, releasing one or two seeds."
    },
    {
        "name": "גרדניה",
        "botanical": "Gardenia jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Gardenia_jasminoides_flower_Argentina.jpg/330px-Gardenia_jasminoides_flower_Argentina.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת",
            "חומצית"
        ],
        "water": "בינונית",
        "priceLow": 36,
        "priceHigh": 175,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Gardenia jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gardenia_jasminoides",
        "wikipediaExtract": "Gardenia jasminoides, commonly known as gardenia and cape jasmine, is an evergreen flowering plant in the coffee family Rubiaceae. It is native to the subtropical and northern tropical parts of the Far East. Wild plants range from 30 centimetres to 3 metres in height. They have a rounded habit with very dense branches with opposite leaves that are lanceolate-oblong, leathery or gathered in groups on the same node and by a dark green, shiny and slightly waxy surface and prominent veins."
    },
    {
        "name": "אזליאה",
        "botanical": "Rhododendron",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Rhododendron-by-eiffel-public-domain-20040617.jpg/330px-Rhododendron-by-eiffel-public-domain-20040617.jpg",
        "detail": "רוֹדוֹדֶנְדְרוֹן הוא סוג צמחים ממשפחת האברשיים המונה 1545 מיני צמחים, רובם בעלי פרחים בולטים. הסוג כולל גם שורה של צמחים פופולריים בקרב גננים הידועים כאזליאה. אחד ממיני הרודודנדרון משמש כפרח הלאומי של נפאל.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת",
            "חומצית"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Rhododendron",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rhododendron",
        "wikipediaExtract": "Rhododendron, from Ancient Greek ῥόδον (rhódon), meaning \"rose\", and δένδρον (déndron), meaning \"tree\", is a very large genus of about 1,024 species of woody plants in the heath family (Ericaceae). They can be either evergreen or deciduous. Most species are native to eastern Asia and the Himalayan region, but smaller numbers occur elsewhere in Asia, and in North America, Europe and Australia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%93%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F"
    },
    {
        "name": "קמליה",
        "botanical": "Camellia japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Camellia_japonica_NBG.jpg/330px-Camellia_japonica_NBG.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת",
            "חומצית"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Camellia japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Camellia_japonica",
        "wikipediaExtract": "Camellia japonica, known as common camellia, or Japanese camellia, is a species of flowering plant from the genus Camellia in the tea family Theaceae. It is native to China and Japan, and grows naturally in forests at altitudes of around 300–1,100 metres (980–3,600 ft)."
    },
    {
        "name": "בודליה",
        "botanical": "Buddleja davidii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Buddleja_salvifolia.jpg/330px-Buddleja_salvifolia.jpg",
        "detail": "בודליה היא סוג של צמח ממשפחת הלועניתיים, על אף שבעבר סווגה במשפחת הלוגניים או במשפחה משל עצמה (Buddlejaceae). הסוג כולל כ-100 מינים של עצים, שיחים ורב-שנתיים, ירוקי-עד או נשירים. הגדולים מביניהם יכולים להגיע עד ל-30 מטרים, אך רוב המינים לא גדלים מעל ל-5...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Buddleja davidii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Buddleja_davidii",
        "wikipediaExtract": "Buddleja davidii, also called butterfly-bush, orange eye, or summer lilac, is a species of flowering plant in the family Scrophulariaceae, native to most of China except for the far northeast. It is widely used as an ornamental plant, and many named cultivars are in cultivation. The genus was named Buddleja after the English botanist, Reverend Adam Buddle. The species name, davidii, is after the French missionary and explorer in China, Father Armand David, who was the first European to report the shrub. It was found near Yichang by Dr Augustine Henry about 1887 and sent to St Petersburg. Another botanist-missionary in China, Jean-André Soulié, sent seed to the French nursery Vilmorin, and B. davidii entered commerce in the 1890s.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%93%D7%9C%D7%99%D7%94"
    },
    {
        "name": "איקליפטוס מסמרי כסף",
        "botanical": "Eucalyptus cinerea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Eucalyptus_cinerea_habit.jpg/330px-Eucalyptus_cinerea_habit.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Eucalyptus cinerea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Eucalyptus_cinerea",
        "wikipediaExtract": "Eucalyptus cinerea, commonly known as the Argyle apple, mealy stringbark or silver dollar tree, is a species of small- to medium-sized tree that is endemic to south-eastern Australia. It has rough, fibrous bark on the trunk and branches, usually only juvenile, glaucous, egg-shaped evergreen leaves, flower buds in groups of three, white flowers and conical to bell-shaped fruit."
    },
    {
        "name": "סיזיגיום",
        "botanical": "Syzygium australe",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Syzygium_australe_fruit1.JPG/330px-Syzygium_australe_fruit1.JPG",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Syzygium australe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syzygium_australe",
        "wikipediaExtract": "Syzygium australe, with many common names that include brush cherry, scrub cherry, creek lilly-pilly, creek satinash, and watergum, is a rainforest tree native to eastern Australia. It can attain a height of up to 35 m with a trunk diameter of 60 cm. In cultivation, this species is usually a small to medium-sized tree with a maximum height of only 18m."
    },
    {
        "name": "פוטיניה",
        "botanical": "Photinia x fraseri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Photinia_fraseri_B.JPG/330px-Photinia_fraseri_B.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Photinia × fraseri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Photinia_%C3%97_fraseri",
        "wikipediaExtract": "Photinia × fraseri, known as red tip photinia and Christmas berry, is a nothospecies in the rose family, Rosaceae. It is a hybrid between Photinia glabra and Photinia serratifolia."
    },
    {
        "name": "דודונאה",
        "botanical": "Dodonaea viscosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Dodonaea_viscosa_%28Hopbush%29_W2_IMG_1899.jpg/330px-Dodonaea_viscosa_%28Hopbush%29_W2_IMG_1899.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dodonaea viscosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dodonaea_viscosa",
        "wikipediaExtract": "Dodonaea viscosa, also known as the broadleaf hopbush, is a species of flowering plant in the Dodonaea (hopbush) genus that has a cosmopolitan distribution in tropical, subtropical and warm temperate regions of Africa, the Americas, southern Asia and Australasia. Dodonaea is part of Sapindaceae, the soapberry family."
    },
    {
        "name": "רוסליה",
        "botanical": "Russelia equisetiformis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/2023-11-16_Gala_de_los_Latin_Grammy%2C_27_%28cropped%29.jpg/330px-2023-11-16_Gala_de_los_Latin_Grammy%2C_27_%28cropped%29.jpg",
        "detail": "רוסליה וילה טובייה, הידועה בשמה הפרטי רוסליה, היא זמרת-יוצרת, שחקנית ומפיקה מוזיקלית קטלאנית. רוסליה ידועה בעקבות העיבודים המודרניים שלה למוזיקת פלמנקו והשילוב בין הפלמנקו לזרם האורבנו. רוסליה ביצעה שירים בשפות שונות ולא בספרדית בלבד במסגרת שיתופי פעולה עם...",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Russelia equisetiformis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Russelia_equisetiformis",
        "wikipediaExtract": "Russelia equisetiformis, the fountainbush, firecracker plant, coral plant, coral fountain, coralblow or fountain plant, is a species of flowering plant in the family Plantaginaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%A1%D7%9C%D7%99%D7%94"
    },
    {
        "name": "קריסה גדולת פרחים",
        "botanical": "Carissa macrocarpa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Starr_010820-0009_Carissa_macrocarpa.jpg/330px-Starr_010820-0009_Carissa_macrocarpa.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 44,
        "priceHigh": 200,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Carissa macrocarpa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carissa_macrocarpa",
        "wikipediaExtract": "Carissa macrocarpa is a shrub native to tropical and southern Africa. It is commonly known as the Natal plum, amathungulu, big num-num or large num-num."
    },
    {
        "name": "לאורוס אציל",
        "botanical": "Laurus nobilis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Starr-071024-0195-Laurus_nobilis-leaves-Enchanting_Floral_Gardens_of_Kula-Maui_%2824867859296%29.jpg/330px-Starr-071024-0195-Laurus_nobilis-leaves-Enchanting_Floral_Gardens_of_Kula-Maui_%2824867859296%29.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Laurus nobilis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Laurus_nobilis",
        "wikipediaExtract": "Laurus nobilis is an aromatic evergreen tree or large shrub with green, glabrous (smooth) leaves. It is in the flowering plant family Lauraceae. According to Muer, Jahn, & Sauerbier, the stem can be 1 metre in diameter and the tree can be as high as 20 metres. It is native to the Mediterranean region and is used as bay leaf for seasoning in cooking. Its common names include bay tree, bay laurel, sweet bay, true laurel, Grecian laurel, or simply laurel. Laurus nobilis figures prominently in classical Greco-Roman culture."
    },
    {
        "name": "אקליפה",
        "botanical": "Acalypha wilkesiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Acalypha_Flamengueira2.JPG/330px-Acalypha_Flamengueira2.JPG",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 36,
        "priceHigh": 175,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Acalypha wilkesiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Acalypha_wilkesiana",
        "wikipediaExtract": "Acalypha wilkesiana, common names copperleaf, Jacob's coat and Flamengueira, is an evergreen shrub growing to 3 metres (9.8 ft) high and 2 metres across. It has a closely arranged crown, with an erect stem and many branches. Both the branches and the leaves are covered in fine hairs. The leaves, which may be flat or crinkled, are large and broad with teeth around the edge. They can be 10–20 centimetres (3.9–7.9 in) long and 15 centimetres (5.9 in) wide. The leaves are coppery green with red splashes, giving them a mottled appearance. Separate male and female flowers appear on the same plant. The male flowers are in long spikes which hang downwards while the female flowers are in short spikes. The latter do not show up easily as they are often hidden among the leaves. The flower stalks are 10–20 cm long."
    },
    {
        "name": "סנטולינה",
        "botanical": "Santolina chamaecyparissus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Santolina_chamaecyparissus_flowers.jpg/330px-Santolina_chamaecyparissus_flowers.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 36,
        "priceHigh": 175,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Santolina chamaecyparissus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Santolina_chamaecyparissus",
        "wikipediaExtract": "Santolina chamaecyparissus, known as cotton lavender or lavender-cotton, is a species of flowering plant in the family Asteraceae, native to the western and central Mediterranean."
    },
    {
        "name": "מללויקה",
        "botanical": "Melaleuca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/6d/Melaleuca_armillaris.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 28,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Melaleuca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca",
        "wikipediaExtract": "Melaleuca is a genus of nearly 300 species of plants in the myrtle family, Myrtaceae, commonly known as paperbarks, honey-myrtles, bottlebrushes or tea-trees. They range in size from small shrubs that rarely grow to more than 1 m high, to trees up to 35 m (115 ft). Their flowers generally occur in groups, forming a \"head\" or \"spike\" resembling a brush used for cleaning bottles, containing up to 80 individual flowers."
    },
    {
        "name": "ויסטרינגיה",
        "botanical": "Westringia fruticosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Westringia_fruticosa_04.jpg/330px-Westringia_fruticosa_04.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 52,
        "priceHigh": 225,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Westringia fruticosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Westringia_fruticosa",
        "wikipediaExtract": "Westringia fruticosa, the coastal rosemary or coastal westringia, is a shrub that grows near the coast in eastern Australia."
    },
    {
        "name": "לנטנה שיחית",
        "botanical": "Lantana montevidensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Starr_070221-4728_Lantana_montevidensis.jpg/330px-Starr_070221-4728_Lantana_montevidensis.jpg",
        "detail": "שיח גינה שימושי למילוי, הסתרה, גדר חיה או מוקד צבעוני. מתאים לרוב אזורי הארץ עם התאמת השקיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 250,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lantana montevidensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_montevidensis",
        "wikipediaExtract": "Lantana montevidensis is a species of lantana native to South America that often forms dense thickets and mats over the ground. It is known by many common names, such as: trailing lantana, weeping lantana, creeping lantana, small lantana, purple lantana or trailing shrubverbena."
    },
    {
        "name": "בוגנוויליה",
        "botanical": "Bougainvillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Starr_030418-0058_Bougainvillea_spectabilis.jpg/330px-Starr_030418-0058_Bougainvillea_spectabilis.jpg",
        "detail": "בוגנוויליה, הוא סוג במשפחת הלילניים הנקרא על שמו של לואי אנטואן דה בוגנוויל, אדמירל ומגלה ארצות צרפתי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 59,
        "priceHigh": 245,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Bougainvillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bougainvillea",
        "wikipediaExtract": "Bougainvillea is a genus of thorny ornamental vines, bushes, and trees belonging to the family Nyctaginaceae. They are native to the tropical forests of South America. There are between 4 and 22 species in the genus. The inflorescence consists of large colorful sepal-like bracts which surround three simple waxy flowers, gaining popularity for the plant as an ornamental. The plant is named after explorer Louis Antoine de Bougainville (1729–1811), after it was documented on one of his expeditions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%92%D7%A0%D7%95%D7%95%D7%99%D7%9C%D7%99%D7%94"
    },
    {
        "name": "יסמין כוכבי",
        "botanical": "Trachelospermum jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Trachelospermum_jasminoides1215878198.jpg/330px-Trachelospermum_jasminoides1215878198.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 59,
        "priceHigh": 245,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Trachelospermum jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Trachelospermum_jasminoides",
        "wikipediaExtract": "Trachelospermum jasminoides is a species of flowering plant in the family Apocynaceae, native to eastern and southeastern Asia. Common names include Confederate jasmine, star jasmine, Confederate jessamine, and Chinese star jessamine."
    },
    {
        "name": "פנדוריאה",
        "botanical": "Pandorea jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/2007_pandorea_jasminoides_3.jpg/330px-2007_pandorea_jasminoides_3.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 35,
        "priceHigh": 170,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pandorea jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pandorea_jasminoides",
        "wikipediaExtract": "Pandorea jasminoides, also known by the common names bower of beauty and bower vine, is a species of flowering plant in the family Bignoniaceae and is endemic to eastern Australia. It is a woody climber with pinnate leaves that have three to nine egg-shaped leaflets and white or pink trumpet-shaped flowers that are red and hairy inside. It is also grown as an ornamental."
    },
    {
        "name": "פסיפלורה",
        "botanical": "Passiflora edulis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Passion_fruits_-_whole_and_halved.jpg/330px-Passion_fruits_-_whole_and_halved.jpg?utm_source=he.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "שעונית נאכלת הוא צמח מטפס, שמגודל מסחרית לשם פריו האכיל. מקור הצמח באזורים הטרופיים והסובטרופיים של אמריקה הדרומית ויער האמזונאס ומגדלים אותו בהיקף נרחב במספר גדל והולך של מדינות כדוגמת הודו, ניו זילנד, הקריביים, ברזיל, אקוודור, קליפורניה, פלורידה, הוואי,...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 35,
        "priceHigh": 170,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Passiflora edulis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Passiflora_edulis",
        "wikipediaExtract": "Passiflora edulis, commonly known as passion fruit, is a vine species of passion flower native to southern Brazil, through Paraguay, and northern Argentina. The fruit is a pepo, a type of botanical berry, round to oval, either yellow or dark purple at maturity, with a soft to firm, juicy interior filled with numerous seeds.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A2%D7%95%D7%A0%D7%99%D7%AA_%D7%A0%D7%90%D7%9B%D7%9C%D7%AA"
    },
    {
        "name": "ויסטריה",
        "botanical": "Wisteria sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/he/thumb/2/2b/Wisteria_in_Jerusalem.jpg/330px-Wisteria_in_Jerusalem.jpg",
        "detail": "וִיסטֵריָה היא סוג צמח נוי מטפס ממשפחת הפרפרניים. הוויסטריה נקראת על שמו של פרופסור קספר ויסטר, מומחה לאנטומיה באוניברסיטת פנסילבניה שבארצות הברית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 51,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Wisteria sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Wisteria_sinensis",
        "wikipediaExtract": "Wisteria sinensis, commonly known as the Chinese wisteria, is a species of flowering plant in the pea family, native to China, in the provinces of Guangxi, Guizhou, Hebei, Henan, Hubei, Shaanxi, and Yunnan. Growing 20–30 m (66–98 ft) tall, it is a deciduous vine. It is widely cultivated in temperate regions for its twisting stems and masses of scented flowers in hanging racemes, in spring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A1%D7%98%D7%A8%D7%99%D7%94"
    },
    {
        "name": "גפן מאכל",
        "botanical": "Vitis vinifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Cabernet_Sauvignon_Gaillac.jpg/330px-Cabernet_Sauvignon_Gaillac.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 51,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Vitis vinifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Vitis_vinifera",
        "wikipediaExtract": "Vitis vinifera, the common grape vine, is a species of flowering plant, native to the Mediterranean region, Central Europe, and southwestern Asia, from Morocco and Portugal north to southern Germany and east to northern Iran. As of 2012, there were between 5,000 and 10,000 varieties of Vitis vinifera grapes though only a few are of commercial significance for wine and table grape production."
    },
    {
        "name": "קיסוס החורש",
        "botanical": "Hedera helix",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/City_of_London_Cemetery_ivy_on_London_plane_tree_trunk_bark_1.jpg/330px-City_of_London_Cemetery_ivy_on_London_plane_tree_trunk_bark_1.jpg",
        "detail": "קִיסוֹס הַחֹרֶשׁ הוא שיח מטפס רב שנתי ענף, מין יחיד בסוגו ובמשפחתו בישראל אשר משויך לסוג קיסוס ממשפחת הקיסוסיים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 59,
        "priceHigh": 245,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Hedera helix",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hedera_helix",
        "wikipediaExtract": "Hedera helix, simply ivy, or common ivy, English ivy, European ivy, King's choice ivy, is a species of flowering plant in the family Araliaceae. It is native to most of Europe and parts of western Asia. Ivy is a clinging evergreen vine that grows on tree trunks, walls, and fences in gardens, waste spaces, and wild habitats. Ivy is popular as an ornamental plant, but escaped plants have become naturalised outside its native range. Ivy has considerable cultural significance and symbolism.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A1%D7%95%D7%A1_%D7%94%D7%97%D7%95%D7%A8%D7%A9"
    },
    {
        "name": "טונברגיה",
        "botanical": "Thunbergia grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Thunbergia_grandiflora_IMG_8085.jpg/330px-Thunbergia_grandiflora_IMG_8085.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 59,
        "priceHigh": 245,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Thunbergia grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thunbergia_grandiflora",
        "wikipediaExtract": "Thunbergia grandiflora is an evergreen vine in the family Acanthaceae. It is native to China, India, Nepal, Bangladesh, Indochina and Myanmar and widely naturalised elsewhere. Common names include Bengal clockvine, Bengal trumpet, blue skyflower, blue thunbergia, blue trumpetvine, clockvine, skyflower and skyvine."
    },
    {
        "name": "יערה יפנית",
        "botanical": "Lonicera japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Honeysuckle_flowers.jpg/330px-Honeysuckle_flowers.jpg",
        "detail": "יערה יפנית היא צמח נוי מטפס הנפוץ בישראל. קל להבדיל אותה מהיערה האיטלקית, הגדלה בר בחבל ההררי, על-פי העלים: ליערה היפנית עלים מוארכים בעלי חוד בקצה, ואילו ליערה האיטלקית עלים כמעט עגולים. היערה היפנית גדלה באופן טבעי במזרח אסיה, בין השאר ביפן, בקוריאה, בסין...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 67,
        "priceHigh": 270,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Lonicera japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lonicera_japonica",
        "wikipediaExtract": "Lonicera japonica, known as Japanese honeysuckle and golden-and-silver honeysuckle, is a species of honeysuckle native to East Asia, including many parts of China. It is often grown as an ornamental plant, but has become an invasive species in a number of countries. It is used in traditional Chinese medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%A2%D7%A8%D7%94_%D7%99%D7%A4%D7%A0%D7%99%D7%AA"
    },
    {
        "name": "יסמין רפואי",
        "botanical": "Jasminum officinale",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Jasminum_officinale_-_Bot._Mag._31%2C_1787.jpg/330px-Jasminum_officinale_-_Bot._Mag._31%2C_1787.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 67,
        "priceHigh": 270,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Jasminum officinale",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jasminum_officinale",
        "wikipediaExtract": "Jasminum officinale, known as the common jasmine or simply jasmine, is a species of flowering plant in the olive family Oleaceae. It is native to the Caucasus and parts of Asia, also widely naturalized."
    },
    {
        "name": "סולנום מטפס",
        "botanical": "Solanum jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D_%D7%9E%D7%98%D7%A4%D7%A1.jpg/330px-%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D_%D7%9E%D7%98%D7%A4%D7%A1.jpg",
        "detail": "סולנום מטפס הוא צמח טרופי מטפס מעוצה, ירוק-עד ואינו קוצני. מין זה משויך לסוג סולנום ממשפחת הסולניים, ומוצאו מהאזורים הטרופיים - מפלורידה עד הקריביים, ממקסיקו ועד ונצואלה, ומברזיל.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 67,
        "priceHigh": 270,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Solanum laxum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Solanum_laxum",
        "wikipediaExtract": "Solanum laxum, commonly known as potato vine, potato climber or jasmine nightshade, is an evergreen vine in the family Solanaceae. It is native to South America and commonly grown as an ornamental garden plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D_%D7%9E%D7%98%D7%A4%D7%A1"
    },
    {
        "name": "אנטיגון",
        "botanical": "Antigonon leptopus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Antigonon_leptopus_at_FELDA_Sungai_Sayong%2C_Johor_20250401_125650.jpg/330px-Antigonon_leptopus_at_FELDA_Sungai_Sayong%2C_Johor_20250401_125650.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 43,
        "priceHigh": 195,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Antigonon leptopus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antigonon_leptopus",
        "wikipediaExtract": "Antigonon leptopus is a species of perennial vine in the buckwheat family commonly known as coral vine or queen's wreath. This clambering vine is characterized by showy, usually pink flowers that can bloom throughout the year and large, heart-shaped leaves. A. leptopus is native to the Pacific and Atlantic coastal plains of Mexico, but also occurs as a roadside weed from Mexico south to Central America. It is widely introduced and invasive throughout tropical regions of the world, including in the south and eastern United States, the West Indies, South America, and the Old World tropics of Asia and Africa. This species is utilized for its edible tubers and seeds, but also for its horticultural properties as an ornamental vine in warmer parts of the world."
    },
    {
        "name": "פירוסטגיה",
        "botanical": "Pyrostegia venusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Pyrostegia_venusta3.JPG/330px-Pyrostegia_venusta3.JPG",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 35,
        "priceHigh": 170,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pyrostegia venusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pyrostegia_venusta",
        "wikipediaExtract": "Pyrostegia venusta, also commonly known as flamevine or orange trumpet vine, is a plant species of the genus Pyrostegia of the family Bignoniaceae originally native to southern Brazil, Bolivia, northeastern Argentina and Paraguay; today, it is also a widely cultivated garden species."
    },
    {
        "name": "מנדווילה",
        "botanical": "Mandevilla sanderi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Flower-center142058.jpg/330px-Flower-center142058.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 51,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Mandevilla sanderi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mandevilla_sanderi",
        "wikipediaExtract": "Mandevilla sanderi, the Brazilian jasmine, is a vine belonging to the genus Mandevilla. Grown as an ornamental plant, the species is endemic to the State of Rio de Janeiro in Brazil. It is a rapidly growing, creeping, perennial plant, pruning shoots about 60 cm per year."
    },
    {
        "name": "קלרודנדרון מטפס",
        "botanical": "Clerodendrum thomsoniae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Clerodendron_thomsoniae1.jpg/330px-Clerodendron_thomsoniae1.jpg",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 59,
        "priceHigh": 245,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Clerodendrum thomsoniae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clerodendrum_thomsoniae",
        "wikipediaExtract": "Clerodendrum thomsoniae is a species of flowering plant in the genus Clerodendrum of the family Lamiaceae, native to tropical west Africa from Cameroon west to Senegal. It is an evergreen liana growing to 4 m (13 ft) tall, with ovate to oblong leaves 8–17 cm (3–7 in) cm long. The flowers are produced in cymes of 8–20 together, each flower with a pure white to pale purple five-lobed calyx 2.5 cm in diameter, and a red five-lobed corolla 2 cm long and in diameter. The flowers are born in cymose inflorescences arising from the axils of the leaves. The leaves, in turn, are arranged opposite to each other and at right angles to the pairs above and below."
    },
    {
        "name": "אלמון הודי",
        "botanical": "Quisqualis indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Combretum_indicum_01.JPG/330px-Combretum_indicum_01.JPG",
        "detail": "אלמון הודי הוא שיח מטפס, הזקוק לסוג של גדר כדי לטפס ולהיכרך סביבו.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 43,
        "priceHigh": 195,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Combretum indicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Combretum_indicum",
        "wikipediaExtract": "Combretum indicum, commonly known as the Rangoon creeper or Burma creeper, is a vine with red flower clusters which is native to tropical Asia and grows in thickets, primary and secondary forest, and along river banks in the Indian subcontinent, Malaysia and the Philippines. It has since been cultivated and naturalized in tropical areas such as Burma, Vietnam, and Thailand.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%9E%D7%95%D7%9F_%D7%94%D7%95%D7%93%D7%99"
    },
    {
        "name": "לנטנה",
        "botanical": "Lantana camara",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/LantanaFlowerLeaves.jpg/330px-LantanaFlowerLeaves.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lantana camara",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_camara",
        "wikipediaExtract": "Lantana camara is a species of flowering plant in the verbena family (Verbenaceae), native to the tropics of the Americas. It is a very adaptable species, which can inhabit a wide variety of ecosystems; once it has been introduced into a habitat it spreads rapidly; between 45ºN and 45ºS and less than 1,400 metres in altitude."
    },
    {
        "name": "דיאטס",
        "botanical": "Dietes grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Moreia-branca%2C_Dietes_sp.%2C_talvez_Dietes_grandiflora%2C_em_Bag%C3%A9%2C_RS%2C_Brasil.jpg/330px-Moreia-branca%2C_Dietes_sp.%2C_talvez_Dietes_grandiflora%2C_em_Bag%C3%A9%2C_RS%2C_Brasil.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת",
            "חרסיתית"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dietes grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dietes_grandiflora",
        "wikipediaExtract": "Dietes grandiflora, commonly named fortnight lily, large wild iris, African iris or fairy iris, is a rhizomatous perennial plant of the Iris Family (Iridaceae) with long, rigid, sword-like green leaves. This species is common in horticulture in its native South Africa, where it is often used in public gardens, beautification of commercial premises and along roadsides."
    },
    {
        "name": "אגפנתוס",
        "botanical": "Agapanthus africanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/A_flower_of_Agapanthus_in_Israel.jpg/330px-A_flower_of_Agapanthus_in_Israel.jpg",
        "detail": "אגפנתוס הוא סוג של צמח בעל פרחים, יחיד בתת-משפחה אגפנתים (Agapanthoideae) שבמשפחת הנרקיסיים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת",
            "חרסיתית"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Agapanthus africanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agapanthus_africanus",
        "wikipediaExtract": "Agapanthus africanus, commonly named the African lily, is a flowering plant from the genus Agapanthus found only on rocky sandstone slopes of the winter rainfall fynbos from the Cape Peninsula to Swellendam. It is also called the lily of the Nile in spite of only growing in South Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%92%D7%A4%D7%A0%D7%AA%D7%95%D7%A1"
    },
    {
        "name": "גאורה",
        "botanical": "Gaura lindheimeri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/%28MHNT%29_Oenothera_lindheimeri.jpg/330px-%28MHNT%29_Oenothera_lindheimeri.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 48,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Oenothera lindheimeri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oenothera_lindheimeri",
        "wikipediaExtract": "Oenothera lindheimeri, commonly known as Lindheimer's beeblossom, white gaura, pink gaura, Lindheimer's clockweed, and Indian feather, is a species of Oenothera. Several of its common names derive from the genus Gaura, in which this species was formerly placed."
    },
    {
        "name": "מרווה צחורה",
        "botanical": "Salvia leucantha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A6%D7%97%D7%95%D7%A8%D7%94.jpg/330px-%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A6%D7%97%D7%95%D7%A8%D7%94.jpg",
        "detail": "מַרְוָה צְחוֹרָה היא בן-שיח ריחני מאוד, אחד מ-986 מינים בסוג מרווה ממשפחת השִׂפְתָנִיִּים (Lamiaceae), שרובם הגדול נפוצים באזורים הסובטרופיים והממוזגים ברום 50 מ' עד 2,300 מ'. מרווה צחורה הובאה ממקסיקו, ארץ מוצאה, ומאמריקה הטרופית לישראל ולשאר העולם, כצמח גן...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Salvia leucantha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_leucantha",
        "wikipediaExtract": "Salvia leucantha, or Mexican bush sage, is a herbaceous perennial plant in the family Lamiaceae that is native to subtropical and tropical conifer forests in central and eastern Mexico. The flowers are usually white, emerging from coloured bracts. It is not frost hardy, but is often grown in warmer latitudes for its prominent arching velvety blue or purple inflorescences.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A6%D7%97%D7%95%D7%A8%D7%94"
    },
    {
        "name": "מרווה גרג",
        "botanical": "Salvia greggii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Salvia_greggii_kz2.jpg/330px-Salvia_greggii_kz2.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Salvia greggii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_greggii",
        "wikipediaExtract": "Salvia greggii, the autumn sage, is a herbaceous perennial plant native to a long, narrow area from southwest Texas, through the Chihuahuan Desert and into the Mexican state of San Luis Potosi, typically growing in rocky soils at elevations from 5,000 to 9,000 ft. It was named and described in 1870 by botanist Asa Gray after Josiah Gregg (1806–1850), a merchant, explorer, naturalist, and author from the American Southwest and Northern Mexico, who found and collected the plant in Texas. It is closely related to, and frequently hybridizes with, Salvia microphylla. Despite the common name \"autumn sage\", it blooms throughout the summer and autumn."
    },
    {
        "name": "רודבקיה",
        "botanical": "Rudbeckia fulgida",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Rudbeckia_fulgida.JPG/330px-Rudbeckia_fulgida.JPG",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 48,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Rudbeckia fulgida",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rudbeckia_fulgida",
        "wikipediaExtract": "Rudbeckia fulgida, the orange coneflower or perennial coneflower, is a species of flowering plant in the family Asteraceae, native to eastern North America."
    },
    {
        "name": "אכינצאה",
        "botanical": "Echinacea purpurea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/EchinaceaPurpureaMaxima1a.UME.JPG/330px-EchinaceaPurpureaMaxima1a.UME.JPG",
        "detail": "קיפודנית היא סוג של פרח עשבוני ממשפחת המורכבים. הצמח נפוץ ברחבי צפון ומרכז אמריקה. מינים שונים של הצמח משמשים כצמחי מרפא, בעיקר כנגד הצטננות, אולם המחקר המדעי לא הוכיח את יעילותם באופן חד משמעי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Echinacea purpurea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echinacea_purpurea",
        "wikipediaExtract": "Echinacea purpurea, the eastern purple coneflower, purple coneflower, hedgehog coneflower, or Echinacea, is a North American species of flowering plant in the family Asteraceae. It is native to parts of eastern North America and present to some extent in the wild in much of the eastern, southeastern and midwestern United States, as well as in the Canadian Province of Ontario. It is most common in the Ozarks, the Mississippi Valley, and the Ohio Valley. Its habitats include dry open woods, prairies, and barrens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A4%D7%95%D7%93%D7%A0%D7%99%D7%AA"
    },
    {
        "name": "גזניה",
        "botanical": "Gazania rigens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Unidentified_Gazania_cultivar_5.jpg/330px-Unidentified_Gazania_cultivar_5.jpg",
        "detail": "גזניה הוא צמח בעל פרחים רב-שנתי ממשפחת המורכבים המצוי באופן טבעי בדרום אפריקה. לצמח פריחה צבעונית והוא משמש צמח נוי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Gazania rigens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gazania_rigens",
        "wikipediaExtract": "Gazania rigens, sometimes called treasure flower, is a species of flowering plant in the family Asteraceae, native to coastal areas of southern Africa. It is naturalised elsewhere and is widely cultivated as an ornamental plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%96%D7%A0%D7%99%D7%94"
    },
    {
        "name": "אוסטאוספרמום",
        "botanical": "Osteospermum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Osteospermum_spinosum_var._spinosum_1DS-II_1-9738.jpg/330px-Osteospermum_spinosum_var._spinosum_1DS-II_1-9738.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Osteospermum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Osteospermum",
        "wikipediaExtract": "Osteospermum, is a genus of flowering plants belonging to the Calenduleae, one of the smaller tribes of the sunflower/daisy family Asteraceae. They are known as the daisybushes or African daisies. Its species have been given several common names, including African daisy, South African daisy, Cape daisy and blue-eyed daisy. The name Cape daisy is also applied to Dimorphotheca pluvialis."
    },
    {
        "name": "ורבנה",
        "botanical": "Verbena",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Aloysia_triphylla1.jpg/330px-Aloysia_triphylla1.jpg",
        "detail": "לואיזה היא סוג ממשפחת הורבניים הכולל 35 מינים שונים. המוכר ביותר הוא לואיזה לימונית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 48,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Verbena",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Verbena",
        "wikipediaExtract": "Verbena, also known as vervain or verveine, is a genus in the family Verbenaceae. It contains about 150 species of annual and perennial herbaceous or semi-woody flowering plants. The majority of the species are native to the Americas and Asia; however, Verbena officinalis, the common vervain or common verbena, is the type species and native to Europe.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94"
    },
    {
        "name": "גרניום / פלרגוניום",
        "botanical": "Pelargonium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Pelargonium_cucullatum_Contour_Path_Rhodes_Mem.JPG/330px-Pelargonium_cucullatum_Contour_Path_Rhodes_Mem.JPG",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pelargonium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium",
        "wikipediaExtract": "Pelargonium is a genus of flowering plants commonly called geraniums, pelargoniums, or storksbills. It includes about 280 species of perennials, succulents, and shrubs. Taxonomist Carl Linnaeus originally included all the species of Pelargonium and Geranium under the latter name. In 1789, Charles Louis L'Héritier de Brutelle separated them into two genera."
    },
    {
        "name": "ליריופה",
        "botanical": "Liriope muscari",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Carpioni%2C_Giulio_-_Liriope_Bringing_Narcissus_before_Tiresias_-_1660s.jpg/330px-Carpioni%2C_Giulio_-_Liriope_Bringing_Narcissus_before_Tiresias_-_1660s.jpg",
        "detail": "ליריופה היא נימפת נאיאדה מהמיתולוגיה היוונית, שמקורה באזור פוקיס שבמרכז יוון. ליריופה נודעה בעיקר כאמו של נרקיסוס, אותו ילדה כתוצאה מאיחוד עם אל הנהר קפיסוס אשר \"בחיבוק זרימתו המפותלת אחז בה ואנסה\", על פי תיאורו של אובידיוס ב\"מטמורפוזות\".",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת",
            "חרסיתית"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Liriope muscari",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Liriope_muscari",
        "wikipediaExtract": "Liriope muscari is a species of flowering plant from East Asia. Common names in English include big blue lilyturf, lilyturf, border grass, and monkey grass. This small herbaceous perennial has grass-like evergreen foliage and lilac-purple flowers which produce single-seeded berries on a spike in the fall. In some parts of the United States, it is an invasive species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%A8%D7%99%D7%95%D7%A4%D7%94"
    },
    {
        "name": "אופיופוגון",
        "botanical": "Ophiopogon japonicus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Japonska_ka%C4%8Dja_brada.jpg/330px-Japonska_ka%C4%8Dja_brada.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Ophiopogon japonicus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ophiopogon_japonicus",
        "wikipediaExtract": "Ophiopogon japonicus (dwarf lilyturf, mondograss, fountainplant, monkeygrass; Japanese: リュウノヒゲ ryū-no-hige or ジャノヒゲ ja-no-hige is a species of Ophiopogon native to China, India, Japan, Nepal, and Vietnam."
    },
    {
        "name": "איריס גרמני",
        "botanical": "Iris germanica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Iris_Germanica_2012-2.jpg/330px-Iris_Germanica_2012-2.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Iris × germanica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Iris_%C3%97_germanica",
        "wikipediaExtract": "Iris × germanica is the accepted name for a species of flowering plants in the family Iridaceae commonly known as the bearded iris or the German bearded iris. It is of hybrid origin. Varieties include I. × g. var. florentina."
    },
    {
        "name": "המרוקליס",
        "botanical": "Hemerocallis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Hemerocallis_lilioasphodelus.jpg/330px-Hemerocallis_lilioasphodelus.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Daylily",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Daylily",
        "wikipediaExtract": "A daylily, day lily or ditch-lily is a flowering plant in the genus Hemerocallis, a member of the family Asphodelaceae, subfamily Hemerocallidoideae, native to Asia. Despite the common name, it is not taxonomically classified in the lily genus. Gardening enthusiasts and horticulturists have long bred Hemerocallis species for their attractive flowers; a select few species of the genus have edible petals, while some are extremely toxic. Thousands of cultivars have been registered by the American Daylily Society, the only internationally recognized registrant according to the International Code of Nomenclature for Cultivated Plants. The plants are perennial, bulbous plants, whose common name alludes to its flowers, which typically last about a day."
    },
    {
        "name": "קוראופסיס",
        "botanical": "Coreopsis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Coreopsisgigantea.jpg/330px-Coreopsisgigantea.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Coreopsis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coreopsis",
        "wikipediaExtract": "Coreopsis is a genus of flowering plants in the family Asteraceae. Common names include calliopsis and tickseed, a name shared with various other plants."
    },
    {
        "name": "גיירדיה",
        "botanical": "Gaillardia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Gaillardia_in_Aspen_%2891273%29.jpg/330px-Gaillardia_in_Aspen_%2891273%29.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Gaillardia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gaillardia",
        "wikipediaExtract": "Gaillardia is a genus of flowering plants in the family Asteraceae, native to North and South America. It was named after Maître Gaillard de Charentonneau, an 18th-century French magistrate who was an enthusiastic botanist. The common name may refer to the resemblance of the inflorescence to the brightly patterned blankets made by Native Americans, or to the ability of wild taxa to blanket the ground with colonies. Many cultivars have been bred for ornamental use."
    },
    {
        "name": "פלוקס",
        "botanical": "Phlox",
        "image": "https://upload.wikimedia.org/wikipedia/he/a/a1/Phlox.jpg",
        "detail": "פלוקס הוא דמות בדיונית ביקום הבדיוני של זיכיון \"מסע בין כוכבים\", המופיע ב\"מסע בין כוכבים: אנטרפרייז\" ומשרת כקצין הרפואה הראשי על ספינת החלל \"אנטרפרייז\". את דמותו מגלם השחקן האמריקאי ג'ון בילינגסלי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Phlox",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phlox",
        "wikipediaExtract": "Phlox is a genus of 68 species of perennial and annual plants in the family Polemoniaceae. They are found mostly in North America in diverse habitats from alpine tundra to open woodland and prairie. Some flower in spring, others in summer and fall. Flowers may be pale blue, violet, pink, bright red, or white. Many are fragrant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%95%D7%A7%D7%A1"
    },
    {
        "name": "נפית",
        "botanical": "Nepeta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Catnip-blossom.jpg/330px-Catnip-blossom.jpg",
        "detail": "נֶפִּית היא סוג צמחים ארומטיים ממשפחת השפתניים. הסוג מקיף צמחים עשבוניים רב-שנתיים, בני שיח ושיחים והוא כולל כ-296 מינים ו-47 תת-מינים, בעבר (2022) כלל הסוג 261 מינים ו-45 תת-מינים. חמישה מינים מסוג זה מיוצגים בצמחיית הבר של ארץ ישראל, הבולט שביניהם המין נפית...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Nepeta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nepeta",
        "wikipediaExtract": "Nepeta is a genus of flowering plants in the family Lamiaceae. The genus name, from Latin nepeta (“catnip”), is reportedly in reference to Nepete, an ancient Etruscan city. There are 295 accepted species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A4%D7%99%D7%AA"
    },
    {
        "name": "חרצית שיחית",
        "botanical": "Argyranthemum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Argyranthemum_frutescens_subsp._canariae.JPG/330px-Argyranthemum_frutescens_subsp._canariae.JPG",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Argyranthemum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Argyranthemum",
        "wikipediaExtract": "Argyranthemum is a genus of flowering plants belonging to the family Asteraceae. Members of this genus are sometimes also placed in the genus Chrysanthemum."
    },
    {
        "name": "אוזן ארי",
        "botanical": "Leonotis leonurus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Southern_Double-collared_Sunbird_%28Cinnyris_chalibeus%29_immature_male_foraging_on_flowers_of_Wild_Dagga_%28Leonotis_leonurus%29_%2832812380721%29.jpg/330px-Southern_Double-collared_Sunbird_%28Cinnyris_chalibeus%29_immature_male_foraging_on_flowers_of_Wild_Dagga_%28Leonotis_leonurus%29_%2832812380721%29.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Leonotis leonurus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leonotis_leonurus",
        "wikipediaExtract": "Leonotis leonurus, also known as wild dagga and lion's ear, is a plant species in the mint family Lamiaceae. It is a broadleaf evergreen shrub, native to South Africa, where it is very common, with a wide altitudinal range from 5 m up to 1980 m. It is known for its medicinal properties. The main psychoactive component of Leonotis leonurus is hypothesized to be related to the presence of leonurine or labdanes; Leonotis leonurus has been confirmed to contain leonurine according to peer reviewed journal published phytochemical analysis. Like other plants in the mint family, it also contains marrubin. The word \"dagga\" comes from Afrikaans, and derives in turn from the Khoikhoi \"dachab\". The word \"dagga\" has been extended to include cannabis in Afrikaans and South African English, so the use of \"wild\" serves to distinguish Leonotis leonurus from this."
    },
    {
        "name": "כסמנתה",
        "botanical": "Chasmanthe",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Chasmanthe_floribunda_3.jpg/330px-Chasmanthe_floribunda_3.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Chasmanthe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chasmanthe",
        "wikipediaExtract": "Chasmanthe is a genus of flowering plants in the family Iridaceae, first described in 1932. It is endemic to Cape Province in South Africa. It is widely grown as an ornamental plant and is naturalized in various locations."
    },
    {
        "name": "קליביה",
        "botanical": "Clivia miniata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Clivia_miniata%2C_blomme_en_vrugte%2C_Manie_van_der_Schijff_BT%2C_a.jpg/330px-Clivia_miniata%2C_blomme_en_vrugte%2C_Manie_van_der_Schijff_BT%2C_a.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Clivia miniata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clivia_miniata",
        "wikipediaExtract": "Clivia miniata, the Natal lily or bush lily, is a species of flowering plant in the genus Clivia of the family Amaryllidaceae, native to woodland habitats in South Africa and Eswatini. It is also widely cultivated as an ornamental."
    },
    {
        "name": "קנא הודית",
        "botanical": "Canna indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Cinnamon-bellied_flowerpiercer_%28Diglossa_baritula%29_male_on_Indian_shot_%28Canna_indica%29_Finca_El_Pilar.jpg/330px-Cinnamon-bellied_flowerpiercer_%28Diglossa_baritula%29_male_on_Indian_shot_%28Canna_indica%29_Finca_El_Pilar.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Canna indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Canna_indica",
        "wikipediaExtract": "Canna indica, commonly known as Indian shot, African arrowroot, edible canna, purple arrowroot, Sierra Leone arrowroot, is a plant species in the family Cannaceae. It is native to the Americas and naturalized elsewhere. The edible rhizomes are a source of starch."
    },
    {
        "name": "אלסטרומריה",
        "botanical": "Alstroemeria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Alstroemeria_aurantiaca.jpg/330px-Alstroemeria_aurantiaca.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Alstroemeria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alstroemeria",
        "wikipediaExtract": "Alstroemeria, commonly called the Peruvian lily or lily of the Incas, is a genus of flowering plants in the family Alstroemeriaceae. They are all native to South America, although some have become naturalized in the United States, Mexico, Australia, New Zealand, Madeira and the Canary Islands. Almost all of the species are restricted to one of two distinct centers of diversity: one in central Chile and southern Argentina, the other in eastern Brazil. Species of Alstroemeria from Patagonia are winter-growing plants, while those of Brazil are summer growing. All are long-lived perennials except A. graminea, a diminutive annual from the Atacama Desert of Chile."
    },
    {
        "name": "פלרגון לימוני",
        "botanical": "Pelargonium crispum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Pelargonium_crispum_1zz.jpg/330px-Pelargonium_crispum_1zz.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Pelargonium crispum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium_crispum",
        "wikipediaExtract": "Pelargonium crispum is a Pelargonium species native to the Western Cape Province, South Africa. It is in the subgenus Pelargonium along with Pelargonium graveolens and Pelargonium capitatum and Pelargonium tomentosum."
    },
    {
        "name": "צורית",
        "botanical": "Sedum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flickr_-_Government_Press_Office_%28GPO%29_-_Mitzpe_Tzurit.jpg/330px-Flickr_-_Government_Press_Office_%28GPO%29_-_Mitzpe_Tzurit.jpg",
        "detail": "צוּרִית הוא יישוב קהילתי בגליל בתחומי המועצה האזורית משגב. היישוב שוכן על הר גילון, מערבית לכרמיאל. היישוב נקרא על שם צמח הבר צורית, הנפוץ באזור.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Sedum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum",
        "wikipediaExtract": "Sedum is a large genus of flowering plants in the family Crassulaceae, members of which are commonly known as stonecrops. The genus has been described as containing up to 600 species, subsequently reduced to 400–500. They are leaf succulents found primarily in the Northern Hemisphere, but extending into the southern hemisphere in Africa and South America. The plants vary from annual and creeping herbs to shrubs. The plants have water-storing leaves. The flowers usually have five petals, seldom four or six. There are typically twice as many stamens as petals. Various species formerly classified as Sedum are now in the segregate genera Hylotelephium and Rhodiola.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%95%D7%A8%D7%99%D7%AA"
    },
    {
        "name": "ארמריה",
        "botanical": "Armeria maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Armeria_maritima_Dunnet_Head.jpg/330px-Armeria_maritima_Dunnet_Head.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Armeria maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Armeria_maritima",
        "wikipediaExtract": "Armeria maritima, the thrift, sea thrift or sea pink, is a species of flowering plant in the family Plumbaginaceae. It is a compact evergreen perennial which grows in low clumps and sends up long stems that support globes of bright pink flowers. In some cases purple, white or red flowers also occur. It is a popular garden flower and has been distributed worldwide as a garden and cut flower. It does well in gardens designed as xeriscapes or rock gardens. The Latin specific epithet maritima means pertaining to the sea or coastal."
    },
    {
        "name": "ציפורן סיני",
        "botanical": "Dianthus chinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Dianthus_chinensis_korea_2010.JPG/330px-Dianthus_chinensis_korea_2010.JPG",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dianthus chinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dianthus_chinensis",
        "wikipediaExtract": "Dianthus chinensis, commonly known as rainbow pink or China pink, is a species of Dianthus native to northern China, Korea, Mongolia, and southeastern Russia. It is a herbaceous perennial plant growing to 30–50 cm tall."
    },
    {
        "name": "ורוניקה",
        "botanical": "Veronica spicata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Veronica_syriaca.JPG/330px-Veronica_syriaca.JPG",
        "detail": "וֵרוֹנִיקָה היא אחד הסוגים הגדולים והחשובים ממִשְׁפַּחַת הַלַּחְכִּיִּים. הסוג כולל כיום כ־464 מינים, לא רק של צמחים עשבוניים כפי שהיה מקובל בעבר, אלא גם בני שיח, שיחים ולעיתים נדירות עצים קטנים. הרחבה זו נבעה מתיקון טקסונומי שנעשה בעשורים האחרונים, שבו אוחדו...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Veronica spicata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Veronica_spicata",
        "wikipediaExtract": "Veronica spicata is a species of flowering plant in the family Plantaginaceae. It is 1–3 feet (0.30–0.91 m) tall and bears 1 foot long spikes with blue, pink, purple and white flowers.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%A8%D7%95%D7%A0%D7%99%D7%A7%D7%94"
    },
    {
        "name": "סקביה",
        "botanical": "Scabiosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Scabiosa_columbaria_Pink_Mist.jpg/330px-Scabiosa_columbaria_Pink_Mist.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Scabiosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scabiosa",
        "wikipediaExtract": "Scabiosa is a genus in the honeysuckle family (Caprifoliaceae) of flowering plants. Many of the species in this genus have common names that include the word scabious, but some plants commonly known as scabious are currently classified in related genera such as Knautia and Succisa; at least some of these were formerly placed in Scabiosa. Another common name for members of this genus is pincushion flowers."
    },
    {
        "name": "לבנדר מנוצה",
        "botanical": "Lavandula dentata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Lavandula_dentata1.jpg/330px-Lavandula_dentata1.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lavandula dentata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula_dentata",
        "wikipediaExtract": "Lavandula dentata, the fringed lavender or French lavender, is a species of flowering plant in the family Lamiaceae, native to the Mediterranean basin, Eritrea, Ethiopia, Yemen, and the Arabian Peninsula. Growing to 60 cm (24 in) tall, it has gray-green, linear or lance-shaped leaves with toothed edges and a lightly woolly texture. The long-lasting, narrow spikes of purple flowers, topped with pale violet bracts, first appear in late spring. The whole plant is strongly aromatic with the typical lavender fragrance."
    },
    {
        "name": "ארטמיסיה",
        "botanical": "Artemisia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Artemisia_vulgaris_-_flower_-_dark_field_microscopic_photo.jpg/960px-Artemisia_vulgaris_-_flower_-_dark_field_microscopic_photo.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Artemisia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Artemisia",
        "wikipediaExtract": "Artemisia may refer to:"
    },
    {
        "name": "הליכריסום",
        "botanical": "Helichrysum petiolare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Helichrysum_petiolare00.jpg/330px-Helichrysum_petiolare00.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 14,
        "priceHigh": 51,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Helichrysum petiolare",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Helichrysum_petiolare",
        "wikipediaExtract": "Helichrysum petiolare, the licorice-plant or liquorice plant, is a species of flowering plant in the family Asteraceae. It is a subshrub native to the Cape Provinces of South Africa — where it is known as impepho — and to Angola, Zambia, and Zimbabwe. It is naturalized in parts of Portugal and the United States. Growing to about 45 cm (18 in) high and 150 cm (59 in) broad, it is a trailing evergreen subshrub with furry grey-green leaves and small white flowers. Other common names include silver-bush everlastingflower, trailing dusty miller and kooigoed. The foliage has a faint licorice aroma, but Helichrysum petiolare is not closely related to true liquorice, Glycyrrhiza glabra, from which liquorice candy is made."
    },
    {
        "name": "קונבולבולוס",
        "botanical": "Convolvulus cneorum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Convolvulus-cneorum-20080320-2.JPG/330px-Convolvulus-cneorum-20080320-2.JPG",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 48,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Convolvulus cneorum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Convolvulus_cneorum",
        "wikipediaExtract": "Convolvulus cneorum, the silverbush or shrubby bindweed, is a species of flowering plant in the family Convolvulaceae, which contains many plants described as \"bindweed\". The Latin specific epithet cneorum is a word of Greek origin referring to a small olive-like plant, possibly a species of Daphne."
    },
    {
        "name": "דיכונדרה כסופה",
        "botanical": "Dichondra argentea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Dichondra_%27Silver_Falls%27_Pot_1600px.jpg/330px-Dichondra_%27Silver_Falls%27_Pot_1600px.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dichondra argentea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dichondra_argentea",
        "wikipediaExtract": "Dichondra argentea, the silver ponysfoot or silver nickel vine, is a species of flowering plant in the family Convolvulaceae."
    },
    {
        "name": "בקופה",
        "botanical": "Sutera cordata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Suteracordatasnowflk.jpg/330px-Suteracordatasnowflk.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 57,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Chaenostoma cordatum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chaenostoma_cordatum",
        "wikipediaExtract": "Chaenostoma cordatum, also known as Sutera cordata, Bacopa cordata, Sutera diffusus, Pikmin flower, or Bacopa, is one of 52 species in the genus Chaenostoma (Scrophulariaceae), and is native to South Africa."
    },
    {
        "name": "פורטולקה רב שנתית",
        "botanical": "Portulaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Pink_Portulaca_Flower.jpg/330px-Pink_Portulaca_Flower.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 54,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Portulaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca",
        "wikipediaExtract": "Portulaca is a genus of flowering plants in the family Portulacaceae, and is the type genus of the family. With over 100 species, it is found in the tropics and warm temperate regions. Portulacas are also known as the purslanes."
    },
    {
        "name": "אספרגוס מאירי",
        "botanical": "Asparagus densiflorus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Asparagus_densiflorus_%27Myersii%27.jpg/330px-Asparagus_densiflorus_%27Myersii%27.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 20,
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Asparagus densiflorus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asparagus_densiflorus",
        "wikipediaExtract": "Asparagus densiflorus (among several species colloquially called asparagus ferns; no relation to actual ferns), or the foxtail fern (asparagus) or plume fern, is a variable, evergreen-perennial plant related to cultivated, edible asparagus."
    },
    {
        "name": "רוזמרין",
        "botanical": "Salvia rosmarinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Rosemary001.jpg/330px-Rosemary001.jpg",
        "detail": "רוזמרין רפואי הוא שיח תרבות רב-שנתי ירוק-עד ממשפחת השפתניים, שפרחיו תכולים, גבעוליו מוציאים ענפים עמוסים בעלים מחטניים, ששוליהם מקופלים לאחור וצבעם ירוק כהה בצידם העליון ואפור בצידם התחתון. מרבים את הצמח מחלוקת שורשיהם של צמחים מפותחים, מייחורים הנלקחים...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 14,
        "priceHigh": 37,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Rosemary",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rosemary",
        "wikipediaExtract": "Salvia rosmarinus, synonym Rosmarinus officinalis, commonly known as rosemary, is a shrub with fragrant, evergreen, needle-like leaves and purple or sometimes white, pink, or blue flowers. It is a member of the mint family, Lamiaceae. The species is native to the Mediterranean region. It has numerous cultivars, and its leaves are commonly used as a flavoring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%96%D7%9E%D7%A8%D7%99%D7%9F_%D7%A8%D7%A4%D7%95%D7%90%D7%99"
    },
    {
        "name": "לבנדר",
        "botanical": "Lavandula",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Lavendel6.jpg/330px-Lavendel6.jpg",
        "detail": "אֲזוֹבְיוֹן הוא סוג של בני-שיח או לעיתים רחוקות צמח עשבוני רב-שנתי ממשפחת השפתניים. הסוג כולל 41 מינים שתפוצתם באפריקה ובאסיה, ממקרונזיה ועד מזרח התיכון. שבעה מינים נפוצים באירופה וארבעה בישראל וסביבתה. מלבד אזוביון דגול הגדל בר בעיקר במישור החוף גדלים בר...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 10,
        "priceHigh": 31,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Lavandula",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula",
        "wikipediaExtract": "Lavandula is a genus of 47 known species of perennial flowering plants in the sage family, Lamiaceae. It is native to the Old World, primarily found across the drier, warmer regions of the Mediterranean, with an affinity for maritime breezes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%96%D7%95%D7%91%D7%99%D7%95%D7%9F"
    },
    {
        "name": "מרווה רפואית",
        "botanical": "Salvia officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Salvia_officinalis0.jpg/330px-Salvia_officinalis0.jpg",
        "detail": "מרווה רפואית היא בן שיח המונה 5 תת-מינים בסוג מרווה ממשפחת השפתניים. מוצאה מצפון מערב אירופה ועד דרום אירופה ומשם היא נכנסה אף לאזורים של צפון אפריקה וצפון אמריקה. בישראל היא גדלה כצמח תרבות והיא דומה במידה מסוימת למרווה משולשת. היא מקובלת כבעלת סגולות...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 10,
        "priceHigh": 31,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Salvia officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_officinalis",
        "wikipediaExtract": "Salvia officinalis, common sage or sage, is a perennial, evergreen subshrub, with woody stems, grayish leaves, and blue to purplish flowers. It is a member of the mint family (Lamiaceae) and native to the Mediterranean region, though it has been naturalized in many places throughout the world. It has a long history of culinary use, and in modern times it has been used as an ornamental garden plant. The common name \"sage\" is also used for closely related species and cultivars.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A8%D7%A4%D7%95%D7%90%D7%99%D7%AA"
    },
    {
        "name": "נענע",
        "botanical": "Mentha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Field_of_Mentha_x_piperita_02.jpg/330px-Field_of_Mentha_x_piperita_02.jpg",
        "detail": "נַעְנַע הוא סוג צמחים ריחניים ממשפחת השפתניים, המונה 43–44 מינים ו-10 תת-מינים של עשבים חד-שנתיים ורב-שנתיים ארומטיים הנפוצים כמעט בכל העולם ובמיוחד באזורים הממוזגים-הצפוניים ובאזור הים-תיכון. 3 מינים גדלים בר בישראל, והבולט ביניהם הוא נענע משובלת. ישנם מינים...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 8,
        "priceHigh": 28,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Mentha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mentha",
        "wikipediaExtract": "Mentha, also known as mint, is a genus of flowering plants in the mint family, Lamiaceae. It is estimated that 18 to 24 species exist, but the exact distinction between species is unclear. Hybridization occurs naturally where some species' ranges overlap. Many hybrids and cultivars are known.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2"
    },
    {
        "name": "מנטה",
        "botanical": "Mentha piperita",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Field_of_Mentha_x_piperita_02.jpg/330px-Field_of_Mentha_x_piperita_02.jpg",
        "detail": "נַעְנַע הוא סוג צמחים ריחניים ממשפחת השפתניים, המונה 43–44 מינים ו-10 תת-מינים של עשבים חד-שנתיים ורב-שנתיים ארומטיים הנפוצים כמעט בכל העולם ובמיוחד באזורים הממוזגים-הצפוניים ובאזור הים-תיכון. 3 מינים גדלים בר בישראל, והבולט ביניהם הוא נענע משובלת. ישנם מינים...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Peppermint",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peppermint",
        "wikipediaExtract": "Peppermint is a hybrid species of mint, a cross between watermint and spearmint. Indigenous to Europe and the Middle East, the plant is now widely spread and cultivated in many regions of the world. It is occasionally found in the wild with its parent species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2"
    },
    {
        "name": "בזיליקום",
        "botanical": "Ocimum basilicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Basil-Basilico-Ocimum_basilicum-albahaca.jpg/330px-Basil-Basilico-Ocimum_basilicum-albahaca.jpg",
        "detail": "רֵיחָן מצוי, המכונה גם בזיליקום, הוא צמח תבלין ממשפחת השפתניים (Labiatae) מוצאו באזורים הטרופיים כולל דרום-מזרח אסיה ומרכז אפריקה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 34,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Basil",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Basil",
        "wikipediaExtract": "Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term \"basil\" refers to the variety also known as Genovese basil or sweet basil. Basil is native to tropical regions from Central Africa to Southeast Asia. In temperate climates basil is treated as an annual plant, but it can be grown as a short-lived perennial or biennial in warmer horticultural zones with tropical or Mediterranean climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%99%D7%97%D7%9F_%D7%9E%D7%A6%D7%95%D7%99"
    },
    {
        "name": "טימין",
        "botanical": "Thymus vulgaris",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Creeping_red_thyme.jpg/330px-Creeping_red_thyme.jpg",
        "detail": "קוֹרָנִית, תימין או טימין, הוא סוג של צמחי תבלין, בני שיח רב שנתיים ממשפחת השפתניים. בסוג נכללים מעל 350 מינים שגובהם הממוצע כ-40 ס\"מ ומקורם בדרום אירופה, בצפון אפריקה ובאסיה. השם \"קורנית\" ניתן לצמח זה עקב תחושת הקרירות הנוצרת על הלשון בעת לעיסת עלי הצמח.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 8,
        "priceHigh": 28,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Thymus vulgaris",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thymus_vulgaris",
        "wikipediaExtract": "Thymus vulgaris is a species of flowering plant in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%95%D7%A8%D7%A0%D7%99%D7%AA_(%D7%A6%D7%9E%D7%97)"
    },
    {
        "name": "אורגנו",
        "botanical": "Origanum vulgare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Origanum_vulgare_-_harilik_pune.jpg/330px-Origanum_vulgare_-_harilik_pune.jpg",
        "detail": "אוֹרֵגָנוֹ, או בשמו העברי אֲזוֹבִית פְּשוּטָה הוא שיח רב-שנתי ממשפחת השפתניים. עלי האורגנו משמשים לתיבול ונפוצים מאוד במטבח הים-תיכוני בכלל והאיטלקי בפרט.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 8,
        "priceHigh": 28,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Oregano",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oregano",
        "wikipediaExtract": "Oregano is a species of flowering plant in the mint family, Lamiaceae. It was native to the Mediterranean region, but widely naturalised elsewhere in the temperate Northern Hemisphere.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%95%D7%A8%D7%92%D7%A0%D7%95"
    },
    {
        "name": "זעתר",
        "botanical": "Origanum syriacum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Closeup_image_of_za%27atar%2C_a_blend_of_origanum_syriacum_%28hyssop%2C_sumac%2C_sesame_seeds_and_salt.jpg/330px-Closeup_image_of_za%27atar%2C_a_blend_of_origanum_syriacum_%28hyssop%2C_sumac%2C_sesame_seeds_and_salt.jpg",
        "detail": "זַעֲתַר הוא הצמח אזוב מצוי המהווה את המרכיב העיקרי בתערובת תבלינים שגם היא נקראת בעברית זעתר. מוצאו של הצמח ושל תערובת התבלינים במזרח התיכון.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 10,
        "priceHigh": 31,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Origanum syriacum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Origanum_syriacum",
        "wikipediaExtract": "Origanum syriacum subsp. syriacum; syn. Majorana syriaca, bible hyssop, Biblical-hyssop, Lebanese oregano or Syrian oregano, is an aromatic perennial herb in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%A2%D7%AA%D7%A8"
    },
    {
        "name": "לואיזה",
        "botanical": "Aloysia citrodora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Aloysia_triphylla1.jpg/330px-Aloysia_triphylla1.jpg",
        "detail": "לואיזה היא סוג ממשפחת הורבניים הכולל 35 מינים שונים. המוכר ביותר הוא לואיזה לימונית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Aloysia citrodora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloysia_citrodora",
        "wikipediaExtract": "Aloysia citrodora, lemon verbena, is a species of flowering plant in the verbena family Verbenaceae, native to South America. Other common names include lemon beebrush. It was brought to Europe by the Spanish and the Portuguese in the 17th century and cultivated for its oil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94"
    },
    {
        "name": "לימונית",
        "botanical": "Cymbopogon citratus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/YosriNov04Pokok_Serai.JPG/330px-YosriNov04Pokok_Serai.JPG",
        "detail": "עשב לימון הוא צמח עשבוני רב שנתי ממשפחת הדגניים. עשב הלימון צומח במקור באזורים טרופיים בדרום-מזרח אסיה ובאפריקה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 34,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Cymbopogon citratus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cymbopogon_citratus",
        "wikipediaExtract": "Cymbopogon citratus, commonly known as West Indian lemon grass or simply lemon grass, is a tropical plant native to South Asia and Maritime Southeast Asia and introduced to many tropical regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%A9%D7%91_%D7%9C%D7%99%D7%9E%D7%95%D7%9F"
    },
    {
        "name": "פטרוזיליה",
        "botanical": "Petroselinum crispum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Petroselinum.jpg/330px-Petroselinum.jpg",
        "detail": "פֶּטְרוֹזִילְיָה היא עשב תיבול ממשפחת הסוככיים. מוצאו מדרום אירופה. צמח זה הוא דו-שנתי. עליו של צמח זה הם בצבע ירוק כהה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Parsley",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Parsley",
        "wikipediaExtract": "Parsley, or garden parsley, is a species of flowering plant in the family Apiaceae that is native to the Balkans. It has been introduced and naturalized in Europe and elsewhere in the world with suitable climates, and is widely cultivated as a herb and a vegetable.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%A8%D7%95%D7%96%D7%99%D7%9C%D7%99%D7%94"
    },
    {
        "name": "כוסברה",
        "botanical": "Coriandrum sativum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Cilantro_leaf.jpg/330px-Cilantro_leaf.jpg",
        "detail": "גַּד השדה, הידוע בשמו הערבי כוסברה (כזברה), הוא צמח תבלין ממשפחת הסוככיים. הגד הוא צמח חד-שנתי, בעל עלים מנוצים ודומה לפטרוזיליה. הגד משגשג בקרקע קלה, עשירה ומנוקזת היטב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 8,
        "priceHigh": 28,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Coriander",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coriander",
        "wikipediaExtract": "Coriander, or Coriandrum sativum, is an annual herb in the family Apiaceae. The leaves are known as cilantro in the US. Most people perceive the leaves as having a fresh, slightly citrus taste. Due to variations in the gene OR6A2, some people perceive its flavor to be more soaplike or rotten.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%95%D7%A1%D7%91%D7%A8%D7%94"
    },
    {
        "name": "שמיר",
        "botanical": "Anethum graveolens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Anethum_graveolens_%287490803296%29.jpg/960px-Anethum_graveolens_%287490803296%29.jpg",
        "detail": "צמח תבלין נפוץ למטבח, אדנית או ערוגת שמש. מתאים לשימוש יומיומי ולגינה ריחנית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dill",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dill",
        "wikipediaExtract": "Dill is an annual herb in the celery family Apiaceae. Native to North Africa and West Asia, dill is grown widely in Eurasia, where its leaves and seeds are used as a herb or spice for flavouring food."
    },
    {
        "name": "עירית",
        "botanical": "Allium schoenoprasum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Allium_schoenoprasum%2801%29.jpg/330px-Allium_schoenoprasum%2801%29.jpg",
        "detail": "שום העירית הוא צמח תבלין עשבוני רב-שנתי מהסוג שום ממשפחת הנרקיסיים, המתנשא לגובה של עד שלושים סנטימטרים. ככל הידוע מוצא שום העירית הוא מסין.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 10,
        "priceHigh": 31,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Chives",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chives",
        "wikipediaExtract": "Chives, scientific name Allium schoenoprasum, is a species of flowering plant in the family Amaryllidaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%95%D7%9D_%D7%94%D7%A2%D7%99%D7%A8%D7%99%D7%AA"
    },
    {
        "name": "טרגון",
        "botanical": "Artemisia dracunculus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Artemisia_dracunculus_11.jpg/330px-Artemisia_dracunculus_11.jpg",
        "detail": "לענה דרקונית הוא מין צמח עשבוני רב-שנתי, המשמש כעשב תיבול במטבחים שונים בעולם. כעשב תיבול הוא מוכר בעברית ובאנגלית בשם טָרָגוֹן (Tarragon) ובצרפתית, בגרמנית ובספרדית בשם אֶסְטְרָגוֹן (Estragon).",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 16,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Tarragon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tarragon",
        "wikipediaExtract": "Tarragon, also known as estragon, is a species of perennial herb in the family Asteraceae. It is widespread in the wild across much of Eurasia and North America and is cultivated for culinary and medicinal purposes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%A2%D7%A0%D7%94_%D7%93%D7%A8%D7%A7%D7%95%D7%A0%D7%99%D7%AA"
    },
    {
        "name": "מליסה",
        "botanical": "Melissa officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Melissa_officinalis_1.jpg/330px-Melissa_officinalis_1.jpg",
        "detail": "מֵלִיסָה הוא סוג של עשבים צמחוניים רב-שנתיים ממשפחת השפתניים. הסוג כולל 4 מינים ושני תת-מינים. המין הידוע הנפוץ ביותר הוא המין מליסה רפואית הכולל 2 תת-מינים. מליסה רפואית שמשה מאז ימי קדם כצמח מרפא חשוב ברפואה העממית, ונעשה בה שימוש להפקת שמן אתרי ריחני,...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 10,
        "priceHigh": 31,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Lemon balm",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon_balm",
        "wikipediaExtract": "Lemon balm is a perennial herbaceous plant in the mint family. It has lemon-scented leaves, white or pale pink flowers, and contains essential oils and compounds such as geranial and neral. It grows to a maximum height of 1 m. The species is native to south-central Europe, the Mediterranean, Central Asia, and Iran. It is naturalized worldwide. It grows easily from seed in rich, moist soil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9C%D7%99%D7%A1%D7%94"
    },
    {
        "name": "שיבא",
        "botanical": "Artemisia arborescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Artemisia_arborescens_12052004_Var.jpg/330px-Artemisia_arborescens_12052004_Var.jpg",
        "detail": "צמח תבלין נפוץ למטבח, אדנית או ערוגת שמש. מתאים לשימוש יומיומי ולגינה ריחנית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 12,
        "priceHigh": 34,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Artemisia arborescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Artemisia_arborescens",
        "wikipediaExtract": "Artemisia arborescens, the tree wormwood, is a species of flowering plant in the family Asteraceae, native to the Mediterranean region. It is an erect evergreen perennial, with masses of finely-divided aromatic silvery-white leaves and single-sided sprays of yellow daisy-like flowers. This plant is cultivated for its foliage effects, but in colder temperate regions it requires the protection of a wall."
    },
    {
        "name": "אגבה רכה",
        "botanical": "Agave attenuata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Agave_attenuata_001.JPG/330px-Agave_attenuata_001.JPG",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 47,
        "priceHigh": 220,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Agave attenuata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_attenuata",
        "wikipediaExtract": "Agave attenuata, commonly called the foxtail or lion's tail agave or the swan's neck agave, is a species of flowering plant in the family Asparagaceae. Sometimes called the soft-leaf or soft-leaved agave, the aforementioned animal-related names are a nod to the appearance of the plant's inflorescence, which—after years, generally—rises slightly before gravity brings it back down, giving the bloom a curved, \"swan\"-like or \"foxtail\" look. The species' specific manner of flowering is unique in the genus Agave as most other species produce a towering, vertical display, reminiscent of a miniature tree."
    },
    {
        "name": "אלוורה",
        "botanical": "Aloe vera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Aloe_barbadensis.JPG/330px-Aloe_barbadensis.JPG",
        "detail": "אלוורה או אַלְוַי אמיתי הוא מין צמח סוקולנט בסוג אַלְוַי שמונה 594 מינים ומשויך כיום למשפחת העיריתיים. מוצאו מדרום-מערב חצי האי ערב.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Aloe vera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloe_vera",
        "wikipediaExtract": "Aloe vera is a succulent plant species of the genus Aloe. It is widely distributed, and is considered an invasive species in many world regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%95%D7%A8%D7%94"
    },
    {
        "name": "סנסיווריה",
        "botanical": "Dracaena trifasciata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Snake_Plant_%28Sansevieria_trifasciata_%27Laurentii%27%29.jpg/330px-Snake_Plant_%28Sansevieria_trifasciata_%27Laurentii%27%29.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dracaena trifasciata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_trifasciata",
        "wikipediaExtract": "Dracaena trifasciata is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria east to the Congo. It is most commonly known as the snake plant, Saint George's sword, mother-in-law's tongue, and viper's bowstring hemp, among other names. Until 2017, it was known under the synonym Sansevieria trifasciata. This plant is often kept as a houseplant due to its non-demanding maintenance; they can survive with very little water and sun."
    },
    {
        "name": "אכיווריה",
        "botanical": "Echeveria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Echeveria_elegans_-_1.jpg/330px-Echeveria_elegans_-_1.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 23,
        "priceHigh": 145,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Echeveria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echeveria",
        "wikipediaExtract": "Echeveria is a large genus of flowering plants in the family Crassulaceae, native to semi-desert areas of Central America, Mexico and northwestern South America."
    },
    {
        "name": "קרסולה אובטה",
        "botanical": "Crassula ovata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Crassula_ovata_700.jpg/330px-Crassula_ovata_700.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Crassula ovata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Crassula_ovata",
        "wikipediaExtract": "Crassula ovata, commonly known as jade plant, lucky plant, money plant or money tree, is a succulent plant with small pink or white flowers that is native to the KwaZulu-Natal and Eastern Cape provinces of South Africa, and Mozambique; it is common as a houseplant worldwide. Much of its popularity stems from the low levels of care needed; the jade plant requires little water and can survive in most indoor conditions. It is sometimes referred to as the money tree; however, Pachira aquatica also has this nickname."
    },
    {
        "name": "קלנצואה",
        "botanical": "Kalanchoe blossfeldiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Kalanchoe_blossfeldiana_3.jpg/330px-Kalanchoe_blossfeldiana_3.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Kalanchoe blossfeldiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Kalanchoe_blossfeldiana",
        "wikipediaExtract": "Kalanchoe blossfeldiana is a commonly cultivated evergreen house plant of the genus Kalanchoe native to Madagascar. It is known by the English common names flaming Katy, Christmas kalanchoe, florist kalanchoe and Madagascar widow's-thrill."
    },
    {
        "name": "צורית מורגן",
        "botanical": "Sedum morganianum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Donkey%27s_tail_in_bloom_March_06.jpg/330px-Donkey%27s_tail_in_bloom_March_06.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Sedum morganianum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum_morganianum",
        "wikipediaExtract": "Sedum morganianum, the donkey tail or burro's tail, is a species of flowering plant in the family Crassulaceae, native to southern Mexico. It is a succulent perennial producing trailing stems up to 60 cm (24 in) long, with fleshy blue-green leaves and terminal pink to red flowers in summer. S. morganianum has been found wild in two ravines at Tenampa county, in central Veracruz, in eastern Mexico and on vertical cliffs of igneous rock in the Tropical Deciduous Forest zone. Due to its restricted geographic distribution, it should be regarded as a micro-endemic species."
    },
    {
        "name": "סביון כדורי",
        "botanical": "Senecio rowleyanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Senecio_rowleyanus_leaves.jpg/330px-Senecio_rowleyanus_leaves.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 23,
        "priceHigh": 145,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Curio rowleyanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Curio_rowleyanus",
        "wikipediaExtract": "Curio rowleyanus, syn. Senecio rowleyanus, is a flowering plant in the daisy family Asteraceae. It is a creeping, perennial, succulent vine native to the Cape Provinces of South Africa. In its natural environment its stems trail on the ground, rooting where they touch and form dense mats. It often avoids direct sunlight by growing in the shade of other plants and rocks. It is commonly known as string-of-pearls or string-of-beads."
    },
    {
        "name": "פורטולקריה",
        "botanical": "Portulacaria afra",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Portulacaria_afra_02.JPG/330px-Portulacaria_afra_02.JPG",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 47,
        "priceHigh": 220,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Portulacaria afra",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulacaria_afra",
        "wikipediaExtract": "Portulacaria afra is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and green leaves, but a variegated cultivar is often seen in cultivation. They are simple to care for and make easy houseplants for a sunny location. In frost-free regions they may be used in outdoor landscaping."
    },
    {
        "name": "יוקה",
        "botanical": "Yucca elephantipes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Yucca_filamentosa.jpg/330px-Yucca_filamentosa.jpg",
        "detail": "יוּקָה הוא סוג הכולל כמה עשרות מיני צמחים ממשפחת האגביים (Agavaceae), שמוצאם באזורים החמים והיבשים של אמריקה הצפונית והמרכזית והאיים הקאריביים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Yucca gigantea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Yucca_gigantea",
        "wikipediaExtract": "Yucca gigantea is a species of flowering plant in the asparagus family, native to Mexico and Central America. Growing up to 8–12 m (26–39 ft) in height, it is an evergreen shrub which is widely cultivated as an ornamental garden or house plant, often referred to simply as yucca cane. The edible flower is the national flower of El Salvador locally called izote, and it is used extensively in Salvadoran cuisine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%95%D7%A7%D7%94"
    },
    {
        "name": "נולינה",
        "botanical": "Beaucarnea recurvata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Beaucarnea_recurvata%2C_Ocampo%2C_Tamaulipas%2C_Mexico_1.jpg/330px-Beaucarnea_recurvata%2C_Ocampo%2C_Tamaulipas%2C_Mexico_1.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 15,
        "priceHigh": 120,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Beaucarnea recurvata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Beaucarnea_recurvata",
        "wikipediaExtract": "Beaucarnea recurvata, the elephant's foot or ponytail palm, is a species of flowering plant in the family Asparagaceae. The species is endemic to eastern Mexico; according to IUCN it is now confined to the state of Veracruz, but Plants of the World Online also cites it as occurring in Oaxaca, Puebla, San Luis Potosí, and Tamaulipas. Despite its common name, it is not closely related to the true palms (Arecaceae). It has become popular in Europe and worldwide as an ornamental plant. There are 350-year-old Beaucarneas registered in Mexico."
    },
    {
        "name": "אופונטיה",
        "botanical": "Opuntia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Opuntia_littoralis_var_vaseyi_4.jpg/330px-Opuntia_littoralis_var_vaseyi_4.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 23,
        "priceHigh": 145,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Opuntia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Opuntia",
        "wikipediaExtract": "Opuntia, commonly called the prickly pear cactus, is a genus of flowering plants in the cactus family Cactaceae, many known for their flavorful fruit and showy flowers. Cacti are native to the Americas, and are well adapted to arid climates; however, they are still vulnerable to alterations in precipitation and temperature driven by climate change. The plant has been introduced to Australia, southern Europe, the Middle East, and parts of Africa."
    },
    {
        "name": "אפטניה",
        "botanical": "Aptenia cordifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/%D0%A0%D0%B0%D1%81%D1%82%D0%B5%D0%BD%D0%B8%D1%8F_%D0%B2_%D0%A1%D0%B5%D0%B4%D0%BE%D0%B2%D0%BE_109.JPG/330px-%D0%A0%D0%B0%D1%81%D1%82%D0%B5%D0%BD%D0%B8%D1%8F_%D0%B2_%D0%A1%D0%B5%D0%B4%D0%BE%D0%B2%D0%BE_109.JPG",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 15,
        "priceHigh": 120,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Mesembryanthemum cordifolium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mesembryanthemum_cordifolium",
        "wikipediaExtract": "Mesembryanthemum cordifolium, formerly known as Aptenia cordifolia, is a species of succulent plant in the iceplant family. It is a creeping plant that forms a carpet of flat-growing perennial herbs in groups on the ground from a base. The genus name means middle-embryo flower in reference to the position of the ovary in the flower. The specific epithet is derived from Latin for heart-shaped leaves."
    },
    {
        "name": "גרפטופטלום",
        "botanical": "Graptopetalum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Graptopetalum_amethystinum_3.jpg/330px-Graptopetalum_amethystinum_3.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 31,
        "priceHigh": 170,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Graptopetalum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Graptopetalum",
        "wikipediaExtract": "Graptopetalum (leatherpetal) is a genus of flowering plants in the family Crassulaceae. They are perennial succulent plants and native to Mexico and Arizona. They grow usually in a rosette. There are around 19 species in this genus."
    },
    {
        "name": "סדום זוחל",
        "botanical": "Sedum spurium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Phedimus_spurius_IMG_7179.JPG/330px-Phedimus_spurius_IMG_7179.JPG",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 47,
        "priceHigh": 220,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Phedimus spurius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phedimus_spurius",
        "wikipediaExtract": "Phedimus spurius, formerly Sedum spurium, the Caucasian stonecrop or two-row stonecrop, is a species of flowering plant in the family Crassulaceae. It is a low-growing, spreading succulent with stems that creep along the ground and root as they grow."
    },
    {
        "name": "אלוי אריסטטה",
        "botanical": "Aloe aristata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/AloeAristata.jpg/330px-AloeAristata.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 23,
        "priceHigh": 145,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Aristaloe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aristaloe",
        "wikipediaExtract": "Aristaloe is a genus of evergreen flowering perennial plants in the family Asphodelaceae from Southern Africa. Its sole species is Aristaloe aristata, known as guinea-fowl aloe or lace aloe."
    },
    {
        "name": "אגבה אמריקנה",
        "botanical": "Agave americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Agave_July_2011-1.jpg/330px-Agave_July_2011-1.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 31,
        "priceHigh": 170,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Agave americana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_americana",
        "wikipediaExtract": "Agave americana, commonly known as the century plant, maguey, or American aloe, is a flowering plant species belonging to the family Asparagaceae. It is native to Mexico and the United States, specifically Texas. This plant is widely cultivated worldwide for its ornamental value and has become naturalized in various regions, including Southern California, the West Indies, South America, the Mediterranean Basin, Africa, the Canary Islands, India, China, Thailand, New Zealand and Australia."
    },
    {
        "name": "נציץ מדברי",
        "botanical": "Delosperma cooperi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Delosperma_March_2015-2.jpg/330px-Delosperma_March_2015-2.jpg",
        "detail": "סוקולנט או קקטוס קל יחסית לגידול, מתאים למיכלים, מסלעות וגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 39,
        "priceHigh": 195,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Delosperma cooperi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Delosperma_cooperi",
        "wikipediaExtract": "Delosperma cooperi, the trailing iceplant, hardy iceplant or pink carpet, is a dwarf perennial plant native to South Africa. It forms a dense lawn with abundant, long-lasting flowers. It reaches sizes of approximately 10–15 cm (4–6 in) tall, with fleshy leaves that are linear and simple and can grow up to 1.5 inches long and a trailing stem that hangs down. These fleshy roots help provide the ability for the plants to recover and grow rapidly if a disturbance has occurred."
    },
    {
        "name": "דקל אריקה",
        "botanical": "Dypsis lutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/%E6%95%A3%E5%B0%BE%E8%91%B5Dypsis_lutescens_20210511145013_05.jpg/330px-%E6%95%A3%E5%B0%BE%E8%91%B5Dypsis_lutescens_20210511145013_05.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 102,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Chrysalidocarpus lutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chrysalidocarpus_lutescens",
        "wikipediaExtract": "Chrysalidocarpus lutescens, also known by its synonym Dypsis lutescens and as golden cane palm, areca palm, yellow palm, butterfly palm, or bamboo palm, is a species of flowering plant in the family Arecaceae, native to Madagascar and naturalized in the Andaman Islands, Thailand, Vietnam, Réunion, El Salvador, Cuba, Puerto Rico, the Canary Islands, southern Florida, Haiti, the Dominican Republic, Jamaica, the Leeward Islands, and the Leeward Antilles. Its native names are rehazo and lafahazo."
    },
    {
        "name": "דקל טבעות",
        "botanical": "Archontophoenix cunninghamiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Archontophoenix-cunninghamiana-2.jpg/330px-Archontophoenix-cunninghamiana-2.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 240,
        "priceHigh": 1140,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Archontophoenix cunninghamiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Archontophoenix_cunninghamiana",
        "wikipediaExtract": "Archontophoenix cunninghamiana – commonly known as Bangalow palm, king palm, Illawarra palm or piccabeen palm – is a tree in the palm family Arecaceae, which is endemic to the east coast of New South Wales and Queensland, Australia."
    },
    {
        "name": "וושינגטוניה חסונה",
        "botanical": "Washingtonia robusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Starr_010330-0594_Washingtonia_robusta.jpg/330px-Starr_010330-0594_Washingtonia_robusta.jpg",
        "detail": "וושינגטוניה חסונה הוא מין של דקל מסוג וושינגטוניה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 270,
        "priceHigh": 1260,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Washingtonia filifera var. robusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Washingtonia_filifera_var._robusta",
        "wikipediaExtract": "Washingtonia filifera var. robusta, commonly known as the Mexican fan palm, Mexican washingtonia, or skyduster, is a flowering plant in the family Arecaceae native to the Sonoran desert along the Baja California peninsula. Despite its limited native distribution, W. filifera var. robusta is one of the most widely cultivated subtropical palms in the world. It is naturalized across the southern United States, Mediterranean, and Middle East.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%95%D7%A9%D7%99%D7%A0%D7%92%D7%98%D7%95%D7%A0%D7%99%D7%94_%D7%97%D7%A1%D7%95%D7%A0%D7%94"
    },
    {
        "name": "דקל רובליני",
        "botanical": "Phoenix roebelenii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Starr_070124-3839_Phoenix_roebelenii.jpg/330px-Starr_070124-3839_Phoenix_roebelenii.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 78,
        "priceHigh": 545,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Phoenix roebelenii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_roebelenii",
        "wikipediaExtract": "Phoenix roebelenii, with common names of dwarf date palm, pygmy date palm, miniature date palm or robellini palm, is a species of date palm native to southeastern Asia, from southwestern China, northern Laos and northern Vietnam."
    },
    {
        "name": "דקל קנרי",
        "botanical": "Phoenix canariensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Phoenix_canariensis_CBMen_6.jpg/330px-Phoenix_canariensis_CBMen_6.jpg",
        "detail": "תמר קנרי הוא מין ממשפחת הדקליים, קרוב משפחה של התמר המצוי. מוצאו של התמר הקנרי באיים הקנריים, והוא משמש כעץ נוי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 270,
        "priceHigh": 1260,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Phoenix canariensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_canariensis",
        "wikipediaExtract": "Phoenix canariensis, the Canary Island date palm, is a species of flowering plant in the palm family Arecaceae, native to the Canary Islands off the coast of Northwestern Africa. It is a relative of Phoenix dactylifera, the true date palm. It is the natural symbol of the Canary Islands, together with the canary Serinus canaria.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%9E%D7%A8_%D7%A7%D7%A0%D7%A8%D7%99"
    },
    {
        "name": "דקל חמדוריאה",
        "botanical": "Chamaedorea elegans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Chamaedorea_elegans_Mart.JPG/330px-Chamaedorea_elegans_Mart.JPG",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 102,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Chamaedorea elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chamaedorea_elegans",
        "wikipediaExtract": "Chamaedorea elegans, the neanthe bella palm or parlour palm, is a species of small palm tree native to the rainforests in Southern Mexico and Guatemala. The parlor palm is one of the most extensively sold houseplant palms in the world. It is one of several species with leaves that are harvested as xate."
    },
    {
        "name": "ציפור גן עדן",
        "botanical": "Strelitzia reginae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Cenderawasih_Bird_-_Papua.jpg/330px-Cenderawasih_Bird_-_Papua.jpg?utm_source=he.wikipedia.org&utm_campaign=api&utm_content=thumbnail",
        "detail": "עדניים היא משפחת עופות מסדרת ציפורי השיר, אשר נודעות בייחוד ביפי נוצותיהן המגוונות, ומכאן שמן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 86,
        "priceHigh": 570,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Strelitzia reginae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_reginae",
        "wikipediaExtract": "Strelitzia reginae, commonly known as the crane flower, bird of paradise, or isigude in Nguni, is a species of flowering plant native to the Cape Provinces and KwaZulu-Natal in South Africa. An evergreen perennial, it is widely cultivated for its dramatic flowers. In temperate areas it is a popular houseplant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%93%D7%A0%D7%99%D7%99%D7%9D"
    },
    {
        "name": "ציפור גן עדן לבנה",
        "botanical": "Strelitzia nicolai",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Strelitzia_nicolai_3.jpg/330px-Strelitzia_nicolai_3.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 300,
        "priceHigh": 1380,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Strelitzia nicolai",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_nicolai",
        "wikipediaExtract": "Strelitzia nicolai, commonly known as the wild banana or giant white bird of paradise, is a species of banana-like plants with erect woody stems reaching a height of 7–8 m (23–26 ft), and the clumps formed can spread as far as 3.5 m (11 ft)."
    },
    {
        "name": "בננה ננסית",
        "botanical": "Musa acuminata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Musa_acuminata_in_india01.jpg/330px-Musa_acuminata_in_india01.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 180,
        "priceHigh": 900,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Musa acuminata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Musa_acuminata",
        "wikipediaExtract": "Musa acuminata is a species of banana native to Southern Asia, its range comprising the Indian subcontinent and Southeast Asia. Many of the modern edible dessert bananas are derived from this species, although some are hybrids with Musa balbisiana. First cultivated by humans around 8000 BCE, it is one of the early examples of domesticated plants."
    },
    {
        "name": "הליקוניה",
        "botanical": "Heliconia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Heliconia_latispatha_%28Starwiz%29.jpg/330px-Heliconia_latispatha_%28Starwiz%29.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 78,
        "priceHigh": 545,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Heliconia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Heliconia",
        "wikipediaExtract": "Heliconia is a genus of flowering plants in the monotypic family Heliconiaceae. Most of the 194 known species are native to the tropical Americas, but a few are indigenous to certain islands of the western Pacific and Maluku in Indonesia. Many species of Heliconia are found in the tropical forests of these regions. Most species are listed as either vulnerable or data deficient by the IUCN Red List of threatened species. Several species are widely cultivated as ornamentals, and a few are naturalized in Florida, Gambia, and Thailand."
    },
    {
        "name": "פילודנדרון קסנדו",
        "botanical": "Philodendron xanadu",
        "image": "https://upload.wikimedia.org/wikipedia/he/thumb/6/6f/%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F_%D7%A7%D7%A1%D7%A0%D7%93%D7%95.JPG/330px-%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F_%D7%A7%D7%A1%D7%A0%D7%93%D7%95.JPG",
        "detail": "פילודנדרון קְסָאנָאדוּ הוא מין צמח מסוג פילודנדרון, שמקורו בברזיל.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 94,
        "priceHigh": 595,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Philodendron xanadu",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_xanadu",
        "wikipediaExtract": "Philodendron xanadu, synonym Thaumatophyllum xanadu, is a perennial plant belonging to the arum family Araceae. It is native to south Brazil and Paraguay, but is widely cultivated as a landscape plant in tropical, subtropical, and warm temperate climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F_%D7%A7%D7%A1%D7%A0%D7%93%D7%95"
    },
    {
        "name": "אלוקסיה",
        "botanical": "Alocasia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/AlocasiaMacrorrhizaFlower.jpg/330px-AlocasiaMacrorrhizaFlower.jpg",
        "detail": "אלוקסיה הוא סוג צמח במשפחת הלופיים, הכולל כ-80 מינים. מיני סוג זה מאופיינים בעלים רחבים, ומשום יופי העלים מגודלים כצמחי נוי לעיתים קרובות.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 65,
        "priceHigh": 325,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Alocasia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alocasia",
        "wikipediaExtract": "Alocasia is a genus of rhizomatous or tuberous, broad-leaved, perennial, flowering plants from the family Araceae. There are about 90 accepted species native to tropical and subtropical Asia and eastern Australia. Around the world, many growers widely cultivate a range of hybrids and cultivars as ornamentals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%A7%D7%A1%D7%99%D7%94"
    },
    {
        "name": "קולוקסיה",
        "botanical": "Colocasia esculenta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Songe-R%C3%A9union.JPG/330px-Songe-R%C3%A9union.JPG",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 86,
        "priceHigh": 570,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Taro",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Taro",
        "wikipediaExtract": "Taro is a root vegetable. It is the most widely cultivated species of several plants in the family Araceae that are used as vegetables for their corms, leaves, stems and petioles. Taro corms are a food staple in African, Caribbean, Oceanian, East Asian, Southeast Asian and South Asian cultures."
    },
    {
        "name": "אספלניום",
        "botanical": "Asplenium nidus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Asplenium_nidus_%28Bukidnon%2C_Philippines%29_02.jpg/330px-Asplenium_nidus_%28Bukidnon%2C_Philippines%29_02.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 78,
        "priceHigh": 545,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Asplenium nidus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asplenium_nidus",
        "wikipediaExtract": "Asplenium nidus is an epiphytic species of fern in the family Aspleniaceae, native to tropical southeastern Asia, eastern Australia, Hawaii, Polynesia, Christmas Island, India, and eastern Africa. It is known by the common names bird's-nest fern or simply nest fern."
    },
    {
        "name": "שרך בוסטון",
        "botanical": "Nephrolepis exaltata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Nephrolepis_exaltata_indoor0705c.jpg/330px-Nephrolepis_exaltata_indoor0705c.jpg",
        "detail": "שרך בוסטון מכונה גם שרך החרב, או שרך עצמות הדג הוא מין של שרך הנפוץ באזורים טרופיים ברחבי העולם. צמח זה הוא צמח עשבוני רב-שנתי המגיע לגובה של 40–90 סנטימטרים ובמקרים קיצוניים עד 1.5 מטרים.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 102,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Nephrolepis exaltata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nephrolepis_exaltata",
        "wikipediaExtract": "Nephrolepis exaltata, known as the sword fern or  Boston fern, is a species of fern in the family Nephrolepidaceae. It is native to the Americas. This evergreen plant can reach as high as 40–90 centimetres (16–35 in), and in extreme cases up to 1.5 metres. It is also known as the Boston sword fern, wild Boston fern, Boston blue bell fern, tuber ladder fern, or fishbone fern.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A8%D7%9A_%D7%91%D7%95%D7%A1%D7%98%D7%95%D7%9F"
    },
    {
        "name": "קנה סוף ננסי",
        "botanical": "Cyperus alternifolius",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Cyperus_alternifolius_2.jpg/330px-Cyperus_alternifolius_2.jpg",
        "detail": "צמח טרופי, דקל או עלווה גדולה למראה ירוק ורך. מתאים לפטיו, כניסה או אזור מוגן לפי הזן.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 78,
        "priceHigh": 545,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Cyperus alternifolius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_alternifolius",
        "wikipediaExtract": "Cyperus alternifolius, the umbrella papyrus, umbrella sedge or umbrella palm, is a grass-like plant in the large genus Cyperus of the sedge family Cyperaceae. The plant is native to West Africa, Madagascar and the Arabian Peninsula, but widely distributed throughout the world. It has gained the Royal Horticultural Society's Award of Garden Merit. The subspecies Cyperus alternifolius ssp. flabelliformis is also known as Cyperus involucratus Rottb.."
    },
    {
        "name": "פפירוס",
        "botanical": "Cyperus papyrus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Papyrus_%28Cyperus_papyrus%29_%287079191471%29.jpg/330px-Papyrus_%28Cyperus_papyrus%29_%287079191471%29.jpg",
        "detail": "פּפּירוס הוא סוג קדום של נייר שיוצר מצמח הגומא, הנודע גם כצמח הפפירוס. השימוש הידוע הראשון בנייר פפירוס נעשה במצרים העתיקה, עוד בימי השושלת הראשונה של מצרים ואולי אף לפני-כן. נעשה שימוש בפפירוס בכל אזור המזרח התיכון, כמו גם ביבשת אירופה ובדרום-מערב אסיה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 94,
        "priceHigh": 595,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Cyperus papyrus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_papyrus",
        "wikipediaExtract": "Cyperus papyrus, better known by the common names papyrus sedge, papyrus, paper reed, Indian matting plant, or Nile grass, is a species of aquatic flowering plant belonging to the sedge family Cyperaceae. It is a tender herbaceous perennial, forming tall stands of reed-like swamp vegetation in shallow water.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%99%D7%A8%D7%95%D7%A1"
    },
    {
        "name": "מורינגה מכונפת",
        "botanical": "Moringa oleifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/DrumstickFlower.jpg/330px-DrumstickFlower.jpg",
        "detail": "מורינגה מכונפת הוא מין עץ בסוג מורינגה. המורינגה כלולה במשפחת המורינגיים, המכילה סוג יחיד עם 14 מינים. זהו עץ טרופי שמסוגל לגדול מהר עם מעט מים ולשרוד בתנאי בצורת. כל חלקי העץ אכילים ומהווים מקור מזון חשוב באזורים טרופיים וסוב-טרופיים בעולם.",
        "sun": [
            "שמש מלאה",
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 86,
        "priceHigh": 570,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Moringa oleifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Moringa_oleifera",
        "wikipediaExtract": "Moringa oleifera is a short-lived, fast-growing, drought-resistant tree of the family Moringaceae, native to northern India and used extensively in South and Southeast Asia. Common names include moringa, drumstick tree, horseradish tree, ben tree, or malunggay.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%99%D7%A0%D7%92%D7%94_%D7%9E%D7%9B%D7%95%D7%A0%D7%A4%D7%AA"
    },
    {
        "name": "מונסטרה",
        "botanical": "Monstera deliciosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Monstera_deliciosa2.jpg/330px-Monstera_deliciosa2.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 57,
        "priceHigh": 320,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Monstera deliciosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Monstera_deliciosa",
        "wikipediaExtract": "Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron, is a species of flowering plant. The common name \"Swiss cheese plant\" is also used for the related species from the same genus, Monstera adansonii. The common name \"split-leaf philodendron\" is also used for the species Philodendron bipinnatifidum."
    },
    {
        "name": "פוטוס",
        "botanical": "Epipremnum aureum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Money_Plant_%28Epipremnum_aureum%29_4.jpg/330px-Money_Plant_%28Epipremnum_aureum%29_4.jpg",
        "detail": "האם התכוונתם ל...",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 25,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Epipremnum aureum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Epipremnum_aureum",
        "wikipediaExtract": "Epipremnum aureum is a species in the arum family Araceae, native to Mo'orea in the Society Islands of French Polynesia. The species is a popular houseplant in temperate regions, but has also become naturalised in tropical and sub-tropical forests worldwide, including northern South Africa, Australia, Southeast Asia, Indian subcontinent, the Pacific Islands and the West Indies, where it has caused severe ecological damage in some cases.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%95%D7%98%D7%95%D7%A1"
    },
    {
        "name": "זמיה קוקוס",
        "botanical": "Zamioculcas zamiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Zamioculcas_zamiifolia_1.jpg/330px-Zamioculcas_zamiifolia_1.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 25,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Zamioculcas",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zamioculcas",
        "wikipediaExtract": "Zamioculcas is a genus of flowering plants in the family Araceae, containing the single species Zamioculcas zamiifolia. It is a tropical herbaceous perennial plant, and is native to eastern Africa, including Kenya, KwaZulu-Natal, Malawi, Mozambique, Tanzania, and Zimbabwe. Its common names include Zanzibar gem, Zuzu plant, emerald palm, ZZ plant, aroid palm and eternity plant. It is commonly grown as a houseplant, mainly because it has attractive glossy foliage and is easy to care for. Zamioculcas zamiifolia is winter-hardy in USDA Zones 9 and 10."
    },
    {
        "name": "פילודנדרון לבבי",
        "botanical": "Philodendron hederaceum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Philodendron_scandens_subsp_oxycardium2.jpg/330px-Philodendron_scandens_subsp_oxycardium2.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 57,
        "priceHigh": 320,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Philodendron hederaceum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_hederaceum",
        "wikipediaExtract": "Philodendron hederaceum, the heartleaf philodendron is a species of flowering plant in the family Araceae, native to Central America and the Caribbean which is common in the houseplant trade. Philodendron hederaceum var. hederaceum, the \"velvet philodendron,\" is a subspecies which is in the houseplant trade under its previous name of Philodendron micans. While toxic under certain conditions, it is also under current review for numerous health benefits."
    },
    {
        "name": "פיקוס כינורי",
        "botanical": "Ficus lyrata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Starr_031108-0130_Ficus_lyrata.jpg/330px-Starr_031108-0130_Ficus_lyrata.jpg",
        "detail": "פיקוס כינורי הוא עץ או שיח גדול מסוג פיקוס, אשר נפוץ במקומות רבים בישראל כצמח נוי. מקורו של העץ הוא ביערות גשם טרופיים ממערב אפריקה, בין קמרון לסיירה לאון.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 85,
        "priceHigh": 415,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Ficus lyrata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_lyrata",
        "wikipediaExtract": "Ficus lyrata, commonly known as the fiddle-leaf fig, banjo fig, fiddle-leaved fig tree, lyre leaf fig tree, or lyre-leaved fig tree, is a species of plant in the mulberry and fig family Moraceae. It is native to western Africa, but is cultivated around the world as an ornamental plant. It has received the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%A7%D7%95%D7%A1_%D7%9B%D7%99%D7%A0%D7%95%D7%A8%D7%99"
    },
    {
        "name": "פיקוס גומי",
        "botanical": "Ficus elastica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Ficus_elastica_leaves_02.JPG/330px-Ficus_elastica_leaves_02.JPG",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 49,
        "priceHigh": 295,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Ficus elastica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_elastica",
        "wikipediaExtract": "Ficus elastica, the rubber fig, rubber bush, rubber tree, rubber plant, or Indian rubber bush, Indian rubber tree, or rambung is a species of flowering plant in the family Moraceae, native to eastern parts of South and Southeast Asia. It has become naturalized in Sri Lanka, the West Indies, and the US state of Florida. Its common names reflect its historical use as a source of rubber within its native range, but it is not used in the modern commercial-scale production of natural rubber."
    },
    {
        "name": "דרצנה מרגינטה",
        "botanical": "Dracaena marginata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Dracaena_reflexa.JPG/330px-Dracaena_reflexa.JPG",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 57,
        "priceHigh": 320,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dracaena reflexa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_reflexa",
        "wikipediaExtract": "Dracaena reflexa is a tree native to Mozambique, Madagascar, Mauritius, and other nearby islands of the Indian Ocean. It is widely grown as an ornamental plant and houseplant, valued for its richly coloured, evergreen leaves, and thick, irregular stems."
    },
    {
        "name": "דרצנה מסנגיאנה",
        "botanical": "Dracaena fragrans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Dracaena_fragrans_%282%29.jpg/330px-Dracaena_fragrans_%282%29.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 49,
        "priceHigh": 295,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Dracaena fragrans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_fragrans",
        "wikipediaExtract": "Dracaena fragrans, is a flowering plant species that is native to tropical Africa, from Sudan south to Mozambique, west to Côte d'Ivoire and southwest to Angola, growing in upland regions at 600–2,250 m (1,970–7,380 ft) altitude."
    },
    {
        "name": "ספטיפיליום",
        "botanical": "Spathiphyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Spathiphyllum_cochlearispathum_RTBG.jpg/330px-Spathiphyllum_cochlearispathum_RTBG.jpg",
        "detail": "ספטיפיליום הוא סוג של צמח טרופי ממשפחת הלופיים, הכולל כ-52 מינים. שם הסוג מעיד על צורת מִתְחָל התפרחת, הדומה עם הופעתו לעלה. הצמח קל למדי לגידול ומשמש לצורכי נוי. בתוספת ליפי העלים הוא נושא במשך הקיץ תפרחת נאה של פרחים עדינים. הוא גדל היטב גם בתרבית מים. מוצא...",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 41,
        "priceHigh": 270,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Spathiphyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Spathiphyllum",
        "wikipediaExtract": "Spathiphyllum is a genus of about 60 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%A4%D7%98%D7%99%D7%A4%D7%99%D7%9C%D7%99%D7%95%D7%9D"
    },
    {
        "name": "אנתוריום",
        "botanical": "Anthurium andraeanum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Colpfl28b.jpg/330px-Colpfl28b.jpg",
        "detail": "האנתוריון הוא צמח נוי נפוץ ממשפחת הלופיים ומוצאו טרופי.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 75,
        "priceHigh": 370,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Anthurium andraeanum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Anthurium_andraeanum",
        "wikipediaExtract": "Anthurium andraeanum, also known as Édouard François André's Tailflower, is a flowering plant species in the family Araceae that is native to Colombia and Ecuador. It is a winner of the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A0%D7%AA%D7%95%D7%A8%D7%99%D7%95%D7%9F"
    },
    {
        "name": "קלטאה",
        "botanical": "Calathea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Starr_080716-9470_Calathea_crotalifera.jpg/330px-Starr_080716-9470_Calathea_crotalifera.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 75,
        "priceHigh": 370,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Calathea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calathea",
        "wikipediaExtract": "Calathea is a genus of flowering plants belonging to the family Marantaceae. They are commonly called calatheas or prayer plants. About 200 species formerly assigned to Calathea are now in the genus Goeppertia. Calathea currently contains around 60 species. Native to the tropical Americas, many of the species are popular as pot plants due to their decorative leaves and, in some species, colorful inflorescences. The young leaves and bracts can retain pools of water called phytotelmata, that provide habitat for many invertebrates."
    },
    {
        "name": "מרנטה",
        "botanical": "Maranta leuconeura",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Maranta_leuconeura3.jpg/330px-Maranta_leuconeura3.jpg",
        "detail": "מרנטה, נקרא גם צמח תפילה, הוא מין של צמח פורח במשפחת המרנטיים (Marantaceae). מוצאו בברזיל ביערות הגשם. צמחים נוספים במשפחה זו הם קלתאה, סטרומנטה וקטננטה.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 33,
        "priceHigh": 245,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Maranta leuconeura",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Maranta_leuconeura",
        "wikipediaExtract": "Maranta leuconeura, widely known as the prayer plant due to its daily sunlight-dependent movements, is a species of flowering plant in the family Marantaceae native to the Brazilian tropical forests. It is a variable, rhizomatous perennial, growing to 30 cm (12 in) tall and broad, with crowded clumps of evergreen, strikingly-marked oval leaves, each up to 12 cm (5 in) long. The plant spreads itself horizontally, carpeting an entire small area of forest floor, sending roots into the substrate at each leaf node.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%A0%D7%98%D7%94"
    },
    {
        "name": "פפרומיה",
        "botanical": "Peperomia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Coin_Leaf_Peperomia_%28Peperomia_polybotrya_%27Jayde%27%29_1.jpg/330px-Coin_Leaf_Peperomia_%28Peperomia_polybotrya_%27Jayde%27%29_1.jpg",
        "detail": "פפרומיה הוא סוג של צמחים ירוקי עד, המופיעים בכל האזורים הטרופיים והסובטרופיים של העולם. סוג זה הוא אחד משני סוגי הצמחים במשפחת הפלפליים (Piperaceae). ההערכה היא שיש למעלה מ-1,000 מינים של פפרומיה, מקור רובם בדרום ומרכז אמריקה, אך עשויים להימצא גם בדרום צפון...",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 41,
        "priceHigh": 270,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Peperomia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peperomia",
        "wikipediaExtract": "Peperomia is one of the two large genera of the family Piperaceae. It is estimated that there are over 1,000 species, occurring in all tropical and subtropical regions of the world. They are concentrated in South and Central America, but may also be found in southern North America, the Caribbean islands, Africa, Oceania, and southern and eastern parts of Asia. The exact number of species is difficult to determine, as some plants have been recorded several times with different names, and new species continue to be discovered. Peperomias have adapted to many different environments and their appearances vary greatly. Some are epiphytes or lithophytes, and many are xerophytes or possess underground tubers (geophytes). Most species are compact perennial shrubs or vines.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%A8%D7%95%D7%9E%D7%99%D7%94"
    },
    {
        "name": "סינגוניום",
        "botanical": "Syngonium podophyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Syngonium_podophyllum_DPR.png/330px-Syngonium_podophyllum_DPR.png",
        "detail": "סינגוניום הוא סוג ממערכת בעלי פרחים שמקורו ביערות הגשם של דרום מקסיקו, איי הודו המערבית, מרכז ודרום אמריקה. זהו צמח מטפס שיכול להגיע להגיע לגובה של 20 מטר ומעלה על צמרות העצים.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 57,
        "priceHigh": 320,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Syngonium podophyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syngonium_podophyllum",
        "wikipediaExtract": "Syngonium podophyllum is a species of aroid that is a popular houseplant. Common names include: arrowhead plant, arrowhead vine, arrowhead philodendron, goosefoot, nephthytis, African evergreen, and American evergreen. The species is native to a wide region of Latin America from Mexico through Bolivia, and naturalized in the West Indies, Florida, Texas, Hawaii, and other places.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%A0%D7%92%D7%95%D7%A0%D7%99%D7%95%D7%9D"
    },
    {
        "name": "סקינדפסוס",
        "botanical": "Scindapsus pictus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Scindapsus_pictus_01.jpg/330px-Scindapsus_pictus_01.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 57,
        "priceHigh": 320,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Scindapsus pictus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scindapsus_pictus",
        "wikipediaExtract": "Scindapsus pictus, commonly called satin pothos, silver pothos, or silver vine, is a species of flowering plant in the aroid or arum family, Araceae, native to Bangladesh, Borneo, India, Java, Peninsular Malaysia, the Philippines, Sulawesi, Sumatra, Taiwan and Thailand. The Latin specific epithet pictus means \"painted\", referring to the variegation on the leaves."
    },
    {
        "name": "דיפנבכיה",
        "botanical": "Dieffenbachia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Colpfl29.jpg/330px-Colpfl29.jpg",
        "detail": "דיפנבכיה הוא סוג צמחים בעלי פרחים ממשפחת הלופיים. משמש כצמח נוי, לרוב לצל חלקי או לפנים בתים. הצמח נקרא על ידי הבוטנאי היינריך וילהלם שוט, מנהל הגנים הבוטניים של וינה בשם זה כדי לכבד את הגנן הראשי מר יוזף דיפנבאך. מוצאו באזורים הטרופיים של אמריקה ממקסיקו עד...",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 41,
        "priceHigh": 270,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Dieffenbachia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dieffenbachia",
        "wikipediaExtract": "Dieffenbachia, commonly known as dumb cane or leopard lily, is a genus of tropical flowering plants in the family Araceae. It is native to the New World Tropics from Mexico and the West Indies south to Argentina. Some species are widely cultivated as ornamental plants, especially as houseplants, and have become naturalized on a few tropical islands.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%99%D7%A4%D7%A0%D7%91%D7%9B%D7%99%D7%94"
    },
    {
        "name": "אגלאונמה",
        "botanical": "Aglaonema",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Aglaonema_commutatum2.jpg/330px-Aglaonema_commutatum2.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 41,
        "priceHigh": 270,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Aglaonema",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aglaonema",
        "wikipediaExtract": "Aglaonema is a genus of flowering plants in the arum family, Araceae. They are native to tropical and subtropical regions of Asia and New Guinea. They are known commonly as Chinese evergreens."
    },
    {
        "name": "אספידיסטרה",
        "botanical": "Aspidistra elatior",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aspidistra_elatior1.jpg/330px-Aspidistra_elatior1.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 33,
        "priceHigh": 245,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Aspidistra elatior",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aspidistra_elatior",
        "wikipediaExtract": "Aspidistra elatior, the cast-iron-plant or bar-room plant, also known in Japanese as haran or baran (葉蘭) is a species of flowering plant in the family Asparagaceae, native to Japan and Taiwan. Tolerant of neglect, it is widely cultivated as a houseplant, but can also be grown outside in shade where temperatures remain above −15 °C (5 °F). It is used as training material for the seika form of ikebana."
    },
    {
        "name": "כלורופיטום",
        "botanical": "Chlorophytum comosum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hierbabuena_0611_Revised.jpg/330px-Hierbabuena_0611_Revised.jpg",
        "detail": "צמח בית פופולרי במשתלות, מתאים לעציץ פנים, משרד או מרפסת מוצלת עם אור מסונן.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 41,
        "priceHigh": 270,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Chlorophytum comosum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chlorophytum_comosum",
        "wikipediaExtract": "Chlorophytum comosum, usually called spider plant or common spider plant due to its spider-like look, also known as spider ivy, airplane plant, ribbon plant, and hen and chicks, is a species of evergreen perennial flowering plant of the family Asparagaceae. It is native to tropical and Southern Africa but has become naturalized in other parts of the world, including Western Australia and Bangladesh. Chlorophytum comosum is easy to grow as a houseplant because of its resilience, but it can be sensitive to the fluoride in tap water, which commonly gives it \"burnt tips\". Variegated forms are the most popular."
    },
    {
        "name": "הויה",
        "botanical": "Hoya carnosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Hoyabella_092005.jpg/330px-Hoyabella_092005.jpg",
        "detail": "הויה הוא סוג של למעלה מ-500 מיני צמחים במשפחת ההרדופיים, המכונים בדרך כלל פרחי שעווה. צמחים בסוג הויה הם בעיקר גפנים אפיפיטיות או ליתופיטיות, לעתים רחוקות שיחים תת-שיחיים, עם עלים דמויי עור, בשרניים או עסיסיים, פרחים קצרים בצורת צינור או פעמון עם חמש אונות...",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 95,
        "priceHigh": 460,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Hoya carnosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hoya_carnosa",
        "wikipediaExtract": "Hoya carnosa, the porcelain flower or wax plant, is a species of flowering plant in the family Apocynaceae, native to East Asia. It is a common house plant grown for its attractive waxy foliage, and sweetly scented flowers. It is grown well in pots and hanging baskets.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%95%D7%99%D7%94"
    },
    {
        "name": "וינקה",
        "botanical": "Catharanthus roseus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Vinca_minor_Prague_2012_1.jpg/330px-Vinca_minor_Prague_2012_1.jpg",
        "detail": "וינקה היא סוג צמח במשפחת ההרדופיים הכולל 5 מינים. המין וִינְקָה עֶשְׂבּוֹנִית הוא היחיד שגדל בר בארץ. המינים פלורה גדולה ופלורה קטנה הם צמחי תרבות נפוצים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 6,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Catharanthus roseus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Catharanthus_roseus",
        "wikipediaExtract": "Catharanthus roseus, commonly known as bright eyes, Cape periwinkle, graveyard plant, Madagascar periwinkle, old maid, pink periwinkle, rose periwinkle, is a perennial species of flowering plant in the family Apocynaceae. It is native and endemic to Madagascar, but is grown elsewhere as an ornamental and medicinal plant, and now has a pantropical distribution. It is a source of the drugs vincristine and vinblastine, used to treat cancer. It was formerly included in the genus Vinca as Vinca rosea.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A0%D7%A7%D7%94"
    },
    {
        "name": "פטוניה",
        "botanical": "Petunia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Urbana_Illinois_park_20070928_img_2115.jpg/330px-Urbana_Illinois_park_20070928_img_2115.jpg",
        "detail": "פטוניה הוא סוג צמח עשבוני ממשפחת הסולניים. מוצאו באמריקה הדרומית ומיניו השונים שימשו לפיתוח עשרות רבות של זני מכלוא תרבותיים בגדלים וצבעים שונים. בזכות פריחתו השופעת וקלות גידולו נפוץ הצמח כצמח נוי בגינון ברחבי העולם.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Petunia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Petunia",
        "wikipediaExtract": "Petunia is a genus of 20 species of flowering plants of South American origin. The popular flower of the same name derived its epithet from the French, which took the word pétun, 'tobacco', from a Tupi–Guarani language. A tender perennial plant, most of the varieties seen in gardens are hybrids.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%95%D7%A0%D7%99%D7%94"
    },
    {
        "name": "אמנון ותמר",
        "botanical": "Viola tricolor",
        "image": "https://upload.wikimedia.org/wikipedia/he/thumb/8/86/YellowPansy.jpg/330px-YellowPansy.jpg",
        "detail": "אמנון ותמר הוא שמו הנפוץ של המין סֶגֶל שְׁלָשׁ-גּוֹנִי או סיגל ססגוני, צמח בעל פרחים ממשפחת הסיגליים, שתורבת כפרח גינה ונוי. אמנון ותמר הוא ליתר דיוק מכלוא של V. altaica × V. lutea subsp. sudetica × V. tricolor.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 7,
        "priceHigh": 20,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Viola tricolor",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viola_tricolor",
        "wikipediaExtract": "Viola tricolor is a common European wild flower, growing as an annual or short-lived perennial. The species is also known as wild pansy, Johnny Jump up, heartsease, heart's ease, heart's delight, tickle-my-fancy, Jack-jump-up-and-kiss-me, come-and-cuddle-me, three faces in a hood, love-in-idleness, and pink of my john.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9E%D7%A0%D7%95%D7%9F_%D7%95%D7%AA%D7%9E%D7%A8"
    },
    {
        "name": "ציפורן חתול",
        "botanical": "Tagetes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Calendula_January_2008-1_filtered.jpg/330px-Calendula_January_2008-1_filtered.jpg",
        "detail": "צִפָּרְנֵי-הֶחָתוּל הוא סוג של צמחים ממשפחת המורכבים, בעל פרחים צהובים או כתומים. הסוג מכיל 12 מינים ו-14 תת-מינים של צמחים עשבוניים חד-שנתיים או רב-שנתיים. הם גדלים מאירופה עד מערב ההימלאיה, ממקרונזיה (Macaronesia), עד המזרח התיכון, חצי האי ערב וסהרה. בארץ...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 6,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Tagetes",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tagetes",
        "wikipediaExtract": "Tagetes is a genus of 50 species of annual or perennial, mostly herbaceous plants in the family Asteraceae. They are among several groups of plants known in English as marigolds. The genus Tagetes was formally named by Carl Linnaeus in 1753. Linnaeus cited Joseph Pitton de Tournefort (1700), Johann Jacob Dillenius (1732), Gaspard Bauhin (1623) and Fabio Colonna (1606) as authors who used the name 'Tagetes' before. In 1754 he published the formal description in his Genera Plantarum, referring to Tournefort, Sébastien Vaillant (1720) and Dillenius for the name 'Tagetes'.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C"
    },
    {
        "name": "לוע הארי",
        "botanical": "Antirrhinum majus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Snapdragons_and_Ageratum_%283783463632%29.jpg/330px-Snapdragons_and_Ageratum_%283783463632%29.jpg",
        "detail": "לֹעַ-אֲרִי הוא סוג צמחים רב-שנתיים או בני שיח ממשפחת הלחכיים. סוג זה מונה 23 מינים ותפוצתו משתרעת במערב ומרכז אגן הים התיכון ובעיקר בספרד. בשנת 2009 הועבר הסוג לוע-ארי ממשפחת הלוענתיים למשפחת הלחכיים שבה 107 סוגים. הסוג מאופיין בצמחים עשבוניים עם פרחים...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Antirrhinum majus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antirrhinum_majus",
        "wikipediaExtract": "Antirrhinum majus, the common snapdragon, is a species of flowering plant belonging to the genus Antirrhinum. The plant was placed in the family Plantaginaceae following a revision of its prior classical family, Scrophulariaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%A2_%D7%94%D7%90%D7%A8%D7%99"
    },
    {
        "name": "סלסלי כסף",
        "botanical": "Lobularia maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Smagliczka_nadmorska_1.jpg/330px-Smagliczka_nadmorska_1.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lobularia maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobularia_maritima",
        "wikipediaExtract": "Lobularia maritima is a species of low-growing flowering plant in the family Brassicaceae. Its common name is sweet alyssum or sweet Alison, also commonly referred to as just alyssum."
    },
    {
        "name": "לובליה",
        "botanical": "Lobelia erinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Lobelia_close-up_%28aka%29.jpg/330px-Lobelia_close-up_%28aka%29.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 5,
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Lobelia erinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobelia_erinus",
        "wikipediaExtract": "Lobelia erinus is a species of flowering plant in the bellflower family Campanulaceae, native to southern Africa."
    },
    {
        "name": "בגוניה",
        "botanical": "Begonia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/2006-12-13Begonia_bowerae01.jpg/330px-2006-12-13Begonia_bowerae01.jpg",
        "detail": "בֶגוֹנִיָה הוא סוג המונה כמעט 1500 מינים של צמחים פורחים רב שנתיים ממשפחת הבגוניים. הבֶגוֹנִיָה כוללת צמחים יבשתיים ולפעמים אפיפיטים הנפוצים בעיקר באקלים לח טרופי וסובטרופי, מקורה הוא בדרום ובמרכז אמריקה, אפריקה ודרום אסיה.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Begonia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Begonia",
        "wikipediaExtract": "Begonia is a genus of perennial flowering plants in the family Begoniaceae. The genus contains more than 2,000 different plant species, distributed primarily across tropical and subtropical regions of Africa, Asia, and Central and South America, with Africa considered the center of origin. Some species are commonly grown indoors as ornamental houseplants in cooler climates, or cultivated outside in summertime for their bright colorful flowers, which have petals but no sepals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%92%D7%95%D7%A0%D7%99%D7%94"
    },
    {
        "name": "ציניה",
        "botanical": "Zinnia elegans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Zinnienbl%C3%BCte_Zinnia_elegans_stack15_20190722-RM-7222254.jpg/330px-Zinnienbl%C3%BCte_Zinnia_elegans_stack15_20190722-RM-7222254.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Zinnia elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zinnia_elegans",
        "wikipediaExtract": "Zinnia elegans known as youth-and-age, common zinnia or elegant zinnia, is an annual flowering plant in the family Asteraceae. It is native to Mexico but grown as an ornamental in many places and naturalised in several places, including scattered locations in South and Central America, the West Indies, the United States, Australia, and Italy."
    },
    {
        "name": "קוסמוס",
        "botanical": "Cosmos bipinnatus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hubble_ultra_deep_field.jpg/330px-Hubble_ultra_deep_field.jpg",
        "detail": "היקום הוא כל החלל והזמן. הוא מכיל את כל התהליכים הפיזיקליים והקבועים הקוסמיים וכל האנרגיה והחומר שנוצרו, מחלקיקים אלמנטריים ועד צבירי גלקסיות. גילו של היקום מוערך ל-13.787±0.020 מיליארד שנים. היקום מתפשט, וכתוצאה מכך קרינה אלקטרומגנטית שיצאה ממנו מייד לאחר...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 8,
        "priceHigh": 22,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Cosmos bipinnatus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cosmos_bipinnatus",
        "wikipediaExtract": "Cosmos bipinnatus, commonly called the garden cosmos, Mexican aster or cosmea, is a medium-sized flowering herbaceous plant in the daisy family Asteraceae, native to the Americas. The species and its varieties and cultivars are popular as ornamental plants in temperate climate gardens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%A7%D7%95%D7%9D"
    },
    {
        "name": "חמנית ננסית",
        "botanical": "Helianthus annuus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Sunflower_sky_backdrop.jpg/330px-Sunflower_sky_backdrop.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 7,
        "priceHigh": 20,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Common sunflower",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Common_sunflower",
        "wikipediaExtract": "The common sunflower is a large annual forb in the daisy family Asteraceae. The domesticated form of common sunflower is harvested for its edible seeds, which come in two types: oil and confectionary seeds. Oilseed sunflowers are widely grown globally and represent the fourth most used vegetable oil in the world. They also are used widely as bird food or as food for livestock. In contrast, confectionary sunflowers are often eaten as a snack food or in baking. There also are horticultural sunflower varieties that are used as plantings in domestic gardens for aesthetics. Wild plants are known for their multiple flower heads, whereas the domestic sunflower often possesses a single large flower head atop an unbranched stem."
    },
    {
        "name": "סלפיגלוסיס",
        "botanical": "Salpiglossis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Salpiglossis_sinuata_flower_front_view.jpg/330px-Salpiglossis_sinuata_flower_front_view.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Salpiglossis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salpiglossis",
        "wikipediaExtract": "Salpiglossis is a genus of flowering plants belonging to the subfamily Cestroideae of family Solanaceae. It is closely related to the genus Reyesia, with which it makes up the tribe Salpiglossideae. Species in the genus Salpiglossis are found in Mexico, Argentina and Chile."
    },
    {
        "name": "קלנדולה",
        "botanical": "Calendula officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Calendula_January_2008-1_filtered.jpg/330px-Calendula_January_2008-1_filtered.jpg",
        "detail": "צִפָּרְנֵי-הֶחָתוּל הוא סוג של צמחים ממשפחת המורכבים, בעל פרחים צהובים או כתומים. הסוג מכיל 12 מינים ו-14 תת-מינים של צמחים עשבוניים חד-שנתיים או רב-שנתיים. הם גדלים מאירופה עד מערב ההימלאיה, ממקרונזיה (Macaronesia), עד המזרח התיכון, חצי האי ערב וסהרה. בארץ...",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 5,
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "ויקיפדיה",
        "wikipediaTitle": "Calendula officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calendula_officinalis",
        "wikipediaExtract": "Calendula officinalis, Mary's gold, common marigold, the pot marigold, Scotch marigold, or ruddles, is a flowering plant in the daisy family, Asteraceae. It is probably native to southern Europe, but its long history of cultivation makes its precise origin unknown, and it is widely naturalised. The florets are edible and the plant has historically been used as medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C"
    },
    {
        "name": "פורטולקה עונתית",
        "botanical": "Portulaca grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/PortulacaGrandiflora.jpg/330px-PortulacaGrandiflora.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Portulaca grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca_grandiflora",
        "wikipediaExtract": "Portulaca grandiflora is a succulent flowering plant in the purslane family Portulacaceae, native to southern Brazil, Argentina, and Uruguay and often cultivated in gardens. It has many common names, including rose moss, eleven o'clock, Mexican rose, moss rose, sun rose, rose Jepun, table rose, rock rose, and moss-rose purslane. Despite these names and the superficial resemblance of some cultivars' flowers to roses, it is not a true rose, nor even a part of the rose family or rosid group; rather, it is much more closely related to carnations and cacti."
    },
    {
        "name": "אימפטינס",
        "botanical": "Impatiens walleriana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Impatienswalleriana.jpg/330px-Impatienswalleriana.jpg",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 6,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Impatiens walleriana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Impatiens_walleriana",
        "wikipediaExtract": "Impatiens walleriana, also known as busy Lizzie, balsam, sultana, or simply impatiens, is a species of the genus Impatiens, native to eastern Africa from Kenya to Mozambique. The Latin specific epithet walleriana honours a British missionary, Horace Waller (1833–1896)."
    },
    {
        "name": "קולאוס",
        "botanical": "Plectranthus scutellarioides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Plectranthus_scutellarioides_-_El_Yunque_nat_park_PR_IMG_2120.JPG/330px-Plectranthus_scutellarioides_-_El_Yunque_nat_park_PR_IMG_2120.JPG",
        "detail": "צמח עונתי צבעוני לשתילה מהירה באדניות, עציצים וערוגות. נותן פריחה מיידית במחיר נגיש.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 14,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikipedia",
        "wikipediaTitle": "Coleus scutellarioides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coleus_scutellarioides",
        "wikipediaExtract": "Coleus scutellarioides, commonly known as coleus, is a species of flowering plant in the family Lamiaceae, native to southeast Asia through to Australia. Typically growing to 60–75 cm (24–30 in) tall and wide, it is a bushy, woody-based evergreen perennial, widely grown for the highly decorative variegated leaves found in cultivated varieties."
    }
];

const plantGrid = document.getElementById("plantGrid");
const emptyState = document.getElementById("emptyState");
const searchInput = document.getElementById("searchInput");
const sunFilter = document.getElementById("sunFilter");
const soilFilter = document.getElementById("soilFilter");
const waterFilter = document.getElementById("waterFilter");
const tabs = document.querySelectorAll(".tab");
const videoInput = document.getElementById("videoInput");
const videoPreview = document.getElementById("videoPreview");
const recommendButton = document.getElementById("recommendButton");
const recommendationIntro = document.getElementById("recommendationIntro");
const recommendationList = document.getElementById("recommendationList");
const totalCost = document.getElementById("totalCost");

function imageFallback(name) {
    const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="900" height="675" viewBox="0 0 900 675"><defs><linearGradient id="bg" x1="0" y1="0" x2="1" y2="1"><stop stop-color="#eef5ef"/><stop offset="1" stop-color="#dce8df"/></linearGradient></defs><rect width="900" height="675" fill="url(#bg)"/><circle cx="230" cy="210" r="92" fill="#6f927a" opacity="0.26"/><circle cx="690" cy="470" r="130" fill="#ead9b7" opacity="0.42"/><path d="M450 478c-70-78-78-160-24-248 73 74 92 154 24 248Z" fill="#476653" opacity="0.82"/><path d="M430 486c-88-42-132-112-128-214 92 35 147 100 128 214Z" fill="#6f927a" opacity="0.72"/><path d="M470 486c88-42 132-112 128-214-92 35-147 100-128 214Z" fill="#6f927a" opacity="0.72"/><text x="450" y="585" text-anchor="middle" font-family="Arial, sans-serif" font-size="42" font-weight="700" fill="#31483a">${name}</text><text x="450" y="626" text-anchor="middle" font-family="Arial, sans-serif" font-size="24" fill="#667568">Gardening Artists</text></svg>`;
    return `data:image/svg+xml;charset=UTF-8,${encodeURIComponent(svg)}`;
}

document.getElementById("plantCount").textContent = plants.length;

function plantMatchesRubric(plant, rubric) {
    return rubric === "all" ||
        plant.sun.includes(rubric) ||
        plant.soil.includes(rubric) ||
        plant.water === rubric;
}

function normalize(value) {
    return value.toLowerCase().trim();
}

function renderPlants(rubric = "all") {
    const query = normalize(searchInput.value);
    const selectedSun = sunFilter.value;
    const selectedSoil = soilFilter.value;
    const selectedWater = waterFilter.value;

    const filteredPlants = plants.filter((plant) => {
        const searchable = normalize([
            plant.name,
            plant.botanical,
            plant.detail,
            plant.wikipediaExtract || "",
            plant.sun.join(" "),
            plant.soil.join(" "),
            plant.water,
            plant.tags.join(" ")
        ].join(" "));

        return plantMatchesRubric(plant, rubric) &&
            (!query || searchable.includes(query)) &&
            (!selectedSun || plant.sun.includes(selectedSun)) &&
            (!selectedSoil || plant.soil.includes(selectedSoil)) &&
            (!selectedWater || plant.water === selectedWater);
    });

    plantGrid.innerHTML = filteredPlants.map((plant) => `
        <article class="plant-card">
            <img src="${plant.image}" alt="${plant.name}" loading="lazy" decoding="async" onerror="this.onerror=null;this.src=imageFallback(this.alt);">
            <div class="plant-card-content">
                <h3>${plant.name}<span>${plant.botanical}</span></h3>
                <p>${plant.detail}</p>
                <div class="chips">
                    ${plant.sun.map((item) => `<span class="chip">${item}</span>`).join("")}
                    ${plant.soil.map((item) => `<span class="chip">${item}</span>`).join("")}
                    <span class="chip">השקיה ${plant.water}</span>
                </div>
                <div class="plant-meta">
                    <div class="meta-row"><strong>שמש מיטבית</strong><span>${plant.sun.join(", ")}</span></div>
                    <div class="meta-row"><strong>קרקע מתאימה</strong><span>${plant.soil.join(", ")}</span></div>
                    <div class="meta-row"><strong>השקיה</strong><span>${plant.water}</span></div>
                    <div class="price">טווח משתלות בישראל: ₪${plant.priceLow} - ₪${plant.priceHigh}</div>
                    <a class="source-link" href="${plant.wikipediaUrl}" target="_blank" rel="noopener noreferrer">
                        מקור תמונה ומידע בוטני: ${plant.imageSource}
                    </a>
                </div>
            </div>
        </article>
    `).join("");

    emptyState.style.display = filteredPlants.length ? "none" : "block";
}

function setActiveTab(activeTab) {
    tabs.forEach((tab) => tab.classList.toggle("active", tab === activeTab));
    renderPlants(activeTab.dataset.rubric);
}

function midpoint(plant) {
    return (plant.priceLow + plant.priceHigh) / 2;
}

function getAdvisorMatches() {
    const sun = document.getElementById("advisorSun").value;
    const soil = document.getElementById("advisorSoil").value;
    const water = document.getElementById("advisorWater").value;
    const direction = document.getElementById("directionInput").value;
    const notes = normalize(document.getElementById("notesInput").value);

    const directionBonus = {
        "דרום": "שמש מלאה",
        "מערב": "שמש מלאה",
        "מזרח": "חצי שמש",
        "צפון": "חצי צל"
    };

    return plants
        .map((plant) => {
            let score = 0;
            if (plant.sun.includes(sun)) score += 4;
            if (plant.sun.includes(directionBonus[direction])) score += 2;
            if (plant.soil.includes(soil)) score += 3;
            if (plant.water === water) score += 3;
            plant.tags.forEach((tag) => {
                if (notes.includes(tag)) score += 1;
            });
            if (notes.includes("פרטיות") && plant.tags.includes("פרטיות")) score += 2;
            if (notes.includes("פריחה") && plant.tags.includes("פורח")) score += 2;
            if (notes.includes("מאביק") && plant.tags.includes("מאביקים")) score += 2;
            if (notes.includes("צל") && plant.sun.includes("צל")) score += 2;
            return { plant, score };
        })
        .filter((entry) => entry.score >= 4)
        .sort((a, b) => b.score - a.score || midpoint(a.plant) - midpoint(b.plant))
        .slice(0, 6);
}

function recommendGarden() {
    const size = Number(document.getElementById("gardenSize").value) || 30;
    const density = Number(document.getElementById("densityInput").value);
    const hasVideo = videoInput.files.length > 0;
    const matches = getAdvisorMatches();
    const selected = matches.length ? matches : plants.slice(0, 4).map((plant) => ({ plant, score: 1 }));
    const totalPlants = Math.max(3, Math.round(size * density));
    const perPlant = Math.max(1, Math.floor(totalPlants / selected.length));
    let runningTotal = 0;

    recommendationIntro.textContent = hasVideo
        ? "הסרטון התקבל. לפי תנאי האתר והבחירות שלך, זו פלטת צמחים מומלצת לגינה."
        : "לפי תנאי הגינה שבחרת, זו פלטת צמחים מומלצת לאזור.";

    recommendationList.innerHTML = selected.map(({ plant }, index) => {
        const quantity = index === selected.length - 1
            ? totalPlants - (perPlant * (selected.length - 1))
            : perPlant;
        const itemTotal = Math.round(quantity * midpoint(plant));
        runningTotal += itemTotal;

        return `
            <div class="recommendation-item">
                <strong>${quantity} יחידות - ${plant.name}</strong>
                <span>${plant.sun.join(", ")} | ${plant.soil.join(", ")} | השקיה ${plant.water}</span><br>
                <span>עלות צמחים משוערת: ₪${itemTotal.toLocaleString()}</span>
            </div>
        `;
    }).join("");

    totalCost.textContent = `₪${runningTotal.toLocaleString()}`;
}

tabs.forEach((tab) => {
    tab.addEventListener("click", () => setActiveTab(tab));
});

[searchInput, sunFilter, soilFilter, waterFilter].forEach((control) => {
    control.addEventListener("input", () => {
        const activeTab = document.querySelector(".tab.active");
        renderPlants(activeTab.dataset.rubric);
    });
});

videoInput.addEventListener("change", () => {
    const file = videoInput.files[0];
    if (!file) {
        videoPreview.removeAttribute("src");
        videoPreview.style.display = "none";
        return;
    }
    videoPreview.src = URL.createObjectURL(file);
    videoPreview.style.display = "block";
});

recommendButton.addEventListener("click", recommendGarden);

renderPlants();
</script>
</body>
</html>
