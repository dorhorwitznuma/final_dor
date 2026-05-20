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
                קטלוג הצמחים של Gardening Artists מציג 208 צמחים נפוצים במשתלות בישראל מכל אזורי הארץ, לפי שמש, סוג קרקע והשקיה,
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
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/%28MHNT%29_Olea_europaea_-_Inflorescence_and_leaves.jpg/960px-%28MHNT%29_Olea_europaea_-_Inflorescence_and_leaves.jpg",
        "detail": "עץ נפוץ במשתלות בישראל, מתאים לגינה פרטית או לשדרה קטנה כאשר בוחרים מיקום נכון וניקוז טוב.",
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
        "priceLow": 90,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לימון",
        "botanical": "Citrus limon",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Lemon.jpg/960px-Lemon.jpg",
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
        "priceLow": 100,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "תפוז",
        "botanical": "Citrus sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Citrus_sinensis_Lucca_04.jpg/960px-Citrus_sinensis_Lucca_04.jpg",
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
        "priceLow": 110,
        "priceHigh": 590,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קלמנטינה",
        "botanical": "Citrus clementina",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Clementines_%2801014%29s.jpg/960px-Clementines_%2801014%29s.jpg",
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
        "priceLow": 120,
        "priceHigh": 625,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אשכולית",
        "botanical": "Citrus paradisi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Citrus_paradisi_%28Grapefruit%2C_pink%29_white_bg.jpg/960px-Citrus_paradisi_%28Grapefruit%2C_pink%29_white_bg.jpg",
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
        "priceLow": 90,
        "priceHigh": 660,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ליים",
        "botanical": "Citrus aurantiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Caterpillar_of_Chilades_lajus_%28Stoll%2C_1780%29_%E2%80%93_Lime_Blue_on_Citrus_aurantiifolia_attended_by_ants.jpg/960px-Caterpillar_of_Chilades_lajus_%28Stoll%2C_1780%29_%E2%80%93_Lime_Blue_on_Citrus_aurantiifolia_attended_by_ants.jpg",
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
        "priceLow": 100,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "רימון",
        "botanical": "Punica granatum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Punica_granatum_004.JPG/960px-Punica_granatum_004.JPG",
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
        "priceLow": 110,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "תאנה",
        "botanical": "Ficus carica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Ficus_carica_MHNT.BOT.2025.31.38.jpg/960px-Ficus_carica_MHNT.BOT.2025.31.38.jpg",
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
        "priceLow": 120,
        "priceHigh": 590,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "שקד מצוי",
        "botanical": "Prunus dulcis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Almonds_-_in_shell%2C_shell_cracked_open%2C_shelled%2C_blanched.jpg/960px-Almonds_-_in_shell%2C_shell_cracked_open%2C_shelled%2C_blanched.jpg",
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
        "priceLow": 90,
        "priceHigh": 625,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "תות עץ",
        "botanical": "Morus alba",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Morus_alba_MHNT.BOT.2006.0.1270.JPG/960px-Morus_alba_MHNT.BOT.2006.0.1270.JPG",
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
        "priceLow": 100,
        "priceHigh": 660,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "שסק יפני",
        "botanical": "Eriobotrya japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Hortus_Haren_%28Groningen%29_13-12-2025._%28actm.%29_02.jpg/960px-Hortus_Haren_%28Groningen%29_13-12-2025._%28actm.%29_02.jpg",
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
        "priceLow": 110,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אפרסק",
        "botanical": "Prunus persica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Autumn_Red_peaches.jpg/960px-Autumn_Red_peaches.jpg",
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
        "priceLow": 120,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "נקטרינה",
        "botanical": "Prunus persica var. nucipersica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Starr-150217-0313-Prunus_persica_var_nucipersica-Sunraycer_flowering_habit-Hawea_Pl_Olinda-Maui_%2825146492932%29.jpg/960px-Starr-150217-0313-Prunus_persica_var_nucipersica-Sunraycer_flowering_habit-Hawea_Pl_Olinda-Maui_%2825146492932%29.jpg",
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
        "priceLow": 90,
        "priceHigh": 590,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "משמש",
        "botanical": "Prunus armeniaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Apricots.jpg/960px-Apricots.jpg",
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
        "priceLow": 100,
        "priceHigh": 625,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אבוקדו",
        "botanical": "Persea americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Persea_americana_fruit_2.JPG/960px-Persea_americana_fruit_2.JPG",
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
        "priceLow": 110,
        "priceHigh": 660,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מנגו",
        "botanical": "Mangifera indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Mangos_-_single_and_halved.jpg/960px-Mangos_-_single_and_halved.jpg",
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
        "priceLow": 120,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גויאבה",
        "botanical": "Psidium guajava",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Psidium_guajava_07496.jpg/960px-Psidium_guajava_07496.jpg",
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
        "priceLow": 90,
        "priceHigh": 555,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פיגויה",
        "botanical": "Acca sellowiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Acca_sellowiana_Fruit_MHNT_Fronton.jpg/960px-Acca_sellowiana_Fruit_MHNT_Fronton.jpg",
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
        "priceLow": 100,
        "priceHigh": 590,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "חרוב מצוי",
        "botanical": "Ceratonia siliqua",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Ceratonia_siliqua_kz01.jpg/960px-Ceratonia_siliqua_kz01.jpg",
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
        "priceLow": 110,
        "priceHigh": 625,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ברוש מצוי",
        "botanical": "Cupressus sempervirens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Ermita_de_Santo_Domingo%2C_L%C3%A9cera%2C_Zaragoza%2C_Espa%C3%B1a%2C_2017-01-04%2C_DD_103-105_HDR.jpg/960px-Ermita_de_Santo_Domingo%2C_L%C3%A9cera%2C_Zaragoza%2C_Espa%C3%B1a%2C_2017-01-04%2C_DD_103-105_HDR.jpg",
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
        "priceLow": 200,
        "priceHigh": 900,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סיגלון חד עלים",
        "botanical": "Jacaranda mimosifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Jacaranda_mimosifolia_-_Funchal_01.jpg/960px-Jacaranda_mimosifolia_-_Funchal_01.jpg",
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
        "priceLow": 170,
        "priceHigh": 760,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "כליל החורש",
        "botanical": "Cercis siliquastrum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Cercis_siliquastrum_MHNT.jpg/960px-Cercis_siliquastrum_MHNT.jpg",
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
        "priceLow": 180,
        "priceHigh": 795,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לגרסטרמיה הודית",
        "botanical": "Lagerstroemia indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Lagerstroemia_indica_MHNT_Jardin_des_Plantes_de_Toulouse.jpg/960px-Lagerstroemia_indica_MHNT_Jardin_des_Plantes_de_Toulouse.jpg",
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
        "priceLow": 190,
        "priceHigh": 830,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בוהיניה מגוונת",
        "botanical": "Bauhinia variegata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Bauhinia_variegata_MHNT.BOT.2011.3.22.jpg/960px-Bauhinia_variegata_MHNT.BOT.2011.3.22.jpg",
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
        "priceLow": 200,
        "priceHigh": 865,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ברכיכיטון צפצפתי",
        "botanical": "Brachychiton populneus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Kurrajong_%28Brachychiton_populneus%29%2C_Parque_do_Monteiro-Mor%2C_Lisbon%2C_Portugal_julesvernex2.jpg/960px-Kurrajong_%28Brachychiton_populneus%29%2C_Parque_do_Monteiro-Mor%2C_Lisbon%2C_Portugal_julesvernex2.jpg",
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
        "priceLow": 170,
        "priceHigh": 900,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פלפלון בכות",
        "botanical": "Schinus molle",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Schinus_molle_50D_3516.jpg/960px-Schinus_molle_50D_3516.jpg",
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
        "priceLow": 180,
        "priceHigh": 760,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "טיפואנה",
        "botanical": "Tipuana tipu",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Tipuana_tipu.jpg/960px-Tipuana_tipu.jpg",
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
        "priceLow": 190,
        "priceHigh": 795,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלביציה ורודה",
        "botanical": "Albizia julibrissin",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/%28MHNT%29_Albizia_julibrissin_immature_inflorescence.jpg/960px-%28MHNT%29_Albizia_julibrissin_immature_inflorescence.jpg",
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
        "priceLow": 200,
        "priceHigh": 830,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דולב מזרחי",
        "botanical": "Platanus orientalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Quercus_rubra_and_Platanus_orientalis_in_Golden_Valley_Tree_Park%2C_May_2022.jpg/960px-Quercus_rubra_and_Platanus_orientalis_in_Golden_Valley_Tree_Park%2C_May_2022.jpg",
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
        "priceLow": 170,
        "priceHigh": 865,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מכנף נאה",
        "botanical": "Peltophorum dubium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Peltophorum_dubium_var._berteroanum_Peltoforum_2024-01-20_Malaga_01.jpg/960px-Peltophorum_dubium_var._berteroanum_Peltoforum_2024-01-20_Malaga_01.jpg",
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
        "priceLow": 180,
        "priceHigh": 900,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "הדס מצוי",
        "botanical": "Myrtus communis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/%28MHNT%29_Myrtus_communis_subsp._tarentina.jpg/960px-%28MHNT%29_Myrtus_communis_subsp._tarentina.jpg",
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
        "priceLow": 30,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מורן החורש",
        "botanical": "Viburnum tinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/MHNT_Viburnum_tinus.jpg/960px-MHNT_Viburnum_tinus.jpg",
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
        "priceLow": 40,
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלת המסטיק",
        "botanical": "Pistacia lentiscus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Pistacia_lentiscus_001.jpg/960px-Pistacia_lentiscus_001.jpg",
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
        "priceLow": 50,
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לויקופילום",
        "botanical": "Leucophyllum frutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Texas_Sage_--_Leucophyllum_frutescens.jpg/960px-Texas_Sage_--_Leucophyllum_frutescens.jpg",
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
        "priceLow": 60,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "היביסקוס סיני",
        "botanical": "Hibiscus rosa-sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Hibiscus_petal.jpg/960px-Hibiscus_petal.jpg",
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
        "priceLow": 30,
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דורנטה",
        "botanical": "Duranta erecta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Duranta_erecta_002_.jpg/960px-Duranta_erecta_002_.jpg",
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
        "priceLow": 40,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ננדינה",
        "botanical": "Nandina domestica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Nandina_domestica_PfP.jpg/960px-Nandina_domestica_PfP.jpg",
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
        "priceLow": 50,
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פיטוספורום יפני",
        "botanical": "Pittosporum tobira",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Pittosporum_tobira_%28Thunb.%29_W._T._Aliton_JdP.jpg/960px-Pittosporum_tobira_%28Thunb.%29_W._T._Aliton_JdP.jpg",
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
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אוג חרוק",
        "botanical": "Rhus crenata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Dune_Crowberry_-_Rhus_crenata_-_South_Africa_2.jpg/960px-Dune_Crowberry_-_Rhus_crenata_-_South_Africa_2.jpg",
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
        "priceLow": 30,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אבליה גדולת פרחים",
        "botanical": "Abelia x grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/%28MHNT%29_Linnaea_%C3%97_grandiflora_Inflorescence_et_feuilles.jpg/960px-%28MHNT%29_Linnaea_%C3%97_grandiflora_Inflorescence_et_feuilles.jpg",
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
        "priceLow": 40,
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פלומבגו",
        "botanical": "Plumbago auriculata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Zaaddozen_van_Plumbago_auriculata_Locatie._Tuinreservaat_Jonker_vallei_01.jpg/960px-Zaaddozen_van_Plumbago_auriculata_Locatie._Tuinreservaat_Jonker_vallei_01.jpg",
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
        "priceLow": 50,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "הרדוף הנחלים",
        "botanical": "Nerium oleander",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Nerium_oleander_pink.jpg/960px-Nerium_oleander_pink.jpg",
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
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "טקומית הכף",
        "botanical": "Tecoma capensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Tecoma_capensis_01.JPG/960px-Tecoma_capensis_01.JPG",
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
        "priceLow": 30,
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ליגוסטרום יפני",
        "botanical": "Ligustrum japonicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Ligustrum_japonicum_kz01.jpg/960px-Ligustrum_japonicum_kz01.jpg",
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
        "priceLow": 40,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קליסטמון",
        "botanical": "Callistemon citrinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/%C3%81rbol_del_cepillo_%28Callistemon_citrinus%29%2C_Jard%C3%ADn_Bot%C3%A1nico%2C_M%C3%BAnich%2C_Alemania_2012-04-21%2C_DD_01.JPG/960px-%C3%81rbol_del_cepillo_%28Callistemon_citrinus%29%2C_Jard%C3%ADn_Bot%C3%A1nico%2C_M%C3%BAnich%2C_Alemania_2012-04-21%2C_DD_01.JPG",
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
        "priceLow": 50,
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גרווילאה",
        "botanical": "Grevillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Grevillea.jpg/960px-Grevillea.jpg",
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
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גרדניה",
        "botanical": "Gardenia jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Gardenia_jasminoides_%27Pinwheel%27.jpg/960px-Gardenia_jasminoides_%27Pinwheel%27.jpg",
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
        "priceLow": 30,
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אזליאה",
        "botanical": "Rhododendron",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Bloemknop_van_een_Rododendron_%28Rhododendron%29._21-05-2023._%28d.j.b%29_01.jpg/960px-Bloemknop_van_een_Rododendron_%28Rhododendron%29._21-05-2023._%28d.j.b%29_01.jpg",
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
        "priceLow": 40,
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 50,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בודליה",
        "botanical": "Buddleja davidii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Distelfalter%2C_Vanessa_cardui_AUF_Schmetterlingsflieder%2C_Buddleja_davidii_1.JPG/960px-Distelfalter%2C_Vanessa_cardui_AUF_Schmetterlingsflieder%2C_Buddleja_davidii_1.JPG",
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
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "איקליפטוס מסמרי כסף",
        "botanical": "Eucalyptus cinerea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Eucalyptus_cinerea_01.jpg/960px-Eucalyptus_cinerea_01.jpg",
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
        "priceLow": 30,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 40,
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פוטיניה",
        "botanical": "Photinia x fraseri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Photinia_x_fraseri_Zumaia.jpg/960px-Photinia_x_fraseri_Zumaia.jpg",
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
        "priceLow": 50,
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 60,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "רוסליה",
        "botanical": "Russelia equisetiformis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Russelia_equisetiformis_planted_at_sloping_ground.jpg/960px-Russelia_equisetiformis_planted_at_sloping_ground.jpg",
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
        "priceLow": 30,
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קריסה גדולת פרחים",
        "botanical": "Carissa macrocarpa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/BBG_-_Carissa_macrocarpa_var._Horizontalis_-_Cascade_by_Frank_Okamura.jpg/960px-BBG_-_Carissa_macrocarpa_var._Horizontalis_-_Cascade_by_Frank_Okamura.jpg",
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
        "priceLow": 40,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לאורוס אציל",
        "botanical": "Laurus nobilis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Laurus_nobilis_MHNT_Fleurs.jpg/960px-Laurus_nobilis_MHNT_Fleurs.jpg",
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
        "priceLow": 50,
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אקליפה",
        "botanical": "Acalypha wilkesiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Acalypha_wilkesiana%2C_Conservatorio_bot%C3%A1nico%2C_Fort_Wayne%2C_Indiana%2C_Estados_Unidos%2C_2012-11-12%2C_DD_01.jpg/960px-Acalypha_wilkesiana%2C_Conservatorio_bot%C3%A1nico%2C_Fort_Wayne%2C_Indiana%2C_Estados_Unidos%2C_2012-11-12%2C_DD_01.jpg",
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
        "priceHigh": 240,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סנטולינה",
        "botanical": "Santolina chamaecyparissus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Santolina_chamaecyparissus_kz04.jpg/960px-Santolina_chamaecyparissus_kz04.jpg",
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
        "priceLow": 30,
        "priceHigh": 275,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מללויקה",
        "botanical": "Melaleuca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Melaleuca_quadrifida_MHNT.bot.2025.21.33.jpg/960px-Melaleuca_quadrifida_MHNT.bot.2025.21.33.jpg",
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
        "priceLow": 40,
        "priceHigh": 310,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ויסטרינגיה",
        "botanical": "Westringia fruticosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Westringia_fruticosa_%28Willd.%29_Druce_%28as_Westringia_rosmariniformis_Sm.%29.jpg/960px-Westringia_fruticosa_%28Willd.%29_Druce_%28as_Westringia_rosmariniformis_Sm.%29.jpg",
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
        "priceLow": 50,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לנטנה שיחית",
        "botanical": "Lantana montevidensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Lantana_montevidensis.JPG/960px-Lantana_montevidensis.JPG",
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
        "priceHigh": 205,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בוגנוויליה",
        "botanical": "Bougainvillea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Bougainvillea_spectabilis_01.JPG/960px-Bougainvillea_spectabilis_01.JPG",
        "detail": "מטפס נפוץ לפרגולה, גדר או קיר ירוק. מומלץ לספק תמיכה, גיזום וניקוז טוב.",
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
        "priceLow": 40,
        "priceHigh": 190,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 50,
        "priceHigh": 225,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פנדוריאה",
        "botanical": "Pandorea jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Pandorea_jasminoides_planted_in_Tropical_and_Subtropical_Arboretum%2C_Ocean_Expo_Park%2C_Motobu%2C_Okinawa.jpg/960px-Pandorea_jasminoides_planted_in_Tropical_and_Subtropical_Arboretum%2C_Ocean_Expo_Park%2C_Motobu%2C_Okinawa.jpg",
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
        "priceLow": 60,
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פסיפלורה",
        "botanical": "Passiflora edulis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Passionfruit_and_cross_section.jpg/960px-Passionfruit_and_cross_section.jpg",
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
        "priceLow": 70,
        "priceHigh": 295,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ויסטריה",
        "botanical": "Wisteria sinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Wisteria_sinensis%2C_Gibraltar.JPG/960px-Wisteria_sinensis%2C_Gibraltar.JPG",
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
        "priceLow": 40,
        "priceHigh": 330,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גפן מאכל",
        "botanical": "Vitis vinifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Edle_Weinrebe%2C_%27Vitis_vinifera%27_subsp._%27vinifera.jpg/960px-Edle_Weinrebe%2C_%27Vitis_vinifera%27_subsp._%27vinifera.jpg",
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
        "priceLow": 50,
        "priceHigh": 190,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קיסוס החורש",
        "botanical": "Hedera helix",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Ivy_Hedera_Red_Brick_Wall_2892px.jpg/960px-Ivy_Hedera_Red_Brick_Wall_2892px.jpg",
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
        "priceLow": 60,
        "priceHigh": 225,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "טונברגיה",
        "botanical": "Thunbergia grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Thunbergia_grandiflora_kz01.jpg/960px-Thunbergia_grandiflora_kz01.jpg",
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
        "priceLow": 70,
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "יערה יפנית",
        "botanical": "Lonicera japonica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Honeysuckle_2.jpg/960px-Honeysuckle_2.jpg",
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
        "priceLow": 40,
        "priceHigh": 295,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "יסמין רפואי",
        "botanical": "Jasminum officinale",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Jasminum_officinale_1787.jpg/960px-Jasminum_officinale_1787.jpg",
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
        "priceLow": 50,
        "priceHigh": 330,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סולנום מטפס",
        "botanical": "Solanum jasminoides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Solanum_jasminoides_%27Album%27.JPG/960px-Solanum_jasminoides_%27Album%27.JPG",
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
        "priceLow": 60,
        "priceHigh": 190,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אנטיגון",
        "botanical": "Antigonon leptopus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Kozhikode_Beach_01241.JPG/960px-Kozhikode_Beach_01241.JPG",
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
        "priceLow": 70,
        "priceHigh": 225,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פירוסטגיה",
        "botanical": "Pyrostegia venusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Pyrostegia_venusta_flowers.jpg/960px-Pyrostegia_venusta_flowers.jpg",
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
        "priceLow": 40,
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מנדווילה",
        "botanical": "Mandevilla sanderi",
        "image": "https://upload.wikimedia.org/wikipedia/commons/e/ea/Mandevilla_sanderi_%28Hemsl.%29_Woodson_Wereldflora.jpg",
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
        "priceLow": 50,
        "priceHigh": 295,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קלרודנדרון מטפס",
        "botanical": "Clerodendrum thomsoniae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Clerodendrum_Thomsoniae_Merah_Muda.jpg/960px-Clerodendrum_Thomsoniae_Merah_Muda.jpg",
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
        "priceLow": 60,
        "priceHigh": 330,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלמון הודי",
        "botanical": "Quisqualis indica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Combretum_indicum_01.JPG/960px-Combretum_indicum_01.JPG",
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
        "priceLow": 70,
        "priceHigh": 190,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לנטנה",
        "botanical": "Lantana camara",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/LantanaFlowerLeaves.jpg/960px-LantanaFlowerLeaves.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דיאטס",
        "botanical": "Dietes grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Dietes_grandiflora_2.jpg/960px-Dietes_grandiflora_2.jpg",
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
        "priceLow": 14,
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אגפנתוס",
        "botanical": "Agapanthus africanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Agapanthus_%27White_Heaven%27%2C_ingetogen_schoonheid_van_de_ontluikende_bloemknop._Locatie%2C_Tuinreservaat_Jonkervallei_03.jpg/960px-Agapanthus_%27White_Heaven%27%2C_ingetogen_schoonheid_van_de_ontluikende_bloemknop._Locatie%2C_Tuinreservaat_Jonkervallei_03.jpg",
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גאורה",
        "botanical": "Gaura lindheimeri",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Gaura_lindheimeri_Whirling_Butterflies.jpg/960px-Gaura_lindheimeri_Whirling_Butterflies.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מרווה צחורה",
        "botanical": "Salvia leucantha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Salvia_leucantha_1DS-II_4-6674.jpg/960px-Salvia_leucantha_1DS-II_4-6674.jpg",
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
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מרווה גרג",
        "botanical": "Salvia greggii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Salvia_greggii_%27Balmirhopi%27_Sza%C5%82wia_jesienna_2021-08-08_02.jpg/960px-Salvia_greggii_%27Balmirhopi%27_Sza%C5%82wia_jesienna_2021-08-08_02.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 16,
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אכינצאה",
        "botanical": "Echinacea purpurea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/American_lady_on_purple_coneflower_%2874770%29.jpg/960px-American_lady_on_purple_coneflower_%2874770%29.jpg",
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גזניה",
        "botanical": "Gazania rigens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Gazania_rigens_cultivar_in_Conques.jpg/960px-Gazania_rigens_cultivar_in_Conques.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 14,
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ורבנה",
        "botanical": "Verbena",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Bloeiwijze_van_Verbena_bonariensis._07-09-2024._%28d.j.b%29.jpg/960px-Bloeiwijze_van_Verbena_bonariensis._07-09-2024._%28d.j.b%29.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גרניום / פלרגוניום",
        "botanical": "Pelargonium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Staande_geranium_Pelargonium_zonale_wit._20-06-2025._%28actm.%29_02.jpg/960px-Staande_geranium_Pelargonium_zonale_wit._20-06-2025._%28actm.%29_02.jpg",
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
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ליריופה",
        "botanical": "Liriope muscari",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Sagina_procumbens%26Liriope_muscari20230822_22953.jpg/960px-Sagina_procumbens%26Liriope_muscari20230822_22953.jpg",
        "detail": "רב־שנתי או צמח ערוגה נפוץ שנותן צבע, מרקם וכיסוי לאורך זמן בגינה או במיכלים.",
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
        "priceLow": 12,
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אופיופוגון",
        "botanical": "Ophiopogon japonicus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Japonska_ka%C4%8Dja_brada.jpg/960px-Japonska_ka%C4%8Dja_brada.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "איריס גרמני",
        "botanical": "Iris germanica",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/00_1238_Deutsche_Schwertlilie_%28Iris_%C3%97_germanica%29.jpg/960px-00_1238_Deutsche_Schwertlilie_%28Iris_%C3%97_germanica%29.jpg",
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
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "המרוקליס",
        "botanical": "Hemerocallis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Daylily_%28Hemerocallis_fulva%29_v2.jpg/960px-Daylily_%28Hemerocallis_fulva%29_v2.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קוראופסיס",
        "botanical": "Coreopsis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Coreopsis_P8022391.jpg/960px-Coreopsis_P8022391.jpg",
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
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פלוקס",
        "botanical": "Phlox",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Phlox_paniculata_%27Fujiyama%27_%28d.j.b.%29_01.jpg/960px-Phlox_paniculata_%27Fujiyama%27_%28d.j.b.%29_01.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "נפית",
        "botanical": "Nepeta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Leaf_veins_and_velutinous_hairs_of_Nepeta_IMG_8150c.jpg/960px-Leaf_veins_and_velutinous_hairs_of_Nepeta_IMG_8150c.jpg",
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
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "חרצית שיחית",
        "botanical": "Argyranthemum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flower_April_2011-3.jpg/960px-Flower_April_2011-3.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אוזן ארי",
        "botanical": "Leonotis leonurus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Leonotis_leonorus10.jpg/960px-Leonotis_leonorus10.jpg",
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
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 16,
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קליביה",
        "botanical": "Clivia miniata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Natal_lilies_%28Clivia_miniata%29%2C_Jardim_da_Funda%C3%A7%C3%A3o_Calouste_Gulbenkian%2C_Lisbon%2C_Portugal_julesvernex2.jpg/960px-Natal_lilies_%28Clivia_miniata%29%2C_Jardim_da_Funda%C3%A7%C3%A3o_Calouste_Gulbenkian%2C_Lisbon%2C_Portugal_julesvernex2.jpg",
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
        "priceLow": 18,
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 12,
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלסטרומריה",
        "botanical": "Alstroemeria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Bloem_van_een_Alstroemeria_aurea._03-07-2021_%28actm.%29.jpg/960px-Bloem_van_een_Alstroemeria_aurea._03-07-2021_%28actm.%29.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 16,
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "צורית",
        "botanical": "Sedum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Sedum_acre_single_-_Niitv%C3%A4lja.jpg/960px-Sedum_acre_single_-_Niitv%C3%A4lja.jpg",
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ארמריה",
        "botanical": "Armeria maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Armeria_maritima_%28plants%29.jpg/960px-Armeria_maritima_%28plants%29.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ציפורן סיני",
        "botanical": "Dianthus chinensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Dianthus_chinensis_kz02.jpg/960px-Dianthus_chinensis_kz02.jpg",
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
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ורוניקה",
        "botanical": "Veronica spicata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Bombus_norvegicus_-_Veronica_spicata_-_Keila.jpg/960px-Bombus_norvegicus_-_Veronica_spicata_-_Keila.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סקביה",
        "botanical": "Scabiosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Bombus_rupestris_-_Centaurea_scabiosa_-_Keila2.jpg/960px-Bombus_rupestris_-_Centaurea_scabiosa_-_Keila2.jpg",
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
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לבנדר מנוצה",
        "botanical": "Lavandula dentata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Lavandula_dentata_kz03.jpg/960px-Lavandula_dentata_kz03.jpg",
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ארטמיסיה",
        "botanical": "Artemisia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/2020_year._Herbarium._Artemisia_vulgaris._img-020.jpg/960px-2020_year._Herbarium._Artemisia_vulgaris._img-020.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "הליכריסום",
        "botanical": "Helichrysum petiolare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Starr_070621-7414_Helichrysum_petiolare.jpg/960px-Starr_070621-7414_Helichrysum_petiolare.jpg",
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
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קונבולבולוס",
        "botanical": "Convolvulus cneorum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Convolvulus_cneorum_kz05.jpg/960px-Convolvulus_cneorum_kz05.jpg",
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
        "priceHigh": 65,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דיכונדרה כסופה",
        "botanical": "Dichondra argentea",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Dichondra_%27Silver_Falls%27_Pot_1600px.jpg/960px-Dichondra_%27Silver_Falls%27_Pot_1600px.jpg",
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
        "priceHigh": 70,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בקופה",
        "botanical": "Sutera cordata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Hosta_met_Sutera_cordata.JPG/960px-Hosta_met_Sutera_cordata.JPG",
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
        "priceHigh": 75,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פורטולקה רב שנתית",
        "botanical": "Portulaca",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Yellow_Portulaca_flower_in_sunshine%2C_on_black_background.jpg/960px-Yellow_Portulaca_flower_in_sunshine%2C_on_black_background.jpg",
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
        "priceHigh": 80,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אספרגוס מאירי",
        "botanical": "Asparagus densiflorus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Asparagus_densiflorus%2C_Christchurch_Botanic_Gardens%2C_New_Zealand_13.jpg/960px-Asparagus_densiflorus%2C_Christchurch_Botanic_Gardens%2C_New_Zealand_13.jpg",
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
        "priceLow": 18,
        "priceHigh": 85,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "רוזמרין",
        "botanical": "Salvia rosmarinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Rosmarinus_officinalis_MHNT.BOT.2008.1.19.jpg/960px-Rosmarinus_officinalis_MHNT.BOT.2008.1.19.jpg",
        "detail": "צמח תבלין נפוץ למטבח, אדנית או ערוגת שמש. מתאים לשימוש יומיומי ולגינה ריחנית.",
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
        "priceLow": 8,
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לבנדר",
        "botanical": "Lavandula",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Lavandula_multifida.jpg/960px-Lavandula_multifida.jpg",
        "detail": "צמח תבלין נפוץ למטבח, אדנית או ערוגת שמש. מתאים לשימוש יומיומי ולגינה ריחנית.",
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
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מרווה רפואית",
        "botanical": "Salvia officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Salvia_officinalis_Echter_Mehltau-2-_Josef_Schlaghecken.jpg/960px-Salvia_officinalis_Echter_Mehltau-2-_Josef_Schlaghecken.jpg",
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
        "priceHigh": 45,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "נענע",
        "botanical": "Mentha",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Mentha_arvensis_-_p%C3%B5ldm%C3%BCnt_Keila.jpg/960px-Mentha_arvensis_-_p%C3%B5ldm%C3%BCnt_Keila.jpg",
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
        "priceLow": 14,
        "priceHigh": 50,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מנטה",
        "botanical": "Mentha piperita",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Peppermint_Mentha_%C3%97_piperita_IMG_7237.jpg/960px-Peppermint_Mentha_%C3%97_piperita_IMG_7237.jpg",
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
        "priceLow": 8,
        "priceHigh": 55,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בזיליקום",
        "botanical": "Ocimum basilicum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Ocimum_Basilicum_leaf_lighted_by_the_left.jpg/960px-Ocimum_Basilicum_leaf_lighted_by_the_left.jpg",
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
        "priceLow": 10,
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "טימין",
        "botanical": "Thymus vulgaris",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Thymus_vulgaris_Paludi_02.jpg/960px-Thymus_vulgaris_Paludi_02.jpg",
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
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אורגנו",
        "botanical": "Origanum vulgare",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Origanum_vulgare_-_harilik_pune.jpg/960px-Origanum_vulgare_-_harilik_pune.jpg",
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
        "priceLow": 14,
        "priceHigh": 45,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "זעתר",
        "botanical": "Origanum syriacum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Majorana_syriaca_-_za%27atar.jpg/960px-Majorana_syriaca_-_za%27atar.jpg",
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
        "priceLow": 8,
        "priceHigh": 50,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לואיזה",
        "botanical": "Aloysia citrodora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Aloysia_citriodora_002.jpg/960px-Aloysia_citriodora_002.jpg",
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
        "priceLow": 10,
        "priceHigh": 55,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לימונית",
        "botanical": "Cymbopogon citratus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/b/bd/YosriNov04Pokok_Serai.JPG",
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
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פטרוזיליה",
        "botanical": "Petroselinum crispum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Petroselinum_crispum_003.JPG/960px-Petroselinum_crispum_003.JPG",
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
        "priceLow": 14,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "כוסברה",
        "botanical": "Coriandrum sativum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/%28MHNT%29_Coriandrum_sativum_-_inflorescence.jpg/960px-%28MHNT%29_Coriandrum_sativum_-_inflorescence.jpg",
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
        "priceLow": 8,
        "priceHigh": 45,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 10,
        "priceHigh": 50,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "עירית",
        "botanical": "Allium schoenoprasum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Allium_schoenoprasum_001.JPG/960px-Allium_schoenoprasum_001.JPG",
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
        "priceHigh": 55,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "טרגון",
        "botanical": "Artemisia dracunculus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Artemisia_dracunculus_Bylica_estragon_2021-04-27_01.jpg/960px-Artemisia_dracunculus_Bylica_estragon_2021-04-27_01.jpg",
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
        "priceLow": 14,
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מליסה",
        "botanical": "Melissa officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Zitronenmelisse-Melissa_officinalis-Pflanzenvermehrung--Josef_Schlaghecken.jpg/960px-Zitronenmelisse-Melissa_officinalis-Pflanzenvermehrung--Josef_Schlaghecken.jpg",
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
        "priceLow": 8,
        "priceHigh": 40,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "שיבא",
        "botanical": "Artemisia arborescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/f1/Artemisia_arborescens_12052004_Var.jpg",
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
        "priceLow": 10,
        "priceHigh": 45,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אגבה רכה",
        "botanical": "Agave attenuata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Agave_attenuata_001.JPG/960px-Agave_attenuata_001.JPG",
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
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלוורה",
        "botanical": "Aloe vera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Aloe_vera_Lanzarote.jpg/960px-Aloe_vera_Lanzarote.jpg",
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
        "priceLow": 25,
        "priceHigh": 175,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סנסיווריה",
        "botanical": "Dracaena trifasciata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Dracaena_Trifasciata_Plant.jpg/960px-Dracaena_Trifasciata_Plant.jpg",
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
        "priceLow": 35,
        "priceHigh": 210,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אכיווריה",
        "botanical": "Echeveria",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Rosa_de_alabastro_%28Echeveria_elegans%29%2C_jard%C3%ADn_del_molino%2C_Sierra_de_San_Felipe%2C_Set%C3%BAbal%2C_Portugal%2C_2012-05-11%2C_DD_01.JPG/960px-Rosa_de_alabastro_%28Echeveria_elegans%29%2C_jard%C3%ADn_del_molino%2C_Sierra_de_San_Felipe%2C_Set%C3%BAbal%2C_Portugal%2C_2012-05-11%2C_DD_01.JPG",
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
        "priceLow": 45,
        "priceHigh": 245,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קרסולה אובטה",
        "botanical": "Crassula ovata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Among_the_branches_of_a_potted_jade_plant.jpg/960px-Among_the_branches_of_a_potted_jade_plant.jpg",
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
        "priceHigh": 280,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קלנצואה",
        "botanical": "Kalanchoe blossfeldiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Kalanchoe_blossfeldiana_Plant_07.jpg/960px-Kalanchoe_blossfeldiana_Plant_07.jpg",
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
        "priceLow": 25,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "צורית מורגן",
        "botanical": "Sedum morganianum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Sedum_morganianum_%28donkey%27s_tail%29.jpg/960px-Sedum_morganianum_%28donkey%27s_tail%29.jpg",
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
        "priceLow": 35,
        "priceHigh": 175,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סביון כדורי",
        "botanical": "Senecio rowleyanus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Curio_rowleyanus_syn._Senecio_rowleyanus_2019-04-14_02.jpg/960px-Curio_rowleyanus_syn._Senecio_rowleyanus_2019-04-14_02.jpg",
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
        "priceLow": 45,
        "priceHigh": 210,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פורטולקריה",
        "botanical": "Portulacaria afra",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Portulacaria_afra_kz01.jpg/960px-Portulacaria_afra_kz01.jpg",
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
        "priceHigh": 245,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "יוקה",
        "botanical": "Yucca elephantipes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Starr-120522-6291-Yucca_elephantipes-flowers-Iao_Tropical_Gardens_of_Maui-Maui_%2825117106836%29.jpg/960px-Starr-120522-6291-Yucca_elephantipes-flowers-Iao_Tropical_Gardens_of_Maui-Maui_%2825117106836%29.jpg",
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
        "priceLow": 25,
        "priceHigh": 280,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "נולינה",
        "botanical": "Beaucarnea recurvata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Beaucarnea_recurvata_kz01.jpg/960px-Beaucarnea_recurvata_kz01.jpg",
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
        "priceLow": 35,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אופונטיה",
        "botanical": "Opuntia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Opuntia_microdasys_var_angelwings.jpg/960px-Opuntia_microdasys_var_angelwings.jpg",
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
        "priceLow": 45,
        "priceHigh": 175,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אפטניה",
        "botanical": "Aptenia cordifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Starr_080103-1326_Aptenia_cordifolia.jpg/960px-Starr_080103-1326_Aptenia_cordifolia.jpg",
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
        "priceHigh": 210,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "גרפטופטלום",
        "botanical": "Graptopetalum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/%28MHNT%29_Graptopetalum_paraguayense_-_leaves.jpg/960px-%28MHNT%29_Graptopetalum_paraguayense_-_leaves.jpg",
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
        "priceLow": 25,
        "priceHigh": 245,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סדום זוחל",
        "botanical": "Sedum spurium",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/97/Sedum_spurium.jpg",
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
        "priceLow": 35,
        "priceHigh": 280,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלוי אריסטטה",
        "botanical": "Aloe aristata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Aloe_aristata.jpg/960px-Aloe_aristata.jpg",
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
        "priceLow": 45,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אגבה אמריקנה",
        "botanical": "Agave americana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Variegated_Century_Plant_--_Agave_americana_%27Marginata%27.jpg/960px-Variegated_Century_Plant_--_Agave_americana_%27Marginata%27.jpg",
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
        "priceHigh": 175,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 25,
        "priceHigh": 210,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דקל אריקה",
        "botanical": "Dypsis lutescens",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Golden_cane_palm_%28Dypsis_lutescens%29_trunk%2C_Estufa_Fria%2C_Lisbon%2C_Portugal_julesvernex2.jpg/960px-Golden_cane_palm_%28Dypsis_lutescens%29_trunk%2C_Estufa_Fria%2C_Lisbon%2C_Portugal_julesvernex2.jpg",
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
        "priceLow": 70,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דקל טבעות",
        "botanical": "Archontophoenix cunninghamiana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Funchal_Jardim_botanico_Archontophoenix_cunninghamiana_2016_1.jpg/960px-Funchal_Jardim_botanico_Archontophoenix_cunninghamiana_2016_1.jpg",
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
        "priceLow": 80,
        "priceHigh": 655,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "וושינגטוניה חסונה",
        "botanical": "Washingtonia robusta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/2022-02-20_Washingtonia_robusta%2C_Las_Flores%2C_Todos_Santos%2C_Baja_California_Sur%2C_Mexico.jpg/960px-2022-02-20_Washingtonia_robusta%2C_Las_Flores%2C_Todos_Santos%2C_Baja_California_Sur%2C_Mexico.jpg",
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
        "priceLow": 90,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דקל רובליני",
        "botanical": "Phoenix roebelenii",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Starr_070124-3839_Phoenix_roebelenii.jpg/960px-Starr_070124-3839_Phoenix_roebelenii.jpg",
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
        "priceLow": 100,
        "priceHigh": 725,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דקל קנרי",
        "botanical": "Phoenix canariensis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Phoenix_canariensis_003.jpg/960px-Phoenix_canariensis_003.jpg",
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
        "priceLow": 70,
        "priceHigh": 760,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דקל חמדוריאה",
        "botanical": "Chamaedorea elegans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Chamaedorea_elegans_Chamedora_wytworna_2024-01-20_Malaga_04.jpg/960px-Chamaedorea_elegans_Chamedora_wytworna_2024-01-20_Malaga_04.jpg",
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
        "priceLow": 80,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ציפור גן עדן",
        "botanical": "Strelitzia reginae",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Strelitzia_reginae_MHNT.BOT.2009.13.52.jpg/960px-Strelitzia_reginae_MHNT.BOT.2009.13.52.jpg",
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
        "priceLow": 90,
        "priceHigh": 655,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ציפור גן עדן לבנה",
        "botanical": "Strelitzia nicolai",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Strelitzia_larger.jpg/960px-Strelitzia_larger.jpg",
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
        "priceLow": 100,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בננה ננסית",
        "botanical": "Musa acuminata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Musa_acuminata_kz01.jpg/960px-Musa_acuminata_kz01.jpg",
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
        "priceLow": 70,
        "priceHigh": 725,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "הליקוניה",
        "botanical": "Heliconia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Heliconia_latispatha_%28Starwiz%29.jpg/960px-Heliconia_latispatha_%28Starwiz%29.jpg",
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
        "priceLow": 80,
        "priceHigh": 760,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikipedia"
    },
    {
        "name": "פילודנדרון קסנדו",
        "botanical": "Philodendron xanadu",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Philodendron_xanadu_AK1.jpg/960px-Philodendron_xanadu_AK1.jpg",
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
        "priceLow": 90,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אלוקסיה",
        "botanical": "Alocasia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Alocasia_cuprea_%28portrait_orientation%29.jpg/960px-Alocasia_cuprea_%28portrait_orientation%29.jpg",
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
        "priceLow": 100,
        "priceHigh": 655,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קולוקסיה",
        "botanical": "Colocasia esculenta",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Taro_leaf_underside%2C_backlit_by_sun_-_edit.jpg/960px-Taro_leaf_underside%2C_backlit_by_sun_-_edit.jpg",
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
        "priceLow": 70,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אספלניום",
        "botanical": "Asplenium nidus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Asplenium_nidus_%27Fimbriatum%27_kz02.jpg/960px-Asplenium_nidus_%27Fimbriatum%27_kz02.jpg",
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
        "priceLow": 80,
        "priceHigh": 725,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "שרך בוסטון",
        "botanical": "Nephrolepis exaltata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Nephrolepis_exaltata_%27Tiger%27_kz01.jpg/960px-Nephrolepis_exaltata_%27Tiger%27_kz01.jpg",
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
        "priceLow": 90,
        "priceHigh": 760,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קנה סוף ננסי",
        "botanical": "Cyperus alternifolius",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Cyperus_alternifolius_Cibora_zmienna_2024-02-29_Graz_01.jpg/960px-Cyperus_alternifolius_Cibora_zmienna_2024-02-29_Graz_01.jpg",
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
        "priceLow": 100,
        "priceHigh": 620,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פפירוס",
        "botanical": "Cyperus papyrus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Cyperus_papyrus_kz10.jpg/960px-Cyperus_papyrus_kz10.jpg",
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
        "priceLow": 70,
        "priceHigh": 655,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מורינגה מכונפת",
        "botanical": "Moringa oleifera",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Moringa_oleifera_kz01.jpg/960px-Moringa_oleifera_kz01.jpg",
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
        "priceLow": 80,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מונסטרה",
        "botanical": "Monstera deliciosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Monstera_deliciosa_-_Wilhelma_01.jpg/960px-Monstera_deliciosa_-_Wilhelma_01.jpg",
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
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פוטוס",
        "botanical": "Epipremnum aureum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Epipremnum_aureum_31082012.jpg/960px-Epipremnum_aureum_31082012.jpg",
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
        "priceLow": 35,
        "priceHigh": 255,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "זמיה קוקוס",
        "botanical": "Zamioculcas zamiifolia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Zamioculcas_zamiifolia_1.jpg/960px-Zamioculcas_zamiifolia_1.jpg",
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
        "priceLow": 45,
        "priceHigh": 290,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 55,
        "priceHigh": 325,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פיקוס כינורי",
        "botanical": "Ficus lyrata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Starr_031108-0130_Ficus_lyrata.jpg/960px-Starr_031108-0130_Ficus_lyrata.jpg",
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
        "priceHigh": 360,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 35,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דרצנה מרגינטה",
        "botanical": "Dracaena marginata",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/f9/Dracaena_marginata_IndoorPlant_0605k.jpg",
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
        "priceLow": 45,
        "priceHigh": 255,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דרצנה מסנגיאנה",
        "botanical": "Dracaena fragrans",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Dracaena_fragrans_-_Jard%C3%ADn_Bot%C3%A1nico_Canario_Viera_y_Clavijo_-_Gran_Canaria.jpg/960px-Dracaena_fragrans_-_Jard%C3%ADn_Bot%C3%A1nico_Canario_Viera_y_Clavijo_-_Gran_Canaria.jpg",
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
        "priceLow": 55,
        "priceHigh": 290,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ספטיפיליום",
        "botanical": "Spathiphyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Peace_lily_-_2.jpg/960px-Peace_lily_-_2.jpg",
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
        "priceLow": 25,
        "priceHigh": 325,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אנתוריום",
        "botanical": "Anthurium andraeanum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Anthurium_%28Flamingoplant%29_12-08-2019_%28actm%29_01.jpg/960px-Anthurium_%28Flamingoplant%29_12-08-2019_%28actm%29_01.jpg",
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
        "priceLow": 35,
        "priceHigh": 360,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceLow": 45,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "מרנטה",
        "botanical": "Maranta leuconeura",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Maranta_leuconeura_erythroneura_1zz.jpg/960px-Maranta_leuconeura_erythroneura_1zz.jpg",
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
        "priceLow": 55,
        "priceHigh": 255,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פפרומיה",
        "botanical": "Peperomia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Peperomia_pellucida_6963.jpg/960px-Peperomia_pellucida_6963.jpg",
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
        "priceHigh": 290,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סינגוניום",
        "botanical": "Syngonium podophyllum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Syngonium_podophyllum_%28_Arrowhead_plant%29.jpg/960px-Syngonium_podophyllum_%28_Arrowhead_plant%29.jpg",
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
        "priceLow": 35,
        "priceHigh": 325,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סקינדפסוס",
        "botanical": "Scindapsus pictus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Scindapsus_pictus_3358.jpg/960px-Scindapsus_pictus_3358.jpg",
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
        "priceLow": 45,
        "priceHigh": 360,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "דיפנבכיה",
        "botanical": "Dieffenbachia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Dieffenbachia_inflorescence.jpg/960px-Dieffenbachia_inflorescence.jpg",
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
        "priceLow": 55,
        "priceHigh": 220,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אגלאונמה",
        "botanical": "Aglaonema",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Aglaonema_costatum_001.JPG/960px-Aglaonema_costatum_001.JPG",
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
        "priceHigh": 255,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אספידיסטרה",
        "botanical": "Aspidistra elatior",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Aspidistra_01_%28fcm%29.jpg/960px-Aspidistra_01_%28fcm%29.jpg",
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
        "priceLow": 35,
        "priceHigh": 290,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "כלורופיטום",
        "botanical": "Chlorophytum comosum",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Chlorophytum_comosum%2C_flores.jpg/960px-Chlorophytum_comosum%2C_flores.jpg",
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
        "priceLow": 45,
        "priceHigh": 325,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "הויה",
        "botanical": "Hoya carnosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Hoya_FR_2013.jpg/960px-Hoya_FR_2013.jpg",
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
        "priceLow": 55,
        "priceHigh": 360,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "וינקה",
        "botanical": "Catharanthus roseus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Catharanthus_roseus_MHNT.BOT.2005.0962.jpg/960px-Catharanthus_roseus_MHNT.BOT.2005.0962.jpg",
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
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פטוניה",
        "botanical": "Petunia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Petunia_%C3%97_hybrida_-_Karlsruhe.jpg/960px-Petunia_%C3%97_hybrida_-_Karlsruhe.jpg",
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
        "priceLow": 6,
        "priceHigh": 23,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אמנון ותמר",
        "botanical": "Viola tricolor",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Viola_tricolor_Fio%C5%82ek_tr%C3%B3jbarwny_2022-06-29_03.jpg/960px-Viola_tricolor_Fio%C5%82ek_tr%C3%B3jbarwny_2022-06-29_03.jpg",
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
        "priceLow": 8,
        "priceHigh": 28,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "ציפורן חתול",
        "botanical": "Tagetes",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Tagetes_erecta_26122014_%282%29.jpg/960px-Tagetes_erecta_26122014_%282%29.jpg",
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
        "priceLow": 10,
        "priceHigh": 33,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לוע הארי",
        "botanical": "Antirrhinum majus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Antirrhinum_majus_F1_%27Rocket_Orchid%27.jpg/960px-Antirrhinum_majus_F1_%27Rocket_Orchid%27.jpg",
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
        "priceHigh": 38,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סלסלי כסף",
        "botanical": "Lobularia maritima",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Lobularia_maritima_MHNT.BOT.2008.1.2.jpg/960px-Lobularia_maritima_MHNT.BOT.2008.1.2.jpg",
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
        "priceLow": 6,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "לובליה",
        "botanical": "Lobelia erinus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Lobelia_erinus_plant_%2805%29.jpg/960px-Lobelia_erinus_plant_%2805%29.jpg",
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
        "priceLow": 8,
        "priceHigh": 23,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "בגוניה",
        "botanical": "Begonia",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Begonia_grandis_%27claret_jug%27_01.jpg/960px-Begonia_grandis_%27claret_jug%27_01.jpg",
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
        "priceLow": 10,
        "priceHigh": 28,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
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
        "priceHigh": 33,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קוסמוס",
        "botanical": "Cosmos bipinnatus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Cosmos_bipinnatus_Bl%C3%BCte-20230819-RM-123333.jpg/960px-Cosmos_bipinnatus_Bl%C3%BCte-20230819-RM-123333.jpg",
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
        "priceLow": 6,
        "priceHigh": 38,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "חמנית ננסית",
        "botanical": "Helianthus annuus",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Sunflower_macro_wide.jpg/960px-Sunflower_macro_wide.jpg",
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
        "priceLow": 8,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "סלפיגלוסיס",
        "botanical": "Salpiglossis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Salpiglossis_sinuata_kz03.jpg/960px-Salpiglossis_sinuata_kz03.jpg",
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
        "priceLow": 10,
        "priceHigh": 23,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קלנדולה",
        "botanical": "Calendula officinalis",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Zaaddoos_van_een_goudsbloem_%28Calendula_officinalis%29_11-09-2020_%28d.j.b.%29.jpg/960px-Zaaddoos_van_een_goudsbloem_%28Calendula_officinalis%29_11-09-2020_%28d.j.b.%29.jpg",
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
        "priceHigh": 28,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "פורטולקה עונתית",
        "botanical": "Portulaca grandiflora",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Portulaca_oleracea_MHNT.jpg/960px-Portulaca_oleracea_MHNT.jpg",
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
        "priceLow": 6,
        "priceHigh": 33,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "אימפטינס",
        "botanical": "Impatiens walleriana",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Impatiens_walleriana_01.JPG/960px-Impatiens_walleriana_01.JPG",
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
        "priceLow": 8,
        "priceHigh": 38,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
    },
    {
        "name": "קולאוס",
        "botanical": "Plectranthus scutellarioides",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Plectranthus_scutellarioides_NBG_LR.jpg/960px-Plectranthus_scutellarioides_NBG_LR.jpg",
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
        "priceLow": 10,
        "priceHigh": 18,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "Wikimedia Commons"
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
