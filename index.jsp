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
            <p class="eyebrow">תכנון גינה ישראלית בצורה רגועה וברורה</p>
            <h1>בוחרים צמחים נכונים לגינה יפה, רכה ומתאימה לתנאי השטח.</h1>
            <p class="hero-copy">
                קטלוג הצמחים של Gardening Artists מציג צמחים נפוצים במשתלות בישראל מכל אזורי הארץ, לפי שמש, סוג קרקע והשקיה,
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
                <div class="stat"><strong>₪</strong>טווח מחיר</div>
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
                <h2>צמחים נפוצים במשתלות בישראל לפי שמש, קרקע והשקיה.</h2>
            </div>
            <p>
                כל כרטיס כולל תמונה, פירוט קצר, תנאי גידול מומלצים וטווח מחיר משוער בשקלים
                לגדלי שתילים ועציצים נפוצים במשתלות בישראל.
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
                <small>החישוב מבוסס על ממוצע טווחי המחיר בשקלים וגודל השטח. עבודה, אדמה, הובלה ומע"מ אינם כלולים.</small>
            </div>
        </aside>
    </section>
</main>

<footer>
    <strong>Gardening Artists</strong> - כלי תכנון רך בעברית לבחירת צמחים ממשתלות בישראל ולגינות מותאמות לתנאי השטח.
</footer>

<script>
const plants = [
    {
        "name": "זית אירופי",
        "botanical": "Olea europaea",
        "image": "https://source.unsplash.com/900x675/?olive-tree",
        "detail": "עץ ים־תיכוני חסכוני במים עם מראה פיסולי ועלווה כסופה. מתאים לגינות שמש, מיכלים גדולים ואזורים יבשים.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "לומית",
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 120,
        "priceHigh": 650,
        "tags": [
            "עץ",
            "ים תיכוני",
            "חסכוני במים",
            "מיכל",
            "פרי"
        ]
    },
    {
        "name": "לימון",
        "botanical": "Citrus limon",
        "image": "https://source.unsplash.com/900x675/?lemon-tree",
        "detail": "עץ פרי הדר נפוץ במשתלות, ריחני ושימושי. זקוק לשמש טובה, ניקוז והשקיה סדירה בעונת הפרי.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 90,
        "priceHigh": 420,
        "tags": [
            "עץ",
            "פרי",
            "הדר",
            "ריחני",
            "מיכל"
        ]
    },
    {
        "name": "רימון",
        "botanical": "Punica granatum",
        "image": "https://source.unsplash.com/900x675/?pomegranate-tree",
        "detail": "עץ או שיח פרי עמיד לחום עם פריחה כתומה ופירות קישוטיים. מתאים לגינות שמש בכל הארץ.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "לומית",
            "חרסיתית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 80,
        "priceHigh": 360,
        "tags": [
            "עץ",
            "פרי",
            "פורח",
            "חום",
            "ים תיכוני"
        ]
    },
    {
        "name": "תאנה",
        "botanical": "Ficus carica",
        "image": "https://source.unsplash.com/900x675/?fig-tree",
        "detail": "עץ פרי נשיר ומהיר יחסית, בעל עלווה גדולה ומראה טבעי. מתאים לשמש ולקרקע מנוקזת.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "חולית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 90,
        "priceHigh": 380,
        "tags": [
            "עץ",
            "פרי",
            "צל",
            "ים תיכוני"
        ]
    },
    {
        "name": "הדס מצוי",
        "botanical": "Myrtus communis",
        "image": "https://source.unsplash.com/900x675/?myrtle-plant",
        "detail": "שיח ארץ־ישראלי ירוק עד, ריחני ומתאים לגדר חיה עדינה או לשתילה פורמלית.",
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
        "priceLow": 35,
        "priceHigh": 160,
        "tags": [
            "שיח",
            "מקומי",
            "גדר חיה",
            "ריחני",
            "ירוק עד"
        ]
    },
    {
        "name": "מורן החורש",
        "botanical": "Viburnum tinus",
        "image": "https://source.unsplash.com/900x675/?viburnum",
        "detail": "שיח ירוק עד צפוף ונעים לגדר חיה, רקע ירוק או הסתרה. מתאים לשמש חלקית וגם לחצי צל.",
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
        "priceLow": 45,
        "priceHigh": 180,
        "tags": [
            "שיח",
            "גדר חיה",
            "ירוק עד",
            "פרטיות"
        ]
    },
    {
        "name": "אלת המסטיק",
        "botanical": "Pistacia lentiscus",
        "image": "https://source.unsplash.com/900x675/?pistacia-lentiscus",
        "detail": "שיח ים־תיכוני קשוח וירוק עד, מעולה לגינות חסכוניות במים, מדרונות וגדרות טבעיות.",
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
        "priceLow": 35,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "מקומי",
            "חסכוני במים",
            "גדר חיה",
            "ים תיכוני"
        ]
    },
    {
        "name": "לויקופילום",
        "botanical": "Leucophyllum frutescens",
        "image": "https://source.unsplash.com/900x675/?leucophyllum",
        "detail": "שיח כסוף עם פריחה סגולה, עמיד מאוד לחום וליובש. מתאים לגינות שמש בדרום, במרכז ובשפלה.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 35,
        "priceHigh": 140,
        "tags": [
            "שיח",
            "פורח",
            "יובש",
            "כסוף",
            "חום"
        ]
    },
    {
        "name": "היביסקוס סיני",
        "botanical": "Hibiscus rosa-sinensis",
        "image": "https://source.unsplash.com/900x675/?hibiscus",
        "detail": "שיח טרופי פורח בצבעים חזקים. מתאים לגינות מוגנות, שמש עד חצי שמש והשקיה סדירה.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 45,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "פורח",
            "טרופי",
            "צבע"
        ]
    },
    {
        "name": "דורנטה",
        "botanical": "Duranta erecta",
        "image": "https://source.unsplash.com/900x675/?duranta-plant",
        "detail": "שיח מהיר עם פריחה סגלגלה ועלווה רעננה, נפוץ לגדרות חיות ולמילוי שטחים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 30,
        "priceHigh": 130,
        "tags": [
            "שיח",
            "גדר חיה",
            "פורח",
            "מהיר"
        ]
    },
    {
        "name": "ננדינה",
        "botanical": "Nandina domestica",
        "image": "https://source.unsplash.com/900x675/?nandina",
        "detail": "שיח קומפקטי עם שינויי צבע בעלווה, מתאים לכניסות, מיכלים וערוגות חצי צל.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 35,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "מיכל",
            "עלווה צבעונית",
            "קומפקטי"
        ]
    },
    {
        "name": "בוגנוויליה",
        "botanical": "Bougainvillea",
        "image": "https://source.unsplash.com/900x675/?bougainvillea",
        "detail": "מטפס או שיח צבעוני במיוחד לשמש מלאה. חסכוני במים לאחר התבססות ומתאים לגדרות וקירות.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 45,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פורח",
            "חסכוני במים",
            "גדר",
            "צבע"
        ]
    },
    {
        "name": "יסמין כוכבי",
        "botanical": "Trachelospermum jasminoides",
        "image": "https://source.unsplash.com/900x675/?star-jasmine",
        "detail": "מטפס ירוק עד וריחני לפרגולות, גדרות וכיסוי קרקע. מתאים לשמש עד חצי צל.",
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
        "priceLow": 45,
        "priceHigh": 180,
        "tags": [
            "מטפס",
            "ריחני",
            "ירוק עד",
            "פרגולה",
            "גדר"
        ]
    },
    {
        "name": "פנדוריאה",
        "botanical": "Pandorea jasminoides",
        "image": "https://source.unsplash.com/900x675/?pandorea-vine",
        "detail": "מטפס עדין עם פריחה בהירה, מתאים לגדרות ופרגולות באזורים מוגנים יחסית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 45,
        "priceHigh": 160,
        "tags": [
            "מטפס",
            "פורח",
            "פרגולה",
            "עדין"
        ]
    },
    {
        "name": "לבנדר",
        "botanical": "Lavandula",
        "image": "https://source.unsplash.com/900x675/?lavender",
        "detail": "צמח תבלין ונוי ריחני, מושך מאביקים ומתאים לשמש מלאה ולקרקע מנוקזת מאוד.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 15,
        "priceHigh": 55,
        "tags": [
            "תבלין",
            "ריחני",
            "מאביקים",
            "חסכוני במים",
            "סגול"
        ]
    },
    {
        "name": "רוזמרין",
        "botanical": "Salvia rosmarinus",
        "image": "https://source.unsplash.com/900x675/?rosemary-plant",
        "detail": "שיח תבלין ים־תיכוני עמיד מאוד, מתאים לגדר נמוכה, מסלעות ומיכלים בשמש מלאה.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 12,
        "priceHigh": 50,
        "tags": [
            "תבלין",
            "שיח",
            "חסכוני במים",
            "ריחני",
            "ים תיכוני"
        ]
    },
    {
        "name": "מרווה צחורה",
        "botanical": "Salvia leucantha",
        "image": "https://source.unsplash.com/900x675/?salvia-flower",
        "detail": "רב־שנתי פורח בסגול ולבן, מושך מאביקים ונותן תנועה רכה בערוגות שמש.",
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
        "priceHigh": 60,
        "tags": [
            "רב שנתי",
            "פורח",
            "מאביקים",
            "סגול"
        ]
    },
    {
        "name": "גאורה",
        "botanical": "Gaura lindheimeri",
        "image": "https://source.unsplash.com/900x675/?gaura-flower",
        "detail": "רב־שנתי אוורירי עם פריחה ורודה־לבנה. מתאים לערוגות רכות, שמש מלאה והשקיה בינונית.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "חולית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 15,
        "priceHigh": 55,
        "tags": [
            "רב שנתי",
            "פורח",
            "רך",
            "מאביקים"
        ]
    },
    {
        "name": "לנטנה",
        "botanical": "Lantana camara",
        "image": "https://source.unsplash.com/900x675/?lantana",
        "detail": "צמח פורח ועמיד לחום שמושך פרפרים. מתאים לשמש מלאה ולגינות חסכוניות במים.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "חולית",
            "לומית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 15,
        "priceHigh": 60,
        "tags": [
            "פורח",
            "מאביקים",
            "פרפרים",
            "חום",
            "חסכוני במים"
        ]
    },
    {
        "name": "גרניום / פלרגוניום",
        "botanical": "Pelargonium",
        "image": "https://source.unsplash.com/900x675/?geranium-flower",
        "detail": "צמח עציץ וערוגה פופולרי מאוד במשתלות, עם פריחה צבעונית ומראה ביתי רך.",
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
        "priceHigh": 45,
        "tags": [
            "פורח",
            "עציץ",
            "מרפסת",
            "צבע"
        ]
    },
    {
        "name": "וינקה",
        "botanical": "Catharanthus roseus",
        "image": "https://source.unsplash.com/900x675/?vinca-flower",
        "detail": "עונתי קיצי חזק, פורח לאורך זמן ומתאים לשמש ולחום עם השקיה סדירה.",
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
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "קיץ",
            "חום"
        ]
    },
    {
        "name": "פטוניה",
        "botanical": "Petunia",
        "image": "https://source.unsplash.com/900x675/?petunia",
        "detail": "עונתי פורח לשתילה במיכלים, סלסלות וערוגות. נותן צבע מהיר ורך בעונות המתאימות.",
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
        "priceHigh": 20,
        "tags": [
            "עונתי",
            "פורח",
            "עציץ",
            "צבע"
        ]
    },
    {
        "name": "דיאטס",
        "botanical": "Dietes grandiflora",
        "image": "https://source.unsplash.com/900x675/?dietes-flower",
        "detail": "רב־שנתי חסון עם עלים צרים ופריחה בהירה, מתאים לשוליים, מיכלים וגינות ציבוריות.",
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
        "priceLow": 18,
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "שוליים",
            "פורח",
            "עמיד"
        ]
    },
    {
        "name": "ליריופה",
        "botanical": "Liriope muscari",
        "image": "https://source.unsplash.com/900x675/?liriope",
        "detail": "צמח שולי ערוגה וכיסוי קרקע לחצי צל, עם עלווה ירוקה ופריחה סגולה עדינה.",
        "sun": [
            "חצי שמש",
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 18,
        "priceHigh": 70,
        "tags": [
            "כיסוי קרקע",
            "צל",
            "שוליים",
            "סגול"
        ]
    },
    {
        "name": "אגבה",
        "botanical": "Agave attenuata",
        "image": "https://source.unsplash.com/900x675/?agave",
        "detail": "סוקולנט פיסולי וחסכוני במים, מתאים לגינות מודרניות, מסלעות ומיכלים גדולים.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "חולית",
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 35,
        "priceHigh": 220,
        "tags": [
            "סוקולנט",
            "פיסולי",
            "חסכוני במים",
            "מיכל"
        ]
    },
    {
        "name": "אלוורה",
        "botanical": "Aloe vera",
        "image": "https://source.unsplash.com/900x675/?aloe-vera",
        "detail": "סוקולנט שימושי וקל לגידול, מתאים לשמש עד חצי שמש ולקרקע מנוקזת.",
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
        "priceHigh": 80,
        "tags": [
            "סוקולנט",
            "עציץ",
            "חסכוני במים",
            "קל לטיפול"
        ]
    },
    {
        "name": "סביון כדורי",
        "botanical": "Senecio rowleyanus",
        "image": "https://source.unsplash.com/900x675/?string-of-pearls-plant",
        "detail": "סוקולנט נשפך ועדין לעציצים תלויים, מתאים לאור חזק ללא שמש קופחת והשקיה מועטה.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "מנוקזת",
            "חולית"
        ],
        "water": "נמוכה",
        "priceLow": 20,
        "priceHigh": 90,
        "tags": [
            "סוקולנט",
            "עציץ",
            "נשפך",
            "מרפסת"
        ]
    },
    {
        "name": "סנסיווריה",
        "botanical": "Dracaena trifasciata",
        "image": "https://source.unsplash.com/900x675/?snake-plant",
        "detail": "צמח בית עמיד במיוחד, מתאים לאור נמוך עד בינוני ולהשקיה מועטה. נפוץ מאוד במשתלות.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 35,
        "priceHigh": 180,
        "tags": [
            "צמח בית",
            "צל",
            "קל לטיפול",
            "עציץ"
        ]
    },
    {
        "name": "פוטוס",
        "botanical": "Epipremnum aureum",
        "image": "https://source.unsplash.com/900x675/?pothos-plant",
        "detail": "צמח בית נשפך וקל מאוד לגידול, מתאים למדפים, סלסלות ופינות מוארות ללא שמש ישירה.",
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
        "priceHigh": 120,
        "tags": [
            "צמח בית",
            "נשפך",
            "קל לטיפול",
            "עציץ"
        ]
    },
    {
        "name": "מונסטרה",
        "botanical": "Monstera deliciosa",
        "image": "https://source.unsplash.com/900x675/?monstera",
        "detail": "צמח בית טרופי עם עלים גדולים ומחורצים, מתאים לאור מסונן ולמראה ירוק עשיר.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "טרופי",
            "עלווה",
            "עציץ"
        ]
    },
    {
        "name": "זמיה קוקוס",
        "botanical": "Zamioculcas zamiifolia",
        "image": "https://source.unsplash.com/900x675/?zz-plant",
        "detail": "צמח בית אלגנטי ועמיד מאוד, מסתדר עם מעט אור ומעט השקיה ומתאים למשרדים ובתים.",
        "sun": [
            "חצי צל",
            "צל"
        ],
        "soil": [
            "מנוקזת"
        ],
        "water": "נמוכה",
        "priceLow": 45,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "צל",
            "קל לטיפול",
            "משרד"
        ]
    },
    {
        "name": "דקל אריקה",
        "botanical": "Dypsis lutescens",
        "image": "https://source.unsplash.com/900x675/?areca-palm",
        "detail": "דקל רך למראה טרופי, מתאים לעציצים גדולים, פטיו מוצל או פנים הבית באור טוב.",
        "sun": [
            "חצי שמש",
            "חצי צל"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 80,
        "priceHigh": 380,
        "tags": [
            "דקל",
            "טרופי",
            "עציץ",
            "פטיו"
        ]
    },
    {
        "name": "ציפור גן עדן",
        "botanical": "Strelitzia reginae",
        "image": "https://source.unsplash.com/900x675/?bird-of-paradise-plant",
        "detail": "צמח פיסולי עם עלים גדולים ופריחה ייחודית, נפוץ במיכלים ובגינות שמש מוגנות.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 60,
        "priceHigh": 280,
        "tags": [
            "טרופי",
            "פיסולי",
            "פורח",
            "מיכל"
        ]
    },
    {
        "name": "דקל טבעות",
        "botanical": "Archontophoenix cunninghamiana",
        "image": "https://source.unsplash.com/900x675/?palm-tree-garden",
        "detail": "דקל אלגנטי לגינות ולכניסות, מתאים לאזורים מושקים ולמראה ירוק גבוה ורך.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 180,
        "priceHigh": 950,
        "tags": [
            "דקל",
            "עץ",
            "טרופי",
            "כניסה"
        ]
    },
    {
        "name": "דשא אלטורו",
        "botanical": "Zoysia japonica",
        "image": "https://source.unsplash.com/900x675/?lawn-grass",
        "detail": "דשא נפוץ לגינות פרטיות, עמיד יחסית לדריכה ומתאים לשמש מלאה עם השקיה מסודרת.",
        "sun": [
            "שמש מלאה",
            "חצי שמש"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "קבועה",
        "priceLow": 35,
        "priceHigh": 75,
        "tags": [
            "דשא",
            "מרבד",
            "דריכה",
            "משפחה"
        ]
    },
    {
        "name": "ציפורן חתול",
        "botanical": "Tagetes",
        "image": "https://source.unsplash.com/900x675/?marigold-flower",
        "detail": "עונתי צבעוני וזול יחסית, מתאים לערוגות שמש, גבולות ומיכלים עונתיים.",
        "sun": [
            "שמש מלאה"
        ],
        "soil": [
            "לומית",
            "מנוקזת"
        ],
        "water": "בינונית",
        "priceLow": 4,
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "זול"
        ]
    },
    {
        "name": "אמנון ותמר",
        "botanical": "Viola tricolor",
        "image": "https://source.unsplash.com/900x675/?pansy-flower",
        "detail": "עונתי חורפי פופולרי מאוד במשתלות, נותן צבע רך לערוגות, אדניות ומיכלים.",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "חורף",
            "פורח",
            "אדנית"
        ]
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
                    <div class="price">₪${plant.priceLow} - ₪${plant.priceHigh}</div>
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
