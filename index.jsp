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
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Olea_europaea_details.jpg/960px-Olea_europaea_details.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Olive",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Olive",
        "wikipediaExtract": "The olive is a species of subtropical evergreen tree in the family Oleaceae. Originating in Asia Minor, it is abundant throughout the Mediterranean Basin, with wild subspecies in Africa and western Asia; modern cultivars are traced primarily to the Near East, Aegean Sea, and Strait of Gibraltar. The olive is the type species for its genus, Olea, and lends its name to the Oleaceae plant family, which includes lilac, jasmine, forsythia, and ash. The olive fruit is classed botanically as a drupe, similar in structure and function to the cherry or peach. The term oil was originally synonymous with olive oil, the liquid fat derived from olives.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%99%D7%AA_%D7%90%D7%99%D7%A8%D7%95%D7%A4%D7%99",
        "imageTitle": "File:Olea europaea details.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Olea_europaea_details.jpg",
        "imageDescription": "In this picture we can see two different branches of Common Olive tree in which fruit is depicted in one of them and separately a detail of fruit stages, while in the other one the flowers and the distribution of them in the branch is shown"
    },
    {
        "name": "לימון",
        "botanical": "Citrus limon",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/%D8%B2%D9%87%D8%B1%D8%A9_%D8%B4%D8%AC%D8%B1%D8%A9_%D8%A7%D9%84%D9%84%D9%8A%D9%85%D9%88%D9%86_Citrus_limon.jpg/960px-%D8%B2%D9%87%D8%B1%D8%A9_%D8%B4%D8%AC%D8%B1%D8%A9_%D8%A7%D9%84%D9%84%D9%8A%D9%85%D9%88%D9%86_Citrus_limon.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lemon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon",
        "wikipediaExtract": "The lemon is a species of small evergreen tree in the Citrus genus of the flowering plant family Rutaceae. A true lemon is a hybrid of the citron and the bitter orange. Its origins are uncertain, but some evidence suggests lemons originated during the 1st millennium BC in what is now northeastern India. Some other citrus fruits are called lemon.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%9E%D7%95%D7%9F",
        "imageTitle": "File:زهرة شجرة الليمون Citrus limon.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%D8%B2%D9%87%D8%B1%D8%A9_%D8%B4%D8%AC%D8%B1%D8%A9_%D8%A7%D9%84%D9%84%D9%8A%D9%85%D9%88%D9%86_Citrus_limon.jpg",
        "imageDescription": "زهرة شجرة الليمون أو الحامض"
    },
    {
        "name": "תפוז",
        "botanical": "Citrus sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Starr-150301-0364-Citrus_sinensis-Washington_navel_flower_with_honey_bee-Hawea_Pl_Olinda-Maui_%2825146920282%29.jpg/960px-Starr-150301-0364-Citrus_sinensis-Washington_navel_flower_with_honey_bee-Hawea_Pl_Olinda-Maui_%2825146920282%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Citrus × sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Citrus_%C3%97_sinensis",
        "wikipediaExtract": "Citrus × sinensis, is a broadleaf evergreen hybrid between pomelo and mandarin. Hybrid sweet oranges are commonly cultivated fruits that include Valencia oranges, blood oranges and navel oranges.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%A4%D7%95%D7%96",
        "imageTitle": "File:Starr-150301-0364-Citrus sinensis-Washington navel flower with honey bee-Hawea Pl Olinda-Maui (25146920282).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-150301-0364-Citrus_sinensis-Washington_navel_flower_with_honey_bee-Hawea_Pl_Olinda-Maui_%2825146920282%29.jpg",
        "imageDescription": "     Citrus sinensis  (Orange)     \n  Washington navel flower with honey bee at Hawea Pl Olinda, Maui, Hawaii.\nMarch 01, 2015\n \n   #150301-0364   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "קלמנטינה",
        "botanical": "Citrus clementina",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flowers_of_Citrus_clementina_%284%29.jpg/960px-Flowers_of_Citrus_clementina_%284%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Clementine",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clementine",
        "wikipediaExtract": "A clementine is a tangor, a citrus fruit hybrid between a willowleaf mandarin orange and a sweet orange, named in honor of Clément Rodier, a French missionary who first discovered and propagated the cultivar in Algeria. The exterior is a deep orange colour with a smooth, glossy appearance. Clementines can be separated into 7 to 14 segments. Similar to tangerines, they tend to be easy to peel. They are typically juicy and sweet, with less acid than oranges. Their oils, like other citrus fruits, contain mostly limonene as well as myrcene, linalool, α-pinene and many complex aromatics.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%9C%D7%9E%D7%A0%D7%98%D7%99%D7%A0%D7%94",
        "imageTitle": "File:Flowers of Citrus clementina (4).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flowers_of_Citrus_clementina_%284%29.jpg",
        "imageDescription": "Flowers of  Citrus clementina  in Nauviale, Aveyron, France"
    },
    {
        "name": "אשכולית",
        "botanical": "Citrus paradisi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/%D0%94%D0%BE%D0%BD%D0%B5%D1%86%D1%8C%D0%BA%D0%B8%D0%B9_%D0%B1%D0%BE%D1%82%D0%B0%D0%BD%D1%96%D1%87%D0%BD%D0%B8%D0%B9_%D1%81%D0%B0%D0%B4_-_%D0%B3%D1%80%D0%B5%D0%B9%D0%BF%D1%84%D1%80%D1%83%D1%82_%28Citrus_paradisi%29_%D0%B2_%D0%BE%D1%80%D0%B0%D0%BD%D0%B6%D0%B5%D1%80%D0%B5%D1%97.JPG/960px-%D0%94%D0%BE%D0%BD%D0%B5%D1%86%D1%8C%D0%BA%D0%B8%D0%B9_%D0%B1%D0%BE%D1%82%D0%B0%D0%BD%D1%96%D1%87%D0%BD%D0%B8%D0%B9_%D1%81%D0%B0%D0%B4_-_%D0%B3%D1%80%D0%B5%D0%B9%D0%BF%D1%84%D1%80%D1%83%D1%82_%28Citrus_paradisi%29_%D0%B2_%D0%BE%D1%80%D0%B0%D0%BD%D0%B6%D0%B5%D1%80%D0%B5%D1%97.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Grapefruit",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grapefruit",
        "wikipediaExtract": "The grapefruit is a subtropical citrus tree known for its relatively large, sour to semi-sweet, somewhat bitter fruit. The flesh of the fruit is segmented and varies in color from pale yellow to dark red.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A9%D7%9B%D7%95%D7%9C%D7%99%D7%AA",
        "imageTitle": "File:Донецький ботанічний сад - грейпфрут (Citrus paradisi) в оранжереї.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%D0%94%D0%BE%D0%BD%D0%B5%D1%86%D1%8C%D0%BA%D0%B8%D0%B9_%D0%B1%D0%BE%D1%82%D0%B0%D0%BD%D1%96%D1%87%D0%BD%D0%B8%D0%B9_%D1%81%D0%B0%D0%B4_-_%D0%B3%D1%80%D0%B5%D0%B9%D0%BF%D1%84%D1%80%D1%83%D1%82_%28Citrus_paradisi%29_%D0%B2_%D0%BE%D1%80%D0%B0%D0%BD%D0%B6%D0%B5%D1%80%D0%B5%D1%97.JPG",
        "imageDescription": " \n  \n      \n \n \n This is a photo of a natural heritage site in Ukraine, id:  14-101-5002 \n \n    "
    },
    {
        "name": "ליים",
        "botanical": "Citrus aurantiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Starr_080610-8304_Citrus_aurantiifolia.jpg/960px-Starr_080610-8304_Citrus_aurantiifolia.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Key lime",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Key_lime",
        "wikipediaExtract": "The Key lime, also known as West Indian lime, Mexican lime, or Egyptian lime is a type of lime. While it is treated as a species in botanical classification, it originated as a natural hybrid between Citrus micrantha and Citrus medica (citron).",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%99%D7%9D",
        "imageTitle": "File:Starr 080610-8304 Citrus aurantiifolia.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr_080610-8304_Citrus_aurantiifolia.jpg",
        "imageDescription": "Citrus aurantiifolia (flowers). Location: Midway Atoll, Community Garden Sand Island"
    },
    {
        "name": "רימון",
        "botanical": "Punica granatum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Punica_granatum_flower.jpg/960px-Punica_granatum_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pomegranate",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pomegranate",
        "wikipediaExtract": "The pomegranate is a fruit-bearing, deciduous shrub in the family Lythraceae, subfamily Punicoideae, that grows to between 1.5–5 metres (5–16 ft) tall. Rich in symbolic and mythological associations in many cultures, it originated in the region spanning the Caucasus and the Iranian plateau — including modern-day Iran, Turkmenistan, Afghanistan and Pakistan. Pomegranate was first domesticated by ancient Iranians in the Iranian plateau and nearby regions about 5,000 years ago. It is extensively cultivated for its fruit.",
        "imageTitle": "File:Punica granatum flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Punica_granatum_flower.jpg",
        "imageDescription": "Photo of   Punica granatum   flower at the  Springs Preserve  garden in  Las Vegas, Nevada "
    },
    {
        "name": "תאנה",
        "botanical": "Ficus carica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/0/04/EB1911_Flower_-_Peduncle_of_Ficus_carica_enclosing_male_and_female_flowers.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Fig",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Fig",
        "wikipediaExtract": "The fig is the edible fruit of Ficus carica, a species of tree or shrub in the flowering plant family Moraceae, native to the Mediterranean region, and to western and southern Asia. It has been cultivated since ancient times and is now widely grown throughout the world. Ficus carica is the type species of the genus Ficus, which comprises over 800 tropical and subtropical plant species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%90%D7%A0%D7%94",
        "imageTitle": "File:EB1911 Flower - Peduncle of Ficus carica enclosing male and female flowers.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:EB1911_Flower_-_Peduncle_of_Ficus_carica_enclosing_male_and_female_flowers.jpg",
        "imageDescription": "Peduncle of fig ( Ficus carica ), ending in a hollow receptacle, enclosing numerous male and female flowers."
    },
    {
        "name": "שקד מצוי",
        "botanical": "Prunus dulcis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/20140326Prunus_dulcis15.jpg/960px-20140326Prunus_dulcis15.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Almond",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Almond",
        "wikipediaExtract": "The almond is a species of tree from the genus Prunus. Along with the peach, it is classified in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the woody shell (endocarp) surrounding the seed.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A7%D7%93_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "File:20140326Prunus dulcis15.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:20140326Prunus_dulcis15.jpg",
        "imageDescription": "Mandelblüte ( Prunus dulcis ) bei Reilingen"
    },
    {
        "name": "תות עץ",
        "botanical": "Morus alba",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Morus_alba_flowers_in_India.jpg/960px-Morus_alba_flowers_in_India.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Morus alba",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Morus_alba",
        "wikipediaExtract": "Morus alba, known as white mulberry, common mulberry and silkworm mulberry, is a fast-growing, small to medium-sized mulberry tree which grows to 10–20 m (33–66 ft) tall. It is native to China and is widely cultivated and naturalized elsewhere. The species is widely cultivated to feed the silkworms employed in the commercial production of silk. It is also notable for the rapid release of its pollen, which is launched at greater than half the speed of sound.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%95%D7%AA_(%D7%A2%D7%A5)",
        "imageTitle": "File:Morus alba flowers in India.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Morus_alba_flowers_in_India.jpg",
        "imageDescription": "Morus alba flowers in India"
    },
    {
        "name": "שסק יפני",
        "botanical": "Eriobotrya japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Eriobotrya_japonica_flower.jpg/960px-Eriobotrya_japonica_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Loquat",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Loquat",
        "wikipediaExtract": "The loquat is a large evergreen shrub or tree grown commercially for its orange coloured fruits. It is also cultivated as an ornamental plant.",
        "imageTitle": "File:Eriobotrya japonica flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Eriobotrya_japonica_flower.jpg",
        "imageDescription": " Eriobotrya japonica  flower."
    },
    {
        "name": "אפרסק",
        "botanical": "Prunus persica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/%22_13_-_ITALY_-_Peaches_in_bloom_-_spring_flowers_of_tree_fruit_-_Prunus_persica.JPG/960px-%22_13_-_ITALY_-_Peaches_in_bloom_-_spring_flowers_of_tree_fruit_-_Prunus_persica.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A4%D7%A8%D7%A1%D7%A7",
        "imageTitle": "File:\" 13 - ITALY - Peaches in bloom - spring flowers of tree fruit - Prunus persica.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%22_13_-_ITALY_-_Peaches_in_bloom_-_spring_flowers_of_tree_fruit_-_Prunus_persica.JPG",
        "imageDescription": "Un pesco in fiore in Italia"
    },
    {
        "name": "נקטרינה",
        "botanical": "Prunus persica var. nucipersica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/PrunusPersica4.jpg/960px-PrunusPersica4.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A7%D7%98%D7%A8%D7%99%D7%A0%D7%94",
        "imageTitle": "File:PrunusPersica4.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:PrunusPersica4.jpg",
        "imageDescription": "Peach flowers"
    },
    {
        "name": "משמש",
        "botanical": "Prunus armeniaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Prunus_armeniaca_in_Donetsk.jpg/960px-Prunus_armeniaca_in_Donetsk.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Prunus armeniaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Prunus_armeniaca",
        "wikipediaExtract": "Prunus armeniaca is the most commonly cultivated apricot species. The native range is somewhat uncertain due to its extensive prehistoric cultivation. Genetic studies indicate Central Asia is the center of origin. It is extensively cultivated in many countries and has escaped into the wild in many places. The specific epithet armeniaca refers to the country of Armenia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A9%D7%9E%D7%A9",
        "imageTitle": "File:Prunus armeniaca in Donetsk.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Prunus_armeniaca_in_Donetsk.jpg",
        "imageDescription": "flowers of Prunus armeniaca"
    },
    {
        "name": "אבוקדו",
        "botanical": "Persea americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/%E9%B1%B7%E6%A2%A8%28%E7%89%9B%E6%B2%B9%E6%9E%9C%29_Persea_americana_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2845773285394%29.jpg/960px-%E9%B1%B7%E6%A2%A8%28%E7%89%9B%E6%B2%B9%E6%9E%9C%29_Persea_americana_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2845773285394%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Avocado",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Avocado",
        "wikipediaExtract": "The avocado, alligator pear or avocado pear is an evergreen tree in the laurel family (Lauraceae). It is native to the Americas, with archaeological evidence of early human avocado use dating back thousands of years across various regions of Central and South America. It was prized for its large and unusually oily fruit. The native range of avocado extends from Mexico to Peru, encompassing much of Central America and parts of northern and western South America.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%95%D7%A7%D7%93%D7%95",
        "imageTitle": "File:鱷梨(牛油果) Persea americana -香港花展 Hong Kong Flower Show- (45773285394).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E9%B1%B7%E6%A2%A8%28%E7%89%9B%E6%B2%B9%E6%9E%9C%29_Persea_americana_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2845773285394%29.jpg",
        "imageDescription": "Avocado"
    },
    {
        "name": "מנגו",
        "botanical": "Mangifera indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Mangifera_indica_Flower_at_NeeliyarkottamIMG_2759.jpg/960px-Mangifera_indica_Flower_at_NeeliyarkottamIMG_2759.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Mangifera indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mangifera_indica",
        "wikipediaExtract": "Mangifera indica, commonly known as the mango after its fruit, is an evergreen species of flowering plant in the family Anacardiaceae. It is a large fruit tree, capable of growing to a height and width of 30 m (100 ft). There are two distinct genetic populations in modern mangoes – the \"Indian type\" and the \"Southeast Asian type\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A0%D7%92%D7%95",
        "imageTitle": "File:Mangifera indica Flower at NeeliyarkottamIMG 2759.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Mangifera_indica_Flower_at_NeeliyarkottamIMG_2759.jpg",
        "imageDescription": "Flower at Neeliyarkottam"
    },
    {
        "name": "גויאבה",
        "botanical": "Psidium guajava",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Psidium_guajava_flower_26032014_02.jpg/960px-Psidium_guajava_flower_26032014_02.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Psidium guajava",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Psidium_guajava",
        "wikipediaExtract": "Psidium guajava, the common guava, yellow guava, lemon guava, or apple guava is an evergreen shrub or small tree native to the Americas. It is pollinated by insects. When cultivated, it is pollinated mainly by the common honey bee, Apis mellifera.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%95%D7%99%D7%90%D7%91%D7%94",
        "imageTitle": "File:Psidium guajava flower 26032014 02.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Psidium_guajava_flower_26032014_02.jpg",
        "imageDescription": "Flower of common guava ( Psidium guajava ). Taken at Burdwan, West Bengal, India."
    },
    {
        "name": "פיגויה",
        "botanical": "Acca sellowiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Acca_sellowiana_flower_1.jpg/960px-Acca_sellowiana_flower_1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Feijoa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Feijoa",
        "wikipediaExtract": "Feijoa sellowiana, also known as Acca sellowiana (O.Berg) Burret, is a species of flowering plant in the myrtle family, Myrtaceae. It is the only species in the genus Feijoa. It is native mainly to the highlands of Colombia, southern Brazil and the hills of northeast Uruguay, but it can also be found in eastern Paraguay and northern Argentina. It is known as quirina or as feijoa.",
        "imageTitle": "File:Acca sellowiana flower 1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Acca_sellowiana_flower_1.jpg",
        "imageDescription": " Acca sellowiana  ( Feijoa  sellowiana)"
    },
    {
        "name": "חרוב מצוי",
        "botanical": "Ceratonia siliqua",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ceratonia_siliqua_bee_on_male_flower_02-RJP.jpg/960px-Ceratonia_siliqua_bee_on_male_flower_02-RJP.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Carob",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carob",
        "wikipediaExtract": "The carob is a flowering evergreen tree or shrub in the Caesalpinioideae subfamily of the legume family, Fabaceae. The carob tree is native to the Mediterranean region and the Middle East. It is widely cultivated for its edible fruit, which takes the form of seed pods, and as an ornamental tree in gardens and landscapes. Spain is its largest producer, followed by Italy and Morocco.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%97%D7%A8%D7%95%D7%91_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "File:Ceratonia siliqua bee on male flower 02-RJP.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Ceratonia_siliqua_bee_on_male_flower_02-RJP.jpg",
        "imageDescription": " Photographed at the Israel Border Police memorial site near kibbutz Barkai.\n \nBee on Ceratonia siliqua male flowers."
    },
    {
        "name": "ברוש מצוי",
        "botanical": "Cupressus sempervirens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/180214_16_Fallbrook%2C_CA_-_Walk_around_Ross_Lake%2C_Lynda_Lane%2C_Marah_macrocarpa_Wild_Cucumber_or_Chilicothe%2C_Bougainvillea_sp%2C_Cupressus_sempervirens_Italian_Cypress.jpg/960px-thumbnail.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cupressus sempervirens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cupressus_sempervirens",
        "wikipediaExtract": "Cupressus sempervirens, the Mediterranean cypress, is a species of cypress native to the eastern Mediterranean region and Iran. It is well-adapted to the environmental conditions that it lives in due to its ability to survive in both acidic and alkaline soils and withstand drought. Cupressus sempervirens is important in Mediterranean and Middle Eastern culture. In Iran it is both a sacred tree and a metaphor for \"the graceful figure of the beloved\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%A8%D7%95%D7%A9_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "File:180214 16 Fallbrook, CA - Walk around Ross Lake, Lynda Lane, Marah macrocarpa Wild Cucumber or Chilicothe, Bougainvillea sp, Cupressus sempervirens Italian Cypress.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:180214_16_Fallbrook%2C_CA_-_Walk_around_Ross_Lake%2C_Lynda_Lane%2C_Marah_macrocarpa_Wild_Cucumber_or_Chilicothe%2C_Bougainvillea_sp%2C_Cupressus_sempervirens_Italian_Cypress.jpg",
        "imageDescription": "www.nps.gov/cabr/blogs/species-spotlight-wild-cucumber-ma..."
    },
    {
        "name": "סיגלון חד עלים",
        "botanical": "Jacaranda mimosifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Jacaranda_tree_%28Jacaranda_mimosifolia%29_in_bloom%2C_Miguel_Bombarda_Avenue%2C_Lisbon%2C_Portugal_julesvernex2.jpg/960px-Jacaranda_tree_%28Jacaranda_mimosifolia%29_in_bloom%2C_Miguel_Bombarda_Avenue%2C_Lisbon%2C_Portugal_julesvernex2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Jacaranda mimosifolia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jacaranda_mimosifolia",
        "wikipediaExtract": "Jacaranda mimosifolia is a sub-tropical tree native to south-central South America that has been widely planted elsewhere because of its attractive and long-lasting violet-colored flowers. It is also known as the jacaranda, blue jacaranda, black poui, Nupur or fern tree. Older sources call it J. acutifolia, but modern authorities usually classify it as J. mimosifolia. In scientific usage, the name \"jacaranda\" refers to the genus Jacaranda, which has many other members, but in horticultural and everyday usage, it nearly always means the blue jacaranda.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%92%D7%9C%D7%95%D7%9F_%D7%97%D7%93-%D7%A2%D7%9C%D7%99%D7%9D",
        "imageTitle": "File:Jacaranda tree (Jacaranda mimosifolia) in bloom, Miguel Bombarda Avenue, Lisbon, Portugal julesvernex2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Jacaranda_tree_%28Jacaranda_mimosifolia%29_in_bloom%2C_Miguel_Bombarda_Avenue%2C_Lisbon%2C_Portugal_julesvernex2.jpg",
        "imageDescription": "Jacaranda tree (Jacaranda mimosifolia) in bloom, Miguel Bombarda Avenue, Lisbon, Portugal"
    },
    {
        "name": "כליל החורש",
        "botanical": "Cercis siliquastrum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Cercis_siliquastrum_-_Judas-tree_04.jpg/960px-Cercis_siliquastrum_-_Judas-tree_04.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cercis siliquastrum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cercis_siliquastrum",
        "wikipediaExtract": "Cercis siliquastrum, European Cercis, commonly known as the Judas tree or Judas-tree, is a small deciduous species of redbud in the flowering plant family Fabaceae which is noted for its prolific display of deep pink flowers in spring. It is native to Southern Europe and Western Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%9C%D7%99%D7%9C_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "File:Cercis siliquastrum - Judas-tree 04.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Cercis_siliquastrum_-_Judas-tree_04.jpg",
        "imageDescription": "A painting lady on Judas-tree ( Cercis siliquastrum ). Balcalı - Adana, Turkey."
    },
    {
        "name": "לגרסטרמיה הודית",
        "botanical": "Lagerstroemia indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Bunga_dari_pohon_Bungur_Lagerstroemia_indica.jpg/960px-Bunga_dari_pohon_Bungur_Lagerstroemia_indica.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lagerstroemia indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lagerstroemia_indica",
        "wikipediaExtract": "Lagerstroemia indica, known as the crape myrtle, is a species of flowering plant in the genus Lagerstroemia of the family Lythraceae. It is native to East Asia, South Asia and Southeast Asia. It is an often multi-stemmed, deciduous tree with a wide spreading, flat topped, rounded, or even spike shaped open habit. The tree is a popular nesting shrub for songbirds and wrens.",
        "imageTitle": "File:Bunga dari pohon Bungur Lagerstroemia indica.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Bunga_dari_pohon_Bungur_Lagerstroemia_indica.jpg",
        "imageDescription": "Bunga dari pohon Bungur Lagerstroemia indica"
    },
    {
        "name": "בוהיניה מגוונת",
        "botanical": "Bauhinia variegata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Bauhinia_variegata_kanchan_leaves_and_flower_at_Kolkata.jpg/960px-Bauhinia_variegata_kanchan_leaves_and_flower_at_Kolkata.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Bauhinia variegata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bauhinia_variegata",
        "wikipediaExtract": "Bauhinia variegata is a species of flowering plant in the legume family, Fabaceae. It is native to an area from China through Southeast Asia to the Indian subcontinent. Common names include orchid tree and mountain ebony.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%94%D7%99%D7%A0%D7%99%D7%94_%D7%9E%D7%92%D7%95%D7%95%D7%A0%D7%AA",
        "imageTitle": "File:Bauhinia variegata kanchan leaves and flower at Kolkata.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Bauhinia_variegata_kanchan_leaves_and_flower_at_Kolkata.jpg",
        "imageDescription": "Bauhinia variegata kanchan leaves and flower at Kolkata"
    },
    {
        "name": "ברכיכיטון צפצפתי",
        "botanical": "Brachychiton populneus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Brachychiton_populneus_-_Flickr_-_Kevin_Thiele.jpg/960px-Brachychiton_populneus_-_Flickr_-_Kevin_Thiele.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Brachychiton populneus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Brachychiton_populneus",
        "wikipediaExtract": "Brachychiton populneus, commonly known as the kurrajong, is a small to medium-sized tree found naturally in Australia in a diversity of habitats from wetter coastal districts to semi-arid interiors of Victoria, New South Wales and Queensland. Carrejun and carrejan were the indigenous names of trees in the foothills of the Blue Mountains near Sydney, and the bark was used for twine and fishing lines.",
        "imageTitle": "File:Brachychiton populneus - Flickr - Kevin Thiele.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Brachychiton_populneus_-_Flickr_-_Kevin_Thiele.jpg",
        "imageDescription": "KRT4093"
    },
    {
        "name": "פלפלון בכות",
        "botanical": "Schinus molle",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Pirul_%28Schinus_molle%29_0006734.jpg/960px-Pirul_%28Schinus_molle%29_0006734.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Schinus molle",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Schinus_molle",
        "wikipediaExtract": "Schinus molle is an evergreen tree that grows to 15 m. It is native to an area from the Peruvian Andes to southern Brazil. The bright pink fruits of S. molle are often sold as \"pink peppercorns\", although it is unrelated to black pepper. The word molle in Schinus molle comes from mulli, the Quechua word for the tree. The tree is host to the pepper-tree moth, Bombycomorpha bifascia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%A4%D7%9C%D7%95%D7%9F_%D7%91%D7%9B%D7%95%D7%AA",
        "imageTitle": "File:Pirul (Schinus molle) 0006734.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pirul_%28Schinus_molle%29_0006734.jpg",
        "imageDescription": "Árbol pirul ( Schinus molle ), hojas e inflorescencias."
    },
    {
        "name": "טיפואנה",
        "botanical": "Tipuana tipu",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Tipuana_tipu_Flowers_1.jpg/960px-Tipuana_tipu_Flowers_1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Tipuana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tipuana",
        "wikipediaExtract": "Tipuana tipu, also known as tipa, rosewood and pride of Bolivia, is a South American tree.",
        "imageTitle": "File:Tipuana tipu Flowers 1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Tipuana_tipu_Flowers_1.jpg",
        "imageDescription": "Tipuana tipu flowers"
    },
    {
        "name": "אלביציה ורודה",
        "botanical": "Albizia julibrissin",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Copper_sunbird_%28Cinnyris_cupreus_cupreus%29_female_on_Persian_silk_tree_%28Albizia_julibrissin%29.jpg/960px-Copper_sunbird_%28Cinnyris_cupreus_cupreus%29_female_on_Persian_silk_tree_%28Albizia_julibrissin%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Albizia julibrissin",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Albizia_julibrissin",
        "wikipediaExtract": "Albizia julibrissin, the Persian silk tree, pink silk tree, or mimosa tree, is a species of tree in the Fabaceae family, native to southwestern and eastern Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%91%D7%99%D7%A6%D7%99%D7%94_%D7%95%D7%A8%D7%95%D7%93%D7%94",
        "imageTitle": "File:Copper sunbird (Cinnyris cupreus cupreus) female on Persian silk tree (Albizia julibrissin).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Copper_sunbird_%28Cinnyris_cupreus_cupreus%29_female_on_Persian_silk_tree_%28Albizia_julibrissin%29.jpg",
        "imageDescription": "Copper sunbird ( Cinnyris cupreus cupreus ) female on Persian silk tree ( Albizia julibrissin ), Kakum National Park, Ghana"
    },
    {
        "name": "דולב מזרחי",
        "botanical": "Platanus orientalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Platanus_orientalis_flowers_Izmir.jpg/960px-Platanus_orientalis_flowers_Izmir.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Platanus orientalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Platanus_orientalis",
        "wikipediaExtract": "Platanus orientalis, the Oriental plane, is a large, deciduous tree in the family Platanaceae, growing to 30 m (98 ft) or more, and known for its longevity and spreading crown. In autumn, its deep green leaves may change to blood red, amber, and yellow.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%95%D7%9C%D7%91_%D7%9E%D7%96%D7%A8%D7%97%D7%99",
        "imageTitle": "File:Platanus orientalis flowers Izmir.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Platanus_orientalis_flowers_Izmir.jpg",
        "imageDescription": "  Platanus orientalis   flowers and young leaves, İzmir, Turkey"
    },
    {
        "name": "מכנף נאה",
        "botanical": "Peltophorum dubium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Peltophorum_dubium_plant.jpg/960px-Peltophorum_dubium_plant.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Peltophorum dubium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peltophorum_dubium",
        "wikipediaExtract": "Peltophorum dubium is a tree in the family Fabaceae and subfamily Caesalpinioideae. This species is known as ibirá-pitá in Argentina and Paraguay, árbol de Artigas in Uruguay, and Cambuí in Brazil. It is a large tree, growing around 20–25 meters, with a more or less straight trunk.Foliage: bright green, and deciduous\nLeaves: compound, bipinnate, large. Numerous leaves with a central nervous system.\nFlowers: from 2 cm in diameter, arranged in bundles that end in spikes. The bright visible flowers are in corollas. They flower in the summer and at the beginning of autumn.\nFruits: indehiscent{?} legume, flat, leathery, and brown.\nSeeds: cylindrical with hard nuts.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9B%D7%A0%D7%A3_%D7%A0%D7%90%D7%94",
        "imageTitle": "File:Peltophorum dubium plant.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Peltophorum_dubium_plant.jpg",
        "imageDescription": "God's creation"
    },
    {
        "name": "הדס מצוי",
        "botanical": "Myrtus communis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Myrtus_communis_Flower_Closeup_DehesaBoyalPuertollano.jpg/960px-Myrtus_communis_Flower_Closeup_DehesaBoyalPuertollano.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Myrtus communis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Myrtus_communis",
        "wikipediaExtract": "Myrtus communis, the common myrtle or true myrtle, is a species of flowering plant in the myrtle family Myrtaceae. It is an evergreen shrub native to southern Europe, North Africa, Western Asia, Macaronesia, and the Indian subcontinent, and also cultivated.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%93%D7%A1_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "File:Myrtus communis Flower Closeup DehesaBoyalPuertollano.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Myrtus_communis_Flower_Closeup_DehesaBoyalPuertollano.jpg",
        "imageDescription": " Myrtus communis  flowers close up  Dehesa Boyal de Puertollano ,  Spain "
    },
    {
        "name": "מורן החורש",
        "botanical": "Viburnum tinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/MHNT_Viburnum_tinus.jpg/960px-MHNT_Viburnum_tinus.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Viburnum tinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viburnum_tinus",
        "wikipediaExtract": "Viburnum tinus, the laurustinus or laurustine, is a species of flowering plant in the family Adoxaceae, native to the Mediterranean area of Europe and North Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%9F_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "File:MHNT Viburnum tinus.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:MHNT_Viburnum_tinus.jpg",
        "imageDescription": " Laurestine , inflorescence"
    },
    {
        "name": "אלת המסטיק",
        "botanical": "Pistacia lentiscus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Pistacia_lentiscus_%28male_flowers%29.jpg/960px-Pistacia_lentiscus_%28male_flowers%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pistacia lentiscus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pistacia_lentiscus",
        "wikipediaExtract": "Pistacia lentiscus is a dioecious evergreen shrub or small tree of the genus Pistacia native to the Mediterranean Basin. It grows up to 4 m (13 ft) tall and is cultivated for its aromatic resin, mainly on the Greek island of Chios, around the Turkish town of Çeşme and northern parts of Iraq.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%AA_%D7%94%D7%9E%D7%A1%D7%98%D7%99%D7%A7",
        "imageTitle": "File:Pistacia lentiscus (male flowers).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pistacia_lentiscus_%28male_flowers%29.jpg",
        "imageDescription": "Grape hyacinth near Cala Ses Salinas, Mallorca."
    },
    {
        "name": "לויקופילום",
        "botanical": "Leucophyllum frutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Leucophyllum_frutescens_flower_1.jpg/960px-Leucophyllum_frutescens_flower_1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Leucophyllum frutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leucophyllum_frutescens",
        "wikipediaExtract": "Leucophyllum frutescens is an evergreen shrub in the figwort family, Scrophulariaceae, native to the U.S. state of Texas, where it is the official \"State Native Shrub of Texas\", and to the states of Coahuila, Nuevo León, and Tamaulipas in northern Mexico. Although commonly known as Texas sage, it is not a true sage and is distinct from the genus Salvia. The species is also called Texas Ranger, Texas rain sage, cenizo, Texas silverleaf, Texas barometerbush, ash-bush, wild lilac, purple sage, senisa, cenicilla, palo cenizo, or hierba del cenizo.",
        "imageTitle": "File:Leucophyllum frutescens flower 1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Leucophyllum_frutescens_flower_1.jpg",
        "imageDescription": " Leucophyllum frutescens  flowers"
    },
    {
        "name": "היביסקוס סיני",
        "botanical": "Hibiscus rosa-sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Hibiscus_Flower_%28Hibiscus_rosa-sinensis%29.jpg/960px-Hibiscus_Flower_%28Hibiscus_rosa-sinensis%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Hibiscus × rosa-sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hibiscus_%C3%97_rosa-sinensis",
        "wikipediaExtract": "Hibiscus × rosa-sinensis is a cultigen of tropical hibiscus, a flowering plant in the Hibiscus genus and Hibisceae tribe of the family Malvaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%91%D7%99%D7%A1%D7%A7%D7%95%D7%A1_%D7%A1%D7%99%D7%A0%D7%99",
        "imageTitle": "File:Hibiscus Flower (Hibiscus rosa-sinensis).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Hibiscus_Flower_%28Hibiscus_rosa-sinensis%29.jpg",
        "imageDescription": "The hibiscus flower is a vibrant and versatile flowering plant known for its large, trumpet-shaped blossoms that come in various colors such as red, pink, yellow, and white. Belonging to the mallow family, Hibiscus has over 200 species and "
    },
    {
        "name": "דורנטה",
        "botanical": "Duranta erecta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Sinyo_Nakal_%28Duranta_erecta%29.jpg/960px-Sinyo_Nakal_%28Duranta_erecta%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Duranta erecta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Duranta_erecta",
        "wikipediaExtract": "Duranta erecta is a species of flowering shrub in the verbena family Verbenaceae, native from Mexico to South America and the Caribbean. It is widely cultivated as an ornamental plant in tropical and subtropical gardens throughout the world, and has become naturalized in many places. Common names include golden dewdrop, pigeon berry, and skyflower.",
        "imageTitle": "File:Sinyo Nakal (Duranta erecta).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Sinyo_Nakal_%28Duranta_erecta%29.jpg",
        "imageDescription": "Sinyo Nakal (Duranta erecta)"
    },
    {
        "name": "ננדינה",
        "botanical": "Nandina domestica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Nandina_domestica_in_Jardins_de_la_Fontaine_in_Nimes.jpg/960px-Nandina_domestica_in_Jardins_de_la_Fontaine_in_Nimes.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Nandina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nandina",
        "wikipediaExtract": "Nandina domestica commonly known as nandina, heavenly bamboo or sacred bamboo, is a species of flowering plant in the family Berberidaceae, native to eastern Asia from the Himalayas to Japan. It is the only member of the monotypic genus Nandina. Despite its name, it is not a true bamboo.",
        "imageTitle": "File:Nandina domestica in Jardins de la Fontaine in Nimes.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Nandina_domestica_in_Jardins_de_la_Fontaine_in_Nimes.jpg",
        "imageDescription": "Fruits of  Nandina domestica  in Jardins de la Fontaine in Nîmes, Gard, France"
    },
    {
        "name": "פיטוספורום יפני",
        "botanical": "Pittosporum tobira",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/44/Pittosporum_tobira_EMatte.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pittosporum tobira",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pittosporum_tobira",
        "wikipediaExtract": "Pittosporum tobira is a species of sweet-smelling flowering plant in the pittosporum family Pittosporaceae known by several common names, including Australian laurel, Japanese pittosporum, mock orange and Japanese cheesewood. It is native to Japan, China, Taiwan, and Korea, but it is used throughout the world as an ornamental plant in landscaping and as cut foliage.",
        "imageTitle": "File:Pittosporum tobira EMatte.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pittosporum_tobira_EMatte.jpg",
        "imageDescription": "Pittospurum tobira shrub flower at Plaza Elvira Matte, Puente Alto."
    },
    {
        "name": "אוג חרוק",
        "botanical": "Rhus crenata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Rhus_crenata00.jpg/960px-Rhus_crenata00.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Searsia crenata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Searsia_crenata",
        "wikipediaExtract": "Searsia crenata, previously known as Rhus crenata,, is a species of Searsia that is native to South Africa, where it grows in frost-free and light frost areas, especially on beach sand dunes.",
        "imageTitle": "File:Rhus crenata00.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Rhus_crenata00.jpg",
        "imageDescription": "Flowers of Rhus crenata Thunb. at Nature's Valley nr Plettenberg Bay, South Africa"
    },
    {
        "name": "אבליה גדולת פרחים",
        "botanical": "Abelia x grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Abelia_x_grandiflora-Fleurs-20200601.jpg/960px-Abelia_x_grandiflora-Fleurs-20200601.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Abelia × grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Abelia_%C3%97_grandiflora",
        "wikipediaExtract": "Abelia × grandiflora is a hybrid species of flowering plant in the honeysuckle family Caprifoliaceae, raised by hybridising A. chinensis with A. uniflora.",
        "imageTitle": "File:Abelia x grandiflora-Fleurs-20200601.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Abelia_x_grandiflora-Fleurs-20200601.jpg",
        "imageDescription": " Flowers of  Abelia \n "
    },
    {
        "name": "פלומבגו",
        "botanical": "Plumbago auriculata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Bloem_van_een_Plumbago_auriculata._10-10-2023._%28d.j.b%29.jpg/960px-Bloem_van_een_Plumbago_auriculata._10-10-2023._%28d.j.b%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Plumbago auriculata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Plumbago_auriculata",
        "wikipediaExtract": "Plumbago auriculata, the Cape leadwort, blue plumbago or Cape plumbago, is a species of flowering plant in the family Plumbaginaceae, native to South Africa and Mozambique.",
        "imageTitle": "File:Bloem van een Plumbago auriculata. 10-10-2023. (d.j.b).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Bloem_van_een_Plumbago_auriculata._10-10-2023._%28d.j.b%29.jpg",
        "imageDescription": "Flower of a  Ceratostigma plumbaginoides . Focus stack of 13 photos."
    },
    {
        "name": "הרדוף הנחלים",
        "botanical": "Nerium oleander",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Nerium_oleander_pink_flower%2C_Alex_005.jpg/960px-Nerium_oleander_pink_flower%2C_Alex_005.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Nerium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nerium",
        "wikipediaExtract": "Nerium oleander, commonly known as oleander, rose laurel, be-still tree or rosebay, is a shrub or small tree cultivated worldwide in temperate and subtropical areas as an ornamental and landscaping plant. It is the only species currently classified in the genus Nerium, belonging to subfamily Apocynoideae of the dogbane family Apocynaceae. It is so widely cultivated that no precise region of origin has been identified, though it is usually associated with the Mediterranean Basin.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%A8%D7%93%D7%95%D7%A3_%D7%94%D7%A0%D7%97%D7%9C%D7%99%D7%9D",
        "imageTitle": "File:Nerium oleander pink flower, Alex 005.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Nerium_oleander_pink_flower%2C_Alex_005.jpg",
        "imageDescription": "Nerium oleander pink flower in Montazah Garden in Alexandria, Egypt."
    },
    {
        "name": "טקומית הכף",
        "botanical": "Tecoma capensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Tecoma_capensis_flower_s.jpg/960px-Tecoma_capensis_flower_s.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Tecomaria capensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tecomaria_capensis",
        "wikipediaExtract": "Tecomaria capensis, the Cape honeysuckle, is a species of flowering plant in the family Bignoniaceae, native to southern Africa. Despite its common name, it is not closely related to the true honeysuckle.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%98%D7%A7%D7%95%D7%9E%D7%99%D7%AA_%D7%94%D7%9B%D7%A3",
        "imageTitle": "File:Tecoma capensis flower s.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Tecoma_capensis_flower_s.jpg",
        "imageDescription": "Tecoma capensis\nCape honeysuckle is an evergreen perennial that is ideal for full sun. Flowers are available in a variety off colours. Ideal choice for waterwise"
    },
    {
        "name": "ליגוסטרום יפני",
        "botanical": "Ligustrum japonicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Curly_Leaf_Privet_%E2%80%98Coriaceum%E2%80%99_Ligustrum_japonicum_%E2%80%98Coriaceum%E2%80%99_flower_summer_01.jpg/960px-Curly_Leaf_Privet_%E2%80%98Coriaceum%E2%80%99_Ligustrum_japonicum_%E2%80%98Coriaceum%E2%80%99_flower_summer_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Ligustrum japonicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ligustrum_japonicum",
        "wikipediaExtract": "Ligustrum japonicum, known as wax-leaf privet or Japanese privet is a species of Ligustrum (privet) native to central and southern Japan and Korea. It is widely cultivated in other regions, and is naturalized in California and in the southeastern United States from Texas to Virginia.",
        "imageTitle": "File:Curly Leaf Privet ‘Coriaceum’ Ligustrum japonicum ‘Coriaceum’ flower summer 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Curly_Leaf_Privet_%E2%80%98Coriaceum%E2%80%99_Ligustrum_japonicum_%E2%80%98Coriaceum%E2%80%99_flower_summer_01.jpg",
        "imageDescription": "Curly Leaf Privet ‘Coriaceum’  Ligustrum japonicum ‘Coriaceum’  flower summer"
    },
    {
        "name": "קליסטמון",
        "botanical": "Callistemon citrinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Callistemon_citrinus_Splendens_flower_1.jpg/960px-Callistemon_citrinus_Splendens_flower_1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Melaleuca citrina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca_citrina",
        "wikipediaExtract": "Melaleuca citrina, the common red bottlebrush, crimson bottlebrush, or lemon bottlebrush, is a plant in the myrtle family Myrtaceae, and is endemic to eastern Australia. Some Australian state herbaria continue to use the name Callistemon citrinus. It is a hardy and adaptable species, common in its natural habitat. It is widely cultivated, not only in Australia. It was one of the first Australian plants to be grown outside the country, having been taken to England in 1770 by Joseph Banks. Its showy red flower spikes, present over most of the year in an ideal situation, account for its popularity.",
        "imageTitle": "File:Callistemon citrinus Splendens flower 1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Callistemon_citrinus_Splendens_flower_1.jpg",
        "imageDescription": "Callistemon citrinus var splendens In the glass house at the National Botanic Garden of Wales"
    },
    {
        "name": "גרווילאה",
        "botanical": "Grevillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/9e/Grevillea_Flower_%285986731603%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Grevillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grevillea",
        "wikipediaExtract": "Grevillea, commonly known as spider flowers, is a genus of about 360 species of evergreen flowering plants in the family Proteaceae. Plants in the genus Grevillea are shrubs, rarely trees, with the leaves arranged alternately along the branches, the flowers zygomorphic, arranged in racemes at the ends of branchlets, and the fruit a follicle that splits down one side only, releasing one or two seeds.",
        "imageTitle": "File:Grevillea Flower (5986731603).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Grevillea_Flower_%285986731603%29.jpg",
        "imageDescription": "Unidentified Grevillea Close up of a flower using a 30mm prime focus Sigma lens set to f/1.4."
    },
    {
        "name": "גרדניה",
        "botanical": "Gardenia jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Gardenia_Jasminoides_Flower.jpg/960px-Gardenia_Jasminoides_Flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Gardenia jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gardenia_jasminoides",
        "wikipediaExtract": "Gardenia jasminoides, commonly known as gardenia and cape jasmine, is an evergreen flowering plant in the coffee family Rubiaceae. It is native to the subtropical and northern tropical parts of the Far East. Wild plants range from 30 centimetres to 3 metres in height. They have a rounded habit with very dense branches with opposite leaves that are lanceolate-oblong, leathery or gathered in groups on the same node and by a dark green, shiny and slightly waxy surface and prominent veins.",
        "imageTitle": "File:Gardenia Jasminoides Flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Gardenia_Jasminoides_Flower.jpg",
        "imageDescription": "A Gardenia Jasminoides (Cape Jasmine) flower in bloom."
    },
    {
        "name": "אזליאה",
        "botanical": "Rhododendron",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Half_geopende_bloem_van_Rhododendron_ponticum.jpg/960px-Half_geopende_bloem_van_Rhododendron_ponticum.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Rhododendron",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rhododendron",
        "wikipediaExtract": "Rhododendron, from Ancient Greek ῥόδον (rhódon), meaning \"rose\", and δένδρον (déndron), meaning \"tree\", is a very large genus of about 1,024 species of woody plants in the heath family (Ericaceae). They can be either evergreen or deciduous. Most species are native to eastern Asia and the Himalayan region, but smaller numbers occur elsewhere in Asia, and in North America, Europe and Australia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%93%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F",
        "imageTitle": "File:Half geopende bloem van Rhododendron ponticum.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Half_geopende_bloem_van_Rhododendron_ponticum.jpg",
        "imageDescription": "Half-opened flower of  Rhododendron ponticum ."
    },
    {
        "name": "קמליה",
        "botanical": "Camellia japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Camellia_japonica_NBG.jpg/960px-Camellia_japonica_NBG.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Camellia japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Camellia_japonica",
        "wikipediaExtract": "Camellia japonica, known as common camellia, or Japanese camellia, is a species of flowering plant from the genus Camellia in the tea family Theaceae. It is native to China and Japan, and grows naturally in forests at altitudes of around 300–1,100 metres (980–3,600 ft).",
        "imageTitle": "File:Camellia japonica NBG.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Camellia_japonica_NBG.jpg",
        "imageDescription": " Camellia japonica  at the Norfolk Botanical Garden, Norfolk, Virginia. The blossom is not very big, only about 4 inches (10 cm) in maximum diameter. Focus stacked from 4 images."
    },
    {
        "name": "בודליה",
        "botanical": "Buddleja davidii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Distelfalter%2C_Vanessa_cardui_AUF_Schmetterlingsflieder%2C_Buddleja_davidii_1.JPG/960px-Distelfalter%2C_Vanessa_cardui_AUF_Schmetterlingsflieder%2C_Buddleja_davidii_1.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Buddleja davidii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Buddleja_davidii",
        "wikipediaExtract": "Buddleja davidii, also called butterfly-bush, orange eye, or summer lilac, is a species of flowering plant in the family Scrophulariaceae, native to most of China except for the far northeast. It is widely used as an ornamental plant, and many named cultivars are in cultivation. The genus was named Buddleja after the English botanist, Reverend Adam Buddle. The species name, davidii, is after the French missionary and explorer in China, Father Armand David, who was the first European to report the shrub. It was found near Yichang by Dr Augustine Henry about 1887 and sent to St Petersburg. Another botanist-missionary in China, Jean-André Soulié, sent seed to the French nursery Vilmorin, and B. davidii entered commerce in the 1890s.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%93%D7%9C%D7%99%D7%94",
        "imageTitle": "File:Distelfalter, Vanessa cardui AUF Schmetterlingsflieder, Buddleja davidii 1.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Distelfalter%2C_Vanessa_cardui_AUF_Schmetterlingsflieder%2C_Buddleja_davidii_1.JPG",
        "imageDescription": "Der  Distelfalter  (Vanessa cardui; Syn.: Cynthia cardui) ist ein Schmetterling aus der Familie der Edelfalter (Nymphalidae). Er sitzt auf einem  Schmetterlingsflieder , Sommerflieder, Schmetterlingsstrauch oder Fliederspeer (Buddleja david"
    },
    {
        "name": "איקליפטוס מסמרי כסף",
        "botanical": "Eucalyptus cinerea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/0/04/Eucalyptus_cinerea_buds.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Eucalyptus cinerea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Eucalyptus_cinerea",
        "wikipediaExtract": "Eucalyptus cinerea, commonly known as the Argyle apple, mealy stringbark or silver dollar tree, is a species of small- to medium-sized tree that is endemic to south-eastern Australia. It has rough, fibrous bark on the trunk and branches, usually only juvenile, glaucous, egg-shaped evergreen leaves, flower buds in groups of three, white flowers and conical to bell-shaped fruit.",
        "imageTitle": "File:Eucalyptus cinerea buds.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Eucalyptus_cinerea_buds.jpg",
        "imageDescription": "Flower buds and fruit of  Eucalyptus cinerea "
    },
    {
        "name": "סיזיגיום",
        "botanical": "Syzygium australe",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Syzygium_australe_-_Scrub_cherry_%286684669459%29.jpg/960px-Syzygium_australe_-_Scrub_cherry_%286684669459%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Syzygium australe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syzygium_australe",
        "wikipediaExtract": "Syzygium australe, with many common names that include brush cherry, scrub cherry, creek lilly-pilly, creek satinash, and watergum, is a rainforest tree native to eastern Australia. It can attain a height of up to 35 m with a trunk diameter of 60 cm. In cultivation, this species is usually a small to medium-sized tree with a maximum height of only 18m.",
        "imageTitle": "File:Syzygium australe - Scrub cherry (6684669459).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Syzygium_australe_-_Scrub_cherry_%286684669459%29.jpg",
        "imageDescription": " 'Scrub cherry', with  blossom and fruits.\nAustralian native plant.\n \nBerries are edible, Australians call them 'Lilly-pilly'"
    },
    {
        "name": "פוטיניה",
        "botanical": "Photinia x fraseri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Starr-120403-4182-Photinia_x_fraseri-flowers_and_leaves-Kula-Maui_%2825045299261%29.jpg/960px-Starr-120403-4182-Photinia_x_fraseri-flowers_and_leaves-Kula-Maui_%2825045299261%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Photinia × fraseri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Photinia_%C3%97_fraseri",
        "wikipediaExtract": "Photinia × fraseri, known as red tip photinia and Christmas berry, is a nothospecies in the rose family, Rosaceae. It is a hybrid between Photinia glabra and Photinia serratifolia.",
        "imageTitle": "File:Starr-120403-4182-Photinia x fraseri-flowers and leaves-Kula-Maui (25045299261).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-120403-4182-Photinia_x_fraseri-flowers_and_leaves-Kula-Maui_%2825045299261%29.jpg",
        "imageDescription": "     Photinia x fraseri  (Fraser's photinia, red tipped photinia)     \n  Flowers and leaves at Kula, Maui, Hawaii.\nApril 03, 2012\n \n   #120403-4182   \n  \n \n   Image Use Policy   \nA hybrid between Photinia glabra X Photinia serratifolia."
    },
    {
        "name": "דודונאה",
        "botanical": "Dodonaea viscosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Starr_070320-5770_Dodonaea_viscosa.jpg/960px-Starr_070320-5770_Dodonaea_viscosa.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dodonaea viscosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dodonaea_viscosa",
        "wikipediaExtract": "Dodonaea viscosa, also known as the broadleaf hopbush, is a species of flowering plant in the Dodonaea (hopbush) genus that has a cosmopolitan distribution in tropical, subtropical and warm temperate regions of Africa, the Americas, southern Asia and Australasia. Dodonaea is part of Sapindaceae, the soapberry family.",
        "imageTitle": "File:Starr 070320-5770 Dodonaea viscosa.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr_070320-5770_Dodonaea_viscosa.jpg",
        "imageDescription": "Dodonaea viscosa (male flowers). Location: Maui, Kanaio"
    },
    {
        "name": "רוסליה",
        "botanical": "Russelia equisetiformis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flower_of_Russelia_equisetiformis_in_Nago%2C_Okinawa_Island.jpg/960px-Flower_of_Russelia_equisetiformis_in_Nago%2C_Okinawa_Island.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Russelia equisetiformis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Russelia_equisetiformis",
        "wikipediaExtract": "Russelia equisetiformis, the fountainbush, firecracker plant, coral plant, coral fountain, coralblow or fountain plant, is a species of flowering plant in the family Plantaginaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%A1%D7%9C%D7%99%D7%94",
        "imageTitle": "File:Flower of Russelia equisetiformis in Nago, Okinawa Island.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flower_of_Russelia_equisetiformis_in_Nago%2C_Okinawa_Island.jpg",
        "imageDescription": "ハナチョウジの花"
    },
    {
        "name": "קריסה גדולת פרחים",
        "botanical": "Carissa macrocarpa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Close-up_photo_of_Carissa_Macrocarpa_flower.jpg/960px-Close-up_photo_of_Carissa_Macrocarpa_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Carissa macrocarpa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carissa_macrocarpa",
        "wikipediaExtract": "Carissa macrocarpa is a shrub native to tropical and southern Africa. It is commonly known as the Natal plum, amathungulu, big num-num or large num-num.",
        "imageTitle": "File:Close-up photo of Carissa Macrocarpa flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Close-up_photo_of_Carissa_Macrocarpa_flower.jpg",
        "imageDescription": "Close-up image of Carissa Macrocarpa flower. Edited with Polarr."
    },
    {
        "name": "לאורוס אציל",
        "botanical": "Laurus nobilis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/%E6%9C%88%E6%A1%82_Laurus_nobilis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289227094993%29.jpg/960px-%E6%9C%88%E6%A1%82_Laurus_nobilis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289227094993%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Laurus nobilis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Laurus_nobilis",
        "wikipediaExtract": "Laurus nobilis is an aromatic evergreen tree or large shrub with green, glabrous (smooth) leaves. It is in the flowering plant family Lauraceae. According to Muer, Jahn, & Sauerbier, the stem can be 1 metre in diameter and the tree can be as high as 20 metres. It is native to the Mediterranean region and is used as bay leaf for seasoning in cooking. Its common names include bay tree, bay laurel, sweet bay, true laurel, Grecian laurel, or simply laurel. Laurus nobilis figures prominently in classical Greco-Roman culture.",
        "imageTitle": "File:月桂 Laurus nobilis -香港花展 Hong Kong Flower Show- (9227094993).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E6%9C%88%E6%A1%82_Laurus_nobilis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289227094993%29.jpg",
        "imageDescription": "Bay leaf"
    },
    {
        "name": "אקליפה",
        "botanical": "Acalypha wilkesiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Acalypha_wilkesiana_flower_in_Banna_Park%2C_Ishigaki%2C_Okinawa.jpg/960px-Acalypha_wilkesiana_flower_in_Banna_Park%2C_Ishigaki%2C_Okinawa.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Acalypha wilkesiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Acalypha_wilkesiana",
        "wikipediaExtract": "Acalypha wilkesiana, common names copperleaf, Jacob's coat and Flamengueira, is an evergreen shrub growing to 3 metres (9.8 ft) high and 2 metres across. It has a closely arranged crown, with an erect stem and many branches. Both the branches and the leaves are covered in fine hairs. The leaves, which may be flat or crinkled, are large and broad with teeth around the edge. They can be 10–20 centimetres (3.9–7.9 in) long and 15 centimetres (5.9 in) wide. The leaves are coppery green with red splashes, giving them a mottled appearance. Separate male and female flowers appear on the same plant. The male flowers are in long spikes which hang downwards while the female flowers are in short spikes. The latter do not show up easily as they are often hidden among the leaves. The flower stalks are 10–20 cm long.",
        "imageTitle": "File:Acalypha wilkesiana flower in Banna Park, Ishigaki, Okinawa.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Acalypha_wilkesiana_flower_in_Banna_Park%2C_Ishigaki%2C_Okinawa.jpg",
        "imageDescription": "ニシキアカリファの花（2024年8月 沖縄県石垣市 バンナ公園）"
    },
    {
        "name": "סנטולינה",
        "botanical": "Santolina chamaecyparissus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Santolina_chamaecyparissus_flowers_close_up.jpg/960px-Santolina_chamaecyparissus_flowers_close_up.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Santolina chamaecyparissus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Santolina_chamaecyparissus",
        "wikipediaExtract": "Santolina chamaecyparissus, known as cotton lavender or lavender-cotton, is a species of flowering plant in the family Asteraceae, native to the western and central Mediterranean.",
        "imageTitle": "File:Santolina chamaecyparissus flowers close up.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Santolina_chamaecyparissus_flowers_close_up.jpg",
        "imageDescription": "flowers at the  Royal Botanic Gardens  in  Melbourne ."
    },
    {
        "name": "מללויקה",
        "botanical": "Melaleuca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flowers_of_Melaleuca_viminalis.jpg/960px-Flowers_of_Melaleuca_viminalis.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Melaleuca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca",
        "wikipediaExtract": "Melaleuca is a genus of nearly 300 species of plants in the myrtle family, Myrtaceae, commonly known as paperbarks, honey-myrtles, bottlebrushes or tea-trees. They range in size from small shrubs that rarely grow to more than 1 m high, to trees up to 35 m (115 ft). Their flowers generally occur in groups, forming a \"head\" or \"spike\" resembling a brush used for cleaning bottles, containing up to 80 individual flowers.",
        "imageTitle": "File:Flowers of Melaleuca viminalis.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flowers_of_Melaleuca_viminalis.jpg",
        "imageDescription": "Flowers of Melaleuca viminalis"
    },
    {
        "name": "ויסטרינגיה",
        "botanical": "Westringia fruticosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Starr-110307-2238-Westringia_fruticosa-flower-Kula_Botanical_Garden-Maui_%2825051504346%29.jpg/960px-Starr-110307-2238-Westringia_fruticosa-flower-Kula_Botanical_Garden-Maui_%2825051504346%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Westringia fruticosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Westringia_fruticosa",
        "wikipediaExtract": "Westringia fruticosa, the coastal rosemary or coastal westringia, is a shrub that grows near the coast in eastern Australia.",
        "imageTitle": "File:Starr-110307-2238-Westringia fruticosa-flower-Kula Botanical Garden-Maui (25051504346).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-110307-2238-Westringia_fruticosa-flower-Kula_Botanical_Garden-Maui_%2825051504346%29.jpg",
        "imageDescription": "     Westringia fruticosa  (Coastal rosemary)     \n  Flower at Kula Botanical Garden, Maui, Hawaii.\nMarch 07, 2011\n \n   #110307-2238   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "לנטנה שיחית",
        "botanical": "Lantana montevidensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Lantana_montevidensis%2C.jpg/960px-Lantana_montevidensis%2C.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lantana montevidensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_montevidensis",
        "wikipediaExtract": "Lantana montevidensis is a species of lantana native to South America that often forms dense thickets and mats over the ground. It is known by many common names, such as: trailing lantana, weeping lantana, creeping lantana, small lantana, purple lantana or trailing shrubverbena.",
        "imageTitle": "File:Lantana montevidensis,.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Lantana_montevidensis%2C.jpg",
        "imageDescription": "Lantana montevidensis, Trailing lantana, Purple lantana, trailing shrub with opposite oval leaves and purple blue flowers in small flat topped clusters, with large ovate bracts"
    },
    {
        "name": "בוגנוויליה",
        "botanical": "Bougainvillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Bougainvillea_flower_image.jpg/960px-Bougainvillea_flower_image.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Bougainvillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bougainvillea",
        "wikipediaExtract": "Bougainvillea is a genus of thorny ornamental vines, bushes, and trees belonging to the family Nyctaginaceae. They are native to the tropical forests of South America. There are between 4 and 22 species in the genus. The inflorescence consists of large colorful sepal-like bracts which surround three simple waxy flowers, gaining popularity for the plant as an ornamental. The plant is named after explorer Louis Antoine de Bougainville (1729–1811), after it was documented on one of his expeditions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%92%D7%A0%D7%95%D7%95%D7%99%D7%9C%D7%99%D7%94",
        "imageTitle": "File:Bougainvillea flower image.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Bougainvillea_flower_image.jpg",
        "imageDescription": "Bougainvillea flower"
    },
    {
        "name": "יסמין כוכבי",
        "botanical": "Trachelospermum jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Autographa_gamma_en_Trachelospermum_jasminoides_-_01.jpg/960px-Autographa_gamma_en_Trachelospermum_jasminoides_-_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Trachelospermum jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Trachelospermum_jasminoides",
        "wikipediaExtract": "Trachelospermum jasminoides is a species of flowering plant in the family Apocynaceae, native to eastern and southeastern Asia. Common names include Confederate jasmine, star jasmine, Confederate jessamine, and Chinese star jessamine.",
        "imageTitle": "File:Autographa gamma en Trachelospermum jasminoides - 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Autographa_gamma_en_Trachelospermum_jasminoides_-_01.jpg",
        "imageDescription": " Autographa gamma  on  Trachelospermum jasminoides ."
    },
    {
        "name": "פנדוריאה",
        "botanical": "Pandorea jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Pandorea_Jasminoides.jpg/960px-Pandorea_Jasminoides.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pandorea jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pandorea_jasminoides",
        "wikipediaExtract": "Pandorea jasminoides, also known by the common names bower of beauty and bower vine, is a species of flowering plant in the family Bignoniaceae and is endemic to eastern Australia. It is a woody climber with pinnate leaves that have three to nine egg-shaped leaflets and white or pink trumpet-shaped flowers that are red and hairy inside. It is also grown as an ornamental.",
        "imageTitle": "File:Pandorea Jasminoides.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pandorea_Jasminoides.jpg",
        "imageDescription": "This is a white flower that grows on a vine-like plant structure"
    },
    {
        "name": "פסיפלורה",
        "botanical": "Passiflora edulis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Passiflora_edulis_flower_and_fruit.jpg/960px-Passiflora_edulis_flower_and_fruit.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Passiflora edulis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Passiflora_edulis",
        "wikipediaExtract": "Passiflora edulis, commonly known as passion fruit, is a vine species of passion flower native to southern Brazil, through Paraguay, and northern Argentina. The fruit is a pepo, a type of botanical berry, round to oval, either yellow or dark purple at maturity, with a soft to firm, juicy interior filled with numerous seeds.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A2%D7%95%D7%A0%D7%99%D7%AA_%D7%A0%D7%90%D7%9B%D7%9C%D7%AA",
        "imageTitle": "File:Passiflora edulis flower and fruit.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Passiflora_edulis_flower_and_fruit.jpg",
        "imageDescription": "Flower and fruit of the passiflora edulis plant still on the vine and in full bloom."
    },
    {
        "name": "ויסטריה",
        "botanical": "Wisteria sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Wisteria_sinensis_01.jpg/960px-Wisteria_sinensis_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Wisteria sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Wisteria_sinensis",
        "wikipediaExtract": "Wisteria sinensis, commonly known as the Chinese wisteria, is a species of flowering plant in the pea family, native to China, in the provinces of Guangxi, Guizhou, Hebei, Henan, Hubei, Shaanxi, and Yunnan. Growing 20–30 m (66–98 ft) tall, it is a deciduous vine. It is widely cultivated in temperate regions for its twisting stems and masses of scented flowers in hanging racemes, in spring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A1%D7%98%D7%A8%D7%99%D7%94",
        "imageTitle": "File:Wisteria sinensis 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Wisteria_sinensis_01.jpg",
        "imageDescription": "Wisteria sinensis cultivated in Conques, Aveyron, France"
    },
    {
        "name": "גפן מאכל",
        "botanical": "Vitis vinifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/%E8%91%A1%E8%90%84_Vitis_vinifera_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2817040693262%29.jpg/960px-%E8%91%A1%E8%90%84_Vitis_vinifera_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2817040693262%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Vitis vinifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Vitis_vinifera",
        "wikipediaExtract": "Vitis vinifera, the common grape vine, is a species of flowering plant, native to the Mediterranean region, Central Europe, and southwestern Asia, from Morocco and Portugal north to southern Germany and east to northern Iran. As of 2012, there were between 5,000 and 10,000 varieties of Vitis vinifera grapes though only a few are of commercial significance for wine and table grape production.",
        "imageTitle": "File:葡萄 Vitis vinifera -香港花展 Hong Kong Flower Show- (17040693262).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E8%91%A1%E8%90%84_Vitis_vinifera_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2817040693262%29.jpg",
        "imageDescription": "Grape"
    },
    {
        "name": "קיסוס החורש",
        "botanical": "Hedera helix",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Hedera_helix_flower_honey_bee.jpg/960px-Hedera_helix_flower_honey_bee.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Hedera helix",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hedera_helix",
        "wikipediaExtract": "Hedera helix, simply ivy, or common ivy, English ivy, European ivy, King's choice ivy, is a species of flowering plant in the family Araliaceae. It is native to most of Europe and parts of western Asia. Ivy is a clinging evergreen vine that grows on tree trunks, walls, and fences in gardens, waste spaces, and wild habitats. Ivy is popular as an ornamental plant, but escaped plants have become naturalised outside its native range. Ivy has considerable cultural significance and symbolism.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A1%D7%95%D7%A1_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "File:Hedera helix flower honey bee.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Hedera_helix_flower_honey_bee.jpg",
        "imageDescription": "Flowers of Common Ivy (Hedera helix, Araliaceae) with visiting honey bee (Apis mellifera); Bern, Switzerland"
    },
    {
        "name": "טונברגיה",
        "botanical": "Thunbergia grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Thunbergia_grandiflora-_flower-yercaud-salem-India.JPG/960px-Thunbergia_grandiflora-_flower-yercaud-salem-India.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Thunbergia grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thunbergia_grandiflora",
        "wikipediaExtract": "Thunbergia grandiflora is an evergreen vine in the family Acanthaceae. It is native to China, India, Nepal, Bangladesh, Indochina and Myanmar and widely naturalised elsewhere. Common names include Bengal clockvine, Bengal trumpet, blue skyflower, blue thunbergia, blue trumpetvine, clockvine, skyflower and skyvine.",
        "imageTitle": "File:Thunbergia grandiflora- flower-yercaud-salem-India.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Thunbergia_grandiflora-_flower-yercaud-salem-India.JPG",
        "imageDescription": "Woody twiner,bell like flowers,two-lipped,lavender-blue."
    },
    {
        "name": "יערה יפנית",
        "botanical": "Lonicera japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Lonicera_japonica_%27hall%27s_prolific%27._14-06-2020_%28d.j.b.%29_01.jpg/960px-Lonicera_japonica_%27hall%27s_prolific%27._14-06-2020_%28d.j.b.%29_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lonicera japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lonicera_japonica",
        "wikipediaExtract": "Lonicera japonica, known as Japanese honeysuckle and golden-and-silver honeysuckle, is a species of honeysuckle native to East Asia, including many parts of China. It is often grown as an ornamental plant, but has become an invasive species in a number of countries. It is used in traditional Chinese medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%A2%D7%A8%D7%94_%D7%99%D7%A4%D7%A0%D7%99%D7%AA",
        "imageTitle": "File:Lonicera japonica 'hall's prolific'. 14-06-2020 (d.j.b.) 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Lonicera_japonica_%27hall%27s_prolific%27._14-06-2020_%28d.j.b.%29_01.jpg",
        "imageDescription": "Small flower of one  Lonicera japonica  'hall's prolific'."
    },
    {
        "name": "יסמין רפואי",
        "botanical": "Jasminum officinale",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Jasminum_officinale_in_rain.jpg/960px-Jasminum_officinale_in_rain.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Jasminum officinale",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jasminum_officinale",
        "wikipediaExtract": "Jasminum officinale, known as the common jasmine or simply jasmine, is a species of flowering plant in the olive family Oleaceae. It is native to the Caucasus and parts of Asia, also widely naturalized.",
        "imageTitle": "File:Jasminum officinale in rain.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Jasminum_officinale_in_rain.jpg",
        "imageDescription": "Flower with a bug sheltered on petals with raindrops."
    },
    {
        "name": "סולנום מטפס",
        "botanical": "Solanum jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/%E7%B4%A0%E9%A6%A8%E8%91%89%E7%99%BD%E8%8B%B1%28%E7%99%BD%E9%A6%AC%E9%88%B4%E8%96%AF%E8%97%A4%29_Solanum_jasminoides_-%E8%8D%B7%E8%98%AD_Keukenhof_Flower_Show%2C_Holland-_%289237452045%29.jpg/960px-%E7%B4%A0%E9%A6%A8%E8%91%89%E7%99%BD%E8%8B%B1%28%E7%99%BD%E9%A6%AC%E9%88%B4%E8%96%AF%E8%97%A4%29_Solanum_jasminoides_-%E8%8D%B7%E8%98%AD_Keukenhof_Flower_Show%2C_Holland-_%289237452045%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Solanum laxum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Solanum_laxum",
        "wikipediaExtract": "Solanum laxum, commonly known as potato vine, potato climber or jasmine nightshade, is an evergreen vine in the family Solanaceae. It is native to South America and commonly grown as an ornamental garden plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D_%D7%9E%D7%98%D7%A4%D7%A1",
        "imageTitle": "File:素馨葉白英(白馬鈴薯藤) Solanum jasminoides -荷蘭 Keukenhof Flower Show, Holland- (9237452045).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E7%B4%A0%E9%A6%A8%E8%91%89%E7%99%BD%E8%8B%B1%28%E7%99%BD%E9%A6%AC%E9%88%B4%E8%96%AF%E8%97%A4%29_Solanum_jasminoides_-%E8%8D%B7%E8%98%AD_Keukenhof_Flower_Show%2C_Holland-_%289237452045%29.jpg",
        "imageDescription": "素馨葉白英(白馬鈴薯藤) Solanum jasminoides [荷蘭 Keukenhof Flower Show, Holland]"
    },
    {
        "name": "אנטיגון",
        "botanical": "Antigonon leptopus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Flower_of_Antigonon_leptopus.jpg/960px-Flower_of_Antigonon_leptopus.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Antigonon leptopus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antigonon_leptopus",
        "wikipediaExtract": "Antigonon leptopus is a species of perennial vine in the buckwheat family commonly known as coral vine or queen's wreath. This clambering vine is characterized by showy, usually pink flowers that can bloom throughout the year and large, heart-shaped leaves. A. leptopus is native to the Pacific and Atlantic coastal plains of Mexico, but also occurs as a roadside weed from Mexico south to Central America. It is widely introduced and invasive throughout tropical regions of the world, including in the south and eastern United States, the West Indies, South America, and the Old World tropics of Asia and Africa. This species is utilized for its edible tubers and seeds, but also for its horticultural properties as an ornamental vine in warmer parts of the world.",
        "imageTitle": "File:Flower of Antigonon leptopus.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flower_of_Antigonon_leptopus.jpg",
        "imageDescription": "ニトベカズラ"
    },
    {
        "name": "פירוסטגיה",
        "botanical": "Pyrostegia venusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Pyrostegia_venusta_flower_in_India_09.jpg/960px-Pyrostegia_venusta_flower_in_India_09.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pyrostegia venusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pyrostegia_venusta",
        "wikipediaExtract": "Pyrostegia venusta, also commonly known as flamevine or orange trumpet vine, is a plant species of the genus Pyrostegia of the family Bignoniaceae originally native to southern Brazil, Bolivia, northeastern Argentina and Paraguay; today, it is also a widely cultivated garden species.",
        "imageTitle": "File:Pyrostegia venusta flower in India 09.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pyrostegia_venusta_flower_in_India_09.jpg",
        "imageDescription": "Pyrostegia venusta flower in a garden of West Bengal, India"
    },
    {
        "name": "מנדווילה",
        "botanical": "Mandevilla sanderi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Mandevilla_sanderi_2.jpg/960px-Mandevilla_sanderi_2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Mandevilla sanderi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mandevilla_sanderi",
        "wikipediaExtract": "Mandevilla sanderi, the Brazilian jasmine, is a vine belonging to the genus Mandevilla. Grown as an ornamental plant, the species is endemic to the State of Rio de Janeiro in Brazil. It is a rapidly growing, creeping, perennial plant, pruning shoots about 60 cm per year.",
        "imageTitle": "File:Mandevilla sanderi 2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Mandevilla_sanderi_2.jpg",
        "imageDescription": "Mandevilla sanderi"
    },
    {
        "name": "קלרודנדרון מטפס",
        "botanical": "Clerodendrum thomsoniae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Clerodendrum_thomsoniae_Kasaragod.jpg/960px-Clerodendrum_thomsoniae_Kasaragod.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Clerodendrum thomsoniae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clerodendrum_thomsoniae",
        "wikipediaExtract": "Clerodendrum thomsoniae is a species of flowering plant in the genus Clerodendrum of the family Lamiaceae, native to tropical west Africa from Cameroon west to Senegal. It is an evergreen liana growing to 4 m (13 ft) tall, with ovate to oblong leaves 8–17 cm (3–7 in) cm long. The flowers are produced in cymes of 8–20 together, each flower with a pure white to pale purple five-lobed calyx 2.5 cm in diameter, and a red five-lobed corolla 2 cm long and in diameter. The flowers are born in cymose inflorescences arising from the axils of the leaves. The leaves, in turn, are arranged opposite to each other and at right angles to the pairs above and below.",
        "imageTitle": "File:Clerodendrum thomsoniae Kasaragod.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Clerodendrum_thomsoniae_Kasaragod.jpg",
        "imageDescription": "Clerodendrum thomsoniae Kasaragod"
    },
    {
        "name": "אלמון הודי",
        "botanical": "Quisqualis indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/60/Quisqualis_indica_flower_color_and_orientation.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Combretum indicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Combretum_indicum",
        "wikipediaExtract": "Combretum indicum, commonly known as the Rangoon creeper or Burma creeper, is a vine with red flower clusters which is native to tropical Asia and grows in thickets, primary and secondary forest, and along river banks in the Indian subcontinent, Malaysia and the Philippines. It has since been cultivated and naturalized in tropical areas such as Burma, Vietnam, and Thailand.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%9E%D7%95%D7%9F_%D7%94%D7%95%D7%93%D7%99",
        "imageTitle": "File:Quisqualis indica flower color and orientation.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Quisqualis_indica_flower_color_and_orientation.JPG",
        "imageDescription": " Quisqualis indica , flower color and orientation, Thailand"
    },
    {
        "name": "לנטנה",
        "botanical": "Lantana camara",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Twin_lantana_camara_edit.jpg/960px-Twin_lantana_camara_edit.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lantana camara",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_camara",
        "wikipediaExtract": "Lantana camara is a species of flowering plant in the verbena family (Verbenaceae), native to the tropics of the Americas. It is a very adaptable species, which can inhabit a wide variety of ecosystems; once it has been introduced into a habitat it spreads rapidly; between 45ºN and 45ºS and less than 1,400 metres in altitude.",
        "imageTitle": "File:Twin lantana camara edit.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Twin_lantana_camara_edit.jpg",
        "imageDescription": "Twin  Lantana camara  'Patty Wankler' with crab spider ( Misumenoides formocipes ) waiting for prey"
    },
    {
        "name": "דיאטס",
        "botanical": "Dietes grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Dietes_grandiflora_%28Iridaceae%29_flower_HDR.jpg/960px-Dietes_grandiflora_%28Iridaceae%29_flower_HDR.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dietes grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dietes_grandiflora",
        "wikipediaExtract": "Dietes grandiflora, commonly named fortnight lily, large wild iris, African iris or fairy iris, is a rhizomatous perennial plant of the Iris Family (Iridaceae) with long, rigid, sword-like green leaves. This species is common in horticulture in its native South Africa, where it is often used in public gardens, beautification of commercial premises and along roadsides.",
        "imageTitle": "File:Dietes grandiflora (Iridaceae) flower HDR.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Dietes_grandiflora_%28Iridaceae%29_flower_HDR.jpg",
        "imageDescription": "Taken in the  Cambridge University Botanic Garden "
    },
    {
        "name": "אגפנתוס",
        "botanical": "Agapanthus africanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Agapanthus_africanus_from_Ooty_India.jpg/960px-Agapanthus_africanus_from_Ooty_India.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Agapanthus africanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agapanthus_africanus",
        "wikipediaExtract": "Agapanthus africanus, commonly named the African lily, is a flowering plant from the genus Agapanthus found only on rocky sandstone slopes of the winter rainfall fynbos from the Cape Peninsula to Swellendam. It is also called the lily of the Nile in spite of only growing in South Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%92%D7%A4%D7%A0%D7%AA%D7%95%D7%A1",
        "imageTitle": "File:Agapanthus africanus from Ooty India.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Agapanthus_africanus_from_Ooty_India.jpg",
        "imageDescription": "This media file is uploaded with   Malayalam loves Wikimedia event - 2  ."
    },
    {
        "name": "גאורה",
        "botanical": "Gaura lindheimeri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Gaura_lindheimeri%2C_prachtkaars._%28actm%29_01.jpg/960px-Gaura_lindheimeri%2C_prachtkaars._%28actm%29_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Oenothera lindheimeri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oenothera_lindheimeri",
        "wikipediaExtract": "Oenothera lindheimeri, commonly known as Lindheimer's beeblossom, white gaura, pink gaura, Lindheimer's clockweed, and Indian feather, is a species of Oenothera. Several of its common names derive from the genus Gaura, in which this species was formerly placed.",
        "imageTitle": "File:Gaura lindheimeri, prachtkaars. (actm) 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Gaura_lindheimeri%2C_prachtkaars._%28actm%29_01.jpg",
        "imageDescription": " Gaura lindheimeri , wonderful candle. Location, De Kruidhof Buitenpost."
    },
    {
        "name": "מרווה צחורה",
        "botanical": "Salvia leucantha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Salvialeucantha_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Salvia leucantha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_leucantha",
        "wikipediaExtract": "Salvia leucantha, or Mexican bush sage, is a herbaceous perennial plant in the family Lamiaceae that is native to subtropical and tropical conifer forests in central and eastern Mexico. The flowers are usually white, emerging from coloured bracts. It is not frost hardy, but is often grown in warmer latitudes for its prominent arching velvety blue or purple inflorescences.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A6%D7%97%D7%95%D7%A8%D7%94",
        "imageTitle": "File:Salvialeucantha flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Salvialeucantha_flower.jpg",
        "imageDescription": "Salvialeucantha"
    },
    {
        "name": "מרווה גרג",
        "botanical": "Salvia greggii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/CBG_Crescent_Beds_-_Salvia_greggii_%27Lowry%27s_Peach%27%2C_Salvia_%27Argentina_Skies%27%2C_Bupleurum_rotundifolium_%27Griffithi%27%2C_Dahlia_%27Sonic_Bloom%27%2C_Buxus_%27Winter_Gem%27_150620_%2820148172769%29.jpg/960px-thumbnail.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Salvia greggii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_greggii",
        "wikipediaExtract": "Salvia greggii, the autumn sage, is a herbaceous perennial plant native to a long, narrow area from southwest Texas, through the Chihuahuan Desert and into the Mexican state of San Luis Potosi, typically growing in rocky soils at elevations from 5,000 to 9,000 ft. It was named and described in 1870 by botanist Asa Gray after Josiah Gregg (1806–1850), a merchant, explorer, naturalist, and author from the American Southwest and Northern Mexico, who found and collected the plant in Texas. It is closely related to, and frequently hybridizes with, Salvia microphylla. Despite the common name \"autumn sage\", it blooms throughout the summer and autumn.",
        "imageTitle": "File:CBG Crescent Beds - Salvia greggii 'Lowry's Peach', Salvia 'Argentina Skies', Bupleurum rotundifolium 'Griffithi', Dahlia 'Sonic Bloom', Buxus 'Winter Gem' 150620 (20148172769).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:CBG_Crescent_Beds_-_Salvia_greggii_%27Lowry%27s_Peach%27%2C_Salvia_%27Argentina_Skies%27%2C_Bupleurum_rotundifolium_%27Griffithi%27%2C_Dahlia_%27Sonic_Bloom%27%2C_Buxus_%27Winter_Gem%27_150620_%2820148172769%29.jpg",
        "imageDescription": "CBG Crescent Beds - Salvia greggii 'Lowry's Peach', Salvia 'Argentina Skies', Bupleurum rotundifolium 'Griffithi', Dahlia 'Sonic Bloom', Buxus 'Winter Gem' 150620"
    },
    {
        "name": "רודבקיה",
        "botanical": "Rudbeckia fulgida",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Bloem_van_een_Rudbeckia_fulgida._02-09-2020_%28d.j.b.%29_01.jpg/960px-Bloem_van_een_Rudbeckia_fulgida._02-09-2020_%28d.j.b.%29_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Rudbeckia fulgida",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rudbeckia_fulgida",
        "wikipediaExtract": "Rudbeckia fulgida, the orange coneflower or perennial coneflower, is a species of flowering plant in the family Asteraceae, native to eastern North America.",
        "imageTitle": "File:Bloem van een Rudbeckia fulgida. 02-09-2020 (d.j.b.) 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Bloem_van_een_Rudbeckia_fulgida._02-09-2020_%28d.j.b.%29_01.jpg",
        "imageDescription": "Flower of one   Rudbeckia fulgida  . An indestructible plant for a sunny spot in the garden. Focus stack of 14 photos."
    },
    {
        "name": "אכינצאה",
        "botanical": "Echinacea purpurea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Echinacea_purpurea-20200728-RM-163339.jpg/960px-Echinacea_purpurea-20200728-RM-163339.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Echinacea purpurea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echinacea_purpurea",
        "wikipediaExtract": "Echinacea purpurea, the eastern purple coneflower, purple coneflower, hedgehog coneflower, or Echinacea, is a North American species of flowering plant in the family Asteraceae. It is native to parts of eastern North America and present to some extent in the wild in much of the eastern, southeastern and midwestern United States, as well as in the Canadian Province of Ontario. It is most common in the Ozarks, the Mississippi Valley, and the Ohio Valley. Its habitats include dry open woods, prairies, and barrens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A4%D7%95%D7%93%D7%A0%D7%99%D7%AA",
        "imageTitle": "File:Echinacea purpurea-20200728-RM-163339.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Echinacea_purpurea-20200728-RM-163339.jpg",
        "imageDescription": "Echinacea purpurea in the botanical garden in the Bamberg municipal park"
    },
    {
        "name": "גזניה",
        "botanical": "Gazania rigens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Gazania_rigens_Treasure_Flower_02.jpg/960px-Gazania_rigens_Treasure_Flower_02.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Gazania rigens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gazania_rigens",
        "wikipediaExtract": "Gazania rigens, sometimes called treasure flower, is a species of flowering plant in the family Asteraceae, native to coastal areas of southern Africa. It is naturalised elsewhere and is widely cultivated as an ornamental plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%96%D7%A0%D7%99%D7%94",
        "imageTitle": "File:Gazania rigens Treasure Flower 02.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Gazania_rigens_Treasure_Flower_02.jpg",
        "imageDescription": "Gazania rigens, sometimes called treasure flower, is a species of flowering plant in the family Asteraceae, native to southern Africa. It is naturalized elsewhere and is widely cultivated as an ornamental plant. Gazania rigens is a spreadin"
    },
    {
        "name": "אוסטאוספרמום",
        "botanical": "Osteospermum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/African_Cape_Daisy_%28Osteospermum_barberiae%29.jpg/960px-African_Cape_Daisy_%28Osteospermum_barberiae%29.jpg",
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
        "wikipediaTitle": "Osteospermum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Osteospermum",
        "wikipediaExtract": "Osteospermum, is a genus of flowering plants belonging to the Calenduleae, one of the smaller tribes of the sunflower/daisy family Asteraceae. They are known as the daisybushes or African daisies. Its species have been given several common names, including African daisy, South African daisy, Cape daisy and blue-eyed daisy. The name Cape daisy is also applied to Dimorphotheca pluvialis.",
        "imageTitle": "File:African Cape Daisy (Osteospermum barberiae).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:African_Cape_Daisy_%28Osteospermum_barberiae%29.jpg",
        "imageDescription": "White Cape Daisy ( Osteospermum barberiae ) flower in Galway's Land National Park, Nuwara Eliya, Sri Lanka. It is about 9 cm diameter."
    },
    {
        "name": "ורבנה",
        "botanical": "Verbena",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Verbena_bonariensis%2C_bloeiwijze._28-08-2021._%28d.j.b%29_01.jpg/960px-Verbena_bonariensis%2C_bloeiwijze._28-08-2021._%28d.j.b%29_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Verbena",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Verbena",
        "wikipediaExtract": "Verbena, also known as vervain or verveine, is a genus in the family Verbenaceae. It contains about 150 species of annual and perennial herbaceous or semi-woody flowering plants. The majority of the species are native to the Americas and Asia; however, Verbena officinalis, the common vervain or common verbena, is the type species and native to Europe.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94",
        "imageTitle": "File:Verbena bonariensis, bloeiwijze. 28-08-2021. (d.j.b) 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Verbena_bonariensis%2C_bloeiwijze._28-08-2021._%28d.j.b%29_01.jpg",
        "imageDescription": "Flowers of a  Verbena bonariensis . Focus stack of 20 photos."
    },
    {
        "name": "גרניום / פלרגוניום",
        "botanical": "Pelargonium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Pelargonium_zonale_%28Geraniaceae%29.jpg/960px-Pelargonium_zonale_%28Geraniaceae%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pelargonium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium",
        "wikipediaExtract": "Pelargonium is a genus of flowering plants commonly called geraniums, pelargoniums, or storksbills. It includes about 280 species of perennials, succulents, and shrubs. Taxonomist Carl Linnaeus originally included all the species of Pelargonium and Geranium under the latter name. In 1789, Charles Louis L'Héritier de Brutelle separated them into two genera.",
        "imageTitle": "File:Pelargonium zonale (Geraniaceae).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pelargonium_zonale_%28Geraniaceae%29.jpg",
        "imageDescription": "Pelargonium zonale (L.) L'Her. ( Geraniaceae ), common name Horseshoe geranium. Botanical Gardens Ljubljana, Slovenia. Stacked image."
    },
    {
        "name": "ליריופה",
        "botanical": "Liriope muscari",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Liriope_muscari_flower_in_Izena_Island%2C_Okinawa.jpg/960px-Liriope_muscari_flower_in_Izena_Island%2C_Okinawa.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Liriope muscari",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Liriope_muscari",
        "wikipediaExtract": "Liriope muscari is a species of flowering plant from East Asia. Common names in English include big blue lilyturf, lilyturf, border grass, and monkey grass. This small herbaceous perennial has grass-like evergreen foliage and lilac-purple flowers which produce single-seeded berries on a spike in the fall. In some parts of the United States, it is an invasive species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%A8%D7%99%D7%95%D7%A4%D7%94",
        "imageTitle": "File:Liriope muscari flower in Izena Island, Okinawa.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Liriope_muscari_flower_in_Izena_Island%2C_Okinawa.jpg",
        "imageDescription": "ヤブランの花（2025年9月 沖縄県伊是名村）"
    },
    {
        "name": "אופיופוגון",
        "botanical": "Ophiopogon japonicus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/%E6%B2%BF%E9%9A%8E%E8%8D%89%28%E9%BA%A5%E5%86%AC%29_Ophiopogon_japonicus_-%E9%A6%99%E6%B8%AF%E5%8B%95%E6%A4%8D%E7%89%A9%E5%85%AC%E5%9C%92_Hong_Kong_Botanical_Garden-_%289227117465%29.jpg/960px-%E6%B2%BF%E9%9A%8E%E8%8D%89%28%E9%BA%A5%E5%86%AC%29_Ophiopogon_japonicus_-%E9%A6%99%E6%B8%AF%E5%8B%95%E6%A4%8D%E7%89%A9%E5%85%AC%E5%9C%92_Hong_Kong_Botanical_Garden-_%289227117465%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Ophiopogon japonicus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ophiopogon_japonicus",
        "wikipediaExtract": "Ophiopogon japonicus (dwarf lilyturf, mondograss, fountainplant, monkeygrass; Japanese: リュウノヒゲ ryū-no-hige or ジャノヒゲ ja-no-hige is a species of Ophiopogon native to China, India, Japan, Nepal, and Vietnam.",
        "imageTitle": "File:沿階草(麥冬) Ophiopogon japonicus -香港動植物公園 Hong Kong Botanical Garden- (9227117465).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E6%B2%BF%E9%9A%8E%E8%8D%89%28%E9%BA%A5%E5%86%AC%29_Ophiopogon_japonicus_-%E9%A6%99%E6%B8%AF%E5%8B%95%E6%A4%8D%E7%89%A9%E5%85%AC%E5%9C%92_Hong_Kong_Botanical_Garden-_%289227117465%29.jpg",
        "imageDescription": "中草藥-麥冬"
    },
    {
        "name": "איריס גרמני",
        "botanical": "Iris germanica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Iris_germanica_-_geograph.org.uk_-_6157777.jpg/960px-Iris_germanica_-_geograph.org.uk_-_6157777.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Iris × germanica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Iris_%C3%97_germanica",
        "wikipediaExtract": "Iris × germanica is the accepted name for a species of flowering plants in the family Iridaceae commonly known as the bearded iris or the German bearded iris. It is of hybrid origin. Varieties include I. × g. var. florentina.",
        "imageTitle": "File:Iris germanica - geograph.org.uk - 6157777.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Iris_germanica_-_geograph.org.uk_-_6157777.jpg",
        "imageDescription": "Iris germanica      "
    },
    {
        "name": "המרוקליס",
        "botanical": "Hemerocallis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Orange_DayLily_Hemerocallis_sp_Raindrops_2000px.jpg/960px-Orange_DayLily_Hemerocallis_sp_Raindrops_2000px.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Daylily",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Daylily",
        "wikipediaExtract": "A daylily, day lily or ditch-lily is a flowering plant in the genus Hemerocallis, a member of the family Asphodelaceae, subfamily Hemerocallidoideae, native to Asia. Despite the common name, it is not taxonomically classified in the lily genus. Gardening enthusiasts and horticulturists have long bred Hemerocallis species for their attractive flowers; a select few species of the genus have edible petals, while some are extremely toxic. Thousands of cultivars have been registered by the American Daylily Society, the only internationally recognized registrant according to the International Code of Nomenclature for Cultivated Plants. The plants are perennial, bulbous plants, whose common name alludes to its flowers, which typically last about a day.",
        "imageTitle": "File:Orange DayLily Hemerocallis sp Raindrops 2000px.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Orange_DayLily_Hemerocallis_sp_Raindrops_2000px.jpg",
        "imageDescription": " Photograph of an   Hemerocallis fulva   'Europa',  Daylily    en    (   Hemerocallis       en        ).  The photo was taken in a summer rain shower around early evening.  The raindrops are real. \n \n \n\n  \n  \n     Camera and Exposure Detail"
    },
    {
        "name": "קוראופסיס",
        "botanical": "Coreopsis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Coreopsis_flower.jpg/960px-Coreopsis_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Coreopsis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coreopsis",
        "wikipediaExtract": "Coreopsis is a genus of flowering plants in the family Asteraceae. Common names include calliopsis and tickseed, a name shared with various other plants.",
        "imageTitle": "File:Coreopsis flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Coreopsis_flower.jpg",
        "imageDescription": "The plant is common to Canada (from Quebec to British Columbia), northeast Mexico (Coahuila, Nuevo León, Tamaulipas), and much of the United States, especially the Great Plains and Southern states where it is often called \"calliopsis.\""
    },
    {
        "name": "גיירדיה",
        "botanical": "Gaillardia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Kokardenblume_Gaillardia_aristata_stack28_20190721-RM-7210879.jpg/960px-Kokardenblume_Gaillardia_aristata_stack28_20190721-RM-7210879.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Gaillardia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gaillardia",
        "wikipediaExtract": "Gaillardia is a genus of flowering plants in the family Asteraceae, native to North and South America. It was named after Maître Gaillard de Charentonneau, an 18th-century French magistrate who was an enthusiastic botanist. The common name may refer to the resemblance of the inflorescence to the brightly patterned blankets made by Native Americans, or to the ability of wild taxa to blanket the ground with colonies. Many cultivars have been bred for ornamental use.",
        "imageTitle": "File:Kokardenblume Gaillardia aristata stack28 20190721-RM-7210879.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Kokardenblume_Gaillardia_aristata_stack28_20190721-RM-7210879.jpg",
        "imageDescription": "Emerging flower of a cockade flower ( Gaillardia aristata ) Stacked with Helicon Focus from 28 pictures"
    },
    {
        "name": "פלוקס",
        "botanical": "Phlox",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Wildflowers%2C_Phlox_paniculata_%28Eva_cullum%29%2C_flowers_in_spring%2C_flowers_in_summer.jpg/960px-Wildflowers%2C_Phlox_paniculata_%28Eva_cullum%29%2C_flowers_in_spring%2C_flowers_in_summer.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Phlox",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phlox",
        "wikipediaExtract": "Phlox is a genus of 68 species of perennial and annual plants in the family Polemoniaceae. They are found mostly in North America in diverse habitats from alpine tundra to open woodland and prairie. Some flower in spring, others in summer and fall. Flowers may be pale blue, violet, pink, bright red, or white. Many are fragrant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%95%D7%A7%D7%A1",
        "imageTitle": "File:Wildflowers, Phlox paniculata (Eva cullum), flowers in spring, flowers in summer.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Wildflowers%2C_Phlox_paniculata_%28Eva_cullum%29%2C_flowers_in_spring%2C_flowers_in_summer.jpg",
        "imageDescription": "Phlox Paniculata (Eva cullum) in Val-Dieu."
    },
    {
        "name": "נפית",
        "botanical": "Nepeta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Nepeta_sp._flower.jpg/960px-Nepeta_sp._flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Nepeta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nepeta",
        "wikipediaExtract": "Nepeta is a genus of flowering plants in the family Lamiaceae. The genus name, from Latin nepeta (“catnip”), is reportedly in reference to Nepete, an ancient Etruscan city. There are 295 accepted species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A4%D7%99%D7%AA",
        "imageTitle": "File:Nepeta sp. flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Nepeta_sp._flower.jpg",
        "imageDescription": "catnip flower ( Nepeta  sp.), probably  Nepeta cataria , grown on the balcony, Bytom, Poland"
    },
    {
        "name": "חרצית שיחית",
        "botanical": "Argyranthemum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Argyranthemum_haematomma_-_Jardim_Bot%C3%A2nico_da_Madeira_01.jpg/960px-Argyranthemum_haematomma_-_Jardim_Bot%C3%A2nico_da_Madeira_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Argyranthemum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Argyranthemum",
        "wikipediaExtract": "Argyranthemum is a genus of flowering plants belonging to the family Asteraceae. Members of this genus are sometimes also placed in the genus Chrysanthemum.",
        "imageTitle": "File:Argyranthemum haematomma - Jardim Botânico da Madeira 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Argyranthemum_haematomma_-_Jardim_Bot%C3%A2nico_da_Madeira_01.jpg",
        "imageDescription": "  Argyranthemum haematomma    Lowe , inflorescence;  Madeira Botanical Garden ,  Funchal ,  Madeira ,  Portugal ."
    },
    {
        "name": "אוזן ארי",
        "botanical": "Leonotis leonurus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/190615_159_Corona_del_Mar%2C_Sherman_Gardens_-_along_Pacific_Coast_Hwy%2C_Leonotis_leonurus_Lion%27s_Tail%2C_Evolvulus_glomeratus%2C_Scaevola_aemula_cv_Fan_Flower%2C_Mimulus_aurantiacus_cv_Sticky_Monkey_Flower%2C_Achillea_%27Moonshine%27_Yarrow.jpg/960px-thumbnail.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Leonotis leonurus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leonotis_leonurus",
        "wikipediaExtract": "Leonotis leonurus, also known as wild dagga and lion's ear, is a plant species in the mint family Lamiaceae. It is a broadleaf evergreen shrub, native to South Africa, where it is very common, with a wide altitudinal range from 5 m up to 1980 m. It is known for its medicinal properties. The main psychoactive component of Leonotis leonurus is hypothesized to be related to the presence of leonurine or labdanes; Leonotis leonurus has been confirmed to contain leonurine according to peer reviewed journal published phytochemical analysis. Like other plants in the mint family, it also contains marrubin. The word \"dagga\" comes from Afrikaans, and derives in turn from the Khoikhoi \"dachab\". The word \"dagga\" has been extended to include cannabis in Afrikaans and South African English, so the use of \"wild\" serves to distinguish Leonotis leonurus from this.",
        "imageTitle": "File:190615 159 Corona del Mar, Sherman Gardens - along Pacific Coast Hwy, Leonotis leonurus Lion's Tail, Evolvulus glomeratus, Scaevola aemula cv Fan Flower, Mimulus aurantiacus cv Sticky Monkey Flower, Achillea 'Moonshine' Yarrow.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:190615_159_Corona_del_Mar%2C_Sherman_Gardens_-_along_Pacific_Coast_Hwy%2C_Leonotis_leonurus_Lion%27s_Tail%2C_Evolvulus_glomeratus%2C_Scaevola_aemula_cv_Fan_Flower%2C_Mimulus_aurantiacus_cv_Sticky_Monkey_Flower%2C_Achillea_%27Moonshine%27_Yarrow.jpg",
        "imageDescription": "A map of the gardens:\nwww.slgardens.org/map"
    },
    {
        "name": "כסמנתה",
        "botanical": "Chasmanthe",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Chasmanthe_bicolor1.jpg/960px-Chasmanthe_bicolor1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chasmanthe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chasmanthe",
        "wikipediaExtract": "Chasmanthe is a genus of flowering plants in the family Iridaceae, first described in 1932. It is endemic to Cape Province in South Africa. It is widely grown as an ornamental plant and is naturalized in various locations.",
        "imageTitle": "File:Chasmanthe bicolor1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Chasmanthe_bicolor1.jpg",
        "imageDescription": "  Scientific name \n   Chasmanthe bicolor    \nPlace:Osaka Prefectural Flower Garden,Osaka,Japan"
    },
    {
        "name": "קליביה",
        "botanical": "Clivia miniata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Clivia_miniata_in_Nanjie_Village.jpg/960px-Clivia_miniata_in_Nanjie_Village.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Clivia miniata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clivia_miniata",
        "wikipediaExtract": "Clivia miniata, the Natal lily or bush lily, is a species of flowering plant in the genus Clivia of the family Amaryllidaceae, native to woodland habitats in South Africa and Eswatini. It is also widely cultivated as an ornamental.",
        "imageTitle": "File:Clivia miniata in Nanjie Village.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Clivia_miniata_in_Nanjie_Village.jpg",
        "imageDescription": "Flowers of Clivia miniata. Contains seven orange flowers."
    },
    {
        "name": "קנא הודית",
        "botanical": "Canna indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Cinnamon-bellied_flowerpiercer_%28Diglossa_baritula%29_male_on_Indian_shot_%28Canna_indica%29_Finca_El_Pilar.jpg/960px-Cinnamon-bellied_flowerpiercer_%28Diglossa_baritula%29_male_on_Indian_shot_%28Canna_indica%29_Finca_El_Pilar.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Canna indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Canna_indica",
        "wikipediaExtract": "Canna indica, commonly known as Indian shot, African arrowroot, edible canna, purple arrowroot, Sierra Leone arrowroot, is a plant species in the family Cannaceae. It is native to the Americas and naturalized elsewhere. The edible rhizomes are a source of starch.",
        "imageTitle": "File:Cinnamon-bellied flowerpiercer (Diglossa baritula) male on Indian shot (Canna indica) Finca El Pilar.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Cinnamon-bellied_flowerpiercer_%28Diglossa_baritula%29_male_on_Indian_shot_%28Canna_indica%29_Finca_El_Pilar.jpg",
        "imageDescription": "Cinnamon-bellied flowerpiercer ( Diglossa baritula ) male on Indian shot ( Canna indica ), Finca El Pilar, Antigua Guatemala"
    },
    {
        "name": "אלסטרומריה",
        "botanical": "Alstroemeria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Alstroemeria_flower%2C_Breezy_Knees_Gardens_-_geograph.org.uk_-_5817974.jpg/960px-Alstroemeria_flower%2C_Breezy_Knees_Gardens_-_geograph.org.uk_-_5817974.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Alstroemeria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alstroemeria",
        "wikipediaExtract": "Alstroemeria, commonly called the Peruvian lily or lily of the Incas, is a genus of flowering plants in the family Alstroemeriaceae. They are all native to South America, although some have become naturalized in the United States, Mexico, Australia, New Zealand, Madeira and the Canary Islands. Almost all of the species are restricted to one of two distinct centers of diversity: one in central Chile and southern Argentina, the other in eastern Brazil. Species of Alstroemeria from Patagonia are winter-growing plants, while those of Brazil are summer growing. All are long-lived perennials except A. graminea, a diminutive annual from the Atacama Desert of Chile.",
        "imageTitle": "File:Alstroemeria flower, Breezy Knees Gardens - geograph.org.uk - 5817974.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Alstroemeria_flower%2C_Breezy_Knees_Gardens_-_geograph.org.uk_-_5817974.jpg",
        "imageDescription": "Alstroemeria flower, Breezy Knees Gardens      "
    },
    {
        "name": "פלרגון לימוני",
        "botanical": "Pelargonium crispum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Pelargonium_graveolens-_Kirstenbosch_botanical_garden_-_3.jpg/960px-Pelargonium_graveolens-_Kirstenbosch_botanical_garden_-_3.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Pelargonium crispum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium_crispum",
        "wikipediaExtract": "Pelargonium crispum is a Pelargonium species native to the Western Cape Province, South Africa. It is in the subgenus Pelargonium along with Pelargonium graveolens and Pelargonium capitatum and Pelargonium tomentosum.",
        "imageTitle": "File:Pelargonium graveolens- Kirstenbosch botanical garden - 3.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Pelargonium_graveolens-_Kirstenbosch_botanical_garden_-_3.jpg",
        "imageDescription": "Flower of Pelargonium graveolens in the Kirstenbosch botanical garden"
    },
    {
        "name": "צורית",
        "botanical": "Sedum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Sedum_pallidum_flower_2.jpg/960px-Sedum_pallidum_flower_2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Sedum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum",
        "wikipediaExtract": "Sedum is a large genus of flowering plants in the family Crassulaceae, members of which are commonly known as stonecrops. The genus has been described as containing up to 600 species, subsequently reduced to 400–500. They are leaf succulents found primarily in the Northern Hemisphere, but extending into the southern hemisphere in Africa and South America. The plants vary from annual and creeping herbs to shrubs. The plants have water-storing leaves. The flowers usually have five petals, seldom four or six. There are typically twice as many stamens as petals. Various species formerly classified as Sedum are now in the segregate genera Hylotelephium and Rhodiola.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%95%D7%A8%D7%99%D7%AA",
        "imageTitle": "File:Sedum pallidum flower 2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Sedum_pallidum_flower_2.jpg",
        "imageDescription": "In einem Sedum pallidum Teppich blüht ein Exemplar. Die Pflanze wurde in Lebehn, Vorpommern-Greifswald, Mecklenburg-Vorpommern, Deutschland unter einem Strauch neben einer Trockenwiese gefunden."
    },
    {
        "name": "ארמריה",
        "botanical": "Armeria maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/17/Thrift%2C_Armeria_maritima_-_geograph.org.uk_-_1302685.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Armeria maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Armeria_maritima",
        "wikipediaExtract": "Armeria maritima, the thrift, sea thrift or sea pink, is a species of flowering plant in the family Plumbaginaceae. It is a compact evergreen perennial which grows in low clumps and sends up long stems that support globes of bright pink flowers. In some cases purple, white or red flowers also occur. It is a popular garden flower and has been distributed worldwide as a garden and cut flower. It does well in gardens designed as xeriscapes or rock gardens. The Latin specific epithet maritima means pertaining to the sea or coastal.",
        "imageTitle": "File:Thrift, Armeria maritima - geograph.org.uk - 1302685.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Thrift%2C_Armeria_maritima_-_geograph.org.uk_-_1302685.jpg",
        "imageDescription": "Thrift, Armeria maritima. At its best in Mid-May, this clump is on the exposed clifftop in  1302680 ."
    },
    {
        "name": "ציפורן סיני",
        "botanical": "Dianthus chinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/China_pink_flower_%28Dianthus_chinensis%29_in_Jorhat%2C_Assam.jpg/960px-China_pink_flower_%28Dianthus_chinensis%29_in_Jorhat%2C_Assam.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dianthus chinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dianthus_chinensis",
        "wikipediaExtract": "Dianthus chinensis, commonly known as rainbow pink or China pink, is a species of Dianthus native to northern China, Korea, Mongolia, and southeastern Russia. It is a herbaceous perennial plant growing to 30–50 cm tall.",
        "imageTitle": "File:China pink flower (Dianthus chinensis) in Jorhat, Assam.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:China_pink_flower_%28Dianthus_chinensis%29_in_Jorhat%2C_Assam.jpg",
        "imageDescription": "China pink flower (Dianthus chinensis) in Jorhat, Assam, India."
    },
    {
        "name": "ורוניקה",
        "botanical": "Veronica spicata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/99/Western_Spiked_Speedwell_%28Veronica_spicata_ssp_hybrida%29_-_geograph.org.uk_-_5445905.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Veronica spicata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Veronica_spicata",
        "wikipediaExtract": "Veronica spicata is a species of flowering plant in the family Plantaginaceae. It is 1–3 feet (0.30–0.91 m) tall and bears 1 foot long spikes with blue, pink, purple and white flowers.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%A8%D7%95%D7%A0%D7%99%D7%A7%D7%94",
        "imageTitle": "File:Western Spiked Speedwell (Veronica spicata ssp hybrida) - geograph.org.uk - 5445905.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Western_Spiked_Speedwell_%28Veronica_spicata_ssp_hybrida%29_-_geograph.org.uk_-_5445905.jpg",
        "imageDescription": "Western Spiked Speedwell (Veronica spicata ssp hybrida)      "
    },
    {
        "name": "סקביה",
        "botanical": "Scabiosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Scabiosa_atropurpurea%2C_flower%2C_S%C3%A8te_01.jpg/960px-Scabiosa_atropurpurea%2C_flower%2C_S%C3%A8te_01.jpg",
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
        "wikipediaTitle": "Scabiosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scabiosa",
        "wikipediaExtract": "Scabiosa is a genus in the honeysuckle family (Caprifoliaceae) of flowering plants. Many of the species in this genus have common names that include the word scabious, but some plants commonly known as scabious are currently classified in related genera such as Knautia and Succisa; at least some of these were formerly placed in Scabiosa. Another common name for members of this genus is pincushion flowers.",
        "imageTitle": "File:Scabiosa atropurpurea, flower, Sète 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Scabiosa_atropurpurea%2C_flower%2C_S%C3%A8te_01.jpg",
        "imageDescription": "A flower of   Scabiosa atropurpurea     subsp. maritima  (Sweet scabious)."
    },
    {
        "name": "לבנדר מנוצה",
        "botanical": "Lavandula dentata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Starr-100615-6995-Lavandula_dentata-flower-Alii_Kula_Lavender_Farm_Waipoli_Rd-Maui_%2824413367773%29.jpg/960px-Starr-100615-6995-Lavandula_dentata-flower-Alii_Kula_Lavender_Farm_Waipoli_Rd-Maui_%2824413367773%29.jpg",
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
        "wikipediaTitle": "Lavandula dentata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula_dentata",
        "wikipediaExtract": "Lavandula dentata, the fringed lavender or French lavender, is a species of flowering plant in the family Lamiaceae, native to the Mediterranean basin, Eritrea, Ethiopia, Yemen, and the Arabian Peninsula. Growing to 60 cm (24 in) tall, it has gray-green, linear or lance-shaped leaves with toothed edges and a lightly woolly texture. The long-lasting, narrow spikes of purple flowers, topped with pale violet bracts, first appear in late spring. The whole plant is strongly aromatic with the typical lavender fragrance.",
        "imageTitle": "File:Starr-100615-6995-Lavandula dentata-flower-Alii Kula Lavender Farm Waipoli Rd-Maui (24413367773).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-100615-6995-Lavandula_dentata-flower-Alii_Kula_Lavender_Farm_Waipoli_Rd-Maui_%2824413367773%29.jpg",
        "imageDescription": "     Lavandula dentata  (French lavender)     \n  Flower at Alii Kula Lavender Farm Waipoli Rd, Maui, Hawaii.\nJune 15, 2010\n   \n \n   #100615-6995   \n  \n \n   Image Use Policy   "
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
        "wikipediaExtract": "Artemisia may refer to:",
        "imageTitle": "File:Artemisia vulgaris - flower - dark field microscopic photo.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Artemisia_vulgaris_-_flower_-_dark_field_microscopic_photo.jpg",
        "imageDescription": "The photo shows a single, young, tubular Artemisia vulgaris flower. The microscopic photo was made using the dark field technique."
    },
    {
        "name": "הליכריסום",
        "botanical": "Helichrysum petiolare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Starr-100615-2813-Helichrysum_petiolare-flowers-Waipoli_Rd_Kula-Maui_%2824946713081%29.jpg/960px-Starr-100615-2813-Helichrysum_petiolare-flowers-Waipoli_Rd_Kula-Maui_%2824946713081%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Helichrysum petiolare",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Helichrysum_petiolare",
        "wikipediaExtract": "Helichrysum petiolare, the licorice-plant or liquorice plant, is a species of flowering plant in the family Asteraceae. It is a subshrub native to the Cape Provinces of South Africa — where it is known as impepho — and to Angola, Zambia, and Zimbabwe. It is naturalized in parts of Portugal and the United States. Growing to about 45 cm (18 in) high and 150 cm (59 in) broad, it is a trailing evergreen subshrub with furry grey-green leaves and small white flowers. Other common names include silver-bush everlastingflower, trailing dusty miller and kooigoed. The foliage has a faint licorice aroma, but Helichrysum petiolare is not closely related to true liquorice, Glycyrrhiza glabra, from which liquorice candy is made.",
        "imageTitle": "File:Starr-100615-2813-Helichrysum petiolare-flowers-Waipoli Rd Kula-Maui (24946713081).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-100615-2813-Helichrysum_petiolare-flowers-Waipoli_Rd_Kula-Maui_%2824946713081%29.jpg",
        "imageDescription": "     Helichrysum petiolare  (Licorice plant, immortelle)     \n  Flowers at Waipoli Rd Kula, Maui, Hawaii.\nJune 15, 2010\n   \n \n   #100615-2813   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "קונבולבולוס",
        "botanical": "Convolvulus cneorum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Convolvulus_cneorum_%27Silverbush%27_%28Convonvulaceae%29_flower.JPG/960px-Convolvulus_cneorum_%27Silverbush%27_%28Convonvulaceae%29_flower.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Convolvulus cneorum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Convolvulus_cneorum",
        "wikipediaExtract": "Convolvulus cneorum, the silverbush or shrubby bindweed, is a species of flowering plant in the family Convolvulaceae, which contains many plants described as \"bindweed\". The Latin specific epithet cneorum is a word of Greek origin referring to a small olive-like plant, possibly a species of Daphne.",
        "imageTitle": "File:Convolvulus cneorum 'Silverbush' (Convonvulaceae) flower.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Convolvulus_cneorum_%27Silverbush%27_%28Convonvulaceae%29_flower.JPG",
        "imageDescription": ""
    },
    {
        "name": "דיכונדרה כסופה",
        "botanical": "Dichondra argentea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Dichondra_argentea_Dichondra_srebrzysta_2021-08-08_04.jpg/960px-Dichondra_argentea_Dichondra_srebrzysta_2021-08-08_04.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dichondra argentea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dichondra_argentea",
        "wikipediaExtract": "Dichondra argentea, the silver ponysfoot or silver nickel vine, is a species of flowering plant in the family Convolvulaceae.",
        "imageTitle": "File:Dichondra argentea Dichondra srebrzysta 2021-08-08 04.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Dichondra_argentea_Dichondra_srebrzysta_2021-08-08_04.jpg",
        "imageDescription": "  Dichondra argentea   cultivated in Wrocław University Botanical Garden, Wrocław, Poland."
    },
    {
        "name": "בקופה",
        "botanical": "Sutera cordata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/%E9%9B%AA%E8%8A%B1%E8%94%93_Sutera_cordata_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2813217703174%29.jpg/960px-%E9%9B%AA%E8%8A%B1%E8%94%93_Sutera_cordata_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2813217703174%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chaenostoma cordatum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chaenostoma_cordatum",
        "wikipediaExtract": "Chaenostoma cordatum, also known as Sutera cordata, Bacopa cordata, Sutera diffusus, Pikmin flower, or Bacopa, is one of 52 species in the genus Chaenostoma (Scrophulariaceae), and is native to South Africa.",
        "imageTitle": "File:雪花蔓 Sutera cordata -香港花展 Hong Kong Flower Show- (13217703174).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E9%9B%AA%E8%8A%B1%E8%94%93_Sutera_cordata_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%2813217703174%29.jpg",
        "imageDescription": "Bacopa"
    },
    {
        "name": "פורטולקה רב שנתית",
        "botanical": "Portulaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg/960px-Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Portulaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca",
        "wikipediaExtract": "Portulaca is a genus of flowering plants in the family Portulacaceae, and is the type genus of the family. With over 100 species, it is found in the tropics and warm temperate regions. Portulacas are also known as the purslanes.",
        "imageTitle": "File:Portulaca grandiflora, Burdwan, 30032014 (6).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg",
        "imageDescription": "White Moss-rose,   Portulaca grandiflora  . Photographed at Burdwan, West Bengal, India."
    },
    {
        "name": "אספרגוס מאירי",
        "botanical": "Asparagus densiflorus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Asparagus_densiflorus_-_flower_buds.JPG/960px-Asparagus_densiflorus_-_flower_buds.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Asparagus densiflorus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asparagus_densiflorus",
        "wikipediaExtract": "Asparagus densiflorus (among several species colloquially called asparagus ferns; no relation to actual ferns), or the foxtail fern (asparagus) or plume fern, is a variable, evergreen-perennial plant related to cultivated, edible asparagus.",
        "imageTitle": "File:Asparagus densiflorus - flower buds.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Asparagus_densiflorus_-_flower_buds.JPG",
        "imageDescription": "Asparagus Fern is a weed native to South Africa, which is very commonly used as an ornamental house-plant. It is an evergreen perennial herb emerging from a crown of tuberous roots. It is a drooping, bushy plant usually only to 2-4 ft tall,"
    },
    {
        "name": "רוזמרין",
        "botanical": "Salvia rosmarinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Borde_Hill_Garden%2C_Rosemary_%28Salvia_rosmarinus%29_already_in_flower_-_geograph.org.uk_-_7741027.jpg/960px-Borde_Hill_Garden%2C_Rosemary_%28Salvia_rosmarinus%29_already_in_flower_-_geograph.org.uk_-_7741027.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Rosemary",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rosemary",
        "wikipediaExtract": "Salvia rosmarinus, synonym Rosmarinus officinalis, commonly known as rosemary, is a shrub with fragrant, evergreen, needle-like leaves and purple or sometimes white, pink, or blue flowers. It is a member of the mint family, Lamiaceae. The species is native to the Mediterranean region. It has numerous cultivars, and its leaves are commonly used as a flavoring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%96%D7%9E%D7%A8%D7%99%D7%9F_%D7%A8%D7%A4%D7%95%D7%90%D7%99",
        "imageTitle": "File:Borde Hill Garden, Rosemary (Salvia rosmarinus) already in flower - geograph.org.uk - 7741027.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Borde_Hill_Garden%2C_Rosemary_%28Salvia_rosmarinus%29_already_in_flower_-_geograph.org.uk_-_7741027.jpg",
        "imageDescription": "Borde Hill Garden: Rosemary (Salvia rosmarinus) already in flower      "
    },
    {
        "name": "לבנדר",
        "botanical": "Lavandula",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Vanessa_cardui_on_Lavandula_angustifolia-2459.jpg/960px-Vanessa_cardui_on_Lavandula_angustifolia-2459.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lavandula",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula",
        "wikipediaExtract": "Lavandula is a genus of 47 known species of perennial flowering plants in the sage family, Lamiaceae. It is native to the Old World, primarily found across the drier, warmer regions of the Mediterranean, with an affinity for maritime breezes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%96%D7%95%D7%91%D7%99%D7%95%D7%9F",
        "imageTitle": "File:Vanessa cardui on Lavandula angustifolia-2459.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Vanessa_cardui_on_Lavandula_angustifolia-2459.jpg",
        "imageDescription": "Vanessa cardui on Lavandula angustifolia, June 2019, Upper Austria"
    },
    {
        "name": "מרווה רפואית",
        "botanical": "Salvia officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/8/8e/EB1911_-_Labiatae_-_Fig._2.%E2%80%941%2C_Flower_of_Sage_%28Salvia_officinalis%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Salvia officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_officinalis",
        "wikipediaExtract": "Salvia officinalis, common sage or sage, is a perennial, evergreen subshrub, with woody stems, grayish leaves, and blue to purplish flowers. It is a member of the mint family (Lamiaceae) and native to the Mediterranean region, though it has been naturalized in many places throughout the world. It has a long history of culinary use, and in modern times it has been used as an ornamental garden plant. The common name \"sage\" is also used for closely related species and cultivars.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A8%D7%A4%D7%95%D7%90%D7%99%D7%AA",
        "imageTitle": "File:EB1911 - Labiatae - Fig. 2.—1, Flower of Sage (Salvia officinalis).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:EB1911_-_Labiatae_-_Fig._2.%E2%80%941%2C_Flower_of_Sage_%28Salvia_officinalis%29.jpg",
        "imageDescription": "Labiatae—1, Flower of Sage (Salvia officinalis); 2, Corolla of same cut open showing the two stamens; 3, flower of spearmint (Mentha viridis); 4, corolla of same cut open showing stamens; 5, flowering shoot of same, reduced; 6, floral diagr"
    },
    {
        "name": "נענע",
        "botanical": "Mentha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Mentha_Pulegium_9.jpg/960px-Mentha_Pulegium_9.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Mentha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mentha",
        "wikipediaExtract": "Mentha, also known as mint, is a genus of flowering plants in the mint family, Lamiaceae. It is estimated that 18 to 24 species exist, but the exact distinction between species is unclear. Hybridization occurs naturally where some species' ranges overlap. Many hybrids and cultivars are known.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2",
        "imageTitle": "File:Mentha Pulegium 9.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Mentha_Pulegium_9.jpg",
        "imageDescription": "Mentha Pulegium (Pennyroyal Plant) Flower"
    },
    {
        "name": "מנטה",
        "botanical": "Mentha piperita",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flowers_of_Mentha_%C3%97_piperita.jpg/960px-Flowers_of_Mentha_%C3%97_piperita.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Peppermint",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peppermint",
        "wikipediaExtract": "Peppermint is a hybrid species of mint, a cross between watermint and spearmint. Indigenous to Europe and the Middle East, the plant is now widely spread and cultivated in many regions of the world. It is occasionally found in the wild with its parent species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2",
        "imageTitle": "File:Flowers of Mentha × piperita.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flowers_of_Mentha_%C3%97_piperita.jpg",
        "imageDescription": "Flowers of Peppermint (Mentha × piperita)"
    },
    {
        "name": "בזיליקום",
        "botanical": "Ocimum basilicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Ocimum_basilicum_flowers_in_Crimea.jpg/960px-Ocimum_basilicum_flowers_in_Crimea.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Basil",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Basil",
        "wikipediaExtract": "Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term \"basil\" refers to the variety also known as Genovese basil or sweet basil. Basil is native to tropical regions from Central Africa to Southeast Asia. In temperate climates basil is treated as an annual plant, but it can be grown as a short-lived perennial or biennial in warmer horticultural zones with tropical or Mediterranean climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%99%D7%97%D7%9F_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "File:Ocimum basilicum flowers in Crimea.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Ocimum_basilicum_flowers_in_Crimea.jpg",
        "imageDescription": "Цветы базилика"
    },
    {
        "name": "טימין",
        "botanical": "Thymus vulgaris",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Eristalinus_aeneus_on_Thymus_vulgaris%2C_S%C3%A8te_03.jpg/960px-Eristalinus_aeneus_on_Thymus_vulgaris%2C_S%C3%A8te_03.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Thymus vulgaris",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thymus_vulgaris",
        "wikipediaExtract": "Thymus vulgaris is a species of flowering plant in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%95%D7%A8%D7%A0%D7%99%D7%AA_(%D7%A6%D7%9E%D7%97)",
        "imageTitle": "File:Eristalinus aeneus on Thymus vulgaris, Sète 03.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Eristalinus_aeneus_on_Thymus_vulgaris%2C_S%C3%A8te_03.jpg",
        "imageDescription": "  Eristalinus aeneus   on   Thymus vulgaris   (Common thyme)."
    },
    {
        "name": "אורגנו",
        "botanical": "Origanum vulgare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Origanum_vulgare_-_harilik_pune.jpg/960px-Origanum_vulgare_-_harilik_pune.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Oregano",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oregano",
        "wikipediaExtract": "Oregano is a species of flowering plant in the mint family, Lamiaceae. It was native to the Mediterranean region, but widely naturalised elsewhere in the temperate Northern Hemisphere.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%95%D7%A8%D7%92%D7%A0%D7%95",
        "imageTitle": "File:Origanum vulgare - harilik pune.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Origanum_vulgare_-_harilik_pune.jpg",
        "imageDescription": "Inflorescence of  Oregano ."
    },
    {
        "name": "זעתר",
        "botanical": "Origanum syriacum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Majoran_%28Origanum_majorana%29_zur_Zeit_der_Ernte--Josef_Schlaghecken.jpg/960px-Majoran_%28Origanum_majorana%29_zur_Zeit_der_Ernte--Josef_Schlaghecken.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Origanum syriacum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Origanum_syriacum",
        "wikipediaExtract": "Origanum syriacum subsp. syriacum; syn. Majorana syriaca, bible hyssop, Biblical-hyssop, Lebanese oregano or Syrian oregano, is an aromatic perennial herb in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%A2%D7%AA%D7%A8",
        "imageTitle": "File:Majoran (Origanum majorana) zur Zeit der Ernte--Josef Schlaghecken.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Majoran_%28Origanum_majorana%29_zur_Zeit_der_Ernte--Josef_Schlaghecken.jpg",
        "imageDescription": "For drying marjoram plant shoots, it is best to harvest them shortly before they begin to flower."
    },
    {
        "name": "לואיזה",
        "botanical": "Aloysia citrodora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Aloysia_citrodora_-_flowers.jpg/960px-Aloysia_citrodora_-_flowers.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Aloysia citrodora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloysia_citrodora",
        "wikipediaExtract": "Aloysia citrodora, lemon verbena, is a species of flowering plant in the verbena family Verbenaceae, native to South America. Other common names include lemon beebrush. It was brought to Europe by the Spanish and the Portuguese in the 17th century and cultivated for its oil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94",
        "imageTitle": "File:Aloysia citrodora - flowers.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Aloysia_citrodora_-_flowers.jpg",
        "imageDescription": "Flowers of   Aloysia citrodora  . Photography token in  Buenos Aires Province , Argentina"
    },
    {
        "name": "לימונית",
        "botanical": "Cymbopogon citratus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Starr-170622-0758-Cymbopogon_citratus-leaves-Residences_Sand_Island-Midway_Atoll_%2835648286013%29.jpg/960px-Starr-170622-0758-Cymbopogon_citratus-leaves-Residences_Sand_Island-Midway_Atoll_%2835648286013%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cymbopogon citratus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cymbopogon_citratus",
        "wikipediaExtract": "Cymbopogon citratus, commonly known as West Indian lemon grass or simply lemon grass, is a tropical plant native to South Asia and Maritime Southeast Asia and introduced to many tropical regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%A9%D7%91_%D7%9C%D7%99%D7%9E%D7%95%D7%9F",
        "imageTitle": "File:Starr-170622-0758-Cymbopogon citratus-leaves-Residences Sand Island-Midway Atoll (35648286013).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-170622-0758-Cymbopogon_citratus-leaves-Residences_Sand_Island-Midway_Atoll_%2835648286013%29.jpg",
        "imageDescription": "     Cymbopogon citratus  (Lemon grass)     \n  Leaves at Residences Sand Island, Midway Atoll, Hawaii.\nJune 22, 2017\n   \n \n   #170622-0758   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "פטרוזיליה",
        "botanical": "Petroselinum crispum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Curly_Parsley_Petroselinum_crispum_Young_Flowers.jpg/960px-Curly_Parsley_Petroselinum_crispum_Young_Flowers.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Parsley",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Parsley",
        "wikipediaExtract": "Parsley, or garden parsley, is a species of flowering plant in the family Apiaceae that is native to the Balkans. It has been introduced and naturalized in Europe and elsewhere in the world with suitable climates, and is widely cultivated as a herb and a vegetable.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%A8%D7%95%D7%96%D7%99%D7%9C%D7%99%D7%94",
        "imageTitle": "File:Curly Parsley Petroselinum crispum Young Flowers.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Curly_Parsley_Petroselinum_crispum_Young_Flowers.jpg",
        "imageDescription": " Photograph of an unopened flower head of  Curly Parsley    en    (   Petroselinum crispum       en        ). \n \n \n\n  \n  \n     Camera and Exposure Details:   Camera:   Nikon D50   Lens:  Sigma 70mm f/2.8 EX DG Macro  Exposure:  \n70mm (105mm"
    },
    {
        "name": "כוסברה",
        "botanical": "Coriandrum sativum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Coriander_Coriandrum_sativum_flower.jpg/960px-Coriander_Coriandrum_sativum_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Coriander",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coriander",
        "wikipediaExtract": "Coriander, or Coriandrum sativum, is an annual herb in the family Apiaceae. The leaves are known as cilantro in the US. Most people perceive the leaves as having a fresh, slightly citrus taste. Due to variations in the gene OR6A2, some people perceive its flavor to be more soaplike or rotten.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%95%D7%A1%D7%91%D7%A8%D7%94",
        "imageTitle": "File:Coriander Coriandrum sativum flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Coriander_Coriandrum_sativum_flower.jpg",
        "imageDescription": "Coriandrum sativum flower."
    },
    {
        "name": "שמיר",
        "botanical": "Anethum graveolens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Anethum_graveolens20090812_475.jpg/960px-Anethum_graveolens20090812_475.jpg",
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
        "wikipediaExtract": "Dill is an annual herb in the celery family Apiaceae. Native to North Africa and West Asia, dill is grown widely in Eurasia, where its leaves and seeds are used as a herb or spice for flavouring food.",
        "imageTitle": "File:Anethum graveolens20090812 475.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Anethum_graveolens20090812_475.jpg",
        "imageDescription": "Inflorescence of  Dill . Moscow region, Russia."
    },
    {
        "name": "עירית",
        "botanical": "Allium schoenoprasum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Allium_schoenoprasum_var._orientale_%28flower%29.JPG/960px-Allium_schoenoprasum_var._orientale_%28flower%29.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chives",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chives",
        "wikipediaExtract": "Chives, scientific name Allium schoenoprasum, is a species of flowering plant in the family Amaryllidaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%95%D7%9D_%D7%94%D7%A2%D7%99%D7%A8%D7%99%D7%AA",
        "imageTitle": "File:Allium schoenoprasum var. orientale (flower).JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Allium_schoenoprasum_var._orientale_%28flower%29.JPG",
        "imageDescription": " Allium schoenoprasum  var.  orientale  in  Mount Shirouma , Hakuba, Nagano prefecture, Japan."
    },
    {
        "name": "טרגון",
        "botanical": "Artemisia dracunculus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Artemisia_dracunculus_%285042073109%29.jpg/960px-Artemisia_dracunculus_%285042073109%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Tarragon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tarragon",
        "wikipediaExtract": "Tarragon, also known as estragon, is a species of perennial herb in the family Asteraceae. It is widespread in the wild across much of Eurasia and North America and is cultivated for culinary and medicinal purposes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%A2%D7%A0%D7%94_%D7%93%D7%A8%D7%A7%D7%95%D7%A0%D7%99%D7%AA",
        "imageTitle": "File:Artemisia dracunculus (5042073109).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Artemisia_dracunculus_%285042073109%29.jpg",
        "imageDescription": "Few flowers in a head produce viable seed suggesting that most flowers have abortive ovaries, which relates tarragon to other Artemisia like A. campestris."
    },
    {
        "name": "מליסה",
        "botanical": "Melissa officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/%E9%A6%99%E8%9C%82%E8%8D%89_Melissa_officinalis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289200963900%29.jpg/960px-%E9%A6%99%E8%9C%82%E8%8D%89_Melissa_officinalis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289200963900%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lemon balm",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon_balm",
        "wikipediaExtract": "Lemon balm is a perennial herbaceous plant in the mint family. It has lemon-scented leaves, white or pale pink flowers, and contains essential oils and compounds such as geranial and neral. It grows to a maximum height of 1 m. The species is native to south-central Europe, the Mediterranean, Central Asia, and Iran. It is naturalized worldwide. It grows easily from seed in rich, moist soil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9C%D7%99%D7%A1%D7%94",
        "imageTitle": "File:香蜂草 Melissa officinalis -香港花展 Hong Kong Flower Show- (9200963900).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%E9%A6%99%E8%9C%82%E8%8D%89_Melissa_officinalis_-%E9%A6%99%E6%B8%AF%E8%8A%B1%E5%B1%95_Hong_Kong_Flower_Show-_%289200963900%29.jpg",
        "imageDescription": "香蜂草 Melissa officinalis [香港花展 Hong Kong Flower Show]"
    },
    {
        "name": "שיבא",
        "botanical": "Artemisia arborescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Artemisia_arborescens_RF.jpg/960px-Artemisia_arborescens_RF.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Artemisia arborescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Artemisia_arborescens",
        "wikipediaExtract": "Artemisia arborescens, the tree wormwood, is a species of flowering plant in the family Asteraceae, native to the Mediterranean region. It is an erect evergreen perennial, with masses of finely-divided aromatic silvery-white leaves and single-sided sprays of yellow daisy-like flowers. This plant is cultivated for its foliage effects, but in colder temperate regions it requires the protection of a wall.",
        "imageTitle": "File:Artemisia arborescens RF.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Artemisia_arborescens_RF.jpg",
        "imageDescription": "Tree wormwood ( Artemisia arborescens ), near Polyrinia,  Crete ,  Greece "
    },
    {
        "name": "אגבה רכה",
        "botanical": "Agave attenuata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Agave_attenuata_flower_stem.jpg/960px-Agave_attenuata_flower_stem.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Agave attenuata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_attenuata",
        "wikipediaExtract": "Agave attenuata, commonly called the foxtail or lion's tail agave or the swan's neck agave, is a species of flowering plant in the family Asparagaceae. Sometimes called the soft-leaf or soft-leaved agave, the aforementioned animal-related names are a nod to the appearance of the plant's inflorescence, which—after years, generally—rises slightly before gravity brings it back down, giving the bloom a curved, \"swan\"-like or \"foxtail\" look. The species' specific manner of flowering is unique in the genus Agave as most other species produce a towering, vertical display, reminiscent of a miniature tree.",
        "imageTitle": "File:Agave attenuata flower stem.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Agave_attenuata_flower_stem.jpg",
        "imageDescription": "Taken by myself at the Royal Botanic Gardens, Sydney"
    },
    {
        "name": "אלוורה",
        "botanical": "Aloe vera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Aloe_vera_flower_bud.jpg/960px-Aloe_vera_flower_bud.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Aloe vera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloe_vera",
        "wikipediaExtract": "Aloe vera is a succulent plant species of the genus Aloe. It is widely distributed, and is considered an invasive species in many world regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%95%D7%A8%D7%94",
        "imageTitle": "File:Aloe vera flower bud.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Aloe_vera_flower_bud.jpg",
        "imageDescription": "Bud of aloe vera flowers"
    },
    {
        "name": "סנסיווריה",
        "botanical": "Dracaena trifasciata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Dracaena_trifasciata_flowers_%28snake_plant_flower%29.jpg/960px-Dracaena_trifasciata_flowers_%28snake_plant_flower%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dracaena trifasciata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_trifasciata",
        "wikipediaExtract": "Dracaena trifasciata is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria east to the Congo. It is most commonly known as the snake plant, Saint George's sword, mother-in-law's tongue, and viper's bowstring hemp, among other names. Until 2017, it was known under the synonym Sansevieria trifasciata. This plant is often kept as a houseplant due to its non-demanding maintenance; they can survive with very little water and sun.",
        "imageTitle": "File:Dracaena trifasciata flowers (snake plant flower).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Dracaena_trifasciata_flowers_%28snake_plant_flower%29.jpg",
        "imageDescription": "this is Dracaena trifasciata the snake plant flower"
    },
    {
        "name": "אכיווריה",
        "botanical": "Echeveria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Echeveria_pulidonis_flowers.jpg/960px-Echeveria_pulidonis_flowers.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Echeveria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echeveria",
        "wikipediaExtract": "Echeveria is a large genus of flowering plants in the family Crassulaceae, native to semi-desert areas of Central America, Mexico and northwestern South America.",
        "imageTitle": "File:Echeveria pulidonis flowers.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Echeveria_pulidonis_flowers.jpg",
        "imageDescription": "Echeveria pulidonis flowers."
    },
    {
        "name": "קרסולה אובטה",
        "botanical": "Crassula ovata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Crassula_ovata_RTBG.jpg/960px-Crassula_ovata_RTBG.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Crassula ovata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Crassula_ovata",
        "wikipediaExtract": "Crassula ovata, commonly known as jade plant, lucky plant, money plant or money tree, is a succulent plant with small pink or white flowers that is native to the KwaZulu-Natal and Eastern Cape provinces of South Africa, and Mozambique; it is common as a houseplant worldwide. Much of its popularity stems from the low levels of care needed; the jade plant requires little water and can survive in most indoor conditions. It is sometimes referred to as the money tree; however, Pachira aquatica also has this nickname.",
        "imageTitle": "File:Crassula ovata RTBG.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Crassula_ovata_RTBG.jpg",
        "imageDescription": "Crassula ovata, Royal Tasmanian Botanical Gardens, Tasmania, Australia"
    },
    {
        "name": "קלנצואה",
        "botanical": "Kalanchoe blossfeldiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Kalanchoe_blossfeldiana_vivid-1-the_regent_hill-yercaud-salem-India.JPG/960px-Kalanchoe_blossfeldiana_vivid-1-the_regent_hill-yercaud-salem-India.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Kalanchoe blossfeldiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Kalanchoe_blossfeldiana",
        "wikipediaExtract": "Kalanchoe blossfeldiana is a commonly cultivated evergreen house plant of the genus Kalanchoe native to Madagascar. It is known by the English common names flaming Katy, Christmas kalanchoe, florist kalanchoe and Madagascar widow's-thrill.",
        "imageTitle": "File:Kalanchoe blossfeldiana vivid-1-the regent hill-yercaud-salem-India.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Kalanchoe_blossfeldiana_vivid-1-the_regent_hill-yercaud-salem-India.JPG",
        "imageDescription": "Herb,flower on clusters,orange red."
    },
    {
        "name": "צורית מורגן",
        "botanical": "Sedum morganianum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Sedum_morganianum_%282%29.jpg/960px-Sedum_morganianum_%282%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Sedum morganianum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum_morganianum",
        "wikipediaExtract": "Sedum morganianum, the donkey tail or burro's tail, is a species of flowering plant in the family Crassulaceae, native to southern Mexico. It is a succulent perennial producing trailing stems up to 60 cm (24 in) long, with fleshy blue-green leaves and terminal pink to red flowers in summer. S. morganianum has been found wild in two ravines at Tenampa county, in central Veracruz, in eastern Mexico and on vertical cliffs of igneous rock in the Tropical Deciduous Forest zone. Due to its restricted geographic distribution, it should be regarded as a micro-endemic species.",
        "imageTitle": "File:Sedum morganianum (2).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Sedum_morganianum_%282%29.jpg",
        "imageDescription": "Da Lat Flower Park"
    },
    {
        "name": "סביון כדורי",
        "botanical": "Senecio rowleyanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Starr-120613-9660-Senecio_rowleyanus-flowers-Walmart_Nursery_Kahului-Maui_%2824514585014%29.jpg/960px-Starr-120613-9660-Senecio_rowleyanus-flowers-Walmart_Nursery_Kahului-Maui_%2824514585014%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Curio rowleyanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Curio_rowleyanus",
        "wikipediaExtract": "Curio rowleyanus, syn. Senecio rowleyanus, is a flowering plant in the daisy family Asteraceae. It is a creeping, perennial, succulent vine native to the Cape Provinces of South Africa. In its natural environment its stems trail on the ground, rooting where they touch and form dense mats. It often avoids direct sunlight by growing in the shade of other plants and rocks. It is commonly known as string-of-pearls or string-of-beads.",
        "imageTitle": "File:Starr-120613-9660-Senecio rowleyanus-flowers-Walmart Nursery Kahului-Maui (24514585014).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-120613-9660-Senecio_rowleyanus-flowers-Walmart_Nursery_Kahului-Maui_%2824514585014%29.jpg",
        "imageDescription": "     Senecio rowleyanus  (Bead plant, string of beads)     \n  Flowers at Walmart Nursery Kahului, Maui, Hawaii.\nJune 13, 2012\n \n   #120613-9660   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "פורטולקריה",
        "botanical": "Portulacaria afra",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Portulacaria_afra-flowers-1.JPG/960px-Portulacaria_afra-flowers-1.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Portulacaria afra",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulacaria_afra",
        "wikipediaExtract": "Portulacaria afra is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and green leaves, but a variegated cultivar is often seen in cultivation. They are simple to care for and make easy houseplants for a sunny location. In frost-free regions they may be used in outdoor landscaping.",
        "imageTitle": "File:Portulacaria afra-flowers-1.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Portulacaria_afra-flowers-1.JPG",
        "imageDescription": "  Portulacaria afra    (Árbol de la abundancia, Arbusto japonés, Árbol japonés, Hierba de los elefantes,...)  -  Flores  - Ornamental, cultivado,   Albatera  (Alicante, España)."
    },
    {
        "name": "יוקה",
        "botanical": "Yucca elephantipes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Yucca_elephantipes_HRM2.JPG/960px-Yucca_elephantipes_HRM2.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Yucca gigantea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Yucca_gigantea",
        "wikipediaExtract": "Yucca gigantea is a species of flowering plant in the asparagus family, native to Mexico and Central America. Growing up to 8–12 m (26–39 ft) in height, it is an evergreen shrub which is widely cultivated as an ornamental garden or house plant, often referred to simply as yucca cane. The edible flower is the national flower of El Salvador locally called izote, and it is used extensively in Salvadoran cuisine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%95%D7%A7%D7%94",
        "imageTitle": "File:Yucca elephantipes HRM2.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Yucca_elephantipes_HRM2.JPG",
        "imageDescription": " Yucca elephantipes .  Real Jardín Botánico de Madrid "
    },
    {
        "name": "נולינה",
        "botanical": "Beaucarnea recurvata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Starr-090616-0687-Beaucarnea_recurvata-flowers-Paia-Maui_%2824333727644%29.jpg/960px-Starr-090616-0687-Beaucarnea_recurvata-flowers-Paia-Maui_%2824333727644%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Beaucarnea recurvata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Beaucarnea_recurvata",
        "wikipediaExtract": "Beaucarnea recurvata, the elephant's foot or ponytail palm, is a species of flowering plant in the family Asparagaceae. The species is endemic to eastern Mexico; according to IUCN it is now confined to the state of Veracruz, but Plants of the World Online also cites it as occurring in Oaxaca, Puebla, San Luis Potosí, and Tamaulipas. Despite its common name, it is not closely related to the true palms (Arecaceae). It has become popular in Europe and worldwide as an ornamental plant. There are 350-year-old Beaucarneas registered in Mexico.",
        "imageTitle": "File:Starr-090616-0687-Beaucarnea recurvata-flowers-Paia-Maui (24333727644).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-090616-0687-Beaucarnea_recurvata-flowers-Paia-Maui_%2824333727644%29.jpg",
        "imageDescription": "     Beaucarnea recurvata  (Pony tail palm, beaucarnea, bottle ponytail)     \n  Flowers at Paia, Maui, Hawaii.\nJune 16, 2009\n   \n \n   #090616-0687   \n  \n \n   Image Use Policy   \nAlso known as Nolina recurvata.  Also placed in Agavaceae."
    },
    {
        "name": "אופונטיה",
        "botanical": "Opuntia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Cactus_%28Opuntia_phaeacantha%29_flower.JPG/960px-Cactus_%28Opuntia_phaeacantha%29_flower.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Opuntia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Opuntia",
        "wikipediaExtract": "Opuntia, commonly called the prickly pear cactus, is a genus of flowering plants in the cactus family Cactaceae, many known for their flavorful fruit and showy flowers. Cacti are native to the Americas, and are well adapted to arid climates; however, they are still vulnerable to alterations in precipitation and temperature driven by climate change. The plant has been introduced to Australia, southern Europe, the Middle East, and parts of Africa.",
        "imageTitle": "File:Cactus (Opuntia phaeacantha) flower.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Cactus_%28Opuntia_phaeacantha%29_flower.JPG",
        "imageDescription": "Cactus flower and bud of one of Opuntia phaeacantha species in Sri Lanka"
    },
    {
        "name": "אפטניה",
        "botanical": "Aptenia cordifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/%D8%B2%D9%87%D8%B1%D8%A9_%D8%AD%D9%8A_%D8%B9%D9%84%D9%85_%28%D8%A7%D9%84%D8%A7%D8%B3%D9%85_%D8%A7%D9%84%D8%B9%D9%84%D9%85%D9%8A_Aptenia_cordifolia%29.jpg/960px-%D8%B2%D9%87%D8%B1%D8%A9_%D8%AD%D9%8A_%D8%B9%D9%84%D9%85_%28%D8%A7%D9%84%D8%A7%D8%B3%D9%85_%D8%A7%D9%84%D8%B9%D9%84%D9%85%D9%8A_Aptenia_cordifolia%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Mesembryanthemum cordifolium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mesembryanthemum_cordifolium",
        "wikipediaExtract": "Mesembryanthemum cordifolium, formerly known as Aptenia cordifolia, is a species of succulent plant in the iceplant family. It is a creeping plant that forms a carpet of flat-growing perennial herbs in groups on the ground from a base. The genus name means middle-embryo flower in reference to the position of the ovary in the flower. The specific epithet is derived from Latin for heart-shaped leaves.",
        "imageTitle": "File:زهرة حي علم (الاسم العلمي Aptenia cordifolia).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:%D8%B2%D9%87%D8%B1%D8%A9_%D8%AD%D9%8A_%D8%B9%D9%84%D9%85_%28%D8%A7%D9%84%D8%A7%D8%B3%D9%85_%D8%A7%D9%84%D8%B9%D9%84%D9%85%D9%8A_Aptenia_cordifolia%29.jpg",
        "imageDescription": "صورة مقربة لزهرة وأوراق نبات حي علم أو أبتينيا قلبية الأوراق (الاسم العلمي Aptenia cordifolia)، التُقطت في بيئة طبيعية بدوار الدحامنة في جماعة لعجاجرة بإقليم مولاي يعقوب، المغرب. يبرز في الصورة التباين بين لون الأزهار الوردية القانية والأور"
    },
    {
        "name": "גרפטופטלום",
        "botanical": "Graptopetalum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Flower_of_Graptopetalum_pusillum_%28Foto_446592103_di_Rodolfo_Maximiliano_Guti%C3%A9rrez-S%C3%A1nchez%29.jpg/960px-Flower_of_Graptopetalum_pusillum_%28Foto_446592103_di_Rodolfo_Maximiliano_Guti%C3%A9rrez-S%C3%A1nchez%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Graptopetalum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Graptopetalum",
        "wikipediaExtract": "Graptopetalum (leatherpetal) is a genus of flowering plants in the family Crassulaceae. They are perennial succulent plants and native to Mexico and Arizona. They grow usually in a rosette. There are around 19 species in this genus.",
        "imageTitle": "File:Flower of Graptopetalum pusillum (Foto 446592103 di Rodolfo Maximiliano Gutiérrez-Sánchez).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flower_of_Graptopetalum_pusillum_%28Foto_446592103_di_Rodolfo_Maximiliano_Guti%C3%A9rrez-S%C3%A1nchez%29.jpg",
        "imageDescription": "Flower of Graptopetalum pusillum. The wild plant was found in the state of Durango, Mexico."
    },
    {
        "name": "סדום זוחל",
        "botanical": "Sedum spurium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Sedum_spurium_bieb._2007-06-02_%28flower%29.jpg/960px-Sedum_spurium_bieb._2007-06-02_%28flower%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Phedimus spurius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phedimus_spurius",
        "wikipediaExtract": "Phedimus spurius, formerly Sedum spurium, the Caucasian stonecrop or two-row stonecrop, is a species of flowering plant in the family Crassulaceae. It is a low-growing, spreading succulent with stems that creep along the ground and root as they grow.",
        "imageTitle": "File:Sedum spurium bieb. 2007-06-02 (flower).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Sedum_spurium_bieb._2007-06-02_%28flower%29.jpg",
        "imageDescription": "  Phedimus spurius  (flower)\n \n(photo taken in the Cambridge University Botanic Garden)"
    },
    {
        "name": "אלוי אריסטטה",
        "botanical": "Aloe aristata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/H20140608-2811%E2%80%94Aloe_aristata_%2814191238998%29.jpg/960px-H20140608-2811%E2%80%94Aloe_aristata_%2814191238998%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Aristaloe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aristaloe",
        "wikipediaExtract": "Aristaloe is a genus of evergreen flowering perennial plants in the family Asphodelaceae from Southern Africa. Its sole species is Aristaloe aristata, known as guinea-fowl aloe or lace aloe.",
        "imageTitle": "File:H20140608-2811—Aloe aristata (14191238998).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:H20140608-2811%E2%80%94Aloe_aristata_%2814191238998%29.jpg",
        "imageDescription": "Aloe aristata—lace aloe.  In bloom."
    },
    {
        "name": "אגבה אמריקנה",
        "botanical": "Agave americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Agave_americana_Pune_01_Flower_stalk.jpg/960px-Agave_americana_Pune_01_Flower_stalk.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Agave americana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_americana",
        "wikipediaExtract": "Agave americana, commonly known as the century plant, maguey, or American aloe, is a flowering plant species belonging to the family Asparagaceae. It is native to Mexico and the United States, specifically Texas. This plant is widely cultivated worldwide for its ornamental value and has become naturalized in various regions, including Southern California, the West Indies, South America, the Mediterranean Basin, Africa, the Canary Islands, India, China, Thailand, New Zealand and Australia.",
        "imageTitle": "File:Agave americana Pune 01 Flower stalk.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Agave_americana_Pune_01_Flower_stalk.jpg",
        "imageDescription": " Agave americana  flower stalk in Pune, India."
    },
    {
        "name": "נציץ מדברי",
        "botanical": "Delosperma cooperi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Delosperma_cooperi_%28D%C3%A9losperma_rose%29_-_97.jpg/960px-Delosperma_cooperi_%28D%C3%A9losperma_rose%29_-_97.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Delosperma cooperi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Delosperma_cooperi",
        "wikipediaExtract": "Delosperma cooperi, the trailing iceplant, hardy iceplant or pink carpet, is a dwarf perennial plant native to South Africa. It forms a dense lawn with abundant, long-lasting flowers. It reaches sizes of approximately 10–15 cm (4–6 in) tall, with fleshy leaves that are linear and simple and can grow up to 1.5 inches long and a trailing stem that hangs down. These fleshy roots help provide the ability for the plants to recover and grow rapidly if a disturbance has occurred.",
        "imageTitle": "File:Delosperma cooperi (Délosperma rose) - 97.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Delosperma_cooperi_%28D%C3%A9losperma_rose%29_-_97.jpg",
        "imageDescription": "  Delosperma cooperi   (Pink Carpet) in  jardin botanique de Lyon ,  France ."
    },
    {
        "name": "דקל אריקה",
        "botanical": "Dypsis lutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Dypsis_lutescens4.jpg/960px-Dypsis_lutescens4.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chrysalidocarpus lutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chrysalidocarpus_lutescens",
        "wikipediaExtract": "Chrysalidocarpus lutescens, also known by its synonym Dypsis lutescens and as golden cane palm, areca palm, yellow palm, butterfly palm, or bamboo palm, is a species of flowering plant in the family Arecaceae, native to Madagascar and naturalized in the Andaman Islands, Thailand, Vietnam, Réunion, El Salvador, Cuba, Puerto Rico, the Canary Islands, southern Florida, Haiti, the Dominican Republic, Jamaica, the Leeward Islands, and the Leeward Antilles. Its native names are rehazo and lafahazo.",
        "imageTitle": "File:Dypsis lutescens4.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Dypsis_lutescens4.jpg",
        "imageDescription": "アレカヤシ、ヤマドリヤシ、コガネタケヤシ"
    },
    {
        "name": "דקל טבעות",
        "botanical": "Archontophoenix cunninghamiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/62/Image_of_Archontophoenix_cunninghamiana%27s_flower%2C_commonly_known_as_Bangalow_Palm.webp",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Archontophoenix cunninghamiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Archontophoenix_cunninghamiana",
        "wikipediaExtract": "Archontophoenix cunninghamiana – commonly known as Bangalow palm, king palm, Illawarra palm or piccabeen palm – is a tree in the palm family Arecaceae, which is endemic to the east coast of New South Wales and Queensland, Australia.",
        "imageTitle": "File:Image of Archontophoenix cunninghamiana's flower, commonly known as Bangalow Palm.webp",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Image_of_Archontophoenix_cunninghamiana%27s_flower%2C_commonly_known_as_Bangalow_Palm.webp",
        "imageDescription": "Palm tree with intricate design showing the wonders of nature."
    },
    {
        "name": "וושינגטוניה חסונה",
        "botanical": "Washingtonia robusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Starr-010914-0057-Washingtonia_robusta-flower_pannicle-Lahaina-Maui_%2824542153435%29.jpg/960px-Starr-010914-0057-Washingtonia_robusta-flower_pannicle-Lahaina-Maui_%2824542153435%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Washingtonia filifera var. robusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Washingtonia_filifera_var._robusta",
        "wikipediaExtract": "Washingtonia filifera var. robusta, commonly known as the Mexican fan palm, Mexican washingtonia, or skyduster, is a flowering plant in the family Arecaceae native to the Sonoran desert along the Baja California peninsula. Despite its limited native distribution, W. filifera var. robusta is one of the most widely cultivated subtropical palms in the world. It is naturalized across the southern United States, Mediterranean, and Middle East.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%95%D7%A9%D7%99%D7%A0%D7%92%D7%98%D7%95%D7%A0%D7%99%D7%94_%D7%97%D7%A1%D7%95%D7%A0%D7%94",
        "imageTitle": "File:Starr-010914-0057-Washingtonia robusta-flower pannicle-Lahaina-Maui (24542153435).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-010914-0057-Washingtonia_robusta-flower_pannicle-Lahaina-Maui_%2824542153435%29.jpg",
        "imageDescription": "  Washingtonia robusta (Mexican fan palm) \nFlower pannicle at Lahaina, Maui, Hawaii.\nSeptember 14, 2001\n >#010914-0057  \n \n   Image Use Policy   "
    },
    {
        "name": "דקל רובליני",
        "botanical": "Phoenix roebelenii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Close-up_of_male_Phoenix_roebelenii_flowers_showing_stamens.jpg/960px-Close-up_of_male_Phoenix_roebelenii_flowers_showing_stamens.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Phoenix roebelenii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_roebelenii",
        "wikipediaExtract": "Phoenix roebelenii, with common names of dwarf date palm, pygmy date palm, miniature date palm or robellini palm, is a species of date palm native to southeastern Asia, from southwestern China, northern Laos and northern Vietnam.",
        "imageTitle": "File:Close-up of male Phoenix roebelenii flowers showing stamens.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Close-up_of_male_Phoenix_roebelenii_flowers_showing_stamens.jpg",
        "imageDescription": "Close-up of male Phoenix roebelenii flowers showing stamens"
    },
    {
        "name": "דקל קנרי",
        "botanical": "Phoenix canariensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Phoenix_canariensis_plant.jpg/500px-Phoenix_canariensis_plant.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Phoenix canariensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_canariensis",
        "wikipediaExtract": "Phoenix canariensis, the Canary Island date palm, is a species of flowering plant in the palm family Arecaceae, native to the Canary Islands off the coast of Northwestern Africa. It is a relative of Phoenix dactylifera, the true date palm. It is the natural symbol of the Canary Islands, together with the canary Serinus canaria.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%9E%D7%A8_%D7%A7%D7%A0%D7%A8%D7%99",
        "imageTitle": "File:Phoenix canariensis plant.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Phoenix_canariensis_plant.jpg",
        "imageDescription": "Una palmera canaria (Phoenix canariensis) en un parque en Villa Alemana, Chile."
    },
    {
        "name": "דקל חמדוריאה",
        "botanical": "Chamaedorea elegans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/2/2b/Chamaedorea_elegans_%2820144031253%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chamaedorea elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chamaedorea_elegans",
        "wikipediaExtract": "Chamaedorea elegans, the neanthe bella palm or parlour palm, is a species of small palm tree native to the rainforests in Southern Mexico and Guatemala. The parlor palm is one of the most extensively sold houseplant palms in the world. It is one of several species with leaves that are harvested as xate.",
        "imageTitle": "File:Chamaedorea elegans (20144031253).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Chamaedorea_elegans_%2820144031253%29.jpg",
        "imageDescription": "A Parlor Palm native to Mexico and Guatemala.  Known as Neanthe Bella Palm in English and as Palmera del Salon locally.  Lotusland, Montecito, California."
    },
    {
        "name": "ציפור גן עדן",
        "botanical": "Strelitzia reginae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/12/Strelitzia_reginae_in_the_Botanic_Garden%2C_Oxford_-_geograph.org.uk_-_3937334.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Strelitzia reginae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_reginae",
        "wikipediaExtract": "Strelitzia reginae, commonly known as the crane flower, bird of paradise, or isigude in Nguni, is a species of flowering plant native to the Cape Provinces and KwaZulu-Natal in South Africa. An evergreen perennial, it is widely cultivated for its dramatic flowers. In temperate areas it is a popular houseplant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%93%D7%A0%D7%99%D7%99%D7%9D",
        "imageTitle": "File:Strelitzia reginae in the Botanic Garden, Oxford - geograph.org.uk - 3937334.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Strelitzia_reginae_in_the_Botanic_Garden%2C_Oxford_-_geograph.org.uk_-_3937334.jpg",
        "imageDescription": "Strelitzia reginae in the Botanic Garden, Oxford      "
    },
    {
        "name": "ציפור גן עדן לבנה",
        "botanical": "Strelitzia nicolai",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Starr-110307-2229-Strelitzia_nicolai-flower-Kula_Botanical_Garden-Maui_%2825051490126%29.jpg/960px-Starr-110307-2229-Strelitzia_nicolai-flower-Kula_Botanical_Garden-Maui_%2825051490126%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Strelitzia nicolai",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_nicolai",
        "wikipediaExtract": "Strelitzia nicolai, commonly known as the wild banana or giant white bird of paradise, is a species of banana-like plants with erect woody stems reaching a height of 7–8 m (23–26 ft), and the clumps formed can spread as far as 3.5 m (11 ft).",
        "imageTitle": "File:Starr-110307-2229-Strelitzia nicolai-flower-Kula Botanical Garden-Maui (25051490126).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-110307-2229-Strelitzia_nicolai-flower-Kula_Botanical_Garden-Maui_%2825051490126%29.jpg",
        "imageDescription": "     Strelitzia nicolai  (White bird of paradise)     \n  Flower at Kula Botanical Garden, Maui, Hawaii.\nMarch 07, 2011\n \n   #110307-2229   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "בננה ננסית",
        "botanical": "Musa acuminata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Starr-130509-4428-Musa_acuminata-Sucrier_female_flower-Hawea_Pl_Olinda-Maui_%2825092515182%29.jpg/960px-Starr-130509-4428-Musa_acuminata-Sucrier_female_flower-Hawea_Pl_Olinda-Maui_%2825092515182%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Musa acuminata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Musa_acuminata",
        "wikipediaExtract": "Musa acuminata is a species of banana native to Southern Asia, its range comprising the Indian subcontinent and Southeast Asia. Many of the modern edible dessert bananas are derived from this species, although some are hybrids with Musa balbisiana. First cultivated by humans around 8000 BCE, it is one of the early examples of domesticated plants.",
        "imageTitle": "File:Starr-130509-4428-Musa acuminata-Sucrier female flower-Hawea Pl Olinda-Maui (25092515182).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-130509-4428-Musa_acuminata-Sucrier_female_flower-Hawea_Pl_Olinda-Maui_%2825092515182%29.jpg",
        "imageDescription": "     Musa acuminata  (Banana)     \n  Sucrier female flower at Hawea Pl Olinda, Maui, Hawaii.\nMay 09, 2013\n \n   #130509-4428   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "הליקוניה",
        "botanical": "Heliconia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Heliconia_rostrata_flower_04.jpg/960px-Heliconia_rostrata_flower_04.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Heliconia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Heliconia",
        "wikipediaExtract": "Heliconia is a genus of flowering plants in the monotypic family Heliconiaceae. Most of the 194 known species are native to the tropical Americas, but a few are indigenous to certain islands of the western Pacific and Maluku in Indonesia. Many species of Heliconia are found in the tropical forests of these regions. Most species are listed as either vulnerable or data deficient by the IUCN Red List of threatened species. Several species are widely cultivated as ornamentals, and a few are naturalized in Florida, Gambia, and Thailand.",
        "imageTitle": "File:Heliconia rostrata flower 04.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Heliconia_rostrata_flower_04.jpg",
        "imageDescription": "Heliconia rostrata"
    },
    {
        "name": "פילודנדרון קסנדו",
        "botanical": "Philodendron xanadu",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Philodendron_xanadu_AK1.jpg/960px-Philodendron_xanadu_AK1.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Philodendron xanadu",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_xanadu",
        "wikipediaExtract": "Philodendron xanadu, synonym Thaumatophyllum xanadu, is a perennial plant belonging to the arum family Araceae. It is native to south Brazil and Paraguay, but is widely cultivated as a landscape plant in tropical, subtropical, and warm temperate climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F_%D7%A7%D7%A1%D7%A0%D7%93%D7%95",
        "imageTitle": "File:Philodendron xanadu AK1.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Philodendron_xanadu_AK1.jpg",
        "imageDescription": " Philodendron xanadu , detail of leaves, growing in a clump outside a business premises in Walls Rd, Penrose, Auckland, New Zealand.  The clump is about 1.5 metres tall and individual leaves are about 40cm long or more. The clump is long es"
    },
    {
        "name": "אלוקסיה",
        "botanical": "Alocasia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Plant_Alocasia_zebrina_spadix_P1110645_01.jpg/960px-Plant_Alocasia_zebrina_spadix_P1110645_01.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Alocasia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alocasia",
        "wikipediaExtract": "Alocasia is a genus of rhizomatous or tuberous, broad-leaved, perennial, flowering plants from the family Araceae. There are about 90 accepted species native to tropical and subtropical Asia and eastern Australia. Around the world, many growers widely cultivate a range of hybrids and cultivars as ornamentals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%A7%D7%A1%D7%99%D7%94",
        "imageTitle": "File:Plant Alocasia zebrina spadix P1110645 01.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Plant_Alocasia_zebrina_spadix_P1110645_01.jpg",
        "imageDescription": "Spadix of Alocasia zebrina"
    },
    {
        "name": "קולוקסיה",
        "botanical": "Colocasia esculenta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Colocasia_esculenta_flower_2.jpg/960px-Colocasia_esculenta_flower_2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Taro",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Taro",
        "wikipediaExtract": "Taro is a root vegetable. It is the most widely cultivated species of several plants in the family Araceae that are used as vegetables for their corms, leaves, stems and petioles. Taro corms are a food staple in African, Caribbean, Oceanian, East Asian, Southeast Asian and South Asian cultures.",
        "imageTitle": "File:Colocasia esculenta flower 2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Colocasia_esculenta_flower_2.jpg",
        "imageDescription": "কচু গাছের ফুল"
    },
    {
        "name": "אספלניום",
        "botanical": "Asplenium nidus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Asplenium_nidus_%284%29.JPG/960px-Asplenium_nidus_%284%29.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Asplenium nidus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asplenium_nidus",
        "wikipediaExtract": "Asplenium nidus is an epiphytic species of fern in the family Aspleniaceae, native to tropical southeastern Asia, eastern Australia, Hawaii, Polynesia, Christmas Island, India, and eastern Africa. It is known by the common names bird's-nest fern or simply nest fern.",
        "imageTitle": "File:Asplenium nidus (4).JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Asplenium_nidus_%284%29.JPG",
        "imageDescription": "Asplenium nidus forms large simple fronds visually similar to banana leaves, with the fronds growing to 50–120 centimetres long and 10–60 centimetres  broad.\n \n  \n      \n \n This media file is produced by Wikipedian in Residence in  Botanica"
    },
    {
        "name": "שרך בוסטון",
        "botanical": "Nephrolepis exaltata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/200313_052_SD_Botanic_Gdn_-_Dickinson_Family_Conservatory%2C_Nephrolepis_exaltata_cv_Sword_Fern%2C_Guzmania_lingulata_cvs%2C_Anthurium_andraeanum_cvs%2C_Spathiphyllum_sp_Peace_Lily%2C_Ficus_lyrata_Fiddle-leaf_Fig.jpg/960px-thumbnail.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Nephrolepis exaltata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nephrolepis_exaltata",
        "wikipediaExtract": "Nephrolepis exaltata, known as the sword fern or  Boston fern, is a species of fern in the family Nephrolepidaceae. It is native to the Americas. This evergreen plant can reach as high as 40–90 centimetres (16–35 in), and in extreme cases up to 1.5 metres. It is also known as the Boston sword fern, wild Boston fern, Boston blue bell fern, tuber ladder fern, or fishbone fern.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A8%D7%9A_%D7%91%D7%95%D7%A1%D7%98%D7%95%D7%9F",
        "imageTitle": "File:200313 052 SD Botanic Gdn - Dickinson Family Conservatory, Nephrolepis exaltata cv Sword Fern, Guzmania lingulata cvs, Anthurium andraeanum cvs, Spathiphyllum sp Peace Lily, Ficus lyrata Fiddle-leaf Fig.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:200313_052_SD_Botanic_Gdn_-_Dickinson_Family_Conservatory%2C_Nephrolepis_exaltata_cv_Sword_Fern%2C_Guzmania_lingulata_cvs%2C_Anthurium_andraeanum_cvs%2C_Spathiphyllum_sp_Peace_Lily%2C_Ficus_lyrata_Fiddle-leaf_Fig.jpg",
        "imageDescription": "This brand new multi-purpose space was designed to facilitate meetings and events, as well as host a tropical plant collection.\nwww.sdbgarden.org/conservatory.htm"
    },
    {
        "name": "קנה סוף ננסי",
        "botanical": "Cyperus alternifolius",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Cyperus_alternifolius_flower_in_Ishigaki%2C_Okinawa.jpg/960px-Cyperus_alternifolius_flower_in_Ishigaki%2C_Okinawa.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cyperus alternifolius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_alternifolius",
        "wikipediaExtract": "Cyperus alternifolius, the umbrella papyrus, umbrella sedge or umbrella palm, is a grass-like plant in the large genus Cyperus of the sedge family Cyperaceae. The plant is native to West Africa, Madagascar and the Arabian Peninsula, but widely distributed throughout the world. It has gained the Royal Horticultural Society's Award of Garden Merit. The subspecies Cyperus alternifolius ssp. flabelliformis is also known as Cyperus involucratus Rottb..",
        "imageTitle": "File:Cyperus alternifolius flower in Ishigaki, Okinawa.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Cyperus_alternifolius_flower_in_Ishigaki%2C_Okinawa.jpg",
        "imageDescription": "シュロガヤツリの花（2025年1月 沖縄県石垣市 バンナ公園）"
    },
    {
        "name": "פפירוס",
        "botanical": "Cyperus papyrus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Papyrus_Flower_on_white_background.jpg/960px-Papyrus_Flower_on_white_background.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cyperus papyrus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_papyrus",
        "wikipediaExtract": "Cyperus papyrus, better known by the common names papyrus sedge, papyrus, paper reed, Indian matting plant, or Nile grass, is a species of aquatic flowering plant belonging to the sedge family Cyperaceae. It is a tender herbaceous perennial, forming tall stands of reed-like swamp vegetation in shallow water.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%99%D7%A8%D7%95%D7%A1",
        "imageTitle": "File:Papyrus Flower on white background.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Papyrus_Flower_on_white_background.jpg",
        "imageDescription": "Papyrus Flower on white background"
    },
    {
        "name": "מורינגה מכונפת",
        "botanical": "Moringa oleifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Flower_of_Moringa_oleifera.jpg/960px-Flower_of_Moringa_oleifera.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Moringa oleifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Moringa_oleifera",
        "wikipediaExtract": "Moringa oleifera is a short-lived, fast-growing, drought-resistant tree of the family Moringaceae, native to northern India and used extensively in South and Southeast Asia. Common names include moringa, drumstick tree, horseradish tree, ben tree, or malunggay.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%99%D7%A0%D7%92%D7%94_%D7%9E%D7%9B%D7%95%D7%A0%D7%A4%D7%AA",
        "imageTitle": "File:Flower of Moringa oleifera.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flower_of_Moringa_oleifera.jpg",
        "imageDescription": "Moringa oleifera flowers."
    },
    {
        "name": "מונסטרה",
        "botanical": "Monstera deliciosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Monstera_deliciosa_flower_and_buds.jpg/960px-Monstera_deliciosa_flower_and_buds.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Monstera deliciosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Monstera_deliciosa",
        "wikipediaExtract": "Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron, is a species of flowering plant. The common name \"Swiss cheese plant\" is also used for the related species from the same genus, Monstera adansonii. The common name \"split-leaf philodendron\" is also used for the species Philodendron bipinnatifidum.",
        "imageTitle": "File:Monstera deliciosa flower and buds.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Monstera_deliciosa_flower_and_buds.jpg",
        "imageDescription": "Flower and buds of  Monstera deliciosa , in the grounds of Old Government House, Auckland."
    },
    {
        "name": "פוטוס",
        "botanical": "Epipremnum aureum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Epipremnum_aureum_%28Marble_Queen%29_houseplant.png/960px-Epipremnum_aureum_%28Marble_Queen%29_houseplant.png",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Epipremnum aureum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Epipremnum_aureum",
        "wikipediaExtract": "Epipremnum aureum is a species in the arum family Araceae, native to Mo'orea in the Society Islands of French Polynesia. The species is a popular houseplant in temperate regions, but has also become naturalised in tropical and sub-tropical forests worldwide, including northern South Africa, Australia, Southeast Asia, Indian subcontinent, the Pacific Islands and the West Indies, where it has caused severe ecological damage in some cases.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%95%D7%98%D7%95%D7%A1",
        "imageTitle": "File:Epipremnum aureum (Marble Queen) houseplant.png",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Epipremnum_aureum_%28Marble_Queen%29_houseplant.png",
        "imageDescription": "A picture of an Epipremnum aureum (Marble Queen) plant in a terracotta flower pot in Latvia, Mārupe"
    },
    {
        "name": "זמיה קוקוס",
        "botanical": "Zamioculcas zamiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Zamiokulkas_Zamioculcas_zamiifolia_80.jpg/960px-Zamiokulkas_Zamioculcas_zamiifolia_80.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Zamioculcas",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zamioculcas",
        "wikipediaExtract": "Zamioculcas is a genus of flowering plants in the family Araceae, containing the single species Zamioculcas zamiifolia. It is a tropical herbaceous perennial plant, and is native to eastern Africa, including Kenya, KwaZulu-Natal, Malawi, Mozambique, Tanzania, and Zimbabwe. Its common names include Zanzibar gem, Zuzu plant, emerald palm, ZZ plant, aroid palm and eternity plant. It is commonly grown as a houseplant, mainly because it has attractive glossy foliage and is easy to care for. Zamioculcas zamiifolia is winter-hardy in USDA Zones 9 and 10.",
        "imageTitle": "File:Zamiokulkas Zamioculcas zamiifolia 80.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Zamiokulkas_Zamioculcas_zamiifolia_80.jpg",
        "imageDescription": "Zamioculcas zamiifolia"
    },
    {
        "name": "פילודנדרון לבבי",
        "botanical": "Philodendron hederaceum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Philodendron_hederaceum%2C_Singapore_Botanic_Gardens_%28141542%29.jpg/960px-Philodendron_hederaceum%2C_Singapore_Botanic_Gardens_%28141542%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Philodendron hederaceum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_hederaceum",
        "wikipediaExtract": "Philodendron hederaceum, the heartleaf philodendron is a species of flowering plant in the family Araceae, native to Central America and the Caribbean which is common in the houseplant trade. Philodendron hederaceum var. hederaceum, the \"velvet philodendron,\" is a subspecies which is in the houseplant trade under its previous name of Philodendron micans. While toxic under certain conditions, it is also under current review for numerous health benefits.",
        "imageTitle": "File:Philodendron hederaceum, Singapore Botanic Gardens (141542).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Philodendron_hederaceum%2C_Singapore_Botanic_Gardens_%28141542%29.jpg",
        "imageDescription": "Philodendron hederaceum, Singapore Botanic Gardens, Tanglin, Central Region, Singapore."
    },
    {
        "name": "פיקוס כינורי",
        "botanical": "Ficus lyrata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Nervature_fogliari_Ficus_lyrata.jpg/960px-Nervature_fogliari_Ficus_lyrata.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Ficus lyrata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_lyrata",
        "wikipediaExtract": "Ficus lyrata, commonly known as the fiddle-leaf fig, banjo fig, fiddle-leaved fig tree, lyre leaf fig tree, or lyre-leaved fig tree, is a species of plant in the mulberry and fig family Moraceae. It is native to western Africa, but is cultivated around the world as an ornamental plant. It has received the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%A7%D7%95%D7%A1_%D7%9B%D7%99%D7%A0%D7%95%D7%A8%D7%99",
        "imageTitle": "File:Nervature fogliari Ficus lyrata.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Nervature_fogliari_Ficus_lyrata.jpg",
        "imageDescription": "Macrophotography of the main vein and secondary veins of a Ficus lyrata leaf"
    },
    {
        "name": "פיקוס גומי",
        "botanical": "Ficus elastica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Backlit_ficus_elastica_leaf_texture_2014_02.jpg/960px-Backlit_ficus_elastica_leaf_texture_2014_02.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Ficus elastica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_elastica",
        "wikipediaExtract": "Ficus elastica, the rubber fig, rubber bush, rubber tree, rubber plant, or Indian rubber bush, Indian rubber tree, or rambung is a species of flowering plant in the family Moraceae, native to eastern parts of South and Southeast Asia. It has become naturalized in Sri Lanka, the West Indies, and the US state of Florida. Its common names reflect its historical use as a source of rubber within its native range, but it is not used in the modern commercial-scale production of natural rubber.",
        "imageTitle": "File:Backlit ficus elastica leaf texture 2014 02.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Backlit_ficus_elastica_leaf_texture_2014_02.jpg",
        "imageDescription": "Texture of a young backlit leaf of a  Ficus elastica  plant."
    },
    {
        "name": "דרצנה מרגינטה",
        "botanical": "Dracaena marginata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Close-ups_of_Dracaena_marginata_flower.jpg/960px-Close-ups_of_Dracaena_marginata_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dracaena reflexa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_reflexa",
        "wikipediaExtract": "Dracaena reflexa is a tree native to Mozambique, Madagascar, Mauritius, and other nearby islands of the Indian Ocean. It is widely grown as an ornamental plant and houseplant, valued for its richly coloured, evergreen leaves, and thick, irregular stems.",
        "imageTitle": "File:Close-ups of Dracaena marginata flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Close-ups_of_Dracaena_marginata_flower.jpg",
        "imageDescription": "macro 003"
    },
    {
        "name": "דרצנה מסנגיאנה",
        "botanical": "Dracaena fragrans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Flower_of_Dracaena_fragrans.JPG/960px-Flower_of_Dracaena_fragrans.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dracaena fragrans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_fragrans",
        "wikipediaExtract": "Dracaena fragrans, is a flowering plant species that is native to tropical Africa, from Sudan south to Mozambique, west to Côte d'Ivoire and southwest to Angola, growing in upland regions at 600–2,250 m (1,970–7,380 ft) altitude.",
        "imageTitle": "File:Flower of Dracaena fragrans.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Flower_of_Dracaena_fragrans.JPG",
        "imageDescription": "Flower of Dracaena fragrans"
    },
    {
        "name": "ספטיפיליום",
        "botanical": "Spathiphyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Peace_lily_-_Spathiphyllum_Wallisii_%28Philippines%29.jpg/960px-Peace_lily_-_Spathiphyllum_Wallisii_%28Philippines%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Spathiphyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Spathiphyllum",
        "wikipediaExtract": "Spathiphyllum is a genus of about 60 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%A4%D7%98%D7%99%D7%A4%D7%99%D7%9C%D7%99%D7%95%D7%9D",
        "imageTitle": "File:Peace lily - Spathiphyllum Wallisii (Philippines).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Peace_lily_-_Spathiphyllum_Wallisii_%28Philippines%29.jpg",
        "imageDescription": "Peace lily - Spathiphyllum Wallisii (Philippines)"
    },
    {
        "name": "אנתוריום",
        "botanical": "Anthurium andraeanum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Starr-120522-6569-Anthurium_andraeanum-purple_flower-Iao_Tropical_Gardens_of_Maui-Maui_%2824513265194%29.jpg/960px-Starr-120522-6569-Anthurium_andraeanum-purple_flower-Iao_Tropical_Gardens_of_Maui-Maui_%2824513265194%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Anthurium andraeanum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Anthurium_andraeanum",
        "wikipediaExtract": "Anthurium andraeanum, also known as Édouard François André's Tailflower, is a flowering plant species in the family Araceae that is native to Colombia and Ecuador. It is a winner of the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A0%D7%AA%D7%95%D7%A8%D7%99%D7%95%D7%9F",
        "imageTitle": "File:Starr-120522-6569-Anthurium andraeanum-purple flower-Iao Tropical Gardens of Maui-Maui (24513265194).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Starr-120522-6569-Anthurium_andraeanum-purple_flower-Iao_Tropical_Gardens_of_Maui-Maui_%2824513265194%29.jpg",
        "imageDescription": "     Anthurium andraeanum  (Flamingo lily)     \n  Purple flower at Iao Tropical Gardens of Maui, Maui, Hawaii.\nMay 22, 2012\n   \n \n   #120522-6569   \n  \n \n   Image Use Policy   "
    },
    {
        "name": "קלטאה",
        "botanical": "Calathea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Calathea_warscewiczii_-_Wilhelma.jpg/960px-Calathea_warscewiczii_-_Wilhelma.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Calathea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calathea",
        "wikipediaExtract": "Calathea is a genus of flowering plants belonging to the family Marantaceae. They are commonly called calatheas or prayer plants. About 200 species formerly assigned to Calathea are now in the genus Goeppertia. Calathea currently contains around 60 species. Native to the tropical Americas, many of the species are popular as pot plants due to their decorative leaves and, in some species, colorful inflorescences. The young leaves and bracts can retain pools of water called phytotelmata, that provide habitat for many invertebrates.",
        "imageTitle": "File:Calathea warscewiczii - Wilhelma.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Calathea_warscewiczii_-_Wilhelma.jpg",
        "imageDescription": "  Calathea warscewiczii    (L.Mathieu) Planch. & Linden , flower;  Wilhelma ,  Stuttgart ,  Germany ."
    },
    {
        "name": "מרנטה",
        "botanical": "Maranta leuconeura",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Maranta_leuconeura_1zz.jpg/960px-Maranta_leuconeura_1zz.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Maranta leuconeura",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Maranta_leuconeura",
        "wikipediaExtract": "Maranta leuconeura, widely known as the prayer plant due to its daily sunlight-dependent movements, is a species of flowering plant in the family Marantaceae native to the Brazilian tropical forests. It is a variable, rhizomatous perennial, growing to 30 cm (12 in) tall and broad, with crowded clumps of evergreen, strikingly-marked oval leaves, each up to 12 cm (5 in) long. The plant spreads itself horizontally, carpeting an entire small area of forest floor, sending roots into the substrate at each leaf node.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%A0%D7%98%D7%94",
        "imageTitle": "File:Maranta leuconeura 1zz.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Maranta_leuconeura_1zz.jpg",
        "imageDescription": "Location taken: Behnke Nurseries, Beltsville, MD USA. Names:  Maranta leuconeura  E.Morren, Daun Lumut (Indonesia), Fiskeben, Herringbone Maranta, Maranta Belozhil´chataia, Maranta Reukoneura, Maranta Tricolor, Moses Stentavlor, Prayer Plan"
    },
    {
        "name": "פפרומיה",
        "botanical": "Peperomia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Peperomia_Caperata_Cultivar_Flowers_White_Aug25_A7CR_06817-43_zsp.jpg/960px-Peperomia_Caperata_Cultivar_Flowers_White_Aug25_A7CR_06817-43_zsp.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Peperomia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peperomia",
        "wikipediaExtract": "Peperomia is one of the two large genera of the family Piperaceae. It is estimated that there are over 1,000 species, occurring in all tropical and subtropical regions of the world. They are concentrated in South and Central America, but may also be found in southern North America, the Caribbean islands, Africa, Oceania, and southern and eastern parts of Asia. The exact number of species is difficult to determine, as some plants have been recorded several times with different names, and new species continue to be discovered. Peperomias have adapted to many different environments and their appearances vary greatly. Some are epiphytes or lithophytes, and many are xerophytes or possess underground tubers (geophytes). Most species are compact perennial shrubs or vines.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%A8%D7%95%D7%9E%D7%99%D7%94",
        "imageTitle": "File:Peperomia Caperata Cultivar Flowers White Aug25 A7CR 06817-43 zsp.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Peperomia_Caperata_Cultivar_Flowers_White_Aug25_A7CR_06817-43_zsp.jpg",
        "imageDescription": " Peperomia caperata  'Rosso' (cultivar), white background.  The flowers on the spike are about 1 mm (0.039 in) across, the red base of the spike is 3 cm (1.2 in) and the flowered upper part is  6 cm (2.4 in). Focus stack of 27 images. House"
    },
    {
        "name": "סינגוניום",
        "botanical": "Syngonium podophyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Syngonium_podophyllum01.JPG/960px-Syngonium_podophyllum01.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Syngonium podophyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syngonium_podophyllum",
        "wikipediaExtract": "Syngonium podophyllum is a species of aroid that is a popular houseplant. Common names include: arrowhead plant, arrowhead vine, arrowhead philodendron, goosefoot, nephthytis, African evergreen, and American evergreen. The species is native to a wide region of Latin America from Mexico through Bolivia, and naturalized in the West Indies, Florida, Texas, Hawaii, and other places.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%A0%D7%92%D7%95%D7%A0%D7%99%D7%95%D7%9D",
        "imageTitle": "File:Syngonium podophyllum01.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Syngonium_podophyllum01.JPG",
        "imageDescription": " Syngonium podophyllum "
    },
    {
        "name": "סקינדפסוס",
        "botanical": "Scindapsus pictus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Silver_Vine_%28Scindapsus_pictus%29_3.jpg/960px-Silver_Vine_%28Scindapsus_pictus%29_3.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Scindapsus pictus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scindapsus_pictus",
        "wikipediaExtract": "Scindapsus pictus, commonly called satin pothos, silver pothos, or silver vine, is a species of flowering plant in the aroid or arum family, Araceae, native to Bangladesh, Borneo, India, Java, Peninsular Malaysia, the Philippines, Sulawesi, Sumatra, Taiwan and Thailand. The Latin specific epithet pictus means \"painted\", referring to the variegation on the leaves.",
        "imageTitle": "File:Silver Vine (Scindapsus pictus) 3.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Silver_Vine_%28Scindapsus_pictus%29_3.jpg",
        "imageDescription": "Scindapsus pictus. Common name: Silver Vine. Same family as the Epipremnum. Can be easily confused with the Epipremnum. See:  http://www.flowers.org.uk/plants/plants-by-name/q-t/scindapsus "
    },
    {
        "name": "דיפנבכיה",
        "botanical": "Dieffenbachia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Dieffenbachia_%28flower%29_05.jpg/960px-Dieffenbachia_%28flower%29_05.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Dieffenbachia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dieffenbachia",
        "wikipediaExtract": "Dieffenbachia, commonly known as dumb cane or leopard lily, is a genus of tropical flowering plants in the family Araceae. It is native to the New World Tropics from Mexico and the West Indies south to Argentina. Some species are widely cultivated as ornamental plants, especially as houseplants, and have become naturalized on a few tropical islands.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%99%D7%A4%D7%A0%D7%91%D7%9B%D7%99%D7%94",
        "imageTitle": "File:Dieffenbachia (flower) 05.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Dieffenbachia_%28flower%29_05.jpg",
        "imageDescription": "Dieffenbachia flower"
    },
    {
        "name": "אגלאונמה",
        "botanical": "Aglaonema",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Aglaonema_commutatum_%27Silver_Queen%27_in_Hyogo_Prefectural_Flower_Center.jpg/960px-Aglaonema_commutatum_%27Silver_Queen%27_in_Hyogo_Prefectural_Flower_Center.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Aglaonema",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aglaonema",
        "wikipediaExtract": "Aglaonema is a genus of flowering plants in the arum family, Araceae. They are native to tropical and subtropical regions of Asia and New Guinea. They are known commonly as Chinese evergreens.",
        "imageTitle": "File:Aglaonema commutatum 'Silver Queen' in Hyogo Prefectural Flower Center.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Aglaonema_commutatum_%27Silver_Queen%27_in_Hyogo_Prefectural_Flower_Center.jpg",
        "imageDescription": "アグラオネマ・コンムタツム‘シルバークイーン’（2024年11月 兵庫県立フラワーセンター）"
    },
    {
        "name": "אספידיסטרה",
        "botanical": "Aspidistra elatior",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Aspidistra_elatior%2C_flowers_and_flower_buds_on_soil.jpg/960px-Aspidistra_elatior%2C_flowers_and_flower_buds_on_soil.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Aspidistra elatior",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aspidistra_elatior",
        "wikipediaExtract": "Aspidistra elatior, the cast-iron-plant or bar-room plant, also known in Japanese as haran or baran (葉蘭) is a species of flowering plant in the family Asparagaceae, native to Japan and Taiwan. Tolerant of neglect, it is widely cultivated as a houseplant, but can also be grown outside in shade where temperatures remain above −15 °C (5 °F). It is used as training material for the seika form of ikebana.",
        "imageTitle": "File:Aspidistra elatior, flowers and flower buds on soil.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Aspidistra_elatior%2C_flowers_and_flower_buds_on_soil.jpg",
        "imageDescription": "Aspidistra eliator in pot, plant ca. 50 years old, flowering"
    },
    {
        "name": "כלורופיטום",
        "botanical": "Chlorophytum comosum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Chlorophytum_comosum-Chlorophytum_commun-Stolon-20160423.jpg/960px-Chlorophytum_comosum-Chlorophytum_commun-Stolon-20160423.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Chlorophytum comosum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chlorophytum_comosum",
        "wikipediaExtract": "Chlorophytum comosum, usually called spider plant or common spider plant due to its spider-like look, also known as spider ivy, airplane plant, ribbon plant, and hen and chicks, is a species of evergreen perennial flowering plant of the family Asparagaceae. It is native to tropical and Southern Africa but has become naturalized in other parts of the world, including Western Australia and Bangladesh. Chlorophytum comosum is easy to grow as a houseplant because of its resilience, but it can be sensitive to the fluoride in tap water, which commonly gives it \"burnt tips\". Variegated forms are the most popular.",
        "imageTitle": "File:Chlorophytum comosum-Chlorophytum commun-Stolon-20160423.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Chlorophytum_comosum-Chlorophytum_commun-Stolon-20160423.jpg",
        "imageDescription": " Spider plant "
    },
    {
        "name": "הויה",
        "botanical": "Hoya carnosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Hoya_carnosa_-_umbel_with_nectar_droplets.jpg/960px-Hoya_carnosa_-_umbel_with_nectar_droplets.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Hoya carnosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hoya_carnosa",
        "wikipediaExtract": "Hoya carnosa, the porcelain flower or wax plant, is a species of flowering plant in the family Apocynaceae, native to East Asia. It is a common house plant grown for its attractive waxy foliage, and sweetly scented flowers. It is grown well in pots and hanging baskets.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%95%D7%99%D7%94",
        "imageTitle": "File:Hoya carnosa - umbel with nectar droplets.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Hoya_carnosa_-_umbel_with_nectar_droplets.jpg",
        "imageDescription": "Hoya carnosa - umbel with conspicuous nectar droplets dangling from some of the downward facing flowers.  Diameter of umbel: 50 mm. The pale pink petals of each flower are completely covered with translucent hairs, which gives the petals a "
    },
    {
        "name": "וינקה",
        "botanical": "Catharanthus roseus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Catharanthus_roseus_01450.JPG/960px-Catharanthus_roseus_01450.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Catharanthus roseus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Catharanthus_roseus",
        "wikipediaExtract": "Catharanthus roseus, commonly known as bright eyes, Cape periwinkle, graveyard plant, Madagascar periwinkle, old maid, pink periwinkle, rose periwinkle, is a perennial species of flowering plant in the family Apocynaceae. It is native and endemic to Madagascar, but is grown elsewhere as an ornamental and medicinal plant, and now has a pantropical distribution. It is a source of the drugs vincristine and vinblastine, used to treat cancer. It was formerly included in the genus Vinca as Vinca rosea.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A0%D7%A7%D7%94",
        "imageTitle": "File:Catharanthus roseus 01450.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Catharanthus_roseus_01450.JPG",
        "imageDescription": "Catharanthus roseus"
    },
    {
        "name": "פטוניה",
        "botanical": "Petunia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/A_basket_of_Petunia_Pink_Vein_flowers%2C_Oregon.jpg/960px-A_basket_of_Petunia_Pink_Vein_flowers%2C_Oregon.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Petunia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Petunia",
        "wikipediaExtract": "Petunia is a genus of 20 species of flowering plants of South American origin. The popular flower of the same name derived its epithet from the French, which took the word pétun, 'tobacco', from a Tupi–Guarani language. A tender perennial plant, most of the varieties seen in gardens are hybrids.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%95%D7%A0%D7%99%D7%94",
        "imageTitle": "File:A basket of Petunia Pink Vein flowers, Oregon.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:A_basket_of_Petunia_Pink_Vein_flowers%2C_Oregon.jpg",
        "imageDescription": "Surfinia Pink Vein, a petunia cultivar, in a basket, garden in Stanfield, Oregon"
    },
    {
        "name": "אמנון ותמר",
        "botanical": "Viola tricolor",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/97/Heartsease_or_Wild_Pansy_%28Viola_tricolor%29_-_geograph.org.uk_-_1351285.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Viola tricolor",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viola_tricolor",
        "wikipediaExtract": "Viola tricolor is a common European wild flower, growing as an annual or short-lived perennial. The species is also known as wild pansy, Johnny Jump up, heartsease, heart's ease, heart's delight, tickle-my-fancy, Jack-jump-up-and-kiss-me, come-and-cuddle-me, three faces in a hood, love-in-idleness, and pink of my john.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9E%D7%A0%D7%95%D7%9F_%D7%95%D7%AA%D7%9E%D7%A8",
        "imageTitle": "File:Heartsease or Wild Pansy (Viola tricolor) - geograph.org.uk - 1351285.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Heartsease_or_Wild_Pansy_%28Viola_tricolor%29_-_geograph.org.uk_-_1351285.jpg",
        "imageDescription": "Heartsease or Wild Pansy (Viola tricolor) The yellow variant of this common wild flower."
    },
    {
        "name": "ציפורן חתול",
        "botanical": "Tagetes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Tagetes2.jpg/960px-Tagetes2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Tagetes",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tagetes",
        "wikipediaExtract": "Tagetes is a genus of 50 species of annual or perennial, mostly herbaceous plants in the family Asteraceae. They are among several groups of plants known in English as marigolds. The genus Tagetes was formally named by Carl Linnaeus in 1753. Linnaeus cited Joseph Pitton de Tournefort (1700), Johann Jacob Dillenius (1732), Gaspard Bauhin (1623) and Fabio Colonna (1606) as authors who used the name 'Tagetes' before. In 1754 he published the formal description in his Genera Plantarum, referring to Tournefort, Sébastien Vaillant (1720) and Dillenius for the name 'Tagetes'.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C",
        "imageTitle": "File:Tagetes2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Tagetes2.jpg",
        "imageDescription": "A photo of an orange Tagetes flower, slightly obscured by the surrounding dark green leaves"
    },
    {
        "name": "לוע הארי",
        "botanical": "Antirrhinum majus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Yellow-Snapdragon-Flower%28Antirrhinum_majus%29_06.jpg/960px-Yellow-Snapdragon-Flower%28Antirrhinum_majus%29_06.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Antirrhinum majus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antirrhinum_majus",
        "wikipediaExtract": "Antirrhinum majus, the common snapdragon, is a species of flowering plant belonging to the genus Antirrhinum. The plant was placed in the family Plantaginaceae following a revision of its prior classical family, Scrophulariaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%A2_%D7%94%D7%90%D7%A8%D7%99",
        "imageTitle": "File:Yellow-Snapdragon-Flower(Antirrhinum majus) 06.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Yellow-Snapdragon-Flower%28Antirrhinum_majus%29_06.jpg",
        "imageDescription": "Antirrhinum is a genus of plants commonly known as dragon flowers or snapdragons because of the flowers' fancied resemblance to the face of a dragon that opens and closes its mouth when laterally squeezed."
    },
    {
        "name": "סלסלי כסף",
        "botanical": "Lobularia maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Lobularia_maritima_2.jpg/960px-Lobularia_maritima_2.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lobularia maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobularia_maritima",
        "wikipediaExtract": "Lobularia maritima is a species of low-growing flowering plant in the family Brassicaceae. Its common name is sweet alyssum or sweet Alison, also commonly referred to as just alyssum.",
        "imageTitle": "File:Lobularia maritima 2.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Lobularia_maritima_2.jpg",
        "imageDescription": "Flower of a Lobularia maritima"
    },
    {
        "name": "לובליה",
        "botanical": "Lobelia erinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Lobelia_erinus_flower_%2809%29.jpeg/960px-Lobelia_erinus_flower_%2809%29.jpeg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Lobelia erinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobelia_erinus",
        "wikipediaExtract": "Lobelia erinus is a species of flowering plant in the bellflower family Campanulaceae, native to southern Africa.",
        "imageTitle": "File:Lobelia erinus flower (09).jpeg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Lobelia_erinus_flower_%2809%29.jpeg",
        "imageDescription": " Lobelia erinus "
    },
    {
        "name": "בגוניה",
        "botanical": "Begonia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/fc/Begonia_U485_female_flower.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Begonia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Begonia",
        "wikipediaExtract": "Begonia is a genus of perennial flowering plants in the family Begoniaceae. The genus contains more than 2,000 different plant species, distributed primarily across tropical and subtropical regions of Africa, Asia, and Central and South America, with Africa considered the center of origin. Some species are commonly grown indoors as ornamental houseplants in cooler climates, or cultivated outside in summertime for their bright colorful flowers, which have petals but no sepals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%92%D7%95%D7%A0%D7%99%D7%94",
        "imageTitle": "File:Begonia U485 female flower.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Begonia_U485_female_flower.jpg",
        "imageDescription": "Begonia U485  female flower with a winged ovary"
    },
    {
        "name": "ציניה",
        "botanical": "Zinnia elegans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Zinnia_elegans_with_Bombus_01.JPG/960px-Zinnia_elegans_with_Bombus_01.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Zinnia elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zinnia_elegans",
        "wikipediaExtract": "Zinnia elegans known as youth-and-age, common zinnia or elegant zinnia, is an annual flowering plant in the family Asteraceae. It is native to Mexico but grown as an ornamental in many places and naturalised in several places, including scattered locations in South and Central America, the West Indies, the United States, Australia, and Italy.",
        "imageTitle": "File:Zinnia elegans with Bombus 01.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Zinnia_elegans_with_Bombus_01.JPG",
        "imageDescription": " Zinnia ( Zinnia elegans )  with a  buff-tailed bumblebee ( Bombus terrestris ) , Picture was taken in a garden in  Épinal , France"
    },
    {
        "name": "קוסמוס",
        "botanical": "Cosmos bipinnatus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Cosmos_bipinnatus_%26_Ipomoea_nil.JPG/960px-Cosmos_bipinnatus_%26_Ipomoea_nil.JPG",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Cosmos bipinnatus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cosmos_bipinnatus",
        "wikipediaExtract": "Cosmos bipinnatus, commonly called the garden cosmos, Mexican aster or cosmea, is a medium-sized flowering herbaceous plant in the daisy family Asteraceae, native to the Americas. The species and its varieties and cultivars are popular as ornamental plants in temperate climate gardens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%A7%D7%95%D7%9D",
        "imageTitle": "File:Cosmos bipinnatus & Ipomoea nil.JPG",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Cosmos_bipinnatus_%26_Ipomoea_nil.JPG",
        "imageDescription": "  Cosmos bipinnatus   and   Ipomoea nil   flowers ( Le Tampon ,  Réunion island )."
    },
    {
        "name": "חמנית ננסית",
        "botanical": "Helianthus annuus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Helianthus_annuus_%DA%AF%D9%84_%D8%A2%D9%81%D8%AA%D8%A7%D8%A8%DA%AF%D8%B1%D8%AF%D8%A7%D9%86_05.jpg/960px-Helianthus_annuus_%DA%AF%D9%84_%D8%A2%D9%81%D8%AA%D8%A7%D8%A8%DA%AF%D8%B1%D8%AF%D8%A7%D9%86_05.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Common sunflower",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Common_sunflower",
        "wikipediaExtract": "The common sunflower is a large annual forb in the daisy family Asteraceae. The domesticated form of common sunflower is harvested for its edible seeds, which come in two types: oil and confectionary seeds. Oilseed sunflowers are widely grown globally and represent the fourth most used vegetable oil in the world. They also are used widely as bird food or as food for livestock. In contrast, confectionary sunflowers are often eaten as a snack food or in baking. There also are horticultural sunflower varieties that are used as plantings in domestic gardens for aesthetics. Wild plants are known for their multiple flower heads, whereas the domestic sunflower often possesses a single large flower head atop an unbranched stem.",
        "imageTitle": "File:Helianthus annuus گل آفتابگردان 05.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Helianthus_annuus_%DA%AF%D9%84_%D8%A2%D9%81%D8%AA%D8%A7%D8%A8%DA%AF%D8%B1%D8%AF%D8%A7%D9%86_05.jpg",
        "imageDescription": "Helianthus annuus, the common sunflower, is a large annual forb of the genus Helianthus grown as a crop for its edible oil and edible fruits (sunflower seeds)."
    },
    {
        "name": "סלפיגלוסיס",
        "botanical": "Salpiglossis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Salpiglossis_sinuata_flower_side_view.jpg/960px-Salpiglossis_sinuata_flower_side_view.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Salpiglossis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salpiglossis",
        "wikipediaExtract": "Salpiglossis is a genus of flowering plants belonging to the subfamily Cestroideae of family Solanaceae. It is closely related to the genus Reyesia, with which it makes up the tribe Salpiglossideae. Species in the genus Salpiglossis are found in Mexico, Argentina and Chile.",
        "imageTitle": "File:Salpiglossis sinuata flower side view.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Salpiglossis_sinuata_flower_side_view.jpg",
        "imageDescription": "Flower of   Salpiglossis sinuata   (Solanaceae) at Jena Botanical Garden, Germany"
    },
    {
        "name": "קלנדולה",
        "botanical": "Calendula officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Ringelblume_%28Calendula_officinalis%29_Bl%C3%BCte_focus_stack-20220619-RM-165610.jpg/960px-Ringelblume_%28Calendula_officinalis%29_Bl%C3%BCte_focus_stack-20220619-RM-165610.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Calendula officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calendula_officinalis",
        "wikipediaExtract": "Calendula officinalis, Mary's gold, common marigold, the pot marigold, Scotch marigold, or ruddles, is a flowering plant in the daisy family, Asteraceae. It is probably native to southern Europe, but its long history of cultivation makes its precise origin unknown, and it is widely naturalised. The florets are edible and the plant has historically been used as medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C",
        "imageTitle": "File:Ringelblume (Calendula officinalis) Blüte focus stack-20220619-RM-165610.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Ringelblume_%28Calendula_officinalis%29_Bl%C3%BCte_focus_stack-20220619-RM-165610.jpg",
        "imageDescription": "Calendula officinalis stacking. Focus stack of 14 images."
    },
    {
        "name": "פורטולקה עונתית",
        "botanical": "Portulaca grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg/960px-Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Portulaca grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca_grandiflora",
        "wikipediaExtract": "Portulaca grandiflora is a succulent flowering plant in the purslane family Portulacaceae, native to southern Brazil, Argentina, and Uruguay and often cultivated in gardens. It has many common names, including rose moss, eleven o'clock, Mexican rose, moss rose, sun rose, rose Jepun, table rose, rock rose, and moss-rose purslane. Despite these names and the superficial resemblance of some cultivars' flowers to roses, it is not a true rose, nor even a part of the rose family or rosid group; rather, it is much more closely related to carnations and cacti.",
        "imageTitle": "File:Portulaca grandiflora, Burdwan, 30032014 (6).jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Portulaca_grandiflora%2C_Burdwan%2C_30032014_%286%29.jpg",
        "imageDescription": "White Moss-rose,   Portulaca grandiflora  . Photographed at Burdwan, West Bengal, India."
    },
    {
        "name": "אימפטינס",
        "botanical": "Impatiens walleriana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Da_Lat_Flower_Park_-_Impatiens_walleriana.jpg/960px-Da_Lat_Flower_Park_-_Impatiens_walleriana.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Impatiens walleriana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Impatiens_walleriana",
        "wikipediaExtract": "Impatiens walleriana, also known as busy Lizzie, balsam, sultana, or simply impatiens, is a species of the genus Impatiens, native to eastern Africa from Kenya to Mozambique. The Latin specific epithet walleriana honours a British missionary, Horace Waller (1833–1896).",
        "imageTitle": "File:Da Lat Flower Park - Impatiens walleriana.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Da_Lat_Flower_Park_-_Impatiens_walleriana.jpg",
        "imageDescription": "Da Lat Flower Park"
    },
    {
        "name": "קולאוס",
        "botanical": "Plectranthus scutellarioides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Coleus_scutellarioides_%28cultivars%29_-_Jardin_universitaire_Roger-Van_den_Hende%2C_Quebec_36.jpg/960px-Coleus_scutellarioides_%28cultivars%29_-_Jardin_universitaire_Roger-Van_den_Hende%2C_Quebec_36.jpg",
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
        "imageSource": "Wikimedia Commons photo",
        "wikipediaTitle": "Coleus scutellarioides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coleus_scutellarioides",
        "wikipediaExtract": "Coleus scutellarioides, commonly known as coleus, is a species of flowering plant in the family Lamiaceae, native to southeast Asia through to Australia. Typically growing to 60–75 cm (24–30 in) tall and wide, it is a bushy, woody-based evergreen perennial, widely grown for the highly decorative variegated leaves found in cultivated varieties.",
        "imageTitle": "File:Coleus scutellarioides (cultivars) - Jardin universitaire Roger-Van den Hende, Quebec 36.jpg",
        "imagePageUrl": "https://commons.wikimedia.org/wiki/File:Coleus_scutellarioides_%28cultivars%29_-_Jardin_universitaire_Roger-Van_den_Hende%2C_Quebec_36.jpg",
        "imageDescription": " Plectranthus scutellarioides , commonly known as coleus, is a species of flowering plant in the family Lamiaceae (the mint or deadnettle family), native to southeast Asia through to Australia. Typically growing to 60–75 cm (24–30 in) tall "
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
            <img src="${plant.image === 'fallback' ? imageFallback(plant.name) : plant.image}" alt="${plant.name}" loading="lazy" decoding="async" onerror="this.onerror=null;this.src=imageFallback(this.alt);">
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
                    <a class="source-link" href="${plant.imagePageUrl || plant.wikipediaUrl}" target="_blank" rel="noopener noreferrer">
                        מקור תמונה: ${plant.imageSource}
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
