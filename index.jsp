<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gardening Artists | מדריך צמחים לגינות דרומיות</title>
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
            <a href="#ui">מבט על הממשק</a>
            <a href="#plants">קטלוג צמחים</a>
            <a href="#rubrics">חלוקה לפי תנאים</a>
            <a href="#advisor">יועץ גינה</a>
        </div>
    </nav>

    <section class="hero-grid">
        <div>
            <p class="eyebrow">תכנון גינה דרומית בצורה רגועה וברורה</p>
            <h1>בוחרים צמחים נכונים לגינה יפה, רכה ומתאימה לתנאי השטח.</h1>
            <p class="hero-copy">
                קטלוג הצמחים של Gardening Artists מחלק צמחי גינה דרומיים לפי שמש, סוג קרקע והשקיה,
                ומציג תמונה, מידע קצר, תנאי גידול מיטביים וטווח מחירים לכל צמח.
            </p>
            <div class="hero-actions">
                <a class="button button-primary" href="#plants">לעיון בצמחים</a>
                <a class="button button-secondary" href="#advisor">לקבלת המלצה לגינה</a>
            </div>
        </div>
        <aside class="hero-card" aria-label="תקציר הקטלוג">
            <h2>ממשק רך לגינות חמות וירוקות</h2>
            <p>
                ניתן לחפש לפי מילים חופשיות, לסנן לפי חשיפה לשמש, קרקע והשקיה,
                ולהעלות סרטון קצר של הגינה כדי לקבל רשימת צמחים מומלצת והערכת תקציב.
            </p>
            <div class="hero-stats">
                <div class="stat"><strong id="plantCount">0</strong>צמחים</div>
                <div class="stat"><strong>3</strong>סוגי חלוקה</div>
                <div class="stat"><strong>$</strong>טווח מחיר</div>
            </div>
        </aside>
    </section>
</header>

<main>
    <section id="ui" class="ui-showcase" aria-label="מבט על חוויית המשתמש">
        <div class="ui-preview">
            <div class="ui-toolbar">
                <strong>אפליקציית Gardening Artists</strong>
                <div class="ui-dots" aria-hidden="true"><span></span><span></span><span></span></div>
            </div>
            <div class="ui-body">
                <aside class="ui-sidebar">
                    <h3>סינון לפי תנאים</h3>
                    <div class="ui-menu">
                        <span>חשיפה לשמש</span>
                        <span>סוג קרקע</span>
                        <span>השקיה</span>
                        <span>תקציב משוער</span>
                    </div>
                </aside>
                <div class="ui-cards">
                    <article class="ui-card">
                        <h3>קטלוג ויזואלי</h3>
                        <p>כרטיסי צמחים עם תמונות, תנאים מהירים וטווחי מחיר ברורים.</p>
                        <div class="ui-pill-row">
                            <span class="chip">שמש מלאה</span>
                            <span class="chip">קרקע חרסיתית</span>
                            <span class="chip">מעט השקיה</span>
                        </div>
                    </article>
                    <article class="ui-card">
                        <h3>המלצה חכמה</h3>
                        <p>נתוני הגינה והסרטון עוזרים לבנות שילוב צמחים מתאים עם עלות כוללת.</p>
                        <div class="ui-pill-row">
                            <span class="chip">העלאת סרטון</span>
                            <span class="chip">כיוון הגינה</span>
                            <span class="chip">הערכת מחיר</span>
                        </div>
                    </article>
                </div>
            </div>
        </div>

        <aside class="ui-panel">
            <p class="eyebrow">חוויית משתמש</p>
            <h2>ממשק רך, פשוט ומלא בעברית לבחירת צמחי גינה.</h2>
            <p>
                האתר מוביל את הלקוח מהיכרות עם הצמחים ועד המלצה מעשית: חיפוש, השוואת תנאי גידול,
                העלאת סרטון וקבלת הצעת צמחייה עם הערכת עלות.
            </p>
            <div class="workflow">
                <div class="workflow-step"><span>1</span><div><strong>מחפשים</strong><br>לפי שם, מראה, שמש, קרקע או השקיה.</div></div>
                <div class="workflow-step"><span>2</span><div><strong>משווים</strong><br>תמונות, תנאי גידול, מידע קצר וטווח מחיר.</div></div>
                <div class="workflow-step"><span>3</span><div><strong>מתכננים</strong><br>מקבלים רשימת צמחים ועלות משוערת לכל הגינה.</div></div>
            </div>
            <a class="button button-secondary" href="#advisor">התחלת תכנון גינה</a>
        </aside>
    </section>

    <section id="plants">
        <div class="section-heading">
            <div>
                <p class="eyebrow">קטלוג צמחים</p>
                <h2>צמחים לגינות דרומיות לפי שמש, קרקע והשקיה.</h2>
            </div>
            <p>
                כל כרטיס כולל תמונה, פירוט קצר, תנאי גידול מומלצים וטווח מחיר משוער
                לשתילים בגדלים נפוצים במשתלות.
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
                <li><strong>חומצית או לחה:</strong> טובה לשיחים ירוקי עד וצמחי חורש דרומיים.</li>
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
            <p class="eyebrow">יועץ גינה</p>
            <h2>מעלים סרטון ומוסיפים מאפייני גינה.</h2>
            <p>
                היועץ משתמש בכיוון הגינה, כמות השמש, סוג הקרקע, שיטת ההשקיה וגודל השטח
                כדי להמליץ על צמחים ולחשב עלות משוערת.
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
                    <label for="gardenSize">שטח הגינה ברגל רבוע</label>
                    <input id="gardenSize" type="number" min="20" max="5000" value="180" step="10">
                </div>
                <div class="field">
                    <label for="densityInput">צפיפות שתילה</label>
                    <select id="densityInput">
                        <option value="0.045">פתוחה ואוורירית</option>
                        <option value="0.065" selected>מאוזנת</option>
                        <option value="0.085">עשירה ומלאה</option>
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
                <span id="totalCost">$0</span>
                <small>החישוב מבוסס על ממוצע טווחי המחיר וגודל השטח. עבודה, אדמה, הובלה ומסים אינם כלולים.</small>
            </div>
        </aside>
    </section>
</main>

<footer>
    <strong>Gardening Artists</strong> - כלי תכנון רך בעברית לגינות ירוקות, יפות ומותאמות לתנאי השטח.
</footer>

<script>
const plants = [
    {
        name: "מגנוליה דרומית",
        botanical: "Magnolia grandiflora",
        image: "https://images.unsplash.com/photo-1591102775602-8bb201a72819?auto=format&fit=crop&w=900&q=80",
        detail: "עץ ירוק עד עם עלים מבריקים ופרחים לבנים ריחניים. מתאים כעץ מוקד או כמסך ירוק גדול.",
        sun: ["שמש מלאה", "חצי שמש"],
        soil: ["לומית", "חומצית", "מנוקזת"],
        water: "בינונית",
        priceLow: 55,
        priceHigh: 180,
        tags: ["ירוק עד", "עץ", "ריחני", "פרטיות"]
    },
    {
        name: "לגרסטרמיה",
        botanical: "Lagerstroemia indica",
        image: "https://images.unsplash.com/photo-1663191934642-523a1e0acdc8?auto=format&fit=crop&w=900&q=80",
        detail: "עץ נוי עמיד לחום עם פריחה קיצית, גזע חלק וסבילות גבוהה לתנאים עירוניים.",
        sun: ["שמש מלאה"],
        soil: ["חרסיתית", "לומית", "חולית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 35,
        priceHigh: 150,
        tags: ["פורח", "עץ", "חום", "יובש"]
    },
    {
        name: "אלון חי",
        botanical: "Quercus virginiana",
        image: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=900&q=80",
        detail: "עץ צל גדול וותיק עם נוף רחב, עמיד לחום, רוח וקרקעות דרומיות כבדות.",
        sun: ["שמש מלאה", "חצי שמש"],
        soil: ["חרסיתית", "לומית", "חולית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 85,
        priceHigh: 300,
        tags: ["מקומי", "צל", "עץ", "בעלי חיים"]
    },
    {
        name: "הידרנגאה עלי אלון",
        botanical: "Hydrangea quercifolia",
        image: "https://images.unsplash.com/photo-1606041008023-472dfb5e530f?auto=format&fit=crop&w=900&q=80",
        detail: "שיח מקומי עם אשכולות פריחה לבנים, עלים בעלי מרקם וצבעי שלכת אדמדמים.",
        sun: ["חצי שמש", "חצי צל"],
        soil: ["לומית", "חומצית", "לחה", "מנוקזת"],
        water: "קבועה",
        priceLow: 28,
        priceHigh: 70,
        tags: ["מקומי", "פורח", "שיח", "חורש"]
    },
    {
        name: "אזליאה חוזרת",
        botanical: "Rhododendron hybrid",
        image: "https://images.unsplash.com/photo-1598809344016-0d3b3db69e74?auto=format&fit=crop&w=900&q=80",
        detail: "שיח ירוק עד עם פריחה חוזרת שמכניסה צבע רך באביב, בקיץ ובסתיו.",
        sun: ["חצי שמש", "חצי צל"],
        soil: ["חומצית", "לומית", "לחה", "מנוקזת"],
        water: "קבועה",
        priceLow: 24,
        priceHigh: 65,
        tags: ["ירוק עד", "פורח", "חזית", "חומצי"]
    },
    {
        name: "גרדניה",
        botanical: "Gardenia jasminoides",
        image: "https://images.unsplash.com/photo-1560717789-0ac7c58ac90a?auto=format&fit=crop&w=900&q=80",
        detail: "שיח ירוק עד וריחני עם פרחים לבנים-קרמיים, מתאים לכניסות, פטיו וערוגות מעורבות.",
        sun: ["חצי שמש", "חצי צל"],
        soil: ["חומצית", "לומית", "לחה", "מנוקזת"],
        water: "קבועה",
        priceLow: 22,
        priceHigh: 60,
        tags: ["ריחני", "ירוק עד", "פורח", "פטיו"]
    },
    {
        name: "מיריקה שעוותית",
        botanical: "Morella cerifera",
        image: "https://images.unsplash.com/photo-1446071103084-c257b5f70672?auto=format&fit=crop&w=900&q=80",
        detail: "שיח ירוק עד ומהיר צימוח לגדר חיה, פרטיות ואזורים קשים או קרובים לחוף.",
        sun: ["שמש מלאה", "חצי שמש", "חצי צל"],
        soil: ["חרסיתית", "חולית", "לומית", "לחה"],
        water: "נמוכה",
        priceLow: 18,
        priceHigh: 65,
        tags: ["מקומי", "פרטיות", "גדר חיה", "חוף"]
    },
    {
        name: "קליקרפה אמריקאית",
        botanical: "Callicarpa americana",
        image: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=900&q=80",
        detail: "שיח מקומי פתוח עם אשכולות פירות סגולים שמושכים ציפורים בסתיו.",
        sun: ["שמש מלאה", "חצי שמש", "חצי צל"],
        soil: ["חרסיתית", "לומית", "חולית", "מנוקזת"],
        water: "בינונית",
        priceLow: 16,
        priceHigh: 45,
        tags: ["מקומי", "פירות", "ציפורים", "שיח"]
    },
    {
        name: "מוהלי גראס",
        botanical: "Muhlenbergia capillaris",
        image: "https://images.unsplash.com/photo-1600566752355-35792bedcfea?auto=format&fit=crop&w=900&q=80",
        detail: "עשב נוי מקומי עם ענני פריחה ורודים בסתיו ועמידות טובה ליובש לאחר התבססות.",
        sun: ["שמש מלאה"],
        soil: ["חולית", "לומית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 12,
        priceHigh: 35,
        tags: ["מקומי", "עשב", "יובש", "מרקם"]
    },
    {
        name: "לנטנה",
        botanical: "Lantana camara",
        image: "https://images.unsplash.com/photo-1602578208701-3a2de6f5127a?auto=format&fit=crop&w=900&q=80",
        detail: "צמח פורח וצבעוני שמושך מאביקים ומשגשג בחום, בשמש חזקה ובערוגות יבשות.",
        sun: ["שמש מלאה"],
        soil: ["חולית", "לומית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 6,
        priceHigh: 22,
        tags: ["מאביקים", "עונתי", "רב שנתי", "חום"]
    },
    {
        name: "סלוויה",
        botanical: "Salvia greggii",
        image: "https://images.unsplash.com/photo-1620315442714-05eae288ed45?auto=format&fit=crop&w=900&q=80",
        detail: "רב שנתי חזק עם עלווה ארומטית ופריחה שמושכת יונקי דבש ודבורים.",
        sun: ["שמש מלאה", "חצי שמש"],
        soil: ["חולית", "לומית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 8,
        priceHigh: 28,
        tags: ["מאביקים", "רב שנתי", "יונקי דבש", "יובש"]
    },
    {
        name: "רודבקיה",
        botanical: "Rudbeckia fulgida",
        image: "https://images.unsplash.com/photo-1597848212624-e6b10e2fc1b6?auto=format&fit=crop&w=900&q=80",
        detail: "רב שנתי אמין עם פריחה צהובה שמאירה ערוגות שמש בסגנון טבעי.",
        sun: ["שמש מלאה", "חצי שמש"],
        soil: ["חרסיתית", "לומית", "מנוקזת"],
        water: "בינונית",
        priceLow: 7,
        priceHigh: 24,
        tags: ["מקומי", "רב שנתי", "פורח", "מאביקים"]
    },
    {
        name: "שרך זנב שועל",
        botanical: "Asparagus densiflorus",
        image: "https://images.unsplash.com/photo-1598880940080-ff9a29891b85?auto=format&fit=crop&w=900&q=80",
        detail: "צמח בעל מראה פיסולי ורך, מתאים למיכלים, שוליים ואזורים מוצלים ובהירים.",
        sun: ["חצי שמש", "חצי צל"],
        soil: ["לומית", "מנוקזת"],
        water: "בינונית",
        priceLow: 14,
        priceHigh: 38,
        tags: ["מיכל", "מרקם", "ירוק עד", "צל"]
    },
    {
        name: "אספידיסטרה",
        botanical: "Aspidistra elatior",
        image: "https://images.unsplash.com/photo-1592150621744-aca64f48394a?auto=format&fit=crop&w=900&q=80",
        detail: "כיסוי קרקע עמיד לצל עמוק, עם עלים רחבים ויכולת להתמודד עם הזנחה ושורשי עצים.",
        sun: ["חצי צל", "צל"],
        soil: ["חרסיתית", "לומית", "מנוקזת"],
        water: "נמוכה",
        priceLow: 18,
        priceHigh: 45,
        tags: ["צל", "ירוק עד", "כיסוי קרקע", "קל לטיפול"]
    },
    {
        name: "איטאה וירג'יניקה",
        botanical: "Itea virginica",
        image: "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?auto=format&fit=crop&w=900&q=80",
        detail: "שיח מקומי עם אשכולות פריחה לבנים ריחניים וצבעי שלכת אדומים, מתאים גם לקרקע לחה.",
        sun: ["שמש מלאה", "חצי שמש", "חצי צל"],
        soil: ["חרסיתית", "לומית", "לחה", "חומצית"],
        water: "בינונית",
        priceLow: 20,
        priceHigh: 58,
        tags: ["מקומי", "קרקע לחה", "ריחני", "שיח"]
    },
    {
        name: "דקל סבל ננסי",
        botanical: "Sabal minor",
        image: "https://images.unsplash.com/photo-1589840946983-5f6f0c2e0f6d?auto=format&fit=crop&w=900&q=80",
        detail: "דקל מקומי קשוח שמוסיף מראה טרופי לאזורים מוצלים, גינות גשם ושולי חורש.",
        sun: ["חצי שמש", "חצי צל", "צל"],
        soil: ["לחה", "לומית", "חרסיתית"],
        water: "בינונית",
        priceLow: 26,
        priceHigh: 90,
        tags: ["מקומי", "דקל", "טרופי", "גינת גשם"]
    },
    {
        name: "יסמין כוכבי",
        botanical: "Trachelospermum jasminoides",
        image: "https://images.unsplash.com/photo-1508610048659-a06b669e3321?auto=format&fit=crop&w=900&q=80",
        detail: "מטפס ירוק עד וריחני לגדרות, פרגולות וכיסוי קרקע באזורים חמים.",
        sun: ["שמש מלאה", "חצי שמש", "חצי צל"],
        soil: ["לומית", "מנוקזת"],
        water: "בינונית",
        priceLow: 18,
        priceHigh: 48,
        tags: ["מטפס", "ריחני", "ירוק עד", "גדר"]
    },
    {
        name: "אגפנתוס",
        botanical: "Agapanthus africanus",
        image: "https://images.unsplash.com/photo-1654688857981-890ebea7d12e?auto=format&fit=crop&w=900&q=80",
        detail: "רב שנתי עם עלים סרטניים ופריחה כחולה או לבנה, מתאים לשוליים מסודרים ולמיכלים.",
        sun: ["שמש מלאה", "חצי שמש"],
        soil: ["לומית", "חולית", "מנוקזת"],
        water: "בינונית",
        priceLow: 12,
        priceHigh: 34,
        tags: ["רב שנתי", "פורח", "שוליים", "מיכל"]
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
            <img src="${plant.image}" alt="${plant.name}">
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
                    <div class="price">$${plant.priceLow} - $${plant.priceHigh}</div>
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
    const size = Number(document.getElementById("gardenSize").value) || 180;
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
                <span>עלות צמחים משוערת: $${itemTotal.toLocaleString()}</span>
            </div>
        `;
    }).join("");

    totalCost.textContent = `$${runningTotal.toLocaleString()}`;
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
