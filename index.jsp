<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#476653">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Gardening Artists">
<meta name="format-detection" content="telephone=no">
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
    grid-template-columns: 1.4fr repeat(4, 1fr);
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
    -webkit-appearance: none;
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

.size-prices {
    background: var(--cream);
    border-radius: 18px;
    display: grid;
    gap: 8px;
    grid-template-columns: repeat(3, 1fr);
    padding: 10px;
}

.size-price {
    background: rgba(255, 255, 255, 0.78);
    border: 1px solid var(--line);
    border-radius: 14px;
    padding: 8px;
    text-align: center;
}

.size-price strong {
    color: var(--sage-900);
    display: block;
    font-size: 0.78rem;
}

.size-price span {
    color: var(--sage-800);
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

.photo-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
}

.photo-button {
    align-items: center;
    background: var(--sage-100);
    border: 1px solid var(--line);
    border-radius: 999px;
    color: var(--sage-800);
    cursor: pointer;
    font: inherit;
    font-size: 0.84rem;
    font-weight: 900;
    justify-content: center;
    min-height: 44px;
    padding: 8px 12px;
    touch-action: manipulation;
}

.photo-button:hover {
    background: var(--sage-200);
}

.photo-button.secondary {
    background: var(--white);
    color: var(--muted);
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
        padding: 20px 5vw 42px;
    }

    .nav {
        align-items: flex-start;
        flex-direction: column;
        margin-bottom: 34px;
    }

    .nav-links {
        width: 100%;
    }

    .nav-links a {
        flex: 1 1 auto;
        min-height: 44px;
        text-align: center;
    }

    .filters,
    .form-grid,
    .hero-stats,
    .ui-body,
    .plant-grid {
        grid-template-columns: 1fr;
    }

    main {
        padding: 38px 5vw 60px;
    }

    .hero-actions .button,
    .photo-actions,
    .photo-button {
        width: 100%;
    }

    .plant-card-content,
    .panel,
    .hero-card,
    .recommendation-card,
    .rubric-card {
        padding: 18px;
    }

    .meta-row {
        align-items: flex-start;
        flex-direction: column;
    }

    h1 {
        font-size: clamp(2rem, 12vw, 3.3rem);
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
                התמונות מבוססות ככל האפשר על עמודי הצמחים של משתלת מלצר, עם גיבוי לצילומי צמחים כאשר לא נמצאה התאמה במלצר.
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
                <div class="stat"><strong>4</strong>סוגי סינון</div>
                <div class="stat"><strong>₪</strong>קטן / בינוני / גדול</div>
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
                כל כרטיס כולל תמונת צילום של הצמח, מידע בוטני, תנאי גידול מומלצים
                ומחיר משוער לפי גודל קטן, בינוני וגדול בשקלים. ניתן לסנן גם לפי סגנון גינה כמו טרופי, עירוני או ים תיכוני.
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
                <div class="field">
                    <label for="styleFilter">סגנון גינה</label>
                    <select id="styleFilter">
                        <option value="">כל הסגנונות</option>
                        <option value="טרופי">טרופי</option>
                        <option value="עירוני">עירוני / מרפסת</option>
                        <option value="ים תיכוני">ים תיכוני</option>
                        <option value="חסכוני במים">חסכוני במים</option>
                        <option value="פורח וצבעוני">פורח וצבעוני</option>
                        <option value="פרטיות וגדר חיה">פרטיות וגדר חיה</option>
                        <option value="צל ומרפסת">צל ומרפסת</option>
                        <option value="בוסתן ועצי נוי">בוסתן ועצי נוי</option>
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
                <button class="tab" type="button" data-rubric="טרופי">טרופי</button>
                <button class="tab" type="button" data-rubric="עירוני">עירוני</button>
                <button class="tab" type="button" data-rubric="ים תיכוני">ים תיכוני</button>
                <button class="tab" type="button" data-rubric="חסכוני במים">חסכוני במים</button>
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
        <article class="rubric-card">
            <h3>סגנונות גינה</h3>
            <ul>
                <li><strong>טרופי:</strong> עלווה גדולה, דקלים וצמחים בעלי מראה עשיר.</li>
                <li><strong>עירוני:</strong> צמחים למיכלים, מרפסות ושטחים קטנים.</li>
                <li><strong>ים תיכוני וחסכוני:</strong> צמחים עמידים יותר לחום וליובש.</li>
            </ul>
        </article>
    </section>

    <section id="advisor" class="advisor">
        <div class="panel">
            <p class="eyebrow">התאמת צמחים לגינה</p>
            <h2>ספרו לנו על הגינה וקבלו הצעת צמחייה ראשונית.</h2>
            <p>
                לפי כיוון הגינה, כמות השמש, סוג הקרקע, סגנון הגינה, ההשקיה וגודל השטח, האתר מציע צמחים מתאימים ומחשב עלות משוערת בשקלים.
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
                    <label for="advisorStyle">סגנון גינה רצוי</label>
                    <select id="advisorStyle">
                        <option value="">ללא העדפה</option>
                        <option value="טרופי">טרופי</option>
                        <option value="עירוני">עירוני / מרפסת</option>
                        <option value="ים תיכוני">ים תיכוני</option>
                        <option value="חסכוני במים">חסכוני במים</option>
                        <option value="פורח וצבעוני">פורח וצבעוני</option>
                        <option value="פרטיות וגדר חיה">פרטיות וגדר חיה</option>
                        <option value="צל ומרפסת">צל ומרפסת</option>
                        <option value="בוסתן ועצי נוי">בוסתן ועצי נוי</option>
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
                <small>החישוב מבוסס על מחיר גודל בינוני נפוץ במשתלות בישראל וגודל השטח. זו הערכה בלבד; עבודה, אדמה, הובלה ומע"מ אינם כלולים.</small>
            </div>
        </aside>
    </section>
</main>

<footer>
    <strong>Gardening Artists</strong> - התאמת צמחייה לגינות פרטיות בישראל, עם קטלוג צמחים ומחירי התרשמות בשקלים.
</footer>

<script src="remote-photo-service.js"></script>
<script src="client-photos.js"></script>
<script>
const plants = [
    {
        "name": "זית אירופי",
        "botanical": "Olea europaea",
        "image": "https://www.meltser.co.il/pics/plant-3464-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Olive",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Olive",
        "wikipediaExtract": "The olive is a species of subtropical evergreen tree in the family Oleaceae. Originating in Asia Minor, it is abundant throughout the Mediterranean Basin, with wild subspecies in Africa and western Asia; modern cultivars are traced primarily to the Near East, Aegean Sea, and Strait of Gibraltar. The olive is the type species for its genus, Olea, and lends its name to the Oleaceae plant family, which includes lilac, jasmine, forsythia, and ash. The olive fruit is classed botanically as a drupe, similar in structure and function to the cherry or peach. The term oil was originally synonymous with olive oil, the liquid fat derived from olives.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%99%D7%AA_%D7%90%D7%99%D7%A8%D7%95%D7%A4%D7%99",
        "imageTitle": "הרדוף הנחלים 'ננסי' -  Nerium oleander 'Nanum'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=899&plant=%D7%94%D7%A8%D7%93%D7%95%D7%A3%20-%20Nerium",
        "imageDescription": "(c) David Anderson, some rights reserved (CC BY), uploaded by David Anderson",
        "inatTaxonName": "Olea europaea",
        "inatTaxonId": 57140,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "הרדוף הנחלים 'ננסי' -  Nerium oleander 'Nanum'",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "לימון",
        "botanical": "Citrus limon",
        "image": "https://www.meltser.co.il/pics/plant-3049-1.jpg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lemon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon",
        "wikipediaExtract": "The lemon is a species of small evergreen tree in the Citrus genus of the flowering plant family Rutaceae. A true lemon is a hybrid of the citron and the bitter orange. Its origins are uncertain, but some evidence suggests lemons originated during the 1st millennium BC in what is now northeastern India. Some other citrus fruits are called lemon.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%9E%D7%95%D7%9F",
        "imageTitle": "נענה משובלת 'לימון' -  Mentha spicta 'Lemon'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1504&plant=%D7%A0%D7%A2%D7%A0%D7%94%20-%20Mentha",
        "imageDescription": "(c) Sunnetchan, some rights reserved (CC BY-NC-ND), uploaded by Sunnetchan",
        "inatTaxonName": "Citrus × limonia",
        "inatTaxonId": 1275720,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "נענה משובלת 'לימון' -  Mentha spicta 'Lemon'",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "תפוז",
        "botanical": "Citrus sinensis",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/78189/medium.jpg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Citrus × sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Citrus_%C3%97_sinensis",
        "wikipediaExtract": "Citrus × sinensis, is a broadleaf evergreen hybrid between pomelo and mandarin. Hybrid sweet oranges are commonly cultivated fruits that include Valencia oranges, blood oranges and navel oranges.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%A4%D7%95%D7%96",
        "imageTitle": "Kumquat",
        "imagePageUrl": "https://www.inaturalist.org/taxa/343817",
        "imageDescription": "(c) Manuel Martín Vicente, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Citrus japonica",
        "inatTaxonId": 343817,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "קלמנטינה",
        "botanical": "Citrus clementina",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/78189/medium.jpg",
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
        "priceLow": 87,
        "priceHigh": 540,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Clementine",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clementine",
        "wikipediaExtract": "A clementine is a tangor, a citrus fruit hybrid between a willowleaf mandarin orange and a sweet orange, named in honor of Clément Rodier, a French missionary who first discovered and propagated the cultivar in Algeria. The exterior is a deep orange colour with a smooth, glossy appearance. Clementines can be separated into 7 to 14 segments. Similar to tangerines, they tend to be easy to peel. They are typically juicy and sweet, with less acid than oranges. Their oils, like other citrus fruits, contain mostly limonene as well as myrcene, linalool, α-pinene and many complex aromatics.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%9C%D7%9E%D7%A0%D7%98%D7%99%D7%A0%D7%94",
        "imageTitle": "citrus",
        "imagePageUrl": "https://www.inaturalist.org/taxa/54297",
        "imageDescription": "(c) Manuel Martín Vicente, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Citrus",
        "inatTaxonId": 54297,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 87,
            "medium": 225,
            "large": 540
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "אשכולית",
        "botanical": "Citrus paradisi",
        "image": "https://www.meltser.co.il/pics/plant-4955-1.jpg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Grapefruit",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grapefruit",
        "wikipediaExtract": "The grapefruit is a subtropical citrus tree known for its relatively large, sour to semi-sweet, somewhat bitter fruit. The flesh of the fruit is segmented and varies in color from pale yellow to dark red.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A9%D7%9B%D7%95%D7%9C%D7%99%D7%AA",
        "imageTitle": "קניפהופיה אשכולית -  Kniphofia uvaria",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1866&plant=%D7%A7%D7%A0%D7%99%D7%A4%D7%94%D7%95%D7%A4%D7%99%D7%94%20-%20Kniphofia",
        "imageDescription": "(c) Manuel Martín Vicente, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Citrus",
        "inatTaxonId": 54297,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "קניפהופיה אשכולית -  Kniphofia uvaria",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "ליים",
        "botanical": "Citrus aurantiifolia",
        "image": "https://www.meltser.co.il/pics/plant-3754-1.jpg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Key lime",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Key_lime",
        "wikipediaExtract": "The Key lime, also known as West Indian lime, Mexican lime, or Egyptian lime is a type of lime. While it is treated as a species in botanical classification, it originated as a natural hybrid between Citrus micrantha and Citrus medica (citron).",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%99%D7%9D",
        "imageTitle": "פלקטרנטוס פורסטר 'לבן שוליים' -  Plectranthus forsteri 'Marginatus'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1666&plant=%D7%A4%D7%9C%D7%A7%D7%98%D7%A8%D7%A0%D7%98%D7%95%D7%A1%20-%20Plectranthus",
        "imageDescription": "(c) Tony Rodd, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Citrus australasica",
        "inatTaxonId": 122812,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "פלקטרנטוס פורסטר 'לבן שוליים' -  Plectranthus forsteri 'Marginatus'",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "רימון",
        "botanical": "Punica granatum",
        "image": "https://www.meltser.co.il/pics/plant-3552-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pomegranate",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pomegranate",
        "wikipediaExtract": "The pomegranate is a fruit-bearing, deciduous shrub in the family Lythraceae, subfamily Punicoideae, that grows to between 1.5–5 metres (5–16 ft) tall. Rich in symbolic and mythological associations in many cultures, it originated in the region spanning the Caucasus and the Iranian plateau — including modern-day Iran, Turkmenistan, Afghanistan and Pakistan. Pomegranate was first domesticated by ancient Iranians in the Iranian plateau and nearby regions about 5,000 years ago. It is extensively cultivated for its fruit.",
        "imageTitle": "רימון מצוי 'ננסי' -  Punica granatum 'Nana'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1959&plant=%D7%A8%D7%99%D7%9E%D7%95%D7%9F%20-%20Punica",
        "imageDescription": "(c) H. Zell, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Punica granatum",
        "inatTaxonId": 58300,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "רימון מצוי 'ננסי' -  Punica granatum 'Nana'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "תאנה",
        "botanical": "Ficus carica",
        "image": "https://www.meltser.co.il/pics/plant-4461-1.jpg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Fig",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Fig",
        "wikipediaExtract": "The fig is the edible fruit of Ficus carica, a species of tree or shrub in the flowering plant family Moraceae, native to the Mediterranean region, and to western and southern Asia. It has been cultivated since ancient times and is now widely grown throughout the world. Ficus carica is the type species of the genus Ficus, which comprises over 800 tropical and subtropical plant species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%90%D7%A0%D7%94",
        "imageTitle": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2504&plant=%D7%A4%D7%99%D7%A7%D7%95%D7%A1%20-%20Ficus",
        "imageDescription": "(c) Dmitry Savikovsky, all rights reserved, uploaded by Dmitry Savikovsky",
        "inatTaxonName": "Ficus carica",
        "inatTaxonId": 60218,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "שקד מצוי",
        "botanical": "Prunus dulcis",
        "image": "https://static.inaturalist.org/photos/113968708/medium.jpeg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Almond",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Almond",
        "wikipediaExtract": "The almond is a species of tree from the genus Prunus. Along with the peach, it is classified in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the woody shell (endocarp) surrounding the seed.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A7%D7%93_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "Almond",
        "imagePageUrl": "https://www.inaturalist.org/taxa/69936",
        "imageDescription": "(c) antonio c, all rights reserved, uploaded by antonio c",
        "inatTaxonName": "Prunus amygdalus",
        "inatTaxonId": 69936,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "תות עץ",
        "botanical": "Morus alba",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/56582166/medium.jpeg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Morus alba",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Morus_alba",
        "wikipediaExtract": "Morus alba, known as white mulberry, common mulberry and silkworm mulberry, is a fast-growing, small to medium-sized mulberry tree which grows to 10–20 m (33–66 ft) tall. It is native to China and is widely cultivated and naturalized elsewhere. The species is widely cultivated to feed the silkworms employed in the commercial production of silk. It is also notable for the rapid release of its pollen, which is launched at greater than half the speed of sound.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%95%D7%AA_(%D7%A2%D7%A5)",
        "imageTitle": "white mulberry",
        "imagePageUrl": "https://www.inaturalist.org/taxa/56090",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Morus alba",
        "inatTaxonId": 56090,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "שסק יפני",
        "botanical": "Eriobotrya japonica",
        "image": "https://www.meltser.co.il/pics/plant-3236-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Loquat",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Loquat",
        "wikipediaExtract": "The loquat is a large evergreen shrub or tree grown commercially for its orange coloured fruits. It is also cultivated as an ornamental plant.",
        "imageTitle": "איריס / אירוס יפני -  Iris japonica",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=464&plant=%D7%90%D7%99%D7%A8%D7%99%D7%A1%20%2F%20%D7%90%D7%99%D7%A8%D7%95%D7%A1%20-%20Iris",
        "imageDescription": "(c) ms_starla, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Eriobotrya japonica",
        "inatTaxonId": 76949,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "איריס / אירוס יפני -  Iris japonica",
        "meltzerMatchScore": 75,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "אפרסק",
        "botanical": "Prunus persica",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/188900677/medium.jpeg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A4%D7%A8%D7%A1%D7%A7",
        "imageTitle": "Peach",
        "imagePageUrl": "https://www.inaturalist.org/taxa/78755",
        "imageDescription": "(c) Colleen, some rights reserved (CC BY-NC), uploaded by Colleen",
        "inatTaxonName": "Prunus persica",
        "inatTaxonId": 78755,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "נקטרינה",
        "botanical": "Prunus persica var. nucipersica",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/93586249/medium.jpg",
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
        "priceLow": 87,
        "priceHigh": 540,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Peach",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peach",
        "wikipediaExtract": "The peach is a deciduous tree that bears edible juicy fruits with various characteristics. Most are simply called peaches, while the glossy-skinned, non-fuzzy varieties are called nectarines. Though from the same species, they are regarded commercially as different fruits.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A7%D7%98%D7%A8%D7%99%D7%A0%D7%94",
        "imageTitle": "Nectarine",
        "imagePageUrl": "https://www.inaturalist.org/taxa/135421",
        "imageDescription": "(c) Forest and Kim Starr, some rights reserved (CC BY)",
        "inatTaxonName": "Prunus persica nucipersica",
        "inatTaxonId": 135421,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 87,
            "medium": 225,
            "large": 540
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "משמש",
        "botanical": "Prunus armeniaca",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/340357219/medium.jpg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Prunus armeniaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Prunus_armeniaca",
        "wikipediaExtract": "Prunus armeniaca is the most commonly cultivated apricot species. The native range is somewhat uncertain due to its extensive prehistoric cultivation. Genetic studies indicate Central Asia is the center of origin. It is extensively cultivated in many countries and has escaped into the wild in many places. The specific epithet armeniaca refers to the country of Armenia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A9%D7%9E%D7%A9",
        "imageTitle": "apricot",
        "imagePageUrl": "https://www.inaturalist.org/taxa/135331",
        "imageDescription": "(c) PROPOLI87, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Prunus armeniaca",
        "inatTaxonId": 135331,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "אבוקדו",
        "botanical": "Persea americana",
        "image": "https://static.inaturalist.org/photos/188938346/medium.jpg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Avocado",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Avocado",
        "wikipediaExtract": "The avocado, alligator pear or avocado pear is an evergreen tree in the laurel family (Lauraceae). It is native to the Americas, with archaeological evidence of early human avocado use dating back thousands of years across various regions of Central and South America. It was prized for its large and unusually oily fruit. The native range of avocado extends from Mexico to Peru, encompassing much of Central America and parts of northern and western South America.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%95%D7%A7%D7%93%D7%95",
        "imageTitle": "Avocado",
        "imagePageUrl": "https://www.inaturalist.org/taxa/62831",
        "imageDescription": "(c) YOULI HAWAII PHOTOGRAPHY, all rights reserved, uploaded by YOULI HAWAII PHOTOGRAPHY",
        "inatTaxonName": "Persea americana",
        "inatTaxonId": 62831,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "מנגו",
        "botanical": "Mangifera indica",
        "image": "https://static.inaturalist.org/photos/234675028/medium.jpeg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Mangifera indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mangifera_indica",
        "wikipediaExtract": "Mangifera indica, commonly known as the mango after its fruit, is an evergreen species of flowering plant in the family Anacardiaceae. It is a large fruit tree, capable of growing to a height and width of 30 m (100 ft). There are two distinct genetic populations in modern mangoes – the \"Indian type\" and the \"Southeast Asian type\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A0%D7%92%D7%95",
        "imageTitle": "Indian mango",
        "imagePageUrl": "https://www.inaturalist.org/taxa/48872",
        "imageDescription": "(c) Milton Galvis, all rights reserved, uploaded by Milton Galvis",
        "inatTaxonName": "Mangifera indica",
        "inatTaxonId": 48872,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "גויאבה",
        "botanical": "Psidium guajava",
        "image": "https://www.meltser.co.il/pics/plant-2974-1.jpg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Psidium guajava",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Psidium_guajava",
        "wikipediaExtract": "Psidium guajava, the common guava, yellow guava, lemon guava, or apple guava is an evergreen shrub or small tree native to the Americas. It is pollinated by insects. When cultivated, it is pollinated mainly by the common honey bee, Apis mellifera.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%95%D7%99%D7%90%D7%91%D7%94",
        "imageTitle": "גויאבה תותית -  Psidium cattleianum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=645&plant=%D7%92%D7%95%D7%99%D7%90%D7%91%D7%94%20-%20Psidium",
        "imageDescription": "(c) Daniel Dias, some rights reserved (CC BY-SA), uploaded by Daniel Dias",
        "inatTaxonName": "Psidium guajava",
        "inatTaxonId": 62859,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "גויאבה תותית -  Psidium cattleianum",
        "meltzerMatchScore": 215,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "פיגויה",
        "botanical": "Acca sellowiana",
        "image": "https://www.meltser.co.il/pics/plant-2627-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Feijoa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Feijoa",
        "wikipediaExtract": "Feijoa sellowiana, also known as Acca sellowiana (O.Berg) Burret, is a species of flowering plant in the myrtle family, Myrtaceae. It is the only species in the genus Feijoa. It is native mainly to the highlands of Colombia, southern Brazil and the hills of northeast Uruguay, but it can also be found in eastern Paraguay and northern Argentina. It is known as quirina or as feijoa.",
        "imageTitle": "כריך כחלחל -  Carex flacca",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1292&plant=%D7%9B%D7%A8%D7%99%D7%9A%20-%20Carex",
        "imageDescription": "(c) Alejandro Lopez, some rights reserved (CC BY-NC-SA), uploaded by Alejandro Lopez",
        "inatTaxonName": "Feijoa sellowiana",
        "inatTaxonId": 1341071,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "כריך כחלחל -  Carex flacca",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "חרוב מצוי",
        "botanical": "Ceratonia siliqua",
        "image": "https://static.inaturalist.org/photos/74990935/medium.jpg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Carob",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carob",
        "wikipediaExtract": "The carob is a flowering evergreen tree or shrub in the Caesalpinioideae subfamily of the legume family, Fabaceae. The carob tree is native to the Mediterranean region and the Middle East. It is widely cultivated for its edible fruit, which takes the form of seed pods, and as an ornamental tree in gardens and landscapes. Spain is its largest producer, followed by Italy and Morocco.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%97%D7%A8%D7%95%D7%91_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "carob tree",
        "imagePageUrl": "https://www.inaturalist.org/taxa/82742",
        "imageDescription": "(c) Antonio, all rights reserved, uploaded by Antonio",
        "inatTaxonName": "Ceratonia siliqua",
        "inatTaxonId": 82742,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "ברוש מצוי",
        "botanical": "Cupressus sempervirens",
        "image": "https://static.inaturalist.org/photos/169729261/medium.jpg",
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
        "priceLow": 87,
        "priceHigh": 540,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Cupressus sempervirens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cupressus_sempervirens",
        "wikipediaExtract": "Cupressus sempervirens, the Mediterranean cypress, is a species of cypress native to the eastern Mediterranean region and Iran. It is well-adapted to the environmental conditions that it lives in due to its ability to survive in both acidic and alkaline soils and withstand drought. Cupressus sempervirens is important in Mediterranean and Middle Eastern culture. In Iran it is both a sacred tree and a metaphor for \"the graceful figure of the beloved\".",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%A8%D7%95%D7%A9_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "Mediterranean cypress",
        "imagePageUrl": "https://www.inaturalist.org/taxa/64261",
        "imageDescription": "(c) Sergo Travelian, all rights reserved, uploaded by Sergo Travelian",
        "inatTaxonName": "Cupressus sempervirens",
        "inatTaxonId": 64261,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 87,
            "medium": 225,
            "large": 540
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "סיגלון חד עלים",
        "botanical": "Jacaranda mimosifolia",
        "image": "https://www.meltser.co.il/pics/plant-5385-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Jacaranda mimosifolia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jacaranda_mimosifolia",
        "wikipediaExtract": "Jacaranda mimosifolia is a sub-tropical tree native to south-central South America that has been widely planted elsewhere because of its attractive and long-lasting violet-colored flowers. It is also known as the jacaranda, blue jacaranda, black poui, Nupur or fern tree. Older sources call it J. acutifolia, but modern authorities usually classify it as J. mimosifolia. In scientific usage, the name \"jacaranda\" refers to the genus Jacaranda, which has many other members, but in horticultural and everyday usage, it nearly always means the blue jacaranda.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%92%D7%9C%D7%95%D7%9F_%D7%97%D7%93-%D7%A2%D7%9C%D7%99%D7%9D",
        "imageTitle": "סיגלון (ג'קרנדה) חד-עלים -  Jacaranda acutifolia",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2328&plant=%D7%A1%D7%99%D7%92%D7%9C%D7%95%D7%9F%20%28%D7%92",
        "imageDescription": "(c) Rosamond Dong, all rights reserved, uploaded by Rosamond Dong",
        "inatTaxonName": "Jacaranda mimosifolia",
        "inatTaxonId": 77541,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "סיגלון (ג'קרנדה) חד-עלים -  Jacaranda acutifolia",
        "meltzerMatchScore": 150,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "כליל החורש",
        "botanical": "Cercis siliquastrum",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/594991963/medium.jpg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Cercis siliquastrum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cercis_siliquastrum",
        "wikipediaExtract": "Cercis siliquastrum, European Cercis, commonly known as the Judas tree or Judas-tree, is a small deciduous species of redbud in the flowering plant family Fabaceae which is noted for its prolific display of deep pink flowers in spring. It is native to Southern Europe and Western Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%9C%D7%99%D7%9C_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "Judas-tree",
        "imagePageUrl": "https://www.inaturalist.org/taxa/153440",
        "imageDescription": "(c) Alenka Mihoric, some rights reserved (CC BY-NC), uploaded by Alenka Mihoric",
        "inatTaxonName": "Cercis siliquastrum",
        "inatTaxonId": 153440,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "לגרסטרמיה הודית",
        "botanical": "Lagerstroemia indica",
        "image": "https://www.meltser.co.il/pics/plant-5322-1.jpg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lagerstroemia indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lagerstroemia_indica",
        "wikipediaExtract": "Lagerstroemia indica, known as the crape myrtle, is a species of flowering plant in the genus Lagerstroemia of the family Lythraceae. It is native to East Asia, South Asia and Southeast Asia. It is an often multi-stemmed, deciduous tree with a wide spreading, flat topped, rounded, or even spike shaped open habit. The tree is a popular nesting shrub for songbirds and wrens.",
        "imageTitle": "לגרסטמיה  הודית -  Lagerstroemia indica",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=3009&plant=%D7%9C%D7%92%D7%A8%D7%A1%D7%98%D7%9E%D7%99%D7%94%20%20-%20Lagerstroemia",
        "imageDescription": "(c) Rich_Yang, some rights reserved (CC BY-NC), uploaded by Rich_Yang",
        "inatTaxonName": "Lagerstroemia indica",
        "inatTaxonId": 135394,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לגרסטמיה  הודית -  Lagerstroemia indica",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "בוהיניה מגוונת",
        "botanical": "Bauhinia variegata",
        "image": "https://www.meltser.co.il/pics/plant-5591-1.jpg",
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
        "priceLow": 89,
        "priceHigh": 560,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Bauhinia variegata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bauhinia_variegata",
        "wikipediaExtract": "Bauhinia variegata is a species of flowering plant in the legume family, Fabaceae. It is native to an area from China through Southeast Asia to the Indian subcontinent. Common names include orchid tree and mountain ebony.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%94%D7%99%D7%A0%D7%99%D7%94_%D7%9E%D7%92%D7%95%D7%95%D7%A0%D7%AA",
        "imageTitle": "בוהיניה מגוונת 'לבן' -  Bauhinia Variegata 'Candida'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2986&plant=%D7%91%D7%95%D7%94%D7%99%D7%A0%D7%99%D7%94%20-%20Bauhinia",
        "imageDescription": "(c) K W Liu, all rights reserved, uploaded by K W Liu",
        "inatTaxonName": "Bauhinia variegata",
        "inatTaxonId": 68225,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "בוהיניה מגוונת 'לבן' -  Bauhinia Variegata 'Candida'",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 89,
            "medium": 230,
            "large": 560
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "ברכיכיטון צפצפתי",
        "botanical": "Brachychiton populneus",
        "image": "https://www.meltser.co.il/pics/plant-5524-1.jpg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Brachychiton populneus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Brachychiton_populneus",
        "wikipediaExtract": "Brachychiton populneus, commonly known as the kurrajong, is a small to medium-sized tree found naturally in Australia in a diversity of habitats from wetter coastal districts to semi-arid interiors of Victoria, New South Wales and Queensland. Carrejun and carrejan were the indigenous names of trees in the foothills of the Blue Mountains near Sydney, and the bark was used for twine and fishing lines.",
        "imageTitle": "ברכיכיטון אדמוני (בדווילי) -  Brachychiton bidwillii",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2267&plant=%D7%91%D7%A8%D7%9B%D7%99%D7%9B%D7%99%D7%98%D7%95%D7%9F%20-%20Brachychiton",
        "imageDescription": "(c) Salomé Bielsa, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Brachychiton populneus",
        "inatTaxonId": 349248,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "ברכיכיטון אדמוני (בדווילי) -  Brachychiton bidwillii",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "פלפלון בכות",
        "botanical": "Schinus molle",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/382465760/medium.jpeg",
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
        "priceLow": 93,
        "priceHigh": 600,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Schinus molle",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Schinus_molle",
        "wikipediaExtract": "Schinus molle is an evergreen tree that grows to 15 m. It is native to an area from the Peruvian Andes to southern Brazil. The bright pink fruits of S. molle are often sold as \"pink peppercorns\", although it is unrelated to black pepper. The word molle in Schinus molle comes from mulli, the Quechua word for the tree. The tree is host to the pepper-tree moth, Bombycomorpha bifascia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%A4%D7%9C%D7%95%D7%9F_%D7%91%D7%9B%D7%95%D7%AA",
        "imageTitle": "Peruvian Pepper Tree",
        "imagePageUrl": "https://www.inaturalist.org/taxa/57354",
        "imageDescription": "(c) altagray, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Schinus molle",
        "inatTaxonId": 57354,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 93,
            "medium": 240,
            "large": 600
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "טיפואנה",
        "botanical": "Tipuana tipu",
        "image": "https://www.meltser.co.il/pics/plant-5336-1.jpg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Tipuana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tipuana",
        "wikipediaExtract": "Tipuana tipu, also known as tipa, rosewood and pride of Bolivia, is a South American tree.",
        "imageTitle": "מכנף נאה -  Tipuana tipu",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2298&plant=%D7%9E%D7%9B%D7%A0%D7%A3%20-%20Tipuana",
        "imageDescription": "(c) methree, all rights reserved, uploaded by methree",
        "inatTaxonName": "Tipuana tipu",
        "inatTaxonId": 121263,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "מכנף נאה -  Tipuana tipu",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "אלביציה ורודה",
        "botanical": "Albizia julibrissin",
        "image": "https://www.meltser.co.il/pics/plant-4146-1.jpg",
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
        "priceLow": 87,
        "priceHigh": 540,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Albizia julibrissin",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Albizia_julibrissin",
        "wikipediaExtract": "Albizia julibrissin, the Persian silk tree, pink silk tree, or mimosa tree, is a species of tree in the Fabaceae family, native to southwestern and eastern Asia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%91%D7%99%D7%A6%D7%99%D7%94_%D7%95%D7%A8%D7%95%D7%93%D7%94",
        "imageTitle": "אלביציה ורודה -  Albizzia julibrissin",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2303&plant=%D7%90%D7%9C%D7%91%D7%99%D7%A6%D7%99%D7%94%20-%20Albizzia",
        "imageDescription": "(c) Andrew Butko, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Albizia julibrissin",
        "inatTaxonId": 47443,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "אלביציה ורודה -  Albizzia julibrissin",
        "meltzerMatchScore": 210,
        "priceBySize": {
            "small": 87,
            "medium": 225,
            "large": 540
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "דולב מזרחי",
        "botanical": "Platanus orientalis",
        "image": "https://static.inaturalist.org/photos/4532194/medium.jpeg",
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
        "priceLow": 85,
        "priceHigh": 520,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Platanus orientalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Platanus_orientalis",
        "wikipediaExtract": "Platanus orientalis, the Oriental plane, is a large, deciduous tree in the family Platanaceae, growing to 30 m (98 ft) or more, and known for its longevity and spreading crown. In autumn, its deep green leaves may change to blood red, amber, and yellow.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%95%D7%9C%D7%91_%D7%9E%D7%96%D7%A8%D7%97%D7%99",
        "imageTitle": "Oriental Plane",
        "imagePageUrl": "https://www.inaturalist.org/taxa/181682",
        "imageDescription": "(c) Cemil Gezgin, all rights reserved, uploaded by Cemil Gezgin",
        "inatTaxonName": "Platanus orientalis",
        "inatTaxonId": 181682,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 85,
            "medium": 220,
            "large": 520
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "מכנף נאה",
        "botanical": "Peltophorum dubium",
        "image": "https://www.meltser.co.il/pics/plant-5248-1.jpg",
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
        "priceLow": 91,
        "priceHigh": 580,
        "tags": [
            "עץ",
            "משתלה",
            "גינה",
            "צל",
            "trees"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Peltophorum dubium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peltophorum_dubium",
        "wikipediaExtract": "Peltophorum dubium is a tree in the family Fabaceae and subfamily Caesalpinioideae. This species is known as ibirá-pitá in Argentina and Paraguay, árbol de Artigas in Uruguay, and Cambuí in Brazil. It is a large tree, growing around 20–25 meters, with a more or less straight trunk.Foliage: bright green, and deciduous\nLeaves: compound, bipinnate, large. Numerous leaves with a central nervous system.\nFlowers: from 2 cm in diameter, arranged in bundles that end in spikes. The bright visible flowers are in corollas. They flower in the summer and at the beginning of autumn.\nFruits: indehiscent{?} legume, flat, leathery, and brown.\nSeeds: cylindrical with hard nuts.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9B%D7%A0%D7%A3_%D7%A0%D7%90%D7%94",
        "imageTitle": "שלטית מסופקת -  Peltophorum dubium",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2331&plant=%D7%A9%D7%9C%D7%98%D7%99%D7%AA%20-%20Peltophorum",
        "imageDescription": "(c) Eric Fischer Rempe, some rights reserved (CC BY-NC), uploaded by Eric Fischer Rempe",
        "inatTaxonName": "Peltophorum dubium",
        "inatTaxonId": 290016,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "שלטית מסופקת -  Peltophorum dubium",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 91,
            "medium": 235,
            "large": 580
        },
        "gardenStyles": [
            "ים תיכוני",
            "בוסתן ועצי נוי"
        ]
    },
    {
        "name": "הדס מצוי",
        "botanical": "Myrtus communis",
        "image": "https://www.meltser.co.il/pics/plant-3722-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Myrtus communis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Myrtus_communis",
        "wikipediaExtract": "Myrtus communis, the common myrtle or true myrtle, is a species of flowering plant in the myrtle family Myrtaceae. It is an evergreen shrub native to southern Europe, North Africa, Western Asia, Macaronesia, and the Indian subcontinent, and also cultivated.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%93%D7%A1_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "הדס מצוי 'מגוון' -  Myrtus   communis 'variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=874&plant=%D7%94%D7%93%D7%A1%20-%20Myrtus",
        "imageDescription": "(c) Daniel Macías Gómez, some rights reserved (CC BY), uploaded by Daniel Macías Gómez",
        "inatTaxonName": "Myrtus communis",
        "inatTaxonId": 78159,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "הדס מצוי 'מגוון' -  Myrtus   communis 'variegata'",
        "meltzerMatchScore": 290,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "מורן החורש",
        "botanical": "Viburnum tinus",
        "image": "https://www.meltser.co.il/pics/plant-2596-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Viburnum tinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viburnum_tinus",
        "wikipediaExtract": "Viburnum tinus, the laurustinus or laurustine, is a species of flowering plant in the family Adoxaceae, native to the Mediterranean area of Europe and North Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%9F_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "מורן החורש -  Viburnum tinus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2385&plant=%D7%9E%D7%95%D7%A8%D7%9F%20-%20Viburnum",
        "imageDescription": "(c) Cassiopée2010, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Viburnum tinus",
        "inatTaxonId": 82666,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "מורן החורש -  Viburnum tinus",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "אלת המסטיק",
        "botanical": "Pistacia lentiscus",
        "image": "https://www.meltser.co.il/pics/plant-2872-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pistacia lentiscus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pistacia_lentiscus",
        "wikipediaExtract": "Pistacia lentiscus is a dioecious evergreen shrub or small tree of the genus Pistacia native to the Mediterranean Basin. It grows up to 4 m (13 ft) tall and is cultivated for its aromatic resin, mainly on the Greek island of Chios, around the Turkish town of Çeşme and northern parts of Iraq.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%AA_%D7%94%D7%9E%D7%A1%D7%98%D7%99%D7%A7",
        "imageTitle": "אלת המסטיק -  Pistacia lentiscus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=488&plant=%D7%90%D7%9C%D7%AA%20-%20Pistacia",
        "imageDescription": "(c) anonymous, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Pistacia lentiscus",
        "inatTaxonId": 82600,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "אלת המסטיק -  Pistacia lentiscus",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "לויקופילום",
        "botanical": "Leucophyllum frutescens",
        "image": "https://www.meltser.co.il/pics/plant-2743-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Leucophyllum frutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leucophyllum_frutescens",
        "wikipediaExtract": "Leucophyllum frutescens is an evergreen shrub in the figwort family, Scrophulariaceae, native to the U.S. state of Texas, where it is the official \"State Native Shrub of Texas\", and to the states of Coahuila, Nuevo León, and Tamaulipas in northern Mexico. Although commonly known as Texas sage, it is not a true sage and is distinct from the genus Salvia. The species is also called Texas Ranger, Texas rain sage, cenizo, Texas silverleaf, Texas barometerbush, ash-bush, wild lilac, purple sage, senisa, cenicilla, palo cenizo, or hierba del cenizo.",
        "imageTitle": "לבן-עלה (ליקופילום) שיחני 'לבן' -  Leucophyllum frutescens 'Alba'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1312&plant=%D7%9C%D7%91%D7%9F-%D7%A2%D7%9C%D7%94%20%28%D7%9C%D7%99%D7%A7%D7%95%D7%A4%D7%99%D7%9C%D7%95%D7%9D%29%20-%20Leucophyllum",
        "imageDescription": "(c) Tom Langschied, all rights reserved, uploaded by Tom Langschied",
        "inatTaxonName": "Leucophyllum frutescens",
        "inatTaxonId": 123118,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לבן-עלה (ליקופילום) שיחני 'לבן' -  Leucophyllum frutescens 'Alba'",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "היביסקוס סיני",
        "botanical": "Hibiscus rosa-sinensis",
        "image": "https://www.meltser.co.il/pics/plant-3485-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Hibiscus × rosa-sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hibiscus_%C3%97_rosa-sinensis",
        "wikipediaExtract": "Hibiscus × rosa-sinensis is a cultigen of tropical hibiscus, a flowering plant in the Hibiscus genus and Hibisceae tribe of the family Malvaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%91%D7%99%D7%A1%D7%A7%D7%95%D7%A1_%D7%A1%D7%99%D7%A0%D7%99",
        "imageTitle": "היביסקוס סיני 'קופר' -  Hibiscus rosa-sinensis 'Cooperi'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=887&plant=%D7%94%D7%99%D7%91%D7%99%D7%A1%D7%A7%D7%95%D7%A1%20-%20Hibiscus",
        "imageDescription": "(c) ka wai liu, all rights reserved, uploaded by ka wai liu",
        "inatTaxonName": "Hibiscus schizopetalus",
        "inatTaxonId": 62877,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "היביסקוס סיני 'קופר' -  Hibiscus rosa-sinensis 'Cooperi'",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "דורנטה",
        "botanical": "Duranta erecta",
        "image": "https://www.meltser.co.il/pics/plant-3333-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Duranta erecta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Duranta_erecta",
        "wikipediaExtract": "Duranta erecta is a species of flowering shrub in the verbena family Verbenaceae, native from Mexico to South America and the Caribbean. It is widely cultivated as an ornamental plant in tropical and subtropical gardens throughout the world, and has become naturalized in many places. Common names include golden dewdrop, pigeon berry, and skyflower.",
        "imageTitle": "דורנטה מצויה 'גולד אד'ג' -  Duranta erecta 'Gold Edge'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=826&plant=%D7%93%D7%95%D7%A8%D7%A0%D7%98%D7%94%20-%20Duranta",
        "imageDescription": "(c) M, some rights reserved (CC BY-NC), uploaded by M",
        "inatTaxonName": "Duranta erecta",
        "inatTaxonId": 162153,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "דורנטה מצויה 'גולד אד'ג' -  Duranta erecta 'Gold Edge'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "ננדינה",
        "botanical": "Nandina domestica",
        "image": "https://www.meltser.co.il/pics/plant-5258-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Nandina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nandina",
        "wikipediaExtract": "Nandina domestica commonly known as nandina, heavenly bamboo or sacred bamboo, is a species of flowering plant in the family Berberidaceae, native to eastern Asia from the Himalayas to Japan. It is the only member of the monotypic genus Nandina. Despite its name, it is not a true bamboo.",
        "imageTitle": "ננדינה תרבותית -  Nandina domestica",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1497&plant=%D7%A0%D7%A0%D7%93%D7%99%D7%A0%D7%94%20-%20Nandina",
        "imageDescription": "(c) Sam Kieschnick, some rights reserved (CC BY), uploaded by Sam Kieschnick",
        "inatTaxonName": "Nandina domestica",
        "inatTaxonId": 127010,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "ננדינה תרבותית -  Nandina domestica",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "פיטוספורום יפני",
        "botanical": "Pittosporum tobira",
        "image": "https://www.meltser.co.il/pics/plant-5559-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pittosporum tobira",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pittosporum_tobira",
        "wikipediaExtract": "Pittosporum tobira is a species of sweet-smelling flowering plant in the pittosporum family Pittosporaceae known by several common names, including Australian laurel, Japanese pittosporum, mock orange and Japanese cheesewood. It is native to Japan, China, Taiwan, and Korea, but it is used throughout the world as an ornamental plant in landscaping and as cut foliage.",
        "imageTitle": "פיטוספורום יפני ננסי מגוון עלה צר (שם לא וודאי) -  Pittospormum tobira",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2430&plant=%D7%A4%D7%99%D7%98%D7%95%D7%A1%D7%A4%D7%95%D7%A8%D7%95%D7%9D%20-%20Pittospormum",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Pittosporum tobira",
        "inatTaxonId": 78592,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "פיטוספורום יפני ננסי מגוון עלה צר (שם לא וודאי) -  Pittospormum tobira",
        "meltzerMatchScore": 210,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "אוג חרוק",
        "botanical": "Rhus crenata",
        "image": "https://www.meltser.co.il/pics/plant-4017-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Searsia crenata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Searsia_crenata",
        "wikipediaExtract": "Searsia crenata, previously known as Rhus crenata,, is a species of Searsia that is native to South Africa, where it grows in frost-free and light frost areas, especially on beach sand dunes.",
        "imageTitle": "אוג חרוק -  Rhus crenta",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=423&plant=%D7%90%D7%95%D7%92%20-%20Rhus",
        "imageDescription": "(c) Nicola van Berkel, some rights reserved (CC BY-SA), uploaded by Nicola van Berkel",
        "inatTaxonName": "Searsia crenata",
        "inatTaxonId": 593871,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "אוג חרוק -  Rhus crenta",
        "meltzerMatchScore": 250,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "אבליה גדולת פרחים",
        "botanical": "Abelia x grandiflora",
        "image": "https://www.meltser.co.il/pics/plant-3264-1.jpg",
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
        "priceLow": 27,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Abelia × grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Abelia_%C3%97_grandiflora",
        "wikipediaExtract": "Abelia × grandiflora is a hybrid species of flowering plant in the honeysuckle family Caprifoliaceae, raised by hybridising A. chinensis with A. uniflora.",
        "imageTitle": "אבליה גדולת-פרחים 'סנואו שווארס' -  Abelia x grandiflora 'Snow Shower'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2773&plant=%D7%90%D7%91%D7%9C%D7%99%D7%94%20-%20Abelia",
        "imageDescription": "(c) Pieter Pelser, some rights reserved (CC BY), uploaded by Pieter Pelser",
        "inatTaxonName": "Abelia × grandiflora",
        "inatTaxonId": 170458,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "אבליה גדולת-פרחים 'סנואו שווארס' -  Abelia x grandiflora 'Snow Shower'",
        "meltzerMatchScore": 310,
        "priceBySize": {
            "small": 27,
            "medium": 70,
            "large": 170
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "פלומבגו",
        "botanical": "Plumbago auriculata",
        "image": "https://www.meltser.co.il/pics/plant-2885-1.jpg",
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
        "priceLow": 25,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Plumbago auriculata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Plumbago_auriculata",
        "wikipediaExtract": "Plumbago auriculata, the Cape leadwort, blue plumbago or Cape plumbago, is a species of flowering plant in the family Plumbaginaceae, native to South Africa and Mozambique.",
        "imageTitle": "עופרית הכף -  Plumbago auriculata (capensis)",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1590&plant=%D7%A2%D7%95%D7%A4%D7%A8%D7%99%D7%AA%20-%20Plumbago",
        "imageDescription": "(c) Σάββας Ζαφειρίου (Savvas Zafeiriou), some rights reserved (CC BY-NC), uploaded by Σάββας Ζαφειρίου (Savvas Zafeiriou)",
        "inatTaxonName": "Plumbago auriculata",
        "inatTaxonId": 78631,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "עופרית הכף -  Plumbago auriculata (capensis)",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 25,
            "medium": 65,
            "large": 150
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "הרדוף הנחלים",
        "botanical": "Nerium oleander",
        "image": "https://www.meltser.co.il/pics/plant-3464-1.jpg",
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
        "priceLow": 27,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Nerium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nerium",
        "wikipediaExtract": "Nerium oleander, commonly known as oleander, rose laurel, be-still tree or rosebay, is a shrub or small tree cultivated worldwide in temperate and subtropical areas as an ornamental and landscaping plant. It is the only species currently classified in the genus Nerium, belonging to subfamily Apocynoideae of the dogbane family Apocynaceae. It is so widely cultivated that no precise region of origin has been identified, though it is usually associated with the Mediterranean Basin.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%A8%D7%93%D7%95%D7%A3_%D7%94%D7%A0%D7%97%D7%9C%D7%99%D7%9D",
        "imageTitle": "הרדוף הנחלים 'ננסי' -  Nerium oleander 'Nanum'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=899&plant=%D7%94%D7%A8%D7%93%D7%95%D7%A3%20-%20Nerium",
        "imageDescription": "(c) Cheng-wei, Liu (Jack), some rights reserved (CC BY-NC), uploaded by Cheng-wei, Liu (Jack)",
        "inatTaxonName": "Nerium oleander",
        "inatTaxonId": 47563,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "הרדוף הנחלים 'ננסי' -  Nerium oleander 'Nanum'",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 27,
            "medium": 70,
            "large": 170
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "טקומית הכף",
        "botanical": "Tecoma capensis",
        "image": "https://www.meltser.co.il/pics/plant-2818-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Tecomaria capensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tecomaria_capensis",
        "wikipediaExtract": "Tecomaria capensis, the Cape honeysuckle, is a species of flowering plant in the family Bignoniaceae, native to southern Africa. Despite its common name, it is not closely related to the true honeysuckle.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%98%D7%A7%D7%95%D7%9E%D7%99%D7%AA_%D7%94%D7%9B%D7%A3",
        "imageTitle": "דק-פרי (טקומית הכף) הכף -  Tecoma capensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=856&plant=%D7%93%D7%A7-%D7%A4%D7%A8%D7%99%20%28%D7%98%D7%A7%D7%95%D7%9E%D7%99%D7%AA%20%D7%94%D7%9B%D7%A3%29%20-%20Tecoma",
        "imageDescription": "(c) Corrie du Toit, some rights reserved (CC BY-NC), uploaded by Corrie du Toit",
        "inatTaxonName": "Tecomaria capensis",
        "inatTaxonId": 286772,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "דק-פרי (טקומית הכף) הכף -  Tecoma capensis",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "ליגוסטרום יפני",
        "botanical": "Ligustrum japonicum",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/212659302/medium.jpg",
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
        "priceLow": 25,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Ligustrum japonicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ligustrum_japonicum",
        "wikipediaExtract": "Ligustrum japonicum, known as wax-leaf privet or Japanese privet is a species of Ligustrum (privet) native to central and southern Japan and Korea. It is widely cultivated in other regions, and is naturalized in California and in the southeastern United States from Texas to Virginia.",
        "imageTitle": "wax-leaf ligustrum",
        "imagePageUrl": "https://www.inaturalist.org/taxa/77739",
        "imageDescription": "(c) \nKENPEI, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Ligustrum japonicum",
        "inatTaxonId": 77739,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 25,
            "medium": 65,
            "large": 150
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "קליסטמון",
        "botanical": "Callistemon citrinus",
        "image": "https://www.meltser.co.il/pics/plant-4769-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Melaleuca citrina",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca_citrina",
        "wikipediaExtract": "Melaleuca citrina, the common red bottlebrush, crimson bottlebrush, or lemon bottlebrush, is a plant in the myrtle family Myrtaceae, and is endemic to eastern Australia. Some Australian state herbaria continue to use the name Callistemon citrinus. It is a hardy and adaptable species, common in its natural habitat. It is widely cultivated, not only in Australia. It was one of the first Australian plants to be grown outside the country, having been taken to England in 1770 by Joseph Banks. Its showy red flower spikes, present over most of the year in an ideal situation, account for its popularity.",
        "imageTitle": "קליסטמון תרוג (ציטרינוס) -  Callistemon citrinus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1847&plant=%D7%A7%D7%9C%D7%99%D7%A1%D7%98%D7%9E%D7%95%D7%9F%20-%20Callistemon",
        "imageDescription": "(c) grushenkiki, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Melaleuca citrina",
        "inatTaxonId": 77976,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "קליסטמון תרוג (ציטרינוס) -  Callistemon citrinus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "גרווילאה",
        "botanical": "Grevillea",
        "image": "https://www.meltser.co.il/pics/plant-3949-1.jpg",
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
        "priceLow": 25,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Grevillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Grevillea",
        "wikipediaExtract": "Grevillea, commonly known as spider flowers, is a genus of about 360 species of evergreen flowering plants in the family Proteaceae. Plants in the genus Grevillea are shrubs, rarely trees, with the leaves arranged alternately along the branches, the flowers zygomorphic, arranged in racemes at the ends of branchlets, and the fruit a follicle that splits down one side only, releasing one or two seeds.",
        "imageTitle": "גרווילאה  'ג'ו מייסון' -  Grevillea  'Joe Mason'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2048&plant=%D7%92%D7%A8%D7%95%D7%95%D7%99%D7%9C%D7%90%D7%94%20-%20Grevillea",
        "imageDescription": "(c) Mike Lusk, some rights reserved (CC BY-NC), uploaded by Mike Lusk",
        "inatTaxonName": "Grevillea",
        "inatTaxonId": 64515,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "גרווילאה  'ג'ו מייסון' -  Grevillea  'Joe Mason'",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 25,
            "medium": 65,
            "large": 150
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "גרדניה",
        "botanical": "Gardenia jasminoides",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/430635084/medium.jpeg",
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
        "priceLow": 27,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Gardenia jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gardenia_jasminoides",
        "wikipediaExtract": "Gardenia jasminoides, commonly known as gardenia and cape jasmine, is an evergreen flowering plant in the coffee family Rubiaceae. It is native to the subtropical and northern tropical parts of the Far East. Wild plants range from 30 centimetres to 3 metres in height. They have a rounded habit with very dense branches with opposite leaves that are lanceolate-oblong, leathery or gathered in groups on the same node and by a dark green, shiny and slightly waxy surface and prominent veins.",
        "imageTitle": "common gardenia",
        "imagePageUrl": "https://www.inaturalist.org/taxa/210990",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Gardenia jasminoides",
        "inatTaxonId": 210990,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 27,
            "medium": 70,
            "large": 170
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "אזליאה",
        "botanical": "Rhododendron",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/64017840/medium.jpeg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Rhododendron",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rhododendron",
        "wikipediaExtract": "Rhododendron, from Ancient Greek ῥόδον (rhódon), meaning \"rose\", and δένδρον (déndron), meaning \"tree\", is a very large genus of about 1,024 species of woody plants in the heath family (Ericaceae). They can be either evergreen or deciduous. Most species are native to eastern Asia and the Himalayan region, but smaller numbers occur elsewhere in Asia, and in North America, Europe and Australia.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%93%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F",
        "imageTitle": "Rhododendron",
        "imagePageUrl": "https://www.inaturalist.org/taxa/855415",
        "imageDescription": "(c) Игорь Поспелов, some rights reserved (CC BY-NC), uploaded by Игорь Поспелов",
        "inatTaxonName": "Rhododendron",
        "inatTaxonId": 855415,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "קמליה",
        "botanical": "Camellia japonica",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/114800079/medium.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Camellia japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Camellia_japonica",
        "wikipediaExtract": "Camellia japonica, known as common camellia, or Japanese camellia, is a species of flowering plant from the genus Camellia in the tea family Theaceae. It is native to China and Japan, and grows naturally in forests at altitudes of around 300–1,100 metres (980–3,600 ft).",
        "imageTitle": "Japanese camellia",
        "imagePageUrl": "https://www.inaturalist.org/taxa/83056",
        "imageDescription": "(c) Observações Naturalistas | Bruno Uehara, some rights reserved (CC BY-NC), uploaded by Observações Naturalistas | Bruno Uehara",
        "inatTaxonName": "Camellia japonica",
        "inatTaxonId": 83056,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "בודליה",
        "botanical": "Buddleja davidii",
        "image": "https://www.meltser.co.il/pics/plant-3321-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Buddleja davidii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Buddleja_davidii",
        "wikipediaExtract": "Buddleja davidii, also called butterfly-bush, orange eye, or summer lilac, is a species of flowering plant in the family Scrophulariaceae, native to most of China except for the far northeast. It is widely used as an ornamental plant, and many named cultivars are in cultivation. The genus was named Buddleja after the English botanist, Reverend Adam Buddle. The species name, davidii, is after the French missionary and explorer in China, Father Armand David, who was the first European to report the shrub. It was found near Yichang by Dr Augustine Henry about 1887 and sent to St Petersburg. Another botanist-missionary in China, Jean-André Soulié, sent seed to the French nursery Vilmorin, and B. davidii entered commerce in the 1890s.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%93%D7%9C%D7%99%D7%94",
        "imageTitle": "בודליית דוויד זן גנני ננסי (שם הזן המדויק לא ידוע) -  Buddleja davidii dwarf cv.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2513&plant=%D7%91%D7%95%D7%93%D7%9C%D7%99%D7%99%D7%AA%20-%20Buddleja",
        "imageDescription": "(c) Izigabo, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Buddleja davidii",
        "inatTaxonId": 75916,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "בודליית דוויד זן גנני ננסי (שם הזן המדויק לא ידוע) -  Buddleja davidii dwarf cv.",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "איקליפטוס מסמרי כסף",
        "botanical": "Eucalyptus cinerea",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/68014849/medium.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Eucalyptus cinerea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Eucalyptus_cinerea",
        "wikipediaExtract": "Eucalyptus cinerea, commonly known as the Argyle apple, mealy stringbark or silver dollar tree, is a species of small- to medium-sized tree that is endemic to south-eastern Australia. It has rough, fibrous bark on the trunk and branches, usually only juvenile, glaucous, egg-shaped evergreen leaves, flower buds in groups of three, white flowers and conical to bell-shaped fruit.",
        "imageTitle": "Argyle apple",
        "imagePageUrl": "https://www.inaturalist.org/taxa/162748",
        "imageDescription": "(c) Dean Nicolle, some rights reserved (CC BY-NC), uploaded by Dean Nicolle",
        "inatTaxonName": "Eucalyptus cinerea",
        "inatTaxonId": 162748,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "סיזיגיום",
        "botanical": "Syzygium australe",
        "image": "https://www.meltser.co.il/pics/plant-3054-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Syzygium australe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syzygium_australe",
        "wikipediaExtract": "Syzygium australe, with many common names that include brush cherry, scrub cherry, creek lilly-pilly, creek satinash, and watergum, is a rainforest tree native to eastern Australia. It can attain a height of up to 35 m with a trunk diameter of 60 cm. In cultivation, this species is usually a small to medium-sized tree with a maximum height of only 18m.",
        "imageTitle": "סיזיגיון מכבדי -  Syzygium paniculatum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2544&plant=%D7%A1%D7%99%D7%96%D7%99%D7%92%D7%99%D7%95%D7%9F%20-%20Syzygium",
        "imageDescription": "(c) Reiner Richter, some rights reserved (CC BY-NC-SA), uploaded by Reiner Richter",
        "inatTaxonName": "Syzygium australe",
        "inatTaxonId": 79311,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "סיזיגיון מכבדי -  Syzygium paniculatum",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "פוטיניה",
        "botanical": "Photinia x fraseri",
        "image": "https://www.meltser.co.il/pics/plant-3010-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Photinia × fraseri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Photinia_%C3%97_fraseri",
        "wikipediaExtract": "Photinia × fraseri, known as red tip photinia and Christmas berry, is a nothospecies in the rose family, Rosaceae. It is a hybrid between Photinia glabra and Photinia serratifolia.",
        "imageTitle": "פוטיניה x פרזרי 'רד רובין' -  Photinia x fraseri 'Red Robin'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1612&plant=%D7%A4%D7%95%D7%98%D7%99%D7%A0%D7%99%D7%94%20-%20Photinia",
        "imageDescription": "(c) Natalie Wilkinson, some rights reserved (CC BY-NC), uploaded by Natalie Wilkinson",
        "inatTaxonName": "Photinia × fraseri",
        "inatTaxonId": 181681,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "פוטיניה x פרזרי 'רד רובין' -  Photinia x fraseri 'Red Robin'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "דודונאה",
        "botanical": "Dodonaea viscosa",
        "image": "https://www.meltser.co.il/pics/plant-3967-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Dodonaea viscosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dodonaea_viscosa",
        "wikipediaExtract": "Dodonaea viscosa, also known as the broadleaf hopbush, is a species of flowering plant in the Dodonaea (hopbush) genus that has a cosmopolitan distribution in tropical, subtropical and warm temperate regions of Africa, the Americas, southern Asia and Australasia. Dodonaea is part of Sapindaceae, the soapberry family.",
        "imageTitle": "דודוניאה דביקה -  Dodonaea viscosa",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=818&plant=%D7%93%D7%95%D7%93%D7%95%D7%A0%D7%99%D7%90%D7%94%20-%20Dodonaea",
        "imageDescription": "(c) María Eugenia Mendiola González, some rights reserved (CC BY-NC-SA), uploaded by María Eugenia Mendiola González",
        "inatTaxonName": "Dodonaea viscosa",
        "inatTaxonId": 122711,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "דודוניאה דביקה -  Dodonaea viscosa",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "רוסליה",
        "botanical": "Russelia equisetiformis",
        "image": "https://www.meltser.co.il/pics/plant-5435-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Russelia equisetiformis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Russelia_equisetiformis",
        "wikipediaExtract": "Russelia equisetiformis, the fountainbush, firecracker plant, coral plant, coral fountain, coralblow or fountain plant, is a species of flowering plant in the family Plantaginaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%A1%D7%9C%D7%99%D7%94",
        "imageTitle": "רוסליה שבטבטית -  Russelia equisetiformis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1946&plant=%D7%A8%D7%95%D7%A1%D7%9C%D7%99%D7%94%20-%20Russelia",
        "imageDescription": "(c) Mauricio Mercadante, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Russelia equisetiformis",
        "inatTaxonId": 122519,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "רוסליה שבטבטית -  Russelia equisetiformis",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "קריסה גדולת פרחים",
        "botanical": "Carissa macrocarpa",
        "image": "https://www.meltser.co.il/pics/plant-2685-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 190,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Carissa macrocarpa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Carissa_macrocarpa",
        "wikipediaExtract": "Carissa macrocarpa is a shrub native to tropical and southern Africa. It is commonly known as the Natal plum, amathungulu, big num-num or large num-num.",
        "imageTitle": "קריסה גדולת-פרי (גדולת-פרחים) 'גרין קרפט' -  Carissa macrocarpa (grandiflora) 'Green Carpet'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1881&plant=%D7%A7%D7%A8%D7%99%D7%A1%D7%94%20-%20Carissa",
        "imageDescription": "(c) Mané Salinas Rodríguez, all rights reserved, uploaded by Mané Salinas Rodríguez",
        "inatTaxonName": "Carissa macrocarpa",
        "inatTaxonId": 130215,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "קריסה גדולת-פרי (גדולת-פרחים) 'גרין קרפט' -  Carissa macrocarpa (grandiflora) 'Green Carpet'",
        "meltzerMatchScore": 310,
        "priceBySize": {
            "small": 29,
            "medium": 75,
            "large": 190
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "לאורוס אציל",
        "botanical": "Laurus nobilis",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/150103946/medium.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Laurus nobilis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Laurus_nobilis",
        "wikipediaExtract": "Laurus nobilis is an aromatic evergreen tree or large shrub with green, glabrous (smooth) leaves. It is in the flowering plant family Lauraceae. According to Muer, Jahn, & Sauerbier, the stem can be 1 metre in diameter and the tree can be as high as 20 metres. It is native to the Mediterranean region and is used as bay leaf for seasoning in cooking. Its common names include bay tree, bay laurel, sweet bay, true laurel, Grecian laurel, or simply laurel. Laurus nobilis figures prominently in classical Greco-Roman culture.",
        "imageTitle": "Bay laurel",
        "imagePageUrl": "https://www.inaturalist.org/taxa/54759",
        "imageDescription": "(c) Sarah Gregg, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Laurus nobilis",
        "inatTaxonId": 54759,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "אקליפה",
        "botanical": "Acalypha wilkesiana",
        "image": "https://www.meltser.co.il/pics/plant-2664-1.jpg",
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
        "priceLow": 27,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Acalypha wilkesiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Acalypha_wilkesiana",
        "wikipediaExtract": "Acalypha wilkesiana, common names copperleaf, Jacob's coat and Flamengueira, is an evergreen shrub growing to 3 metres (9.8 ft) high and 2 metres across. It has a closely arranged crown, with an erect stem and many branches. Both the branches and the leaves are covered in fine hairs. The leaves, which may be flat or crinkled, are large and broad with teeth around the edge. They can be 10–20 centimetres (3.9–7.9 in) long and 15 centimetres (5.9 in) wide. The leaves are coppery green with red splashes, giving them a mottled appearance. Separate male and female flowers appear on the same plant. The male flowers are in long spikes which hang downwards while the female flowers are in short spikes. The latter do not show up easily as they are often hidden among the leaves. The flower stalks are 10–20 cm long.",
        "imageTitle": "אקליפה מגוונת 'מלול' -  Acalypha wilkesiana 'Marginata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=525&plant=%D7%90%D7%A7%D7%9C%D7%99%D7%A4%D7%94%20-%20Acalypha",
        "imageDescription": "(c) Amanda Morganton, all rights reserved, uploaded by Amanda Morganton",
        "inatTaxonName": "Acalypha wilkesiana",
        "inatTaxonId": 281562,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "אקליפה מגוונת 'מלול' -  Acalypha wilkesiana 'Marginata'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 27,
            "medium": 70,
            "large": 170
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "סנטולינה",
        "botanical": "Santolina chamaecyparissus",
        "image": "https://www.meltser.co.il/pics/plant-2633-1.jpg",
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
        "priceLow": 27,
        "priceHigh": 170,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Santolina chamaecyparissus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Santolina_chamaecyparissus",
        "wikipediaExtract": "Santolina chamaecyparissus, known as cotton lavender or lavender-cotton, is a species of flowering plant in the family Asteraceae, native to the western and central Mediterranean.",
        "imageTitle": "סנטולינה ננסית -  Santolina chamaecyparissus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1568&plant=%D7%A1%D7%A0%D7%98%D7%95%D7%9C%D7%99%D7%A0%D7%94%20-%20Santolina",
        "imageDescription": "(c) Alwyn Ladell, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Santolina chamaecyparissus",
        "inatTaxonId": 53778,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "סנטולינה ננסית -  Santolina chamaecyparissus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 27,
            "medium": 70,
            "large": 170
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "מללויקה",
        "botanical": "Melaleuca",
        "image": "https://www.meltser.co.il/pics/plant-2735-1.jpg",
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
        "priceLow": 25,
        "priceHigh": 150,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Melaleuca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Melaleuca",
        "wikipediaExtract": "Melaleuca is a genus of nearly 300 species of plants in the myrtle family, Myrtaceae, commonly known as paperbarks, honey-myrtles, bottlebrushes or tea-trees. They range in size from small shrubs that rarely grow to more than 1 m high, to trees up to 35 m (115 ft). Their flowers generally occur in groups, forming a \"head\" or \"spike\" resembling a brush used for cleaning bottles, containing up to 80 individual flowers.",
        "imageTitle": "מללויקה דקת-עלים 'קלרט טופס' -  Melaleuca linariifolia 'Clart Tops'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1419&plant=%D7%9E%D7%9C%D7%9C%D7%95%D7%99%D7%A7%D7%94%20-%20Melaleuca",
        "imageDescription": "(c) Klaus Bohn, some rights reserved (CC BY-NC), uploaded by Klaus Bohn",
        "inatTaxonName": "Melaleuca",
        "inatTaxonId": 72232,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "מללויקה דקת-עלים 'קלרט טופס' -  Melaleuca linariifolia 'Clart Tops'",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 25,
            "medium": 65,
            "large": 150
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "ויסטרינגיה",
        "botanical": "Westringia fruticosa",
        "image": "https://www.meltser.co.il/pics/plant-2740-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 210,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Westringia fruticosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Westringia_fruticosa",
        "wikipediaExtract": "Westringia fruticosa, the coastal rosemary or coastal westringia, is a shrub that grows near the coast in eastern Australia.",
        "imageTitle": "וסטרינגיה שיחנית -  Westringia fruticosa",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=916&plant=%D7%95%D7%A1%D7%98%D7%A8%D7%99%D7%A0%D7%92%D7%99%D7%94%20-%20Westringia",
        "imageDescription": "(c) Charles Dove, all rights reserved, uploaded by Charles Dove",
        "inatTaxonName": "Westringia fruticosa",
        "inatTaxonId": 353888,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "וסטרינגיה שיחנית -  Westringia fruticosa",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 31,
            "medium": 80,
            "large": 210
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "לנטנה שיחית",
        "botanical": "Lantana montevidensis",
        "image": "https://www.meltser.co.il/pics/plant-3150-1.jpg",
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
        "priceLow": 33,
        "priceHigh": 230,
        "tags": [
            "שיח",
            "גדר חיה",
            "משתלה",
            "פרטיות",
            "shrubs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lantana montevidensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_montevidensis",
        "wikipediaExtract": "Lantana montevidensis is a species of lantana native to South America that often forms dense thickets and mats over the ground. It is known by many common names, such as: trailing lantana, weeping lantana, creeping lantana, small lantana, purple lantana or trailing shrubverbena.",
        "imageTitle": "לנטנה עדינה -  Lantana montevidensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2457&plant=%D7%9C%D7%A0%D7%98%D7%A0%D7%94%20-%20Lantana",
        "imageDescription": "(c) Francisco Clamote, all rights reserved, uploaded by Francisco Clamote",
        "inatTaxonName": "Lantana montevidensis",
        "inatTaxonId": 77624,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לנטנה עדינה -  Lantana montevidensis",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 33,
            "medium": 85,
            "large": 230
        },
        "gardenStyles": [
            "ים תיכוני",
            "פרטיות וגדר חיה"
        ]
    },
    {
        "name": "בוגנוויליה",
        "botanical": "Bougainvillea",
        "image": "https://www.meltser.co.il/pics/plant-5474-1.jpg",
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
        "priceLow": 41,
        "priceHigh": 240,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Bougainvillea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Bougainvillea",
        "wikipediaExtract": "Bougainvillea is a genus of thorny ornamental vines, bushes, and trees belonging to the family Nyctaginaceae. They are native to the tropical forests of South America. There are between 4 and 22 species in the genus. The inflorescence consists of large colorful sepal-like bracts which surround three simple waxy flowers, gaining popularity for the plant as an ornamental. The plant is named after explorer Louis Antoine de Bougainville (1729–1811), after it was documented on one of his expeditions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%92%D7%A0%D7%95%D7%95%D7%99%D7%9C%D7%99%D7%94",
        "imageTitle": "בוגנווילאה  'מיני-תאי' -  Bougainvillea  'Mini Thai'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=551&plant=%D7%91%D7%95%D7%92%D7%A0%D7%95%D7%95%D7%99%D7%9C%D7%90%D7%94%20-%20Bougainvillea",
        "imageDescription": "(c) Martin LaBar, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Bougainvillea",
        "inatTaxonId": 53804,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "בוגנווילאה  'מיני-תאי' -  Bougainvillea  'Mini Thai'",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 41,
            "medium": 95,
            "large": 240
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "יסמין כוכבי",
        "botanical": "Trachelospermum jasminoides",
        "image": "https://www.meltser.co.il/pics/plant-2967-1.jpg",
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
        "priceLow": 41,
        "priceHigh": 240,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Trachelospermum jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Trachelospermum_jasminoides",
        "wikipediaExtract": "Trachelospermum jasminoides is a species of flowering plant in the family Apocynaceae, native to eastern and southeastern Asia. Common names include Confederate jasmine, star jasmine, Confederate jessamine, and Chinese star jessamine.",
        "imageTitle": "טרכלוספרמון יסמיני -  Trachelospermum jasminoides",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1229&plant=%D7%98%D7%A8%D7%9B%D7%9C%D7%95%D7%A1%D7%A4%D7%A8%D7%9E%D7%95%D7%9F%20-%20Trachelospermum",
        "imageDescription": "(c) 羅忠良, some rights reserved (CC BY-NC), uploaded by 羅忠良",
        "inatTaxonName": "Trachelospermum jasminoides",
        "inatTaxonId": 169856,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "טרכלוספרמון יסמיני -  Trachelospermum jasminoides",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 41,
            "medium": 95,
            "large": 240
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פנדוריאה",
        "botanical": "Pandorea jasminoides",
        "image": "https://www.meltser.co.il/pics/plant-3073-1.jpg",
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
        "priceHigh": 180,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pandorea jasminoides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pandorea_jasminoides",
        "wikipediaExtract": "Pandorea jasminoides, also known by the common names bower of beauty and bower vine, is a species of flowering plant in the family Bignoniaceae and is endemic to eastern Australia. It is a woody climber with pinnate leaves that have three to nine egg-shaped leaflets and white or pink trumpet-shaped flowers that are red and hairy inside. It is also grown as an ornamental.",
        "imageTitle": "פנדוראה יסמינית -  Pandorea jasminoides",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2507&plant=%D7%A4%D7%A0%D7%93%D7%95%D7%A8%D7%90%D7%94%20-%20Pandorea",
        "imageDescription": "(c) c michael hogan, some rights reserved (CC BY-NC-SA), uploaded by c michael hogan",
        "inatTaxonName": "Pandorea jasminoides",
        "inatTaxonId": 346424,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "פנדוראה יסמינית -  Pandorea jasminoides",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 35,
            "medium": 80,
            "large": 180
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פסיפלורה",
        "botanical": "Passiflora edulis",
        "image": "https://www.meltser.co.il/pics/plant-2891-1.jpg",
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
        "priceHigh": 180,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Passiflora edulis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Passiflora_edulis",
        "wikipediaExtract": "Passiflora edulis, commonly known as passion fruit, is a vine species of passion flower native to southern Brazil, through Paraguay, and northern Argentina. The fruit is a pepo, a type of botanical berry, round to oval, either yellow or dark purple at maturity, with a soft to firm, juicy interior filled with numerous seeds.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A2%D7%95%D7%A0%D7%99%D7%AA_%D7%A0%D7%90%D7%9B%D7%9C%D7%AA",
        "imageTitle": "שעונית נאכלת -  Passiflora edulis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2402&plant=%D7%A9%D7%A2%D7%95%D7%A0%D7%99%D7%AA%20-%20Passiflora",
        "imageDescription": "(c) William Tovar Vega, all rights reserved, uploaded by William Tovar Vega",
        "inatTaxonName": "Passiflora edulis",
        "inatTaxonId": 51446,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "שעונית נאכלת -  Passiflora edulis",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 35,
            "medium": 80,
            "large": 180
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ויסטריה",
        "botanical": "Wisteria sinensis",
        "image": "https://www.meltser.co.il/pics/plant-5115-1.jpg",
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
        "priceLow": 39,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Wisteria sinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Wisteria_sinensis",
        "wikipediaExtract": "Wisteria sinensis, commonly known as the Chinese wisteria, is a species of flowering plant in the pea family, native to China, in the provinces of Guangxi, Guizhou, Hebei, Henan, Hubei, Shaanxi, and Yunnan. Growing 20–30 m (66–98 ft) tall, it is a deciduous vine. It is widely cultivated in temperate regions for its twisting stems and masses of scented flowers in hanging racemes, in spring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A1%D7%98%D7%A8%D7%99%D7%94",
        "imageTitle": "ויסטריה סינית -  Wisteria sinensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=912&plant=%D7%95%D7%99%D7%A1%D7%98%D7%A8%D7%99%D7%94%20-%20Wisteria",
        "imageDescription": "(c) Alden Picard, all rights reserved, uploaded by Alden Picard",
        "inatTaxonName": "Wisteria sinensis",
        "inatTaxonId": 127306,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ויסטריה סינית -  Wisteria sinensis",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 39,
            "medium": 90,
            "large": 220
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "גפן מאכל",
        "botanical": "Vitis vinifera",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/197483971/medium.jpeg",
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
        "priceLow": 39,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Vitis vinifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Vitis_vinifera",
        "wikipediaExtract": "Vitis vinifera, the common grape vine, is a species of flowering plant, native to the Mediterranean region, Central Europe, and southwestern Asia, from Morocco and Portugal north to southern Germany and east to northern Iran. As of 2012, there were between 5,000 and 10,000 varieties of Vitis vinifera grapes though only a few are of commercial significance for wine and table grape production.",
        "imageTitle": "wine grape",
        "imagePageUrl": "https://www.inaturalist.org/taxa/79519",
        "imageDescription": "(c) andrey_p, some rights reserved (CC BY), uploaded by andrey_p",
        "inatTaxonName": "Vitis vinifera",
        "inatTaxonId": 79519,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 39,
            "medium": 90,
            "large": 220
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קיסוס החורש",
        "botanical": "Hedera helix",
        "image": "https://www.meltser.co.il/pics/plant-3269-1.jpg",
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
        "priceLow": 41,
        "priceHigh": 240,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Hedera helix",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hedera_helix",
        "wikipediaExtract": "Hedera helix, simply ivy, or common ivy, English ivy, European ivy, King's choice ivy, is a species of flowering plant in the family Araliaceae. It is native to most of Europe and parts of western Asia. Ivy is a clinging evergreen vine that grows on tree trunks, walls, and fences in gardens, waste spaces, and wild habitats. Ivy is popular as an ornamental plant, but escaped plants have become naturalised outside its native range. Ivy has considerable cultural significance and symbolism.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A1%D7%95%D7%A1_%D7%94%D7%97%D7%95%D7%A8%D7%A9",
        "imageTitle": "קיסוס החורש מ.ש. -  Hedera helix",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1823&plant=%D7%A7%D7%99%D7%A1%D7%95%D7%A1%20-%20Hedera",
        "imageDescription": "(c) Marianna Boi, some rights reserved (CC BY), uploaded by Marianna Boi",
        "inatTaxonName": "Hedera helix",
        "inatTaxonId": 55882,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "קיסוס החורש מ.ש. -  Hedera helix",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 41,
            "medium": 95,
            "large": 240
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "טונברגיה",
        "botanical": "Thunbergia grandiflora",
        "image": "https://www.meltser.co.il/pics/plant-5445-1.jpg",
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
        "priceLow": 41,
        "priceHigh": 240,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Thunbergia grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thunbergia_grandiflora",
        "wikipediaExtract": "Thunbergia grandiflora is an evergreen vine in the family Acanthaceae. It is native to China, India, Nepal, Bangladesh, Indochina and Myanmar and widely naturalised elsewhere. Common names include Bengal clockvine, Bengal trumpet, blue skyflower, blue thunbergia, blue trumpetvine, clockvine, skyflower and skyvine.",
        "imageTitle": "תונברגיה גדולת פרחים -  Thunbergia grandiflora",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2004&plant=%D7%AA%D7%95%D7%A0%D7%91%D7%A8%D7%92%D7%99%D7%94%20-%20Thunbergia",
        "imageDescription": "(c) Andy Pearce 🕊, some rights reserved (CC BY-NC), uploaded by Andy Pearce 🕊",
        "inatTaxonName": "Thunbergia grandiflora",
        "inatTaxonId": 129036,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "תונברגיה גדולת פרחים -  Thunbergia grandiflora",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 41,
            "medium": 95,
            "large": 240
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "יערה יפנית",
        "botanical": "Lonicera japonica",
        "image": "https://www.meltser.co.il/pics/plant-3839-1.jpg",
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
        "priceLow": 43,
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lonicera japonica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lonicera_japonica",
        "wikipediaExtract": "Lonicera japonica, known as Japanese honeysuckle and golden-and-silver honeysuckle, is a species of honeysuckle native to East Asia, including many parts of China. It is often grown as an ornamental plant, but has become an invasive species in a number of countries. It is used in traditional Chinese medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%A2%D7%A8%D7%94_%D7%99%D7%A4%D7%A0%D7%99%D7%AA",
        "imageTitle": "יערה יפנית 'צהוב-עורקים' -  Lonicera japonica 'Aureo-reticulata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1252&plant=%D7%99%D7%A2%D7%A8%D7%94%20-%20Lonicera",
        "imageDescription": "(c) Taewoo Kim, all rights reserved, uploaded by Taewoo Kim",
        "inatTaxonName": "Lonicera japonica",
        "inatTaxonId": 77835,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "יערה יפנית 'צהוב-עורקים' -  Lonicera japonica 'Aureo-reticulata'",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 43,
            "medium": 100,
            "large": 260
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "יסמין רפואי",
        "botanical": "Jasminum officinale",
        "image": "https://www.meltser.co.il/pics/plant-5264-1.jpg",
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
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Jasminum officinale",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Jasminum_officinale",
        "wikipediaExtract": "Jasminum officinale, known as the common jasmine or simply jasmine, is a species of flowering plant in the olive family Oleaceae. It is native to the Caucasus and parts of Asia, also widely naturalized.",
        "imageTitle": "יסמין רפואי -  Jasminum officinale",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2242&plant=%D7%99%D7%A1%D7%9E%D7%99%D7%9F%20-%20Jasminum",
        "imageDescription": "(c) trala, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Jasminum officinale",
        "inatTaxonId": 164233,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "יסמין רפואי -  Jasminum officinale",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 43,
            "medium": 100,
            "large": 260
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "סולנום מטפס",
        "botanical": "Solanum jasminoides",
        "image": "https://www.meltser.co.il/pics/plant-5365-1.jpg",
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
        "priceLow": 43,
        "priceHigh": 260,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Solanum laxum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Solanum_laxum",
        "wikipediaExtract": "Solanum laxum, commonly known as potato vine, potato climber or jasmine nightshade, is an evergreen vine in the family Solanaceae. It is native to South America and commonly grown as an ornamental garden plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D_%D7%9E%D7%98%D7%A4%D7%A1",
        "imageTitle": "סולנום יסמיני -  Solanum jasminoides",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1536&plant=%D7%A1%D7%95%D7%9C%D7%A0%D7%95%D7%9D%20-%20Solanum",
        "imageDescription": "(c) Leonardo, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Solanum laxum",
        "inatTaxonId": 128667,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "סולנום יסמיני -  Solanum jasminoides",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 43,
            "medium": 100,
            "large": 260
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אנטיגון",
        "botanical": "Antigonon leptopus",
        "image": "https://www.meltser.co.il/pics/plant-2580-1.jpg",
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
        "priceLow": 37,
        "priceHigh": 200,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Antigonon leptopus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antigonon_leptopus",
        "wikipediaExtract": "Antigonon leptopus is a species of perennial vine in the buckwheat family commonly known as coral vine or queen's wreath. This clambering vine is characterized by showy, usually pink flowers that can bloom throughout the year and large, heart-shaped leaves. A. leptopus is native to the Pacific and Atlantic coastal plains of Mexico, but also occurs as a roadside weed from Mexico south to Central America. It is widely introduced and invasive throughout tropical regions of the world, including in the south and eastern United States, the West Indies, South America, and the Old World tropics of Asia and Africa. This species is utilized for its edible tubers and seeds, but also for its horticultural properties as an ornamental vine in warmer parts of the world.",
        "imageTitle": "אנטיגון דק-עוקצים -  Antigonon leptopus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=493&plant=%D7%90%D7%A0%D7%98%D7%99%D7%92%D7%95%D7%9F%20-%20Antigonon",
        "imageDescription": "(c) portioid, some rights reserved (CC BY), uploaded by portioid",
        "inatTaxonName": "Antigonon leptopus",
        "inatTaxonId": 48380,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "אנטיגון דק-עוקצים -  Antigonon leptopus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 37,
            "medium": 85,
            "large": 200
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פירוסטגיה",
        "botanical": "Pyrostegia venusta",
        "image": "https://www.meltser.co.il/pics/plant-3581-1.jpg",
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
        "priceHigh": 180,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pyrostegia venusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pyrostegia_venusta",
        "wikipediaExtract": "Pyrostegia venusta, also commonly known as flamevine or orange trumpet vine, is a plant species of the genus Pyrostegia of the family Bignoniaceae originally native to southern Brazil, Bolivia, northeastern Argentina and Paraguay; today, it is also a widely cultivated garden species.",
        "imageTitle": "אורנית לוהבת -  Pyrostegia  venusta (ignea)",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=433&plant=%D7%90%D7%95%D7%A8%D7%A0%D7%99%D7%AA%20-%20Pyrostegia",
        "imageDescription": "(c) pvrooman, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Pyrostegia venusta",
        "inatTaxonId": 126634,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אורנית לוהבת -  Pyrostegia  venusta (ignea)",
        "meltzerMatchScore": 120,
        "priceBySize": {
            "small": 35,
            "medium": 80,
            "large": 180
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מנדווילה",
        "botanical": "Mandevilla sanderi",
        "image": "https://static.inaturalist.org/photos/150454529/medium.jpg",
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
        "priceLow": 39,
        "priceHigh": 220,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Mandevilla sanderi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mandevilla_sanderi",
        "wikipediaExtract": "Mandevilla sanderi, the Brazilian jasmine, is a vine belonging to the genus Mandevilla. Grown as an ornamental plant, the species is endemic to the State of Rio de Janeiro in Brazil. It is a rapidly growing, creeping, perennial plant, pruning shoots about 60 cm per year.",
        "imageTitle": "Brazilian jasmine",
        "imagePageUrl": "https://www.inaturalist.org/taxa/327733",
        "imageDescription": "(c) Таня Палиенко, all rights reserved, uploaded by Таня Палиенко",
        "inatTaxonName": "Mandevilla sanderi",
        "inatTaxonId": 327733,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 39,
            "medium": 90,
            "large": 220
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קלרודנדרון מטפס",
        "botanical": "Clerodendrum thomsoniae",
        "image": "https://www.meltser.co.il/pics/plant-2729-1.jpg",
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
        "priceLow": 41,
        "priceHigh": 240,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Clerodendrum thomsoniae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clerodendrum_thomsoniae",
        "wikipediaExtract": "Clerodendrum thomsoniae is a species of flowering plant in the genus Clerodendrum of the family Lamiaceae, native to tropical west Africa from Cameroon west to Senegal. It is an evergreen liana growing to 4 m (13 ft) tall, with ovate to oblong leaves 8–17 cm (3–7 in) cm long. The flowers are produced in cymes of 8–20 together, each flower with a pure white to pale purple five-lobed calyx 2.5 cm in diameter, and a red five-lobed corolla 2 cm long and in diameter. The flowers are born in cymose inflorescences arising from the axils of the leaves. The leaves, in turn, are arranged opposite to each other and at right angles to the pairs above and below.",
        "imageTitle": "קלרודנדרון חלק -  Clerodendrum inerme",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1852&plant=%D7%A7%D7%9C%D7%A8%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F%20-%20Clerodendrum",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Clerodendrum thomsoniae",
        "inatTaxonId": 278703,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "קלרודנדרון חלק -  Clerodendrum inerme",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 41,
            "medium": 95,
            "large": 240
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אלמון הודי",
        "botanical": "Quisqualis indica",
        "image": "https://www.meltser.co.il/pics/plant-2730-1.jpg",
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
        "priceLow": 37,
        "priceHigh": 200,
        "tags": [
            "מטפס",
            "פרגולה",
            "גדר",
            "פורח",
            "climbers"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Combretum indicum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Combretum_indicum",
        "wikipediaExtract": "Combretum indicum, commonly known as the Rangoon creeper or Burma creeper, is a vine with red flower clusters which is native to tropical Asia and grows in thickets, primary and secondary forest, and along river banks in the Indian subcontinent, Malaysia and the Philippines. It has since been cultivated and naturalized in tropical areas such as Burma, Vietnam, and Thailand.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%9E%D7%95%D7%9F_%D7%94%D7%95%D7%93%D7%99",
        "imageTitle": "אלמון הודי -  Quisqualis indica",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=482&plant=%D7%90%D7%9C%D7%9E%D7%95%D7%9F%20-%20Quisqualis",
        "imageDescription": "(c) Sunnetchan, some rights reserved (CC BY-NC-ND), uploaded by Sunnetchan",
        "inatTaxonName": "Combretum indicum",
        "inatTaxonId": 284831,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "אלמון הודי -  Quisqualis indica",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 37,
            "medium": 85,
            "large": 200
        },
        "gardenStyles": [
            "פרטיות וגדר חיה",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לנטנה",
        "botanical": "Lantana camara",
        "image": "https://www.meltser.co.il/pics/plant-5557-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lantana camara",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lantana_camara",
        "wikipediaExtract": "Lantana camara is a species of flowering plant in the verbena family (Verbenaceae), native to the tropics of the Americas. It is a very adaptable species, which can inhabit a wide variety of ecosystems; once it has been introduced into a habitat it spreads rapidly; between 45ºN and 45ºS and less than 1,400 metres in altitude.",
        "imageTitle": "לנטנה ססגונית 'רדיאישן' -  Lantana camara 'Radiation'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1356&plant=%D7%9C%D7%A0%D7%98%D7%A0%D7%94%20-%20Lantana",
        "imageDescription": "(c) Rudy, all rights reserved, uploaded by Rudy",
        "inatTaxonName": "Lantana camara",
        "inatTaxonId": 50333,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לנטנה ססגונית 'רדיאישן' -  Lantana camara 'Radiation'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "דיאטס",
        "botanical": "Dietes grandiflora",
        "image": "https://www.meltser.co.il/pics/plant-4643-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Dietes grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dietes_grandiflora",
        "wikipediaExtract": "Dietes grandiflora, commonly named fortnight lily, large wild iris, African iris or fairy iris, is a rhizomatous perennial plant of the Iris Family (Iridaceae) with long, rigid, sword-like green leaves. This species is common in horticulture in its native South Africa, where it is often used in public gardens, beautification of commercial premises and along roadsides.",
        "imageTitle": "דיאטס גדול-פרחים -  Dietes grandiflora",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=830&plant=%D7%93%D7%99%D7%90%D7%98%D7%A1%20-%20Dietes",
        "imageDescription": "(c) Lori Boies, all rights reserved, uploaded by Lori Boies",
        "inatTaxonName": "Dietes grandiflora",
        "inatTaxonId": 291342,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "דיאטס גדול-פרחים -  Dietes grandiflora",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אגפנתוס",
        "botanical": "Agapanthus africanus",
        "image": "https://www.meltser.co.il/pics/plant-3799-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Agapanthus africanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agapanthus_africanus",
        "wikipediaExtract": "Agapanthus africanus, commonly named the African lily, is a flowering plant from the genus Agapanthus found only on rocky sandstone slopes of the winter rainfall fynbos from the Cape Peninsula to Swellendam. It is also called the lily of the Nile in spite of only growing in South Africa.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%92%D7%A4%D7%A0%D7%AA%D7%95%D7%A1",
        "imageTitle": "אגפנתוס  'טינקרבל' -  Agapanthus  'Tinkerbell'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=417&plant=%D7%90%D7%92%D7%A4%D7%A0%D7%AA%D7%95%D7%A1%20-%20Agapanthus",
        "imageDescription": "(c) Nick Helme, some rights reserved (CC BY-NC), uploaded by Nick Helme",
        "inatTaxonName": "Agapanthus africanus",
        "inatTaxonId": 56019,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אגפנתוס  'טינקרבל' -  Agapanthus  'Tinkerbell'",
        "meltzerMatchScore": 215,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "גאורה",
        "botanical": "Gaura lindheimeri",
        "image": "https://www.meltser.co.il/pics/plant-2577-1.jpg",
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
        "priceHigh": 55,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Oenothera lindheimeri",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oenothera_lindheimeri",
        "wikipediaExtract": "Oenothera lindheimeri, commonly known as Lindheimer's beeblossom, white gaura, pink gaura, Lindheimer's clockweed, and Indian feather, is a species of Oenothera. Several of its common names derive from the genus Gaura, in which this species was formerly placed.",
        "imageTitle": "גאורה קיפחת פרח ורוד -  Gaura lindheimeri",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=632&plant=%D7%92%D7%90%D7%95%D7%A8%D7%94%20-%20Gaura",
        "imageDescription": "(c) Grant Reed, some rights reserved (CC BY-NC), uploaded by Grant Reed",
        "inatTaxonName": "Oenothera lindheimeri",
        "inatTaxonId": 590726,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "גאורה קיפחת פרח ורוד -  Gaura lindheimeri",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 12,
            "medium": 28,
            "large": 55
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מרווה צחורה",
        "botanical": "Salvia leucantha",
        "image": "https://www.meltser.co.il/pics/plant-5539-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Salvia leucantha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_leucantha",
        "wikipediaExtract": "Salvia leucantha, or Mexican bush sage, is a herbaceous perennial plant in the family Lamiaceae that is native to subtropical and tropical conifer forests in central and eastern Mexico. The flowers are usually white, emerging from coloured bracts. It is not frost hardy, but is often grown in warmer latitudes for its prominent arching velvety blue or purple inflorescences.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A6%D7%97%D7%95%D7%A8%D7%94",
        "imageTitle": "מרווה צחורה -  Salvia leucantha",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2315&plant=%D7%9E%D7%A8%D7%95%D7%95%D7%94%20-%20Salvia",
        "imageDescription": "(c) Eric Hunt, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Salvia leucantha",
        "inatTaxonId": 120488,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "מרווה צחורה -  Salvia leucantha",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מרווה גרג",
        "botanical": "Salvia greggii",
        "image": "https://www.meltser.co.il/pics/plant-2539-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Salvia greggii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_greggii",
        "wikipediaExtract": "Salvia greggii, the autumn sage, is a herbaceous perennial plant native to a long, narrow area from southwest Texas, through the Chihuahuan Desert and into the Mexican state of San Luis Potosi, typically growing in rocky soils at elevations from 5,000 to 9,000 ft. It was named and described in 1870 by botanist Asa Gray after Josiah Gregg (1806–1850), a merchant, explorer, naturalist, and author from the American Southwest and Northern Mexico, who found and collected the plant in Texas. It is closely related to, and frequently hybridizes with, Salvia microphylla. Despite the common name \"autumn sage\", it blooms throughout the summer and autumn.",
        "imageTitle": "מרוות גרג 'פורמנס רד' -  Salvia greggii 'Furman'd Red'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1480&plant=%D7%9E%D7%A8%D7%95%D7%95%D7%AA%20-%20Salvia",
        "imageDescription": "(c) David Mercado-Morales, some rights reserved (CC BY-NC), uploaded by David Mercado-Morales",
        "inatTaxonName": "Salvia greggii",
        "inatTaxonId": 168380,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "מרוות גרג 'פורמנס רד' -  Salvia greggii 'Furman'd Red'",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "רודבקיה",
        "botanical": "Rudbeckia fulgida",
        "image": "https://www.meltser.co.il/pics/plant-5140-1.jpg",
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
        "priceHigh": 55,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Rudbeckia fulgida",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rudbeckia_fulgida",
        "wikipediaExtract": "Rudbeckia fulgida, the orange coneflower or perennial coneflower, is a species of flowering plant in the family Asteraceae, native to eastern North America.",
        "imageTitle": "רודבקיה מבהיקה 'גולדשטורם' -  Rudbeckia fulgida 'Goldsturm'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1921&plant=%D7%A8%D7%95%D7%93%D7%91%D7%A7%D7%99%D7%94%20-%20Rudbeckia",
        "imageDescription": "(c) Kai Yan,  Joseph Wong, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Rudbeckia fulgida",
        "inatTaxonId": 142654,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "רודבקיה מבהיקה 'גולדשטורם' -  Rudbeckia fulgida 'Goldsturm'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 12,
            "medium": 28,
            "large": 55
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אכינצאה",
        "botanical": "Echinacea purpurea",
        "image": "https://www.meltser.co.il/pics/plant-4567-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Echinacea purpurea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echinacea_purpurea",
        "wikipediaExtract": "Echinacea purpurea, the eastern purple coneflower, purple coneflower, hedgehog coneflower, or Echinacea, is a North American species of flowering plant in the family Asteraceae. It is native to parts of eastern North America and present to some extent in the wild in much of the eastern, southeastern and midwestern United States, as well as in the Canadian Province of Ontario. It is most common in the Ozarks, the Mississippi Valley, and the Ohio Valley. Its habitats include dry open woods, prairies, and barrens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%A4%D7%95%D7%93%D7%A0%D7%99%D7%AA",
        "imageTitle": "קיפודנית ארגמנית -  Echinacea purpurea",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1826&plant=%D7%A7%D7%99%D7%A4%D7%95%D7%93%D7%A0%D7%99%D7%AA%20-%20Echinacea",
        "imageDescription": "(c) Virginia (Ginny) Sanderson, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Echinacea purpurea",
        "inatTaxonId": 48627,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "קיפודנית ארגמנית -  Echinacea purpurea",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "גזניה",
        "botanical": "Gazania rigens",
        "image": "https://www.meltser.co.il/pics/plant-5480-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Gazania rigens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gazania_rigens",
        "wikipediaExtract": "Gazania rigens, sometimes called treasure flower, is a species of flowering plant in the family Asteraceae, native to coastal areas of southern Africa. It is naturalised elsewhere and is widely cultivated as an ornamental plant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%92%D7%96%D7%A0%D7%99%D7%94",
        "imageTitle": "גזניה אשונה 'סן שיין' -  Gazania rigens",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2159&plant=%D7%92%D7%96%D7%A0%D7%99%D7%94%20-%20Gazania",
        "imageDescription": "(c) Kenny Inggs, all rights reserved, uploaded by Kenny Inggs",
        "inatTaxonName": "Gazania rigens",
        "inatTaxonId": 884843,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "גזניה אשונה 'סן שיין' -  Gazania rigens",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אוסטאוספרמום",
        "botanical": "Osteospermum",
        "image": "https://www.meltser.co.il/pics/plant-2802-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Osteospermum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Osteospermum",
        "wikipediaExtract": "Osteospermum, is a genus of flowering plants belonging to the Calenduleae, one of the smaller tribes of the sunflower/daisy family Asteraceae. They are known as the daisybushes or African daisies. Its species have been given several common names, including African daisy, South African daisy, Cape daisy and blue-eyed daisy. The name Cape daisy is also applied to Dimorphotheca pluvialis.",
        "imageTitle": "גרמית אקלון (זקופה) בינונית -  Osteospermum ecklonis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2161&plant=%D7%92%D7%A8%D7%9E%D7%99%D7%AA%20-%20Osteospermum",
        "imageDescription": "(c) Peter Cooper, some rights reserved (CC BY), uploaded by Peter Cooper",
        "inatTaxonName": "Osteospermum",
        "inatTaxonId": 61400,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "גרמית אקלון (זקופה) בינונית -  Osteospermum ecklonis",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ורבנה",
        "botanical": "Verbena",
        "image": "https://www.meltser.co.il/pics/plant-2733-1.jpg",
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
        "priceHigh": 55,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Verbena",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Verbena",
        "wikipediaExtract": "Verbena, also known as vervain or verveine, is a genus in the family Verbenaceae. It contains about 150 species of annual and perennial herbaceous or semi-woody flowering plants. The majority of the species are native to the Americas and Asia; however, Verbena officinalis, the common vervain or common verbena, is the type species and native to Europe.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94",
        "imageTitle": "ורבנה אשונה -  Verbena rigida",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=918&plant=%D7%95%D7%A8%D7%91%D7%A0%D7%94%20-%20Verbena",
        "imageDescription": "(c) Valter Jacinto, all rights reserved",
        "inatTaxonName": "Verbena",
        "inatTaxonId": 53317,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ורבנה אשונה -  Verbena rigida",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 12,
            "medium": 28,
            "large": 55
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "גרניום / פלרגוניום",
        "botanical": "Pelargonium",
        "image": "https://www.meltser.co.il/pics/plant-2837-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pelargonium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium",
        "wikipediaExtract": "Pelargonium is a genus of flowering plants commonly called geraniums, pelargoniums, or storksbills. It includes about 280 species of perennials, succulents, and shrubs. Taxonomist Carl Linnaeus originally included all the species of Pelargonium and Geranium under the latter name. In 1789, Charles Louis L'Héritier de Brutelle separated them into two genera.",
        "imageTitle": "פלרגון הגננים -  Pelargonium hortorum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1670&plant=%D7%A4%D7%9C%D7%A8%D7%92%D7%95%D7%9F%20-%20Pelargonium",
        "imageDescription": "(c) Peter Lang, some rights reserved (CC BY-NC), uploaded by Peter Lang",
        "inatTaxonName": "Pelargonium",
        "inatTaxonId": 72281,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "פלרגון הגננים -  Pelargonium hortorum",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ליריופה",
        "botanical": "Liriope muscari",
        "image": "https://www.meltser.co.il/pics/plant-4561-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Liriope muscari",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Liriope_muscari",
        "wikipediaExtract": "Liriope muscari is a species of flowering plant from East Asia. Common names in English include big blue lilyturf, lilyturf, border grass, and monkey grass. This small herbaceous perennial has grass-like evergreen foliage and lilac-purple flowers which produce single-seeded berries on a spike in the fall. In some parts of the United States, it is an invasive species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%99%D7%A8%D7%99%D7%95%D7%A4%D7%94",
        "imageTitle": "ליריופה כדנית 'אצטק' (עלה מגוון) -  Liriope muscari 'Aztec'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1353&plant=%D7%9C%D7%99%D7%A8%D7%99%D7%95%D7%A4%D7%94%20-%20Liriope",
        "imageDescription": "(c) yongzhe, all rights reserved, uploaded by yongzhe",
        "inatTaxonName": "Liriope muscari",
        "inatTaxonId": 223938,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ליריופה כדנית 'אצטק' (עלה מגוון) -  Liriope muscari 'Aztec'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אופיופוגון",
        "botanical": "Ophiopogon japonicus",
        "image": "https://www.meltser.co.il/pics/plant-2840-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Ophiopogon japonicus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ophiopogon_japonicus",
        "wikipediaExtract": "Ophiopogon japonicus (dwarf lilyturf, mondograss, fountainplant, monkeygrass; Japanese: リュウノヒゲ ryū-no-hige or ジャノヒゲ ja-no-hige is a species of Ophiopogon native to China, India, Japan, Nepal, and Vietnam.",
        "imageTitle": "זקן-נחש שטוח שחור -  Ophiopogon planiscapus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2601&plant=%D7%96%D7%A7%D7%9F-%D7%A0%D7%97%D7%A9%20-%20Ophiopogon",
        "imageDescription": "(c) Keita Watanabe, some rights reserved (CC BY-NC), uploaded by Keita Watanabe",
        "inatTaxonName": "Ophiopogon japonicus",
        "inatTaxonId": 200061,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "זקן-נחש שטוח שחור -  Ophiopogon planiscapus",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "איריס גרמני",
        "botanical": "Iris germanica",
        "image": "https://www.meltser.co.il/pics/plant-2561-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Iris × germanica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Iris_%C3%97_germanica",
        "wikipediaExtract": "Iris × germanica is the accepted name for a species of flowering plants in the family Iridaceae commonly known as the bearded iris or the German bearded iris. It is of hybrid origin. Varieties include I. × g. var. florentina.",
        "imageTitle": "איריס / אירוס אלג'ירי  (כרתי) -  Iris ungicularis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=461&plant=%D7%90%D7%99%D7%A8%D7%99%D7%A1%20%2F%20%D7%90%D7%99%D7%A8%D7%95%D7%A1%20-%20Iris",
        "imageDescription": "(c) Ana, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Iris × germanica",
        "inatTaxonId": 709635,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "איריס / אירוס אלג'ירי  (כרתי) -  Iris ungicularis",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "המרוקליס",
        "botanical": "Hemerocallis",
        "image": "https://www.meltser.co.il/pics/plant-5504-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Daylily",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Daylily",
        "wikipediaExtract": "A daylily, day lily or ditch-lily is a flowering plant in the genus Hemerocallis, a member of the family Asphodelaceae, subfamily Hemerocallidoideae, native to Asia. Despite the common name, it is not taxonomically classified in the lily genus. Gardening enthusiasts and horticulturists have long bred Hemerocallis species for their attractive flowers; a select few species of the genus have edible petals, while some are extremely toxic. Thousands of cultivars have been registered by the American Daylily Society, the only internationally recognized registrant according to the International Code of Nomenclature for Cultivated Plants. The plants are perennial, bulbous plants, whose common name alludes to its flowers, which typically last about a day.",
        "imageTitle": "המרוקליס  זני מכלוא -  Hemerocallis  hybrids",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2173&plant=%D7%94%D7%9E%D7%A8%D7%95%D7%A7%D7%9C%D7%99%D7%A1%20-%20Hemerocallis",
        "imageDescription": "(c) Susan Elliott, some rights reserved (CC BY-NC), uploaded by Susan Elliott",
        "inatTaxonName": "Hemerocallis",
        "inatTaxonId": 82826,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "המרוקליס  זני מכלוא -  Hemerocallis  hybrids",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קוראופסיס",
        "botanical": "Coreopsis",
        "image": "https://www.meltser.co.il/pics/plant-3274-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Coreopsis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coreopsis",
        "wikipediaExtract": "Coreopsis is a genus of flowering plants in the family Asteraceae. Common names include calliopsis and tickseed, a name shared with various other plants.",
        "imageTitle": "קוראופסיס דורי 'מונבים' -  Coreopsis verticillata 'Moonbeam'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1798&plant=%D7%A7%D7%95%D7%A8%D7%90%D7%95%D7%A4%D7%A1%D7%99%D7%A1%20-%20Coreopsis",
        "imageDescription": "(c) Bob Peterson, some rights reserved (CC BY)",
        "inatTaxonName": "Coreopsis",
        "inatTaxonId": 57952,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "קוראופסיס דורי 'מונבים' -  Coreopsis verticillata 'Moonbeam'",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "גיירדיה",
        "botanical": "Gaillardia",
        "image": "https://www.meltser.co.il/pics/plant-2634-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Gaillardia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Gaillardia",
        "wikipediaExtract": "Gaillardia is a genus of flowering plants in the family Asteraceae, native to North and South America. It was named after Maître Gaillard de Charentonneau, an 18th-century French magistrate who was an enthusiastic botanist. The common name may refer to the resemblance of the inflorescence to the brightly patterned blankets made by Native Americans, or to the ability of wild taxa to blanket the ground with colonies. Many cultivars have been bred for ornamental use.",
        "imageTitle": "גיירדיה גדולת-פרחים 'גובלין' -  Gaillardia grandiflora 'Goblin'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2272&plant=%D7%92%D7%99%D7%99%D7%A8%D7%93%D7%99%D7%94%20-%20Gaillardia",
        "imageDescription": "(c) Roberto R. Calderón, some rights reserved (CC BY-NC), uploaded by Roberto R. Calderón",
        "inatTaxonName": "Gaillardia",
        "inatTaxonId": 51769,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "גיירדיה גדולת-פרחים 'גובלין' -  Gaillardia grandiflora 'Goblin'",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פלוקס",
        "botanical": "Phlox",
        "image": "https://www.meltser.co.il/pics/plant-2999-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Phlox",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phlox",
        "wikipediaExtract": "Phlox is a genus of 68 species of perennial and annual plants in the family Polemoniaceae. They are found mostly in North America in diverse habitats from alpine tundra to open woodland and prairie. Some flower in spring, others in summer and fall. Flowers may be pale blue, violet, pink, bright red, or white. Many are fragrant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%9C%D7%95%D7%A7%D7%A1",
        "imageTitle": "שלהב דרומונד -  Phlox drummondii",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1979&plant=%D7%A9%D7%9C%D7%94%D7%91%20-%20Phlox",
        "imageDescription": "(c) Jim Morefield, some rights reserved (CC BY)",
        "inatTaxonName": "Phlox",
        "inatTaxonId": 52152,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "שלהב דרומונד -  Phlox drummondii",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "נפית",
        "botanical": "Nepeta",
        "image": "https://www.meltser.co.il/pics/plant-3482-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Nepeta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nepeta",
        "wikipediaExtract": "Nepeta is a genus of flowering plants in the family Lamiaceae. The genus name, from Latin nepeta (“catnip”), is reportedly in reference to Nepete, an ancient Etruscan city. There are 295 accepted species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A4%D7%99%D7%AA",
        "imageTitle": "נפית כפופה -  Nepata curviflora",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1508&plant=%D7%A0%D7%A4%D7%99%D7%AA%20-%20Nepata",
        "imageDescription": "(c) mjcorreia, all rights reserved, uploaded by mjcorreia",
        "inatTaxonName": "Nepeta",
        "inatTaxonId": 48624,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "נפית כפופה -  Nepata curviflora",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "חרצית שיחית",
        "botanical": "Argyranthemum",
        "image": "https://www.meltser.co.il/pics/plant-3936-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Argyranthemum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Argyranthemum",
        "wikipediaExtract": "Argyranthemum is a genus of flowering plants belonging to the family Asteraceae. Members of this genus are sometimes also placed in the genus Chrysanthemum.",
        "imageTitle": "חרצית שיחית צהוב פרח מלא -  Chrysanthemum frutescens",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2450&plant=%D7%97%D7%A8%D7%A6%D7%99%D7%AA%20-%20Chrysanthemum",
        "imageDescription": "(c) Johannes, some rights reserved (CC BY-NC-ND), uploaded by Johannes",
        "inatTaxonName": "Argyranthemum",
        "inatTaxonId": 71983,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "חרצית שיחית צהוב פרח מלא -  Chrysanthemum frutescens",
        "meltzerMatchScore": 170,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אוזן ארי",
        "botanical": "Leonotis leonurus",
        "image": "https://www.meltser.co.il/pics/plant-3004-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Leonotis leonurus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Leonotis_leonurus",
        "wikipediaExtract": "Leonotis leonurus, also known as wild dagga and lion's ear, is a plant species in the mint family Lamiaceae. It is a broadleaf evergreen shrub, native to South Africa, where it is very common, with a wide altitudinal range from 5 m up to 1980 m. It is known for its medicinal properties. The main psychoactive component of Leonotis leonurus is hypothesized to be related to the presence of leonurine or labdanes; Leonotis leonurus has been confirmed to contain leonurine according to peer reviewed journal published phytochemical analysis. Like other plants in the mint family, it also contains marrubin. The word \"dagga\" comes from Afrikaans, and derives in turn from the Khoikhoi \"dachab\". The word \"dagga\" has been extended to include cannabis in Afrikaans and South African English, so the use of \"wild\" serves to distinguish Leonotis leonurus from this.",
        "imageTitle": "אוזן-ארי אפריקנית -  Leonotis leonurus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=429&plant=%D7%90%D7%95%D7%96%D7%9F-%D7%90%D7%A8%D7%99%20-%20Leonotis",
        "imageDescription": "(c) c2bt-noahengelbrecht, all rights reserved",
        "inatTaxonName": "Leonotis leonurus",
        "inatTaxonId": 132849,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "אוזן-ארי אפריקנית -  Leonotis leonurus",
        "meltzerMatchScore": 310,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "כסמנתה",
        "botanical": "Chasmanthe",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/20290/medium.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Chasmanthe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chasmanthe",
        "wikipediaExtract": "Chasmanthe is a genus of flowering plants in the family Iridaceae, first described in 1932. It is endemic to Cape Province in South Africa. It is widely grown as an ornamental plant and is naturalized in various locations.",
        "imageTitle": "Cobralilies",
        "imagePageUrl": "https://www.inaturalist.org/taxa/56029",
        "imageDescription": "(c) Eric in SF, some rights reserved (CC BY-NC-ND)",
        "inatTaxonName": "Chasmanthe",
        "inatTaxonId": 56029,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קליביה",
        "botanical": "Clivia miniata",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/335128592/medium.jpeg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Clivia miniata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Clivia_miniata",
        "wikipediaExtract": "Clivia miniata, the Natal lily or bush lily, is a species of flowering plant in the genus Clivia of the family Amaryllidaceae, native to woodland habitats in South Africa and Eswatini. It is also widely cultivated as an ornamental.",
        "imageTitle": "Natal Lily",
        "imagePageUrl": "https://www.inaturalist.org/taxa/210194",
        "imageDescription": "(c) Allister Starke, some rights reserved (CC BY-NC), uploaded by Allister Starke",
        "inatTaxonName": "Clivia miniata",
        "inatTaxonId": 210194,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קנא הודית",
        "botanical": "Canna indica",
        "image": "https://www.meltser.co.il/pics/plant-5322-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Canna indica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Canna_indica",
        "wikipediaExtract": "Canna indica, commonly known as Indian shot, African arrowroot, edible canna, purple arrowroot, Sierra Leone arrowroot, is a plant species in the family Cannaceae. It is native to the Americas and naturalized elsewhere. The edible rhizomes are a source of starch.",
        "imageTitle": "לגרסטמיה  הודית -  Lagerstroemia indica",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=3009&plant=%D7%9C%D7%92%D7%A8%D7%A1%D7%98%D7%9E%D7%99%D7%94%20%20-%20Lagerstroemia",
        "imageDescription": "(c) orlandomontes, some rights reserved (CC BY-NC), uploaded by orlandomontes",
        "inatTaxonName": "Canna indica",
        "inatTaxonId": 146643,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לגרסטמיה  הודית -  Lagerstroemia indica",
        "meltzerMatchScore": 75,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אלסטרומריה",
        "botanical": "Alstroemeria",
        "image": "https://www.meltser.co.il/pics/plant-5456-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Alstroemeria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alstroemeria",
        "wikipediaExtract": "Alstroemeria, commonly called the Peruvian lily or lily of the Incas, is a genus of flowering plants in the family Alstroemeriaceae. They are all native to South America, although some have become naturalized in the United States, Mexico, Australia, New Zealand, Madeira and the Canary Islands. Almost all of the species are restricted to one of two distinct centers of diversity: one in central Chile and southern Argentina, the other in eastern Brazil. Species of Alstroemeria from Patagonia are winter-growing plants, while those of Brazil are summer growing. All are long-lived perennials except A. graminea, a diminutive annual from the Atacama Desert of Chile.",
        "imageTitle": "אלסטרומריה תוכית (עלה מגוון) -  Alstromeria psittacina",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=487&plant=%D7%90%D7%9C%D7%A1%D7%98%D7%A8%D7%95%D7%9E%D7%A8%D7%99%D7%94%20-%20Alstromeria",
        "imageDescription": "(c) Pablo Nuñez Fuentes, all rights reserved, uploaded by Pablo Nuñez Fuentes",
        "inatTaxonName": "Alstroemeria",
        "inatTaxonId": 81938,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "אלסטרומריה תוכית (עלה מגוון) -  Alstromeria psittacina",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פלרגון לימוני",
        "botanical": "Pelargonium crispum",
        "image": "https://www.meltser.co.il/pics/plant-3341-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Pelargonium crispum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Pelargonium_crispum",
        "wikipediaExtract": "Pelargonium crispum is a Pelargonium species native to the Western Cape Province, South Africa. It is in the subgenus Pelargonium along with Pelargonium graveolens and Pelargonium capitatum and Pelargonium tomentosum.",
        "imageTitle": "פלרגון לימוני -  Pelargonium citriodorum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1673&plant=%D7%A4%D7%9C%D7%A8%D7%92%D7%95%D7%9F%20-%20Pelargonium",
        "imageDescription": "(c) Marion Maclean, some rights reserved (CC BY-NC), uploaded by Marion Maclean",
        "inatTaxonName": "Pelargonium crispum",
        "inatTaxonId": 322763,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "פלרגון לימוני -  Pelargonium citriodorum",
        "meltzerMatchScore": 250,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "צורית",
        "botanical": "Sedum",
        "image": "https://www.meltser.co.il/pics/plant-3117-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Sedum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum",
        "wikipediaExtract": "Sedum is a large genus of flowering plants in the family Crassulaceae, members of which are commonly known as stonecrops. The genus has been described as containing up to 600 species, subsequently reduced to 400–500. They are leaf succulents found primarily in the Northern Hemisphere, but extending into the southern hemisphere in Africa and South America. The plants vary from annual and creeping herbs to shrubs. The plants have water-storing leaves. The flowers usually have five petals, seldom four or six. There are typically twice as many stamens as petals. Various species formerly classified as Sedum are now in the segregate genera Hylotelephium and Rhodiola.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%95%D7%A8%D7%99%D7%AA",
        "imageTitle": "גרפצורית  'ברונז' -  Graptosedum  'Bronz'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2826&plant=%D7%92%D7%A8%D7%A4%D7%A6%D7%95%D7%A8%D7%99%D7%AA%20-%20Graptosedum",
        "imageDescription": "(c) Peter Zika, some rights reserved (CC BY-NC), uploaded by Peter Zika",
        "inatTaxonName": "Sedum",
        "inatTaxonId": 55735,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "גרפצורית  'ברונז' -  Graptosedum  'Bronz'",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ארמריה",
        "botanical": "Armeria maritima",
        "image": "https://www.meltser.co.il/pics/plant-5469-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Armeria maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Armeria_maritima",
        "wikipediaExtract": "Armeria maritima, the thrift, sea thrift or sea pink, is a species of flowering plant in the family Plumbaginaceae. It is a compact evergreen perennial which grows in low clumps and sends up long stems that support globes of bright pink flowers. In some cases purple, white or red flowers also occur. It is a popular garden flower and has been distributed worldwide as a garden and cut flower. It does well in gardens designed as xeriscapes or rock gardens. The Latin specific epithet maritima means pertaining to the sea or coastal.",
        "imageTitle": "ארמריה ימית -  Armeria maritima",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2253&plant=%D7%90%D7%A8%D7%9E%D7%A8%D7%99%D7%94%20-%20Armeria",
        "imageDescription": "(c) Katie G, all rights reserved, uploaded by Katie G",
        "inatTaxonName": "Armeria maritima",
        "inatTaxonId": 60476,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ארמריה ימית -  Armeria maritima",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ציפורן סיני",
        "botanical": "Dianthus chinensis",
        "image": "https://www.meltser.co.il/pics/plant-3227-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Dianthus chinensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dianthus_chinensis",
        "wikipediaExtract": "Dianthus chinensis, commonly known as rainbow pink or China pink, is a species of Dianthus native to northern China, Korea, Mongolia, and southeastern Russia. It is a herbaceous perennial plant growing to 30–50 cm tall.",
        "imageTitle": "ציפורן סיני 'טלסטאר' -  Dianthus chinensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1750&plant=%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%9F%20-%20Dianthus",
        "imageDescription": "(c) maxpauel, some rights reserved (CC BY-NC), uploaded by maxpauel",
        "inatTaxonName": "Dianthus chinensis",
        "inatTaxonId": 161763,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "ציפורן סיני 'טלסטאר' -  Dianthus chinensis",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ורוניקה",
        "botanical": "Veronica spicata",
        "image": "https://www.meltser.co.il/pics/plant-4220-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Veronica spicata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Veronica_spicata",
        "wikipediaExtract": "Veronica spicata is a species of flowering plant in the family Plantaginaceae. It is 1–3 feet (0.30–0.91 m) tall and bears 1 foot long spikes with blue, pink, purple and white flowers.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%A8%D7%95%D7%A0%D7%99%D7%A7%D7%94",
        "imageTitle": "ורוניקה סורית -  Veronica gentianoides",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2597&plant=%D7%95%D7%A8%D7%95%D7%A0%D7%99%D7%A7%D7%94%20-%20Veronica",
        "imageDescription": "(c) rosepetal236, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Veronica spicata",
        "inatTaxonId": 132118,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "ורוניקה סורית -  Veronica gentianoides",
        "meltzerMatchScore": 215,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "סקביה",
        "botanical": "Scabiosa",
        "image": "https://www.meltser.co.il/pics/plant-5441-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Scabiosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scabiosa",
        "wikipediaExtract": "Scabiosa is a genus in the honeysuckle family (Caprifoliaceae) of flowering plants. Many of the species in this genus have common names that include the word scabious, but some plants commonly known as scabious are currently classified in related genera such as Knautia and Succisa; at least some of these were formerly placed in Scabiosa. Another common name for members of this genus is pincushion flowers.",
        "imageTitle": "תגית כהה (ארגמנית) -  Scabiosa atropurpurea",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1996&plant=%D7%AA%D7%92%D7%99%D7%AA%20-%20Scabiosa",
        "imageDescription": "(c) Максим Шумских, some rights reserved (CC BY), uploaded by Максим Шумских",
        "inatTaxonName": "Scabiosa",
        "inatTaxonId": 72344,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "תגית כהה (ארגמנית) -  Scabiosa atropurpurea",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לבנדר מנוצה",
        "botanical": "Lavandula dentata",
        "image": "https://www.meltser.co.il/pics/plant-3467-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lavandula dentata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula_dentata",
        "wikipediaExtract": "Lavandula dentata, the fringed lavender or French lavender, is a species of flowering plant in the family Lamiaceae, native to the Mediterranean basin, Eritrea, Ethiopia, Yemen, and the Arabian Peninsula. Growing to 60 cm (24 in) tall, it has gray-green, linear or lance-shaped leaves with toothed edges and a lightly woolly texture. The long-lasting, narrow spikes of purple flowers, topped with pale violet bracts, first appear in late spring. The whole plant is strongly aromatic with the typical lavender fragrance.",
        "imageTitle": "אזוביון (\"לוונדר\") משונן עלה ירוק -  lavandula dentata",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=438&plant=%D7%90%D7%96%D7%95%D7%91%D7%99%D7%95%D7%9F%20%28",
        "imageDescription": "(c) ferbenayas, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Lavandula dentata",
        "inatTaxonId": 71134,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אזוביון (\"לוונדר\") משונן עלה ירוק -  lavandula dentata",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ארטמיסיה",
        "botanical": "Artemisia",
        "image": "https://www.meltser.co.il/pics/plant-3092-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Artemisia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Artemisia",
        "wikipediaExtract": "Artemisia may refer to:",
        "imageTitle": "לענה שיחנית -  Artemisia arborescens",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1365&plant=%D7%9C%D7%A2%D7%A0%D7%94%20-%20Artemisia",
        "imageDescription": "(c) Luciano Arcorace, some rights reserved (CC BY-NC), uploaded by Luciano Arcorace",
        "inatTaxonName": "Artemisia",
        "inatTaxonId": 52855,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לענה שיחנית -  Artemisia arborescens",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "הליכריסום",
        "botanical": "Helichrysum petiolare",
        "image": "https://www.meltser.co.il/pics/plant-3062-1.jpg",
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
        "priceHigh": 59,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Helichrysum petiolare",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Helichrysum_petiolare",
        "wikipediaExtract": "Helichrysum petiolare, the licorice-plant or liquorice plant, is a species of flowering plant in the family Asteraceae. It is a subshrub native to the Cape Provinces of South Africa — where it is known as impepho — and to Angola, Zambia, and Zimbabwe. It is naturalized in parts of Portugal and the United States. Growing to about 45 cm (18 in) high and 150 cm (59 in) broad, it is a trailing evergreen subshrub with furry grey-green leaves and small white flowers. Other common names include silver-bush everlastingflower, trailing dusty miller and kooigoed. The foliage has a faint licorice aroma, but Helichrysum petiolare is not closely related to true liquorice, Glycyrrhiza glabra, from which liquorice candy is made.",
        "imageTitle": "דם-המכבים העלווני -  Helichrysum petiolare",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2169&plant=%D7%93%D7%9D-%D7%94%D7%9E%D7%9B%D7%91%D7%99%D7%9D%20-%20Helichrysum",
        "imageDescription": "(c) Robin Booth, some rights reserved (CC BY-NC), uploaded by Robin Booth",
        "inatTaxonName": "Helichrysum petiolare",
        "inatTaxonId": 77361,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "דם-המכבים העלווני -  Helichrysum petiolare",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 14,
            "medium": 30,
            "large": 59
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קונבולבולוס",
        "botanical": "Convolvulus cneorum",
        "image": "https://www.meltser.co.il/pics/plant-3132-1.jpg",
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
        "priceHigh": 55,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Convolvulus cneorum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Convolvulus_cneorum",
        "wikipediaExtract": "Convolvulus cneorum, the silverbush or shrubby bindweed, is a species of flowering plant in the family Convolvulaceae, which contains many plants described as \"bindweed\". The Latin specific epithet cneorum is a word of Greek origin referring to a small olive-like plant, possibly a species of Daphne.",
        "imageTitle": "חבלבל מאוריטני -  Convolvulus sabatius",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1148&plant=%D7%97%D7%91%D7%9C%D7%91%D7%9C%20-%20Convolvulus",
        "imageDescription": "(c) Dominicus Johannes Bergsma, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Convolvulus cneorum",
        "inatTaxonId": 349222,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "חבלבל מאוריטני -  Convolvulus sabatius",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 12,
            "medium": 28,
            "large": 55
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "דיכונדרה כסופה",
        "botanical": "Dichondra argentea",
        "image": "https://www.meltser.co.il/pics/plant-5492-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Dichondra argentea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dichondra_argentea",
        "wikipediaExtract": "Dichondra argentea, the silver ponysfoot or silver nickel vine, is a species of flowering plant in the family Convolvulaceae.",
        "imageTitle": "דיכונדרה כסופה -  Dichondra argentea",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=837&plant=%D7%93%D7%99%D7%9B%D7%95%D7%A0%D7%93%D7%A8%D7%94%20-%20Dichondra",
        "imageDescription": "(c) Michael J. Papay, some rights reserved (CC BY), uploaded by Michael J. Papay",
        "inatTaxonName": "Dichondra argentea",
        "inatTaxonId": 161821,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "דיכונדרה כסופה -  Dichondra argentea",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "בקופה",
        "botanical": "Sutera cordata",
        "image": "https://www.meltser.co.il/pics/plant-2613-1.jpg",
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
        "priceHigh": 67,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Chaenostoma cordatum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chaenostoma_cordatum",
        "wikipediaExtract": "Chaenostoma cordatum, also known as Sutera cordata, Bacopa cordata, Sutera diffusus, Pikmin flower, or Bacopa, is one of 52 species in the genus Chaenostoma (Scrophulariaceae), and is native to South Africa.",
        "imageTitle": "סוטרה לבובה (בקופה) זנים שונים -  (Sutera (Bacopa cordata cvs.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1530&plant=%D7%A1%D7%95%D7%98%D7%A8%D7%94%20-%20%28Sutera%20%28Bacopa",
        "imageDescription": "(c) birdladyloubs, all rights reserved",
        "inatTaxonName": "Chaenostoma cordatum",
        "inatTaxonId": 501464,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "סוטרה לבובה (בקופה) זנים שונים -  (Sutera (Bacopa cordata cvs.",
        "meltzerMatchScore": 255,
        "priceBySize": {
            "small": 18,
            "medium": 34,
            "large": 67
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פורטולקה רב שנתית",
        "botanical": "Portulaca",
        "image": "https://www.meltser.co.il/pics/plant-4512-1.jpg",
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
        "priceHigh": 63,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Portulaca",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca",
        "wikipediaExtract": "Portulaca is a genus of flowering plants in the family Portulacaceae, and is the type genus of the family. With over 100 species, it is found in the tropics and warm temperate regions. Portulacas are also known as the purslanes.",
        "imageTitle": "רגלה גדולת-פרחים -  Portulaca grandiflora",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1901&plant=%D7%A8%D7%92%D7%9C%D7%94%20-%20Portulaca",
        "imageDescription": "(c) rafasl, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Portulaca",
        "inatTaxonId": 58992,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "רגלה גדולת-פרחים -  Portulaca grandiflora",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 16,
            "medium": 32,
            "large": 63
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אספרגוס מאירי",
        "botanical": "Asparagus densiflorus",
        "image": "https://www.meltser.co.il/pics/plant-2554-1.jpg",
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
        "priceHigh": 71,
        "tags": [
            "רב שנתי",
            "פורח",
            "ערוגה",
            "מאביקים",
            "perennials"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Asparagus densiflorus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asparagus_densiflorus",
        "wikipediaExtract": "Asparagus densiflorus (among several species colloquially called asparagus ferns; no relation to actual ferns), or the foxtail fern (asparagus) or plume fern, is a variable, evergreen-perennial plant related to cultivated, edible asparagus.",
        "imageTitle": "אספרג צפוף-פרחים 'מיירס' -  Asparagus densiflorus 'Meyersii'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=499&plant=%D7%90%D7%A1%D7%A4%D7%A8%D7%92%20-%20Asparagus",
        "imageDescription": "(c) Tony Rebelo, some rights reserved (CC BY-SA), uploaded by Tony Rebelo",
        "inatTaxonName": "Asparagus densiflorus",
        "inatTaxonId": 127598,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "אספרג צפוף-פרחים 'מיירס' -  Asparagus densiflorus 'Meyersii'",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 20,
            "medium": 36,
            "large": 71
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "רוזמרין",
        "botanical": "Salvia rosmarinus",
        "image": "https://www.meltser.co.il/pics/plant-2544-1.jpg",
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
        "priceHigh": 47,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Rosemary",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Rosemary",
        "wikipediaExtract": "Salvia rosmarinus, synonym Rosmarinus officinalis, commonly known as rosemary, is a shrub with fragrant, evergreen, needle-like leaves and purple or sometimes white, pink, or blue flowers. It is a member of the mint family, Lamiaceae. The species is native to the Mediterranean region. It has numerous cultivars, and its leaves are commonly used as a flavoring.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%95%D7%96%D7%9E%D7%A8%D7%99%D7%9F_%D7%A8%D7%A4%D7%95%D7%90%D7%99",
        "imageTitle": "רוזמרין רפואי זן לא מזוהה \"זנב שועל\" -  Rosmarinus officinalis \"Fox Tail\"",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1937&plant=%D7%A8%D7%95%D7%96%D7%9E%D7%A8%D7%99%D7%9F%20-%20Rosmarinus",
        "imageDescription": "(c) Frank Walther, all rights reserved, uploaded by Frank Walther",
        "inatTaxonName": "Salvia rosmarinus",
        "inatTaxonId": 636795,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "רוזמרין רפואי זן לא מזוהה \"זנב שועל\" -  Rosmarinus officinalis \"Fox Tail\"",
        "meltzerMatchScore": 175,
        "priceBySize": {
            "small": 14,
            "medium": 24,
            "large": 47
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לבנדר",
        "botanical": "Lavandula",
        "image": "https://www.meltser.co.il/pics/plant-3467-1.jpg",
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
        "priceHigh": 39,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lavandula",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lavandula",
        "wikipediaExtract": "Lavandula is a genus of 47 known species of perennial flowering plants in the sage family, Lamiaceae. It is native to the Old World, primarily found across the drier, warmer regions of the Mediterranean, with an affinity for maritime breezes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%96%D7%95%D7%91%D7%99%D7%95%D7%9F",
        "imageTitle": "אזוביון (\"לוונדר\") משונן עלה ירוק -  lavandula dentata",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=438&plant=%D7%90%D7%96%D7%95%D7%91%D7%99%D7%95%D7%9F%20%28",
        "imageDescription": "(c) Julien Renoult, some rights reserved (CC BY), uploaded by Julien Renoult",
        "inatTaxonName": "Lavandula",
        "inatTaxonId": 61905,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "אזוביון (\"לוונדר\") משונן עלה ירוק -  lavandula dentata",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 10,
            "medium": 20,
            "large": 39
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מרווה רפואית",
        "botanical": "Salvia officinalis",
        "image": "https://www.meltser.co.il/pics/plant-3992-1.jpg",
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
        "priceHigh": 39,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Salvia officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salvia_officinalis",
        "wikipediaExtract": "Salvia officinalis, common sage or sage, is a perennial, evergreen subshrub, with woody stems, grayish leaves, and blue to purplish flowers. It is a member of the mint family (Lamiaceae) and native to the Mediterranean region, though it has been naturalized in many places throughout the world. It has a long history of culinary use, and in modern times it has been used as an ornamental garden plant. The common name \"sage\" is also used for closely related species and cultivars.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%95%D7%95%D7%94_%D7%A8%D7%A4%D7%95%D7%90%D7%99%D7%AA",
        "imageTitle": "מרווה רפואית -  Salvia officinalis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1476&plant=%D7%9E%D7%A8%D7%95%D7%95%D7%94%20-%20Salvia",
        "imageDescription": "(c) dittant, some rights reserved (CC BY-NC), uploaded by dittant",
        "inatTaxonName": "Salvia officinalis",
        "inatTaxonId": 51738,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "מרווה רפואית -  Salvia officinalis",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 10,
            "medium": 20,
            "large": 39
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "נענע",
        "botanical": "Mentha",
        "image": "https://www.meltser.co.il/pics/plant-4824-1.jpg",
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
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Mentha",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mentha",
        "wikipediaExtract": "Mentha, also known as mint, is a genus of flowering plants in the mint family, Lamiaceae. It is estimated that 18 to 24 species exist, but the exact distinction between species is unclear. Hybridization occurs naturally where some species' ranges overlap. Many hybrids and cultivars are known.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2",
        "imageTitle": "נענה חריפה -  Mentha x piperita",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1499&plant=%D7%A0%D7%A2%D7%A0%D7%94%20-%20Mentha",
        "imageDescription": "(c) Jon Sullivan, some rights reserved (CC BY)",
        "inatTaxonName": "Mentha",
        "inatTaxonId": 54570,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "נענה חריפה -  Mentha x piperita",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 8,
            "medium": 18,
            "large": 35
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מנטה",
        "botanical": "Mentha piperita",
        "image": "https://www.meltser.co.il/pics/plant-4824-1.jpg",
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
        "priceHigh": 51,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Peppermint",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peppermint",
        "wikipediaExtract": "Peppermint is a hybrid species of mint, a cross between watermint and spearmint. Indigenous to Europe and the Middle East, the plant is now widely spread and cultivated in many regions of the world. It is occasionally found in the wild with its parent species.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A0%D7%A2%D7%A0%D7%A2",
        "imageTitle": "נענה חריפה -  Mentha x piperita",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1499&plant=%D7%A0%D7%A2%D7%A0%D7%94%20-%20Mentha",
        "imageDescription": "(c) rhillahorse, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Mentha × piperita",
        "inatTaxonId": 181525,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "נענה חריפה -  Mentha x piperita",
        "meltzerMatchScore": 120,
        "priceBySize": {
            "small": 16,
            "medium": 26,
            "large": 51
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "בזיליקום",
        "botanical": "Ocimum basilicum",
        "image": "https://www.meltser.co.il/pics/plant-3927-1.jpg",
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
        "priceHigh": 43,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Basil",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Basil",
        "wikipediaExtract": "Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term \"basil\" refers to the variety also known as Genovese basil or sweet basil. Basil is native to tropical regions from Central Africa to Southeast Asia. In temperate climates basil is treated as an annual plant, but it can be grown as a short-lived perennial or biennial in warmer horticultural zones with tropical or Mediterranean climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A8%D7%99%D7%97%D7%9F_%D7%9E%D7%A6%D7%95%D7%99",
        "imageTitle": "ריחן הבזיל 'קווינט' -   Ocimum basilicum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1952&plant=%D7%A8%D7%99%D7%97%D7%9F%20-%20%20Ocimum",
        "imageDescription": "(c) Sune Holt, some rights reserved (CC BY-NC), uploaded by Sune Holt",
        "inatTaxonName": "Ocimum basilicum",
        "inatTaxonId": 61398,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "ריחן הבזיל 'קווינט' -   Ocimum basilicum",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 12,
            "medium": 22,
            "large": 43
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "טימין",
        "botanical": "Thymus vulgaris",
        "image": "https://www.meltser.co.il/pics/plant-3900-1.jpg",
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
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Thymus vulgaris",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Thymus_vulgaris",
        "wikipediaExtract": "Thymus vulgaris is a species of flowering plant in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A7%D7%95%D7%A8%D7%A0%D7%99%D7%AA_(%D7%A6%D7%9E%D7%97)",
        "imageTitle": "בת - קורנית פשוטה (\"טימין\") -  Thumus vulgaris",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2364&plant=%D7%91%D7%AA%20-%20%D7%A7%D7%95%D7%A8%D7%A0%D7%99%D7%AA%20-%20Thumus",
        "imageDescription": "(c) Richard Sidey, all rights reserved, uploaded by Richard Sidey",
        "inatTaxonName": "Thymus vulgaris",
        "inatTaxonId": 85469,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "בת - קורנית פשוטה (\"טימין\") -  Thumus vulgaris",
        "meltzerMatchScore": 175,
        "priceBySize": {
            "small": 8,
            "medium": 18,
            "large": 35
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אורגנו",
        "botanical": "Origanum vulgare",
        "image": "https://www.meltser.co.il/pics/plant-2866-1.jpg",
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
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Oregano",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Oregano",
        "wikipediaExtract": "Oregano is a species of flowering plant in the mint family, Lamiaceae. It was native to the Mediterranean region, but widely naturalised elsewhere in the temperate Northern Hemisphere.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%95%D7%A8%D7%92%D7%A0%D7%95",
        "imageTitle": "אזובית פשוטה (\"אורגנו\") -  0riganum vulgare",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=447&plant=%D7%90%D7%96%D7%95%D7%91%D7%99%D7%AA%20-%200riganum",
        "imageDescription": "(c) Παναγιώτης Ραφαηλίδης, some rights reserved (CC BY-NC), uploaded by Παναγιώτης Ραφαηλίδης",
        "inatTaxonName": "Origanum vulgare",
        "inatTaxonId": 61396,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אזובית פשוטה (\"אורגנו\") -  0riganum vulgare",
        "meltzerMatchScore": 175,
        "priceBySize": {
            "small": 8,
            "medium": 18,
            "large": 35
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "זעתר",
        "botanical": "Origanum syriacum",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/62592341/medium.jpg",
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
        "priceHigh": 39,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Origanum syriacum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Origanum_syriacum",
        "wikipediaExtract": "Origanum syriacum subsp. syriacum; syn. Majorana syriaca, bible hyssop, Biblical-hyssop, Lebanese oregano or Syrian oregano, is an aromatic perennial herb in the mint family, Lamiaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%96%D7%A2%D7%AA%D7%A8",
        "imageTitle": "Syrian oregano",
        "imagePageUrl": "https://www.inaturalist.org/taxa/340456",
        "imageDescription": "(c) Uriah Resheff, some rights reserved (CC BY-NC), uploaded by Uriah Resheff",
        "inatTaxonName": "Origanum syriacum",
        "inatTaxonId": 340456,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 10,
            "medium": 20,
            "large": 39
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לואיזה",
        "botanical": "Aloysia citrodora",
        "image": "https://www.meltser.co.il/pics/plant-4882-1.jpg",
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
        "priceHigh": 51,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Aloysia citrodora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloysia_citrodora",
        "wikipediaExtract": "Aloysia citrodora, lemon verbena, is a species of flowering plant in the verbena family Verbenaceae, native to South America. Other common names include lemon beebrush. It was brought to Europe by the Spanish and the Portuguese in the 17th century and cultivated for its oil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%90%D7%99%D7%96%D7%94",
        "imageTitle": "ליפיה לימונית -  Aloysia triphylla",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1351&plant=%D7%9C%D7%99%D7%A4%D7%99%D7%94%20-%20Aloysia",
        "imageDescription": "(c) M a n u e l, some rights reserved (CC BY-SA)",
        "inatTaxonName": "Aloysia citrodora",
        "inatTaxonId": 332455,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "ליפיה לימונית -  Aloysia triphylla",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 16,
            "medium": 26,
            "large": 51
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לימונית",
        "botanical": "Cymbopogon citratus",
        "image": "https://www.meltser.co.il/pics/plant-3202-1.jpg",
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
        "priceHigh": 43,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Cymbopogon citratus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cymbopogon_citratus",
        "wikipediaExtract": "Cymbopogon citratus, commonly known as West Indian lemon grass or simply lemon grass, is a tropical plant native to South Asia and Maritime Southeast Asia and introduced to many tropical regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%A9%D7%91_%D7%9C%D7%99%D7%9E%D7%95%D7%9F",
        "imageTitle": "בת - קורנית לימונית 'מגוונת' -  Thumus X citriodorus 'Variegatus'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2063&plant=%D7%91%D7%AA%20-%20%D7%A7%D7%95%D7%A8%D7%A0%D7%99%D7%AA%20-%20Thumus",
        "imageDescription": "(c) Yantza Farm, Zamora-Chinchipe, Ecuador, some rights reserved (CC BY-NC), uploaded by Yantza Farm, Zamora-Chinchipe, Ecuador",
        "inatTaxonName": "Cymbopogon citratus",
        "inatTaxonId": 123728,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "בת - קורנית לימונית 'מגוונת' -  Thumus X citriodorus 'Variegatus'",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 12,
            "medium": 22,
            "large": 43
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פטרוזיליה",
        "botanical": "Petroselinum crispum",
        "image": "https://www.meltser.co.il/pics/plant-3176-1.jpg",
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
        "priceHigh": 51,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Parsley",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Parsley",
        "wikipediaExtract": "Parsley, or garden parsley, is a species of flowering plant in the family Apiaceae that is native to the Balkans. It has been introduced and naturalized in Europe and elsewhere in the world with suitable climates, and is widely cultivated as a herb and a vegetable.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%A8%D7%95%D7%96%D7%99%D7%9C%D7%99%D7%94",
        "imageTitle": "פטרוזיליה הגנה זן מעובה - שורש -  Petroselinum crispum v. tuberosum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1622&plant=%D7%A4%D7%98%D7%A8%D7%95%D7%96%D7%99%D7%9C%D7%99%D7%94%20-%20Petroselinum",
        "imageDescription": "(c) Юрий, some rights reserved (CC BY-NC), uploaded by Юрий",
        "inatTaxonName": "Petroselinum crispum",
        "inatTaxonId": 78465,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "פטרוזיליה הגנה זן מעובה - שורש -  Petroselinum crispum v. tuberosum",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 16,
            "medium": 26,
            "large": 51
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "כוסברה",
        "botanical": "Coriandrum sativum",
        "image": "https://www.meltser.co.il/pics/plant-2751-1.jpg",
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
        "priceHigh": 35,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Coriander",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coriander",
        "wikipediaExtract": "Coriander, or Coriandrum sativum, is an annual herb in the family Apiaceae. The leaves are known as cilantro in the US. Most people perceive the leaves as having a fresh, slightly citrus taste. Due to variations in the gene OR6A2, some people perceive its flavor to be more soaplike or rotten.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9B%D7%95%D7%A1%D7%91%D7%A8%D7%94",
        "imageTitle": "גד השדה (\"כוסברה\") -  Coriandrum sativum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=644&plant=%D7%92%D7%93%20-%20Coriandrum",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Coriandrum sativum",
        "inatTaxonId": 67759,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "גד השדה (\"כוסברה\") -  Coriandrum sativum",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 8,
            "medium": 18,
            "large": 35
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "שמיר",
        "botanical": "Anethum graveolens",
        "image": "https://www.meltser.co.il/pics/plant-3313-1.jpg",
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
        "priceHigh": 51,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Dill",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dill",
        "wikipediaExtract": "Dill is an annual herb in the celery family Apiaceae. Native to North Africa and West Asia, dill is grown widely in Eurasia, where its leaves and seeds are used as a herb or spice for flavouring food.",
        "imageTitle": "שבת ריחני -  Anethum graveolens",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1965&plant=%D7%A9%D7%91%D7%AA%20-%20Anethum",
        "imageDescription": "(c) Олександр Гриб, some rights reserved (CC BY-NC), uploaded by Олександр Гриб",
        "inatTaxonName": "Anethum graveolens",
        "inatTaxonId": 75445,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "שבת ריחני -  Anethum graveolens",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 16,
            "medium": 26,
            "large": 51
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "עירית",
        "botanical": "Allium schoenoprasum",
        "image": "https://www.meltser.co.il/pics/plant-3422-1.jpg",
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
        "priceHigh": 39,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Chives",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chives",
        "wikipediaExtract": "Chives, scientific name Allium schoenoprasum, is a species of flowering plant in the family Amaryllidaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%95%D7%9D_%D7%94%D7%A2%D7%99%D7%A8%D7%99%D7%AA",
        "imageTitle": "שום העירית -  Allium schoenoprasum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1967&plant=%D7%A9%D7%95%D7%9D%20-%20Allium",
        "imageDescription": "(c) Igor, some rights reserved (CC BY-NC), uploaded by Igor",
        "inatTaxonName": "Allium schoenoprasum",
        "inatTaxonId": 59254,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "שום העירית -  Allium schoenoprasum",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 10,
            "medium": 20,
            "large": 39
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "טרגון",
        "botanical": "Artemisia dracunculus",
        "image": "https://www.meltser.co.il/pics/plant-4509-1.jpg",
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
        "priceHigh": 51,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Tarragon",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tarragon",
        "wikipediaExtract": "Tarragon, also known as estragon, is a species of perennial herb in the family Asteraceae. It is widespread in the wild across much of Eurasia and North America and is cultivated for culinary and medicinal purposes.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%A2%D7%A0%D7%94_%D7%93%D7%A8%D7%A7%D7%95%D7%A0%D7%99%D7%AA",
        "imageTitle": "לענת הטרגון 'תרבותי' -  Artemisia dracunculus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2533&plant=%D7%9C%D7%A2%D7%A0%D7%AA%20-%20Artemisia",
        "imageDescription": "(c) Steve Matson, some rights reserved (CC BY), uploaded by Steve Matson",
        "inatTaxonName": "Artemisia dracunculus",
        "inatTaxonId": 57912,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "לענת הטרגון 'תרבותי' -  Artemisia dracunculus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 16,
            "medium": 26,
            "large": 51
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "מליסה",
        "botanical": "Melissa officinalis",
        "image": "https://www.meltser.co.il/pics/plant-2553-1.jpg",
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
        "priceHigh": 39,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lemon balm",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lemon_balm",
        "wikipediaExtract": "Lemon balm is a perennial herbaceous plant in the mint family. It has lemon-scented leaves, white or pale pink flowers, and contains essential oils and compounds such as geranial and neral. It grows to a maximum height of 1 m. The species is native to south-central Europe, the Mediterranean, Central Asia, and Iran. It is naturalized worldwide. It grows easily from seed in rich, moist soil.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%9C%D7%99%D7%A1%D7%94",
        "imageTitle": "מליסה רפואית -  Melissa officinalis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1416&plant=%D7%9E%D7%9C%D7%99%D7%A1%D7%94%20-%20Melissa",
        "imageDescription": "Cbaile19, no known copyright restrictions (public domain)",
        "inatTaxonName": "Melissa officinalis",
        "inatTaxonId": 59901,
        "inatPhotoLicense": "pd",
        "meltzerLabel": "מליסה רפואית -  Melissa officinalis",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 10,
            "medium": 20,
            "large": 39
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "שיבא",
        "botanical": "Artemisia arborescens",
        "image": "https://www.meltser.co.il/pics/plant-3092-1.jpg",
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
        "priceHigh": 43,
        "tags": [
            "תבלין",
            "ריחני",
            "אדנית",
            "מטבח",
            "herbs"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Artemisia arborescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Artemisia_arborescens",
        "wikipediaExtract": "Artemisia arborescens, the tree wormwood, is a species of flowering plant in the family Asteraceae, native to the Mediterranean region. It is an erect evergreen perennial, with masses of finely-divided aromatic silvery-white leaves and single-sided sprays of yellow daisy-like flowers. This plant is cultivated for its foliage effects, but in colder temperate regions it requires the protection of a wall.",
        "imageTitle": "לענה שיחנית -  Artemisia arborescens",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1365&plant=%D7%9C%D7%A2%D7%A0%D7%94%20-%20Artemisia",
        "imageDescription": "(c) bombusvos, some rights reserved (CC BY-NC), uploaded by bombusvos",
        "inatTaxonName": "Artemisia arborescens",
        "inatTaxonId": 82654,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לענה שיחנית -  Artemisia arborescens",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 12,
            "medium": 22,
            "large": 43
        },
        "gardenStyles": [
            "ים תיכוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אגבה רכה",
        "botanical": "Agave attenuata",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/340805283/medium.jpeg",
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
        "priceHigh": 200,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Agave attenuata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_attenuata",
        "wikipediaExtract": "Agave attenuata, commonly called the foxtail or lion's tail agave or the swan's neck agave, is a species of flowering plant in the family Asparagaceae. Sometimes called the soft-leaf or soft-leaved agave, the aforementioned animal-related names are a nod to the appearance of the plant's inflorescence, which—after years, generally—rises slightly before gravity brings it back down, giving the bloom a curved, \"swan\"-like or \"foxtail\" look. The species' specific manner of flowering is unique in the genus Agave as most other species produce a towering, vertical display, reminiscent of a miniature tree.",
        "imageTitle": "Swan-neck Agave",
        "imagePageUrl": "https://www.inaturalist.org/taxa/209357",
        "imageDescription": "(c) Ignacio Torres-García, some rights reserved (CC BY-NC), uploaded by Ignacio Torres-García",
        "inatTaxonName": "Agave attenuata",
        "inatTaxonId": 209357,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 23,
            "medium": 60,
            "large": 200
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אלוורה",
        "botanical": "Aloe vera",
        "image": "https://www.meltser.co.il/pics/plant-2673-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Aloe vera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aloe_vera",
        "wikipediaExtract": "Aloe vera is a succulent plant species of the genus Aloe. It is widely distributed, and is considered an invasive species in many world regions.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%95%D7%A8%D7%94",
        "imageTitle": "אלוי -מינים שונים -  Aloe sp.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2870&plant=%D7%90%D7%9C%D7%95%D7%99%20-%20Aloe",
        "imageDescription": "(c) Luis, some rights reserved (CC BY-NC), uploaded by Luis",
        "inatTaxonName": "Aloe vera",
        "inatTaxonId": 126882,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אלוי -מינים שונים -  Aloe sp.",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "סנסיווריה",
        "botanical": "Dracaena trifasciata",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/488135905/medium.jpeg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Dracaena trifasciata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_trifasciata",
        "wikipediaExtract": "Dracaena trifasciata is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria east to the Congo. It is most commonly known as the snake plant, Saint George's sword, mother-in-law's tongue, and viper's bowstring hemp, among other names. Until 2017, it was known under the synonym Sansevieria trifasciata. This plant is often kept as a houseplant due to its non-demanding maintenance; they can survive with very little water and sun.",
        "imageTitle": "Snake Plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/67710",
        "imageDescription": "(c) leewarren, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Sansevieria trifasciata",
        "inatTaxonId": 67710,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אכיווריה",
        "botanical": "Echeveria",
        "image": "https://www.meltser.co.il/pics/plant-5187-1.jpg",
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
        "priceLow": 17,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Echeveria",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Echeveria",
        "wikipediaExtract": "Echeveria is a large genus of flowering plants in the family Crassulaceae, native to semi-desert areas of Central America, Mexico and northwestern South America.",
        "imageTitle": "כפנית שעירה -  Echeveria pulvinata",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2910&plant=%D7%9B%D7%A4%D7%A0%D7%99%D7%AA%20-%20Echeveria",
        "imageDescription": "(c) Ulises Fabela, some rights reserved (CC BY-NC), uploaded by Ulises Fabela",
        "inatTaxonName": "Echeveria",
        "inatTaxonId": 1534775,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "כפנית שעירה -  Echeveria pulvinata",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 17,
            "medium": 45,
            "large": 140
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "קרסולה אובטה",
        "botanical": "Crassula ovata",
        "image": "https://www.meltser.co.il/pics/plant-5226-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Crassula ovata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Crassula_ovata",
        "wikipediaExtract": "Crassula ovata, commonly known as jade plant, lucky plant, money plant or money tree, is a succulent plant with small pink or white flowers that is native to the KwaZulu-Natal and Eastern Cape provinces of South Africa, and Mozambique; it is common as a houseplant worldwide. Much of its popularity stems from the low levels of care needed; the jade plant requires little water and can survive in most indoor conditions. It is sometimes referred to as the money tree; however, Pachira aquatica also has this nickname.",
        "imageTitle": "קרסולה סגלגלה 'גולום' -  Crassula ovata 'Gollum'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2856&plant=%D7%A7%D7%A8%D7%A1%D7%95%D7%9C%D7%94%20-%20Crassula",
        "imageDescription": "(c) sea-kangaroo, some rights reserved (CC BY-NC-ND), uploaded by sea-kangaroo",
        "inatTaxonName": "Crassula ovata",
        "inatTaxonId": 76465,
        "inatPhotoLicense": "cc-by-nc-nd",
        "meltzerLabel": "קרסולה סגלגלה 'גולום' -  Crassula ovata 'Gollum'",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "קלנצואה",
        "botanical": "Kalanchoe blossfeldiana",
        "image": "https://www.meltser.co.il/pics/plant-2883-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Kalanchoe blossfeldiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Kalanchoe_blossfeldiana",
        "wikipediaExtract": "Kalanchoe blossfeldiana is a commonly cultivated evergreen house plant of the genus Kalanchoe native to Madagascar. It is known by the English common names flaming Katy, Christmas kalanchoe, florist kalanchoe and Madagascar widow's-thrill.",
        "imageTitle": "ניצנית מדגסקרית 'מגוון' -  Kalanchoe fedtchenoki 'Variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2858&plant=%D7%A0%D7%99%D7%A6%D7%A0%D7%99%D7%AA%20-%20Kalanchoe",
        "imageDescription": "(c) Didier Levasseur, some rights reserved (CC BY-NC), uploaded by Didier Levasseur",
        "inatTaxonName": "Kalanchoe blossfeldiana",
        "inatTaxonId": 164326,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "ניצנית מדגסקרית 'מגוון' -  Kalanchoe fedtchenoki 'Variegata'",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "צורית מורגן",
        "botanical": "Sedum morganianum",
        "image": "https://www.meltser.co.il/pics/plant-5412-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Sedum morganianum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Sedum_morganianum",
        "wikipediaExtract": "Sedum morganianum, the donkey tail or burro's tail, is a species of flowering plant in the family Crassulaceae, native to southern Mexico. It is a succulent perennial producing trailing stems up to 60 cm (24 in) long, with fleshy blue-green leaves and terminal pink to red flowers in summer. S. morganianum has been found wild in two ravines at Tenampa county, in central Veracruz, in eastern Mexico and on vertical cliffs of igneous rock in the Tropical Deciduous Forest zone. Due to its restricted geographic distribution, it should be regarded as a micro-endemic species.",
        "imageTitle": "צורית מורגן -  Sedum morganianum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2821&plant=%D7%A6%D7%95%D7%A8%D7%99%D7%AA%20-%20Sedum",
        "imageDescription": "(c) Eva Sedana, all rights reserved, uploaded by Eva Sedana",
        "inatTaxonName": "Sedum morganianum",
        "inatTaxonId": 276072,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "צורית מורגן -  Sedum morganianum",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "סביון כדורי",
        "botanical": "Senecio rowleyanus",
        "image": "https://www.meltser.co.il/pics/plant-3590-1.jpg",
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
        "priceLow": 17,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Curio rowleyanus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Curio_rowleyanus",
        "wikipediaExtract": "Curio rowleyanus, syn. Senecio rowleyanus, is a flowering plant in the daisy family Asteraceae. It is a creeping, perennial, succulent vine native to the Cape Provinces of South Africa. In its natural environment its stems trail on the ground, rooting where they touch and form dense mats. It often avoids direct sunlight by growing in the shade of other plants and rocks. It is commonly known as string-of-pearls or string-of-beads.",
        "imageTitle": "סביון  'הימליה' -  Senecio  'Himalaya'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2848&plant=%D7%A1%D7%91%D7%99%D7%95%D7%9F%20-%20Senecio",
        "imageDescription": "(c) Tony Rebelo, some rights reserved (CC BY-SA), uploaded by Tony Rebelo",
        "inatTaxonName": "Curio rowleyanus",
        "inatTaxonId": 943005,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "סביון  'הימליה' -  Senecio  'Himalaya'",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 17,
            "medium": 45,
            "large": 140
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "פורטולקריה",
        "botanical": "Portulacaria afra",
        "image": "https://www.meltser.co.il/pics/plant-4898-1.jpg",
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
        "priceHigh": 200,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Portulacaria afra",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulacaria_afra",
        "wikipediaExtract": "Portulacaria afra is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and green leaves, but a variegated cultivar is often seen in cultivation. They are simple to care for and make easy houseplants for a sunny location. In frost-free regions they may be used in outdoor landscaping.",
        "imageTitle": "רגלנית אפריקנית מ.ש. זקופה -  Portulacaria afra",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1902&plant=%D7%A8%D7%92%D7%9C%D7%A0%D7%99%D7%AA%20-%20Portulacaria",
        "imageDescription": "(c) Shaun Swanepoel, some rights reserved (CC BY), uploaded by Shaun Swanepoel",
        "inatTaxonName": "Portulacaria afra",
        "inatTaxonId": 326086,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "רגלנית אפריקנית מ.ש. זקופה -  Portulacaria afra",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 23,
            "medium": 60,
            "large": 200
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "יוקה",
        "botanical": "Yucca elephantipes",
        "image": "https://www.meltser.co.il/pics/plant-2873-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Yucca gigantea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Yucca_gigantea",
        "wikipediaExtract": "Yucca gigantea is a species of flowering plant in the asparagus family, native to Mexico and Central America. Growing up to 8–12 m (26–39 ft) in height, it is an evergreen shrub which is widely cultivated as an ornamental garden or house plant, often referred to simply as yucca cane. The edible flower is the national flower of El Salvador locally called izote, and it is used extensively in Salvadoran cuisine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%99%D7%95%D7%A7%D7%94",
        "imageTitle": "שעונית אנטיוקה -  Passiflora antioquiensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1984&plant=%D7%A9%D7%A2%D7%95%D7%A0%D7%99%D7%AA%20-%20Passiflora",
        "imageDescription": "(c) Juan Cruzado Cortés, some rights reserved (CC BY-SA), uploaded by Juan Cruzado Cortés",
        "inatTaxonName": "Yucca gigantea",
        "inatTaxonId": 201452,
        "inatPhotoLicense": "cc-by-sa",
        "meltzerLabel": "שעונית אנטיוקה -  Passiflora antioquiensis",
        "meltzerMatchScore": 135,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "נולינה",
        "botanical": "Beaucarnea recurvata",
        "image": "https://www.meltser.co.il/pics/plant-2918-1.jpg",
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
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Beaucarnea recurvata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Beaucarnea_recurvata",
        "wikipediaExtract": "Beaucarnea recurvata, the elephant's foot or ponytail palm, is a species of flowering plant in the family Asparagaceae. The species is endemic to eastern Mexico; according to IUCN it is now confined to the state of Veracruz, but Plants of the World Online also cites it as occurring in Oaxaca, Puebla, San Luis Potosí, and Tamaulipas. Despite its common name, it is not closely related to the true palms (Arecaceae). It has become popular in Europe and worldwide as an ornamental plant. There are 350-year-old Beaucarneas registered in Mexico.",
        "imageTitle": "נולינה מופשלת -  Nolina recurvata",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1490&plant=%D7%A0%D7%95%D7%9C%D7%99%D7%A0%D7%94%20-%20Nolina",
        "imageDescription": "(c) Gerson Herrera, some rights reserved (CC BY-NC), uploaded by Gerson Herrera",
        "inatTaxonName": "Beaucarnea recurvata",
        "inatTaxonId": 206192,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "נולינה מופשלת -  Nolina recurvata",
        "meltzerMatchScore": 175,
        "priceBySize": {
            "small": 15,
            "medium": 40,
            "large": 120
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אופונטיה",
        "botanical": "Opuntia",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/120515573/medium.jpeg",
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
        "priceLow": 17,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Opuntia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Opuntia",
        "wikipediaExtract": "Opuntia, commonly called the prickly pear cactus, is a genus of flowering plants in the cactus family Cactaceae, many known for their flavorful fruit and showy flowers. Cacti are native to the Americas, and are well adapted to arid climates; however, they are still vulnerable to alterations in precipitation and temperature driven by climate change. The plant has been introduced to Australia, southern Europe, the Middle East, and parts of Africa.",
        "imageTitle": "Prickly Pears",
        "imagePageUrl": "https://www.inaturalist.org/taxa/47902",
        "imageDescription": "(c) Peri Lee Pipkin, some rights reserved (CC BY-NC), uploaded by Peri Lee Pipkin",
        "inatTaxonName": "Opuntia",
        "inatTaxonId": 47902,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 17,
            "medium": 45,
            "large": 140
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אפטניה",
        "botanical": "Aptenia cordifolia",
        "image": "https://www.meltser.co.il/pics/plant-3146-1.jpg",
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
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Mesembryanthemum cordifolium",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Mesembryanthemum_cordifolium",
        "wikipediaExtract": "Mesembryanthemum cordifolium, formerly known as Aptenia cordifolia, is a species of succulent plant in the iceplant family. It is a creeping plant that forms a carpet of flat-growing perennial herbs in groups on the ground from a base. The genus name means middle-embryo flower in reference to the position of the ovary in the flower. The specific epithet is derived from Latin for heart-shaped leaves.",
        "imageTitle": "אפטניה לבובה 'מגוון' -  Aptenia cordifolia 'Variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2550&plant=%D7%90%D7%A4%D7%98%D7%A0%D7%99%D7%94%20-%20Aptenia",
        "imageDescription": "(c) andreaszehm, some rights reserved (CC BY-NC), uploaded by andreaszehm",
        "inatTaxonName": "Mesembryanthemum cordifolium",
        "inatTaxonId": 589815,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אפטניה לבובה 'מגוון' -  Aptenia cordifolia 'Variegata'",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 15,
            "medium": 40,
            "large": 120
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "גרפטופטלום",
        "botanical": "Graptopetalum",
        "image": "https://www.meltser.co.il/pics/plant-5484-1.jpg",
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
        "priceLow": 19,
        "priceHigh": 160,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Graptopetalum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Graptopetalum",
        "wikipediaExtract": "Graptopetalum (leatherpetal) is a genus of flowering plants in the family Crassulaceae. They are perennial succulent plants and native to Mexico and Arizona. They grow usually in a rosette. There are around 19 species in this genus.",
        "imageTitle": "גרפנית מכלוא גנני (ורדרדה) -  Graptopetalum  cv.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2827&plant=%D7%92%D7%A8%D7%A4%D7%A0%D7%99%D7%AA%20-%20Graptopetalum",
        "imageDescription": "(c) Yabal Alfaro Castillo, some rights reserved (CC BY-NC), uploaded by Yabal Alfaro Castillo",
        "inatTaxonName": "Graptopetalum",
        "inatTaxonId": 157228,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "גרפנית מכלוא גנני (ורדרדה) -  Graptopetalum  cv.",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 19,
            "medium": 50,
            "large": 160
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "סדום זוחל",
        "botanical": "Sedum spurium",
        "image": "https://www.meltser.co.il/pics/plant-4177-1.jpg",
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
        "priceHigh": 200,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Phedimus spurius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phedimus_spurius",
        "wikipediaExtract": "Phedimus spurius, formerly Sedum spurium, the Caucasian stonecrop or two-row stonecrop, is a species of flowering plant in the family Crassulaceae. It is a low-growing, spreading succulent with stems that creep along the ground and root as they grow.",
        "imageTitle": "צורית מדומה 'וודו' -  Sedum spurium 'Voodoo'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1724&plant=%D7%A6%D7%95%D7%A8%D7%99%D7%AA%20-%20Sedum",
        "imageDescription": "(c) ocanire, some rights reserved (CC BY-NC), uploaded by ocanire",
        "inatTaxonName": "Phedimus spurius",
        "inatTaxonId": 204380,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "צורית מדומה 'וודו' -  Sedum spurium 'Voodoo'",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 23,
            "medium": 60,
            "large": 200
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אלוי אריסטטה",
        "botanical": "Aloe aristata",
        "image": "https://www.meltser.co.il/pics/plant-2673-1.jpg",
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
        "priceLow": 17,
        "priceHigh": 140,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Aristaloe",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aristaloe",
        "wikipediaExtract": "Aristaloe is a genus of evergreen flowering perennial plants in the family Asphodelaceae from Southern Africa. Its sole species is Aristaloe aristata, known as guinea-fowl aloe or lace aloe.",
        "imageTitle": "אלוי -מינים שונים -  Aloe sp.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2870&plant=%D7%90%D7%9C%D7%95%D7%99%20-%20Aloe",
        "imageDescription": "(c) pitlochriecottages, some rights reserved (CC BY-NC), uploaded by pitlochriecottages",
        "inatTaxonName": "Aristaloe aristata",
        "inatTaxonId": 580226,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אלוי -מינים שונים -  Aloe sp.",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 17,
            "medium": 45,
            "large": 140
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "אגבה אמריקנה",
        "botanical": "Agave americana",
        "image": "https://www.meltser.co.il/pics/plant-5166-1.jpg",
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
        "priceLow": 19,
        "priceHigh": 160,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Agave americana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Agave_americana",
        "wikipediaExtract": "Agave americana, commonly known as the century plant, maguey, or American aloe, is a flowering plant species belonging to the family Asparagaceae. It is native to Mexico and the United States, specifically Texas. This plant is widely cultivated worldwide for its ornamental value and has become naturalized in various regions, including Southern California, the West Indies, South America, the Mediterranean Basin, Africa, the Canary Islands, India, China, Thailand, New Zealand and Australia.",
        "imageTitle": "ברונפלסיה  אמריקנה -  Brunfelsia Americana",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2940&plant=%D7%91%D7%A8%D7%95%D7%A0%D7%A4%D7%9C%D7%A1%D7%99%D7%94%20%20-%20Brunfelsia",
        "imageDescription": "(c) Angela Jocabed Guzman Cantu, all rights reserved, uploaded by Angela Jocabed Guzman Cantu",
        "inatTaxonName": "Agave americana",
        "inatTaxonId": 64103,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ברונפלסיה  אמריקנה -  Brunfelsia Americana",
        "meltzerMatchScore": 75,
        "priceBySize": {
            "small": 19,
            "medium": 50,
            "large": 160
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "נציץ מדברי",
        "botanical": "Delosperma cooperi",
        "image": "https://www.meltser.co.il/pics/plant-2880-1.jpg",
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
        "priceLow": 21,
        "priceHigh": 180,
        "tags": [
            "סוקולנט",
            "חסכוני במים",
            "עציץ",
            "קל לטיפול",
            "succulents"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Delosperma cooperi",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Delosperma_cooperi",
        "wikipediaExtract": "Delosperma cooperi, the trailing iceplant, hardy iceplant or pink carpet, is a dwarf perennial plant native to South Africa. It forms a dense lawn with abundant, long-lasting flowers. It reaches sizes of approximately 10–15 cm (4–6 in) tall, with fleshy leaves that are linear and simple and can grow up to 1.5 inches long and a trailing stem that hangs down. These fleshy roots help provide the ability for the plants to recover and grow rapidly if a disturbance has occurred.",
        "imageTitle": "דלוספרמת קופר -  Delosperma cooperi",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=841&plant=%D7%93%D7%9C%D7%95%D7%A1%D7%A4%D7%A8%D7%9E%D7%AA%20-%20Delosperma",
        "imageDescription": "(c) Francesco Vidotto, some rights reserved (CC BY-NC), uploaded by Francesco Vidotto",
        "inatTaxonName": "Delosperma cooperi",
        "inatTaxonId": 144018,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "דלוספרמת קופר -  Delosperma cooperi",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 21,
            "medium": 55,
            "large": 180
        },
        "gardenStyles": [
            "ים תיכוני",
            "חסכוני במים",
            "עירוני"
        ]
    },
    {
        "name": "דקל אריקה",
        "botanical": "Dypsis lutescens",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/35293993/medium.jpeg",
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
        "priceHigh": 730,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Chrysalidocarpus lutescens",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chrysalidocarpus_lutescens",
        "wikipediaExtract": "Chrysalidocarpus lutescens, also known by its synonym Dypsis lutescens and as golden cane palm, areca palm, yellow palm, butterfly palm, or bamboo palm, is a species of flowering plant in the family Arecaceae, native to Madagascar and naturalized in the Andaman Islands, Thailand, Vietnam, Réunion, El Salvador, Cuba, Puerto Rico, the Canary Islands, southern Florida, Haiti, the Dominican Republic, Jamaica, the Leeward Islands, and the Leeward Antilles. Its native names are rehazo and lafahazo.",
        "imageTitle": "Areca Palm",
        "imagePageUrl": "https://www.inaturalist.org/taxa/276548",
        "imageDescription": "(c) jerbon, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Chrysalidocarpus lutescens",
        "inatTaxonId": 276548,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 78,
            "medium": 240,
            "large": 730
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "דקל טבעות",
        "botanical": "Archontophoenix cunninghamiana",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/156019512/medium.jpeg",
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
        "priceLow": 74,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Archontophoenix cunninghamiana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Archontophoenix_cunninghamiana",
        "wikipediaExtract": "Archontophoenix cunninghamiana – commonly known as Bangalow palm, king palm, Illawarra palm or piccabeen palm – is a tree in the palm family Arecaceae, which is endemic to the east coast of New South Wales and Queensland, Australia.",
        "imageTitle": "Piccabeen Palm",
        "imagePageUrl": "https://www.inaturalist.org/taxa/83634",
        "imageDescription": "(c) Scott W. Gavins, some rights reserved (CC BY-NC), uploaded by Scott W. Gavins",
        "inatTaxonName": "Archontophoenix cunninghamiana",
        "inatTaxonId": 83634,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 74,
            "medium": 230,
            "large": 690
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "וושינגטוניה חסונה",
        "botanical": "Washingtonia robusta",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/249270666/medium.jpeg",
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
        "priceLow": 76,
        "priceHigh": 710,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Washingtonia filifera var. robusta",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Washingtonia_filifera_var._robusta",
        "wikipediaExtract": "Washingtonia filifera var. robusta, commonly known as the Mexican fan palm, Mexican washingtonia, or skyduster, is a flowering plant in the family Arecaceae native to the Sonoran desert along the Baja California peninsula. Despite its limited native distribution, W. filifera var. robusta is one of the most widely cultivated subtropical palms in the world. It is naturalized across the southern United States, Mediterranean, and Middle East.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%95%D7%A9%D7%99%D7%A0%D7%92%D7%98%D7%95%D7%A0%D7%99%D7%94_%D7%97%D7%A1%D7%95%D7%A0%D7%94",
        "imageTitle": "Mexican Fan Palm",
        "imagePageUrl": "https://www.inaturalist.org/taxa/79521",
        "imageDescription": "(c) itazura, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Washingtonia robusta",
        "inatTaxonId": 79521,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 76,
            "medium": 235,
            "large": 710
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "דקל רובליני",
        "botanical": "Phoenix roebelenii",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/168762970/medium.jpeg",
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
        "priceLow": 72,
        "priceHigh": 670,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Phoenix roebelenii",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_roebelenii",
        "wikipediaExtract": "Phoenix roebelenii, with common names of dwarf date palm, pygmy date palm, miniature date palm or robellini palm, is a species of date palm native to southeastern Asia, from southwestern China, northern Laos and northern Vietnam.",
        "imageTitle": "Pygmy Date Palm",
        "imagePageUrl": "https://www.inaturalist.org/taxa/204744",
        "imageDescription": "(c) Sriram Ranganathan, some rights reserved (CC BY-NC), uploaded by Sriram Ranganathan",
        "inatTaxonName": "Phoenix roebelenii",
        "inatTaxonId": 204744,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 72,
            "medium": 225,
            "large": 670
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "דקל קנרי",
        "botanical": "Phoenix canariensis",
        "image": "https://www.meltser.co.il/pics/plant-2631-1.jpg",
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
        "priceLow": 76,
        "priceHigh": 710,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Phoenix canariensis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Phoenix_canariensis",
        "wikipediaExtract": "Phoenix canariensis, the Canary Island date palm, is a species of flowering plant in the palm family Arecaceae, native to the Canary Islands off the coast of Northwestern Africa. It is a relative of Phoenix dactylifera, the true date palm. It is the natural symbol of the Canary Islands, together with the canary Serinus canaria.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%AA%D7%9E%D7%A8_%D7%A7%D7%A0%D7%A8%D7%99",
        "imageTitle": "מרווה קנרית זן צחור -  Salvia canariensis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1474&plant=%D7%9E%D7%A8%D7%95%D7%95%D7%94%20-%20Salvia",
        "imageDescription": "(c) alexcm, some rights reserved (CC BY-NC), uploaded by alexcm",
        "inatTaxonName": "Phoenix canariensis",
        "inatTaxonId": 78554,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "מרווה קנרית זן צחור -  Salvia canariensis",
        "meltzerMatchScore": 75,
        "priceBySize": {
            "small": 76,
            "medium": 235,
            "large": 710
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "דקל חמדוריאה",
        "botanical": "Chamaedorea elegans",
        "image": "https://static.inaturalist.org/photos/4936356/medium.jpg",
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
        "priceHigh": 730,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Chamaedorea elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chamaedorea_elegans",
        "wikipediaExtract": "Chamaedorea elegans, the neanthe bella palm or parlour palm, is a species of small palm tree native to the rainforests in Southern Mexico and Guatemala. The parlor palm is one of the most extensively sold houseplant palms in the world. It is one of several species with leaves that are harvested as xate.",
        "imageTitle": "Parlour Palm",
        "imagePageUrl": "https://www.inaturalist.org/taxa/283400",
        "imageDescription": "(c) Homero Bennet, all rights reserved, uploaded by Homero Bennet",
        "inatTaxonName": "Chamaedorea elegans",
        "inatTaxonId": 283400,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 78,
            "medium": 240,
            "large": 730
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "ציפור גן עדן",
        "botanical": "Strelitzia reginae",
        "image": "https://www.meltser.co.il/pics/plant-4763-1.jpg",
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
        "priceLow": 74,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Strelitzia reginae",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_reginae",
        "wikipediaExtract": "Strelitzia reginae, commonly known as the crane flower, bird of paradise, or isigude in Nguni, is a species of flowering plant native to the Cape Provinces and KwaZulu-Natal in South Africa. An evergreen perennial, it is widely cultivated for its dramatic flowers. In temperate areas it is a popular houseplant.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A2%D7%93%D7%A0%D7%99%D7%99%D7%9D",
        "imageTitle": "סטרליציית המלכה (\"ציפור גן-עדן\") -  Strelitzia reginae",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1542&plant=%D7%A1%D7%98%D7%A8%D7%9C%D7%99%D7%A6%D7%99%D7%99%D7%AA%20-%20Strelitzia",
        "imageDescription": "(c) tshire_letso, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Strelitzia reginae",
        "inatTaxonId": 49143,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "סטרליציית המלכה (\"ציפור גן-עדן\") -  Strelitzia reginae",
        "meltzerMatchScore": 310,
        "priceBySize": {
            "small": 74,
            "medium": 230,
            "large": 690
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "ציפור גן עדן לבנה",
        "botanical": "Strelitzia nicolai",
        "image": "https://www.meltser.co.il/pics/plant-3628-1.jpg",
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
        "priceHigh": 730,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Strelitzia nicolai",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Strelitzia_nicolai",
        "wikipediaExtract": "Strelitzia nicolai, commonly known as the wild banana or giant white bird of paradise, is a species of banana-like plants with erect woody stems reaching a height of 7–8 m (23–26 ft), and the clumps formed can spread as far as 3.5 m (11 ft).",
        "imageTitle": "סטרליציית ניקולאי -  Strelitzia nicolai",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1543&plant=%D7%A1%D7%98%D7%A8%D7%9C%D7%99%D7%A6%D7%99%D7%99%D7%AA%20-%20Strelitzia",
        "imageDescription": "(c) wendyhitchcock, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Strelitzia nicolai",
        "inatTaxonId": 135250,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "סטרליציית ניקולאי -  Strelitzia nicolai",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 78,
            "medium": 240,
            "large": 730
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "בננה ננסית",
        "botanical": "Musa acuminata",
        "image": "https://www.meltser.co.il/pics/plant-3583-1.jpg",
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
        "priceHigh": 650,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Musa acuminata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Musa_acuminata",
        "wikipediaExtract": "Musa acuminata is a species of banana native to Southern Asia, its range comprising the Indian subcontinent and Southeast Asia. Many of the modern edible dessert bananas are derived from this species, although some are hybrids with Musa balbisiana. First cultivated by humans around 8000 BCE, it is one of the early examples of domesticated plants.",
        "imageTitle": "אקליפה מגוונת 'משויש' -  Acalypha wilkesiana 'musaica'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=523&plant=%D7%90%D7%A7%D7%9C%D7%99%D7%A4%D7%94%20-%20Acalypha",
        "imageDescription": "(c) Greg Lasley, some rights reserved (CC BY-NC), uploaded by Greg Lasley",
        "inatTaxonName": "Musa acuminata",
        "inatTaxonId": 140907,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "אקליפה מגוונת 'משויש' -  Acalypha wilkesiana 'musaica'",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 70,
            "medium": 220,
            "large": 650
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "הליקוניה",
        "botanical": "Heliconia",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/348148000/medium.jpeg",
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
        "priceLow": 72,
        "priceHigh": 670,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Heliconia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Heliconia",
        "wikipediaExtract": "Heliconia is a genus of flowering plants in the monotypic family Heliconiaceae. Most of the 194 known species are native to the tropical Americas, but a few are indigenous to certain islands of the western Pacific and Maluku in Indonesia. Many species of Heliconia are found in the tropical forests of these regions. Most species are listed as either vulnerable or data deficient by the IUCN Red List of threatened species. Several species are widely cultivated as ornamentals, and a few are naturalized in Florida, Gambia, and Thailand.",
        "imageTitle": "Heliconias",
        "imagePageUrl": "https://www.inaturalist.org/taxa/84964",
        "imageDescription": "(c) zhijunli, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Heliconia",
        "inatTaxonId": 84964,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 72,
            "medium": 225,
            "large": 670
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "פילודנדרון קסנדו",
        "botanical": "Philodendron xanadu",
        "image": "https://www.meltser.co.il/pics/plant-4291-1.jpg",
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
        "priceLow": 76,
        "priceHigh": 710,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Philodendron xanadu",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_xanadu",
        "wikipediaExtract": "Philodendron xanadu, synonym Thaumatophyllum xanadu, is a perennial plant belonging to the arum family Araceae. It is native to south Brazil and Paraguay, but is widely cultivated as a landscape plant in tropical, subtropical, and warm temperate climates.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F_%D7%A7%D7%A1%D7%A0%D7%93%D7%95",
        "imageTitle": "פילודנדרון דו-נוצתי -  Philodendron bipinnatifidum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1633&plant=%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F%20-%20Philodendron",
        "imageDescription": "(c) Jose, all rights reserved, uploaded by Jose",
        "inatTaxonName": "Thaumatophyllum xanadu",
        "inatTaxonId": 985726,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "פילודנדרון דו-נוצתי -  Philodendron bipinnatifidum",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 76,
            "medium": 235,
            "large": 710
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "אלוקסיה",
        "botanical": "Alocasia",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/7471383/medium.jpg",
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
        "priceLow": 72,
        "priceHigh": 670,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Alocasia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Alocasia",
        "wikipediaExtract": "Alocasia is a genus of rhizomatous or tuberous, broad-leaved, perennial, flowering plants from the family Araceae. There are about 90 accepted species native to tropical and subtropical Asia and eastern Australia. Around the world, many growers widely cultivate a range of hybrids and cultivars as ornamentals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%A7%D7%A1%D7%99%D7%94",
        "imageTitle": "elephant's-ears",
        "imagePageUrl": "https://www.inaturalist.org/taxa/69234",
        "imageDescription": "(c) Ian McMaster, some rights reserved (CC BY-NC), uploaded by Ian McMaster",
        "inatTaxonName": "Alocasia",
        "inatTaxonId": 69234,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 72,
            "medium": 225,
            "large": 670
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "קולוקסיה",
        "botanical": "Colocasia esculenta",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/20295281/medium.jpeg",
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
        "priceLow": 74,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Taro",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Taro",
        "wikipediaExtract": "Taro is a root vegetable. It is the most widely cultivated species of several plants in the family Araceae that are used as vegetables for their corms, leaves, stems and petioles. Taro corms are a food staple in African, Caribbean, Oceanian, East Asian, Southeast Asian and South Asian cultures.",
        "imageTitle": "Taro",
        "imagePageUrl": "https://www.inaturalist.org/taxa/122835",
        "imageDescription": "(c) Kuan-Chieh (Chuck) Hung, some rights reserved (CC BY-NC-SA), uploaded by Kuan-Chieh (Chuck) Hung",
        "inatTaxonName": "Colocasia esculenta",
        "inatTaxonId": 122835,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 74,
            "medium": 230,
            "large": 690
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "אספלניום",
        "botanical": "Asplenium nidus",
        "image": "https://static.inaturalist.org/photos/230834449/medium.jpeg",
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
        "priceLow": 72,
        "priceHigh": 670,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Asplenium nidus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Asplenium_nidus",
        "wikipediaExtract": "Asplenium nidus is an epiphytic species of fern in the family Aspleniaceae, native to tropical southeastern Asia, eastern Australia, Hawaii, Polynesia, Christmas Island, India, and eastern Africa. It is known by the common names bird's-nest fern or simply nest fern.",
        "imageTitle": "Bird's Nest Fern",
        "imagePageUrl": "https://www.inaturalist.org/taxa/84356",
        "imageDescription": "(c) Cedric, all rights reserved, uploaded by Cedric",
        "inatTaxonName": "Asplenium nidus",
        "inatTaxonId": 84356,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 72,
            "medium": 225,
            "large": 670
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "שרך בוסטון",
        "botanical": "Nephrolepis exaltata",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/19251591/medium.jpg",
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
        "priceLow": 78,
        "priceHigh": 730,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Nephrolepis exaltata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Nephrolepis_exaltata",
        "wikipediaExtract": "Nephrolepis exaltata, known as the sword fern or  Boston fern, is a species of fern in the family Nephrolepidaceae. It is native to the Americas. This evergreen plant can reach as high as 40–90 centimetres (16–35 in), and in extreme cases up to 1.5 metres. It is also known as the Boston sword fern, wild Boston fern, Boston blue bell fern, tuber ladder fern, or fishbone fern.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A9%D7%A8%D7%9A_%D7%91%D7%95%D7%A1%D7%98%D7%95%D7%9F",
        "imageTitle": "southern sword fern",
        "imagePageUrl": "https://www.inaturalist.org/taxa/130866",
        "imageDescription": "(c) taofeek, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Nephrolepis exaltata",
        "inatTaxonId": 130866,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 78,
            "medium": 240,
            "large": 730
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "קנה סוף ננסי",
        "botanical": "Cyperus alternifolius",
        "image": "https://www.meltser.co.il/pics/plant-4246-1.jpg",
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
        "priceLow": 72,
        "priceHigh": 670,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Cyperus alternifolius",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_alternifolius",
        "wikipediaExtract": "Cyperus alternifolius, the umbrella papyrus, umbrella sedge or umbrella palm, is a grass-like plant in the large genus Cyperus of the sedge family Cyperaceae. The plant is native to West Africa, Madagascar and the Arabian Peninsula, but widely distributed throughout the world. It has gained the Royal Horticultural Society's Award of Garden Merit. The subspecies Cyperus alternifolius ssp. flabelliformis is also known as Cyperus involucratus Rottb..",
        "imageTitle": "גומא תרבותי -  Cyperus alternifolius",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2464&plant=%D7%92%D7%95%D7%9E%D7%90%20-%20Cyperus",
        "imageDescription": "(c) alclam2006, all rights reserved, uploaded by alclam2006",
        "inatTaxonName": "Cyperus alternifolius",
        "inatTaxonId": 208766,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "גומא תרבותי -  Cyperus alternifolius",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 72,
            "medium": 225,
            "large": 670
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "פפירוס",
        "botanical": "Cyperus papyrus",
        "image": "https://www.meltser.co.il/pics/plant-3504-1.jpg",
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
        "priceLow": 76,
        "priceHigh": 710,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Cyperus papyrus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cyperus_papyrus",
        "wikipediaExtract": "Cyperus papyrus, better known by the common names papyrus sedge, papyrus, paper reed, Indian matting plant, or Nile grass, is a species of aquatic flowering plant belonging to the sedge family Cyperaceae. It is a tender herbaceous perennial, forming tall stands of reed-like swamp vegetation in shallow water.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%99%D7%A8%D7%95%D7%A1",
        "imageTitle": "גומא הפפירוס -  Cyperus papyrus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2264&plant=%D7%92%D7%95%D7%9E%D7%90%20-%20Cyperus",
        "imageDescription": "(c) Shaun Swanepoel, some rights reserved (CC BY), uploaded by Shaun Swanepoel",
        "inatTaxonName": "Cyperus papyrus",
        "inatTaxonId": 161469,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "גומא הפפירוס -  Cyperus papyrus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 76,
            "medium": 235,
            "large": 710
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "מורינגה מכונפת",
        "botanical": "Moringa oleifera",
        "image": "https://www.meltser.co.il/pics/plant-5601-1.jpg",
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
        "priceLow": 74,
        "priceHigh": 690,
        "tags": [
            "דקל",
            "טרופי",
            "עלווה",
            "מיכל",
            "palms"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Moringa oleifera",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Moringa_oleifera",
        "wikipediaExtract": "Moringa oleifera is a short-lived, fast-growing, drought-resistant tree of the family Moringaceae, native to northern India and used extensively in South and Southeast Asia. Common names include moringa, drumstick tree, horseradish tree, ben tree, or malunggay.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%95%D7%A8%D7%99%D7%A0%D7%92%D7%94_%D7%9E%D7%9B%D7%95%D7%A0%D7%A4%D7%AA",
        "imageTitle": "מורינגה מכונפת -  Moringa oleifera",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=3045&plant=%D7%9E%D7%95%D7%A8%D7%99%D7%A0%D7%92%D7%94%20-%20Moringa",
        "imageDescription": "(c) Karl Questel, all rights reserved, uploaded by Karl Questel",
        "inatTaxonName": "Moringa oleifera",
        "inatTaxonId": 165529,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "מורינגה מכונפת -  Moringa oleifera",
        "meltzerMatchScore": 410,
        "priceBySize": {
            "small": 74,
            "medium": 230,
            "large": 690
        },
        "gardenStyles": [
            "טרופי",
            "עירוני"
        ]
    },
    {
        "name": "מונסטרה",
        "botanical": "Monstera deliciosa",
        "image": "https://static.inaturalist.org/photos/10534833/medium.jpeg",
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
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Monstera deliciosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Monstera_deliciosa",
        "wikipediaExtract": "Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron, is a species of flowering plant. The common name \"Swiss cheese plant\" is also used for the related species from the same genus, Monstera adansonii. The common name \"split-leaf philodendron\" is also used for the species Philodendron bipinnatifidum.",
        "imageTitle": "Swiss Cheese Plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/122521",
        "imageDescription": "(c) Freddy Othonier Perez Mar, all rights reserved, uploaded by Freddy Othonier Perez Mar",
        "inatTaxonName": "Monstera deliciosa",
        "inatTaxonId": 122521,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "פוטוס",
        "botanical": "Epipremnum aureum",
        "image": "https://static.inaturalist.org/photos/100110119/medium.jpg",
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
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Epipremnum aureum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Epipremnum_aureum",
        "wikipediaExtract": "Epipremnum aureum is a species in the arum family Araceae, native to Mo'orea in the Society Islands of French Polynesia. The species is a popular houseplant in temperate regions, but has also become naturalised in tropical and sub-tropical forests worldwide, including northern South Africa, Australia, Southeast Asia, Indian subcontinent, the Pacific Islands and the West Indies, where it has caused severe ecological damage in some cases.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%95%D7%98%D7%95%D7%A1",
        "imageTitle": "Golden Pothos",
        "imagePageUrl": "https://www.inaturalist.org/taxa/69223",
        "imageDescription": "(c) Alex Ambrioso, all rights reserved, uploaded by Alex Ambrioso",
        "inatTaxonName": "Epipremnum aureum",
        "inatTaxonId": 69223,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 25,
            "medium": 75,
            "large": 220
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "זמיה קוקוס",
        "botanical": "Zamioculcas zamiifolia",
        "image": "https://static.inaturalist.org/photos/172462450/medium.jpeg",
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
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Zamioculcas",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zamioculcas",
        "wikipediaExtract": "Zamioculcas is a genus of flowering plants in the family Araceae, containing the single species Zamioculcas zamiifolia. It is a tropical herbaceous perennial plant, and is native to eastern Africa, including Kenya, KwaZulu-Natal, Malawi, Mozambique, Tanzania, and Zimbabwe. Its common names include Zanzibar gem, Zuzu plant, emerald palm, ZZ plant, aroid palm and eternity plant. It is commonly grown as a houseplant, mainly because it has attractive glossy foliage and is easy to care for. Zamioculcas zamiifolia is winter-hardy in USDA Zones 9 and 10.",
        "imageTitle": "Zanzibar gem",
        "imagePageUrl": "https://www.inaturalist.org/taxa/367277",
        "imageDescription": "(c) Salisha Chandra, all rights reserved, uploaded by Salisha Chandra",
        "inatTaxonName": "Zamioculcas zamiifolia",
        "inatTaxonId": 367277,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 25,
            "medium": 75,
            "large": 220
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "פילודנדרון לבבי",
        "botanical": "Philodendron hederaceum",
        "image": "https://www.meltser.co.il/pics/plant-4291-1.jpg",
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
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Philodendron hederaceum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Philodendron_hederaceum",
        "wikipediaExtract": "Philodendron hederaceum, the heartleaf philodendron is a species of flowering plant in the family Araceae, native to Central America and the Caribbean which is common in the houseplant trade. Philodendron hederaceum var. hederaceum, the \"velvet philodendron,\" is a subspecies which is in the houseplant trade under its previous name of Philodendron micans. While toxic under certain conditions, it is also under current review for numerous health benefits.",
        "imageTitle": "פילודנדרון דו-נוצתי -  Philodendron bipinnatifidum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1633&plant=%D7%A4%D7%99%D7%9C%D7%95%D7%93%D7%A0%D7%93%D7%A8%D7%95%D7%9F%20-%20Philodendron",
        "imageDescription": "(c) Brittany Savoie, some rights reserved (CC BY), uploaded by Brittany Savoie",
        "inatTaxonName": "Philodendron hederaceum",
        "inatTaxonId": 120490,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "פילודנדרון דו-נוצתי -  Philodendron bipinnatifidum",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "פיקוס כינורי",
        "botanical": "Ficus lyrata",
        "image": "https://www.meltser.co.il/pics/plant-4461-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 280,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Ficus lyrata",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_lyrata",
        "wikipediaExtract": "Ficus lyrata, commonly known as the fiddle-leaf fig, banjo fig, fiddle-leaved fig tree, lyre leaf fig tree, or lyre-leaved fig tree, is a species of plant in the mulberry and fig family Moraceae. It is native to western Africa, but is cultivated around the world as an ornamental plant. It has received the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%99%D7%A7%D7%95%D7%A1_%D7%9B%D7%99%D7%A0%D7%95%D7%A8%D7%99",
        "imageTitle": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2504&plant=%D7%A4%D7%99%D7%A7%D7%95%D7%A1%20-%20Ficus",
        "imageDescription": "(c) Cerlin Ng, some rights reserved (CC BY-NC-SA)",
        "inatTaxonName": "Ficus lyrata",
        "inatTaxonId": 201458,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 31,
            "medium": 90,
            "large": 280
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "פיקוס גומי",
        "botanical": "Ficus elastica",
        "image": "https://www.meltser.co.il/pics/plant-4461-1.jpg",
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
        "priceLow": 31,
        "priceHigh": 280,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Ficus elastica",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Ficus_elastica",
        "wikipediaExtract": "Ficus elastica, the rubber fig, rubber bush, rubber tree, rubber plant, or Indian rubber bush, Indian rubber tree, or rambung is a species of flowering plant in the family Moraceae, native to eastern parts of South and Southeast Asia. It has become naturalized in Sri Lanka, the West Indies, and the US state of Florida. Its common names reflect its historical use as a source of rubber within its native range, but it is not used in the modern commercial-scale production of natural rubber.",
        "imageTitle": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2504&plant=%D7%A4%D7%99%D7%A7%D7%95%D7%A1%20-%20Ficus",
        "imageDescription": "(c) P Buchwald, all rights reserved, uploaded by P Buchwald",
        "inatTaxonName": "Ficus elastica",
        "inatTaxonId": 126507,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "פיקוס זוחל 'מגוון' -  Ficus pumila 'Variegata'",
        "meltzerMatchScore": 115,
        "priceBySize": {
            "small": 31,
            "medium": 90,
            "large": 280
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "דרצנה מרגינטה",
        "botanical": "Dracaena marginata",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/85543245/medium.jpg",
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
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Dracaena reflexa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_reflexa",
        "wikipediaExtract": "Dracaena reflexa is a tree native to Mozambique, Madagascar, Mauritius, and other nearby islands of the Indian Ocean. It is widely grown as an ornamental plant and houseplant, valued for its richly coloured, evergreen leaves, and thick, irregular stems.",
        "imageTitle": "Madagascar Dragon-tree",
        "imagePageUrl": "https://www.inaturalist.org/taxa/126509",
        "imageDescription": "(c) melibees, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Dracaena reflexa angustifolia",
        "inatTaxonId": 126509,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "דרצנה מסנגיאנה",
        "botanical": "Dracaena fragrans",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/69907178/medium.jpg",
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
        "priceLow": 31,
        "priceHigh": 280,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Dracaena fragrans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dracaena_fragrans",
        "wikipediaExtract": "Dracaena fragrans, is a flowering plant species that is native to tropical Africa, from Sudan south to Mozambique, west to Côte d'Ivoire and southwest to Angola, growing in upland regions at 600–2,250 m (1,970–7,380 ft) altitude.",
        "imageTitle": "cornstalk dracaena",
        "imagePageUrl": "https://www.inaturalist.org/taxa/126515",
        "imageDescription": "(c) Jan Ho, some rights reserved (CC BY-NC), uploaded by Jan Ho",
        "inatTaxonName": "Dracaena fragrans",
        "inatTaxonId": 126515,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 31,
            "medium": 90,
            "large": 280
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "ספטיפיליום",
        "botanical": "Spathiphyllum",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/439386/medium.jpg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Spathiphyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Spathiphyllum",
        "wikipediaExtract": "Spathiphyllum is a genus of about 60 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%A4%D7%98%D7%99%D7%A4%D7%99%D7%9C%D7%99%D7%95%D7%9D",
        "imageTitle": "peace lillies",
        "imagePageUrl": "https://www.inaturalist.org/taxa/206271",
        "imageDescription": "(c) Dick Culbert, some rights reserved (CC BY)",
        "inatTaxonName": "Spathiphyllum",
        "inatTaxonId": 206271,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "אנתוריום",
        "botanical": "Anthurium andraeanum",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/336703418/medium.jpeg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Anthurium andraeanum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Anthurium_andraeanum",
        "wikipediaExtract": "Anthurium andraeanum, also known as Édouard François André's Tailflower, is a flowering plant species in the family Araceae that is native to Colombia and Ecuador. It is a winner of the Royal Horticultural Society's Award of Garden Merit.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%A0%D7%AA%D7%95%D7%A8%D7%99%D7%95%D7%9F",
        "imageTitle": "painter's-palette",
        "imagePageUrl": "https://www.inaturalist.org/taxa/69235",
        "imageDescription": "(c) Mateo Hernandez Schmidt, some rights reserved (CC BY-NC-SA), uploaded by Mateo Hernandez Schmidt",
        "inatTaxonName": "Anthurium andraeanum",
        "inatTaxonId": 69235,
        "inatPhotoLicense": "cc-by-nc-sa",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "קלטאה",
        "botanical": "Calathea",
        "image": "https://static.inaturalist.org/photos/54176636/medium.jpeg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Calathea",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calathea",
        "wikipediaExtract": "Calathea is a genus of flowering plants belonging to the family Marantaceae. They are commonly called calatheas or prayer plants. About 200 species formerly assigned to Calathea are now in the genus Goeppertia. Calathea currently contains around 60 species. Native to the tropical Americas, many of the species are popular as pot plants due to their decorative leaves and, in some species, colorful inflorescences. The young leaves and bracts can retain pools of water called phytotelmata, that provide habitat for many invertebrates.",
        "imageTitle": "prayer plants",
        "imagePageUrl": "https://www.inaturalist.org/taxa/68039",
        "imageDescription": "(c) Ruth Ripley, all rights reserved, uploaded by Ruth Ripley",
        "inatTaxonName": "Calathea",
        "inatTaxonId": 68039,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "מרנטה",
        "botanical": "Maranta leuconeura",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/135052222/medium.jpeg",
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
        "priceLow": 27,
        "priceHigh": 240,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Maranta leuconeura",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Maranta_leuconeura",
        "wikipediaExtract": "Maranta leuconeura, widely known as the prayer plant due to its daily sunlight-dependent movements, is a species of flowering plant in the family Marantaceae native to the Brazilian tropical forests. It is a variable, rhizomatous perennial, growing to 30 cm (12 in) tall and broad, with crowded clumps of evergreen, strikingly-marked oval leaves, each up to 12 cm (5 in) long. The plant spreads itself horizontally, carpeting an entire small area of forest floor, sending roots into the substrate at each leaf node.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9E%D7%A8%D7%A0%D7%98%D7%94",
        "imageTitle": "Prayer plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/366346",
        "imageDescription": "(c) Vitalii, some rights reserved (CC BY-NC), uploaded by Vitalii",
        "inatTaxonName": "Maranta leuconeura",
        "inatTaxonId": 366346,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 27,
            "medium": 80,
            "large": 240
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "פפרומיה",
        "botanical": "Peperomia",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/57969361/medium.jpeg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Peperomia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Peperomia",
        "wikipediaExtract": "Peperomia is one of the two large genera of the family Piperaceae. It is estimated that there are over 1,000 species, occurring in all tropical and subtropical regions of the world. They are concentrated in South and Central America, but may also be found in southern North America, the Caribbean islands, Africa, Oceania, and southern and eastern parts of Asia. The exact number of species is difficult to determine, as some plants have been recorded several times with different names, and new species continue to be discovered. Peperomias have adapted to many different environments and their appearances vary greatly. Some are epiphytes or lithophytes, and many are xerophytes or possess underground tubers (geophytes). Most species are compact perennial shrubs or vines.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%A4%D7%A8%D7%95%D7%9E%D7%99%D7%94",
        "imageTitle": "radiator plants",
        "imagePageUrl": "https://www.inaturalist.org/taxa/123622",
        "imageDescription": "(c) wherenextnyc, some rights reserved (CC BY-NC), uploaded by wherenextnyc",
        "inatTaxonName": "Peperomia",
        "inatTaxonId": 123622,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "סינגוניום",
        "botanical": "Syngonium podophyllum",
        "image": "https://static.inaturalist.org/photos/103083972/medium.jpg",
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
        "priceLow": 33,
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Syngonium podophyllum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Syngonium_podophyllum",
        "wikipediaExtract": "Syngonium podophyllum is a species of aroid that is a popular houseplant. Common names include: arrowhead plant, arrowhead vine, arrowhead philodendron, goosefoot, nephthytis, African evergreen, and American evergreen. The species is native to a wide region of Latin America from Mexico through Bolivia, and naturalized in the West Indies, Florida, Texas, Hawaii, and other places.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%A0%D7%92%D7%95%D7%A0%D7%99%D7%95%D7%9D",
        "imageTitle": "Goosefoot-plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/143208",
        "imageDescription": "(c) Nayelis Fernandez, all rights reserved, uploaded by Nayelis Fernandez",
        "inatTaxonName": "Syngonium podophyllum",
        "inatTaxonId": 143208,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "סקינדפסוס",
        "botanical": "Scindapsus pictus",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/208689255/medium.jpeg",
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
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Scindapsus pictus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Scindapsus_pictus",
        "wikipediaExtract": "Scindapsus pictus, commonly called satin pothos, silver pothos, or silver vine, is a species of flowering plant in the aroid or arum family, Araceae, native to Bangladesh, Borneo, India, Java, Peninsular Malaysia, the Philippines, Sulawesi, Sumatra, Taiwan and Thailand. The Latin specific epithet pictus means \"painted\", referring to the variegation on the leaves.",
        "imageTitle": "satin pothos",
        "imagePageUrl": "https://www.inaturalist.org/taxa/346616",
        "imageDescription": "(c) Ganjar Cahyadi, some rights reserved (CC BY-NC), uploaded by Ganjar Cahyadi",
        "inatTaxonName": "Scindapsus pictus",
        "inatTaxonId": 346616,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "דיפנבכיה",
        "botanical": "Dieffenbachia",
        "image": "https://static.inaturalist.org/photos/63836591/medium.jpeg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Dieffenbachia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Dieffenbachia",
        "wikipediaExtract": "Dieffenbachia, commonly known as dumb cane or leopard lily, is a genus of tropical flowering plants in the family Araceae. It is native to the New World Tropics from Mexico and the West Indies south to Argentina. Some species are widely cultivated as ornamental plants, especially as houseplants, and have become naturalized on a few tropical islands.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%93%D7%99%D7%A4%D7%A0%D7%91%D7%9B%D7%99%D7%94",
        "imageTitle": "dumb canes",
        "imagePageUrl": "https://www.inaturalist.org/taxa/147272",
        "imageDescription": "(c) Nicolle Vergara, all rights reserved, uploaded by Nicolle Vergara",
        "inatTaxonName": "Dieffenbachia",
        "inatTaxonId": 147272,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "אגלאונמה",
        "botanical": "Aglaonema",
        "image": "https://static.inaturalist.org/photos/168360554/medium.jpeg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Aglaonema",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aglaonema",
        "wikipediaExtract": "Aglaonema is a genus of flowering plants in the arum family, Araceae. They are native to tropical and subtropical regions of Asia and New Guinea. They are known commonly as Chinese evergreens.",
        "imageTitle": "Chinese evergreens",
        "imagePageUrl": "https://www.inaturalist.org/taxa/141512",
        "imageDescription": "(c) 古國順, all rights reserved, uploaded by 古國順",
        "inatTaxonName": "Aglaonema",
        "inatTaxonId": 141512,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "אספידיסטרה",
        "botanical": "Aspidistra elatior",
        "image": "https://static.inaturalist.org/photos/374084255/medium.jpg",
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
        "priceLow": 27,
        "priceHigh": 240,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Aspidistra elatior",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Aspidistra_elatior",
        "wikipediaExtract": "Aspidistra elatior, the cast-iron-plant or bar-room plant, also known in Japanese as haran or baran (葉蘭) is a species of flowering plant in the family Asparagaceae, native to Japan and Taiwan. Tolerant of neglect, it is widely cultivated as a houseplant, but can also be grown outside in shade where temperatures remain above −15 °C (5 °F). It is used as training material for the seika form of ikebana.",
        "imageTitle": "cast-iron plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/125396",
        "imageDescription": "(c) Ginko Mocizuki, all rights reserved, uploaded by Ginko Mocizuki",
        "inatTaxonName": "Aspidistra elatior",
        "inatTaxonId": 125396,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 27,
            "medium": 80,
            "large": 240
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "כלורופיטום",
        "botanical": "Chlorophytum comosum",
        "image": "https://www.meltser.co.il/pics/plant-3694-1.jpg",
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
        "priceLow": 29,
        "priceHigh": 260,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Chlorophytum comosum",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Chlorophytum_comosum",
        "wikipediaExtract": "Chlorophytum comosum, usually called spider plant or common spider plant due to its spider-like look, also known as spider ivy, airplane plant, ribbon plant, and hen and chicks, is a species of evergreen perennial flowering plant of the family Asparagaceae. It is native to tropical and Southern Africa but has become naturalized in other parts of the world, including Western Australia and Bangladesh. Chlorophytum comosum is easy to grow as a houseplant because of its resilience, but it can be sensitive to the fluoride in tap water, which commonly gives it \"burnt tips\". Variegated forms are the most popular.",
        "imageTitle": "ירקה מצויצת 'מפוספסת' -  Chlorophytum comosum 'Vittatum'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1262&plant=%D7%99%D7%A8%D7%A7%D7%94%20-%20Chlorophytum",
        "imageDescription": "(c) truffletheguineapig, some rights reserved (CC BY-NC), uploaded by truffletheguineapig",
        "inatTaxonName": "Chlorophytum comosum",
        "inatTaxonId": 322492,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "ירקה מצויצת 'מפוספסת' -  Chlorophytum comosum 'Vittatum'",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 29,
            "medium": 85,
            "large": 260
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "הויה",
        "botanical": "Hoya carnosa",
        "image": "https://inaturalist-open-data.s3.amazonaws.com/photos/165589748/medium.jpeg",
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
        "priceLow": 33,
        "priceHigh": 300,
        "tags": [
            "צמח בית",
            "עציץ",
            "צל",
            "קל לטיפול",
            "houseplants"
        ],
        "imageSource": "iNaturalist",
        "wikipediaTitle": "Hoya carnosa",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Hoya_carnosa",
        "wikipediaExtract": "Hoya carnosa, the porcelain flower or wax plant, is a species of flowering plant in the family Apocynaceae, native to East Asia. It is a common house plant grown for its attractive waxy foliage, and sweetly scented flowers. It is grown well in pots and hanging baskets.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%95%D7%99%D7%94",
        "imageTitle": "wax plant",
        "imagePageUrl": "https://www.inaturalist.org/taxa/129523",
        "imageDescription": "no rights reserved, uploaded by 葉子",
        "inatTaxonName": "Hoya carnosa",
        "inatTaxonId": 129523,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "לא נמצאה תמונת מלצר מתאימה",
        "meltzerMatchScore": 0,
        "priceBySize": {
            "small": 33,
            "medium": 95,
            "large": 300
        },
        "gardenStyles": [
            "טרופי",
            "עירוני",
            "צל ומרפסת"
        ]
    },
    {
        "name": "וינקה",
        "botanical": "Catharanthus roseus",
        "image": "https://www.meltser.co.il/pics/plant-3505-1.jpg",
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
        "priceLow": 8,
        "priceHigh": 24,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Catharanthus roseus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Catharanthus_roseus",
        "wikipediaExtract": "Catharanthus roseus, commonly known as bright eyes, Cape periwinkle, graveyard plant, Madagascar periwinkle, old maid, pink periwinkle, rose periwinkle, is a perennial species of flowering plant in the family Apocynaceae. It is native and endemic to Madagascar, but is grown elsewhere as an ornamental and medicinal plant, and now has a pantropical distribution. It is a source of the drugs vincristine and vinblastine, used to treat cancer. It was formerly included in the genus Vinca as Vinca rosea.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%95%D7%99%D7%A0%D7%A7%D7%94",
        "imageTitle": "קתרנתוס ורוד זקוף -  Catharanthus roseus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2147&plant=%D7%A7%D7%AA%D7%A8%D7%A0%D7%AA%D7%95%D7%A1%20-%20Catharanthus",
        "imageDescription": "(c) Desita Dyah D A Kusumaningrum, some rights reserved (CC BY-NC), uploaded by Desita Dyah D A Kusumaningrum",
        "inatTaxonName": "Catharanthus roseus",
        "inatTaxonId": 62924,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "קתרנתוס ורוד זקוף -  Catharanthus roseus",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 8,
            "medium": 13,
            "large": 24
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פטוניה",
        "botanical": "Petunia",
        "image": "https://www.meltser.co.il/pics/plant-5393-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Petunia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Petunia",
        "wikipediaExtract": "Petunia is a genus of 20 species of flowering plants of South American origin. The popular flower of the same name derived its epithet from the French, which took the word pétun, 'tobacco', from a Tupi–Guarani language. A tender perennial plant, most of the varieties seen in gardens are hybrids.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A4%D7%98%D7%95%D7%A0%D7%99%D7%94",
        "imageTitle": "פטוניה  זנים משתפלים -  Petunia  cascading cvs.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1619&plant=%D7%A4%D7%98%D7%95%D7%A0%D7%99%D7%94%20-%20Petunia",
        "imageDescription": "(c) Guillermo Menéndez, some rights reserved (CC BY-NC), uploaded by Guillermo Menéndez",
        "inatTaxonName": "Petunia",
        "inatTaxonId": 55406,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "פטוניה  זנים משתפלים -  Petunia  cascading cvs.",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אמנון ותמר",
        "botanical": "Viola tricolor",
        "image": "https://www.meltser.co.il/pics/plant-5368-1.jpg",
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
        "priceLow": 10,
        "priceHigh": 28,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Viola tricolor",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Viola_tricolor",
        "wikipediaExtract": "Viola tricolor is a common European wild flower, growing as an annual or short-lived perennial. The species is also known as wild pansy, Johnny Jump up, heartsease, heart's ease, heart's delight, tickle-my-fancy, Jack-jump-up-and-kiss-me, come-and-cuddle-me, three faces in a hood, love-in-idleness, and pink of my john.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%90%D7%9E%D7%A0%D7%95%D7%9F_%D7%95%D7%AA%D7%9E%D7%A8",
        "imageTitle": "סיגל (אמנון ותמר) מקרין \"פני\" -  Viola cornuta &V. tricolor, hybrids",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2481&plant=%D7%A1%D7%99%D7%92%D7%9C%20%28%D7%90%D7%9E%D7%A0%D7%95%D7%9F%20%D7%95%D7%AA%D7%9E%D7%A8%29%20-%20Viola",
        "imageDescription": "(c) AnneTanne, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Viola tricolor",
        "inatTaxonId": 55739,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "סיגל (אמנון ותמר) מקרין \"פני\" -  Viola cornuta &V. tricolor, hybrids",
        "meltzerMatchScore": 290,
        "priceBySize": {
            "small": 10,
            "medium": 15,
            "large": 28
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ציפורן חתול",
        "botanical": "Tagetes",
        "image": "https://www.meltser.co.il/pics/plant-4511-1.jpg",
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
        "priceLow": 8,
        "priceHigh": 24,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Tagetes",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Tagetes",
        "wikipediaExtract": "Tagetes is a genus of 50 species of annual or perennial, mostly herbaceous plants in the family Asteraceae. They are among several groups of plants known in English as marigolds. The genus Tagetes was formally named by Carl Linnaeus in 1753. Linnaeus cited Joseph Pitton de Tournefort (1700), Johann Jacob Dillenius (1732), Gaspard Bauhin (1623) and Fabio Colonna (1606) as authors who used the name 'Tagetes' before. In 1754 he published the formal description in his Genera Plantarum, referring to Tournefort, Sébastien Vaillant (1720) and Dillenius for the name 'Tagetes'.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C",
        "imageTitle": "טגטס דק-עלים -  Tagetes tenuifolia",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1207&plant=%D7%98%D7%92%D7%98%D7%A1%20-%20Tagetes",
        "imageDescription": "(c) Simon Nyholt Petersen, all rights reserved, uploaded by Simon Nyholt Petersen",
        "inatTaxonName": "Tagetes",
        "inatTaxonId": 72389,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "טגטס דק-עלים -  Tagetes tenuifolia",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 8,
            "medium": 13,
            "large": 24
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לוע הארי",
        "botanical": "Antirrhinum majus",
        "image": "https://www.meltser.co.il/pics/plant-2684-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Antirrhinum majus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Antirrhinum_majus",
        "wikipediaExtract": "Antirrhinum majus, the common snapdragon, is a species of flowering plant belonging to the genus Antirrhinum. The plant was placed in the family Plantaginaceae following a revision of its prior classical family, Scrophulariaceae.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%9C%D7%95%D7%A2_%D7%94%D7%90%D7%A8%D7%99",
        "imageTitle": "לוע-ארי גדול תת-מין מפותל (טיפוס הבר) -  Antirrhinum majus ssp. tortusum",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1331&plant=%D7%9C%D7%95%D7%A2-%D7%90%D7%A8%D7%99%20-%20Antirrhinum",
        "imageDescription": "no rights reserved, uploaded by Jacqueline Jeanne",
        "inatTaxonName": "Antirrhinum majus",
        "inatTaxonId": 48969,
        "inatPhotoLicense": "cc0",
        "meltzerLabel": "לוע-ארי גדול תת-מין מפותל (טיפוס הבר) -  Antirrhinum majus ssp. tortusum",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "סלסלי כסף",
        "botanical": "Lobularia maritima",
        "image": "https://www.meltser.co.il/pics/plant-2736-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lobularia maritima",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobularia_maritima",
        "wikipediaExtract": "Lobularia maritima is a species of low-growing flowering plant in the family Brassicaceae. Its common name is sweet alyssum or sweet Alison, also commonly referred to as just alyssum.",
        "imageTitle": "מללנית ריחנית -  Lobularia maritima",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1431&plant=%D7%9E%D7%9C%D7%9C%D7%A0%D7%99%D7%AA%20-%20Lobularia",
        "imageDescription": "(c) mari_her03, some rights reserved (CC BY-NC)",
        "inatTaxonName": "Lobularia maritima",
        "inatTaxonId": 56992,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "מללנית ריחנית -  Lobularia maritima",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "לובליה",
        "botanical": "Lobelia erinus",
        "image": "https://www.meltser.co.il/pics/plant-3549-1.jpg",
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
        "priceHigh": 20,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Lobelia erinus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Lobelia_erinus",
        "wikipediaExtract": "Lobelia erinus is a species of flowering plant in the bellflower family Campanulaceae, native to southern Africa.",
        "imageTitle": "לובליה שרועה (עונתית) זנים קומפקטיים -  Lobelia erinus, compact cvs",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1322&plant=%D7%9C%D7%95%D7%91%D7%9C%D7%99%D7%94%20-%20Lobelia",
        "imageDescription": "(c) Alexis Tinker-Tsavalas, some rights reserved (CC BY), uploaded by Alexis Tinker-Tsavalas",
        "inatTaxonName": "Lobelia erinus",
        "inatTaxonId": 77797,
        "inatPhotoLicense": "cc-by",
        "meltzerLabel": "לובליה שרועה (עונתית) זנים קומפקטיים -  Lobelia erinus, compact cvs",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 6,
            "medium": 11,
            "large": 20
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "בגוניה",
        "botanical": "Begonia",
        "image": "https://www.meltser.co.il/pics/plant-5239-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Begonia",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Begonia",
        "wikipediaExtract": "Begonia is a genus of perennial flowering plants in the family Begoniaceae. The genus contains more than 2,000 different plant species, distributed primarily across tropical and subtropical regions of Africa, Asia, and Central and South America, with Africa considered the center of origin. Some species are commonly grown indoors as ornamental houseplants in cooler climates, or cultivated outside in summertime for their bright colorful flowers, which have petals but no sepals.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%91%D7%92%D7%95%D7%A0%D7%99%D7%94",
        "imageTitle": "בגוניה קבוצת מכלואי פורחת-עד עלה ירוק -  Begonia",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=547&plant=%D7%91%D7%92%D7%95%D7%A0%D7%99%D7%94%20-%20Begonia",
        "imageDescription": "(c) Lily, some rights reserved (CC BY-NC), uploaded by Lily",
        "inatTaxonName": "Begonia",
        "inatTaxonId": 126405,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "בגוניה קבוצת מכלואי פורחת-עד עלה ירוק -  Begonia",
        "meltzerMatchScore": 335,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "ציניה",
        "botanical": "Zinnia elegans",
        "image": "https://www.meltser.co.il/pics/plant-5413-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Zinnia elegans",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Zinnia_elegans",
        "wikipediaExtract": "Zinnia elegans known as youth-and-age, common zinnia or elegant zinnia, is an annual flowering plant in the family Asteraceae. It is native to Mexico but grown as an ornamental in many places and naturalised in several places, including scattered locations in South and Central America, the West Indies, the United States, Australia, and Italy.",
        "imageTitle": "ציניה עדינה זנים שונים -  Zinnia elegans",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1739&plant=%D7%A6%D7%99%D7%A0%D7%99%D7%94%20-%20Zinnia",
        "imageDescription": "(c) Erick Noe Tapia Banda, some rights reserved (CC BY-NC), uploaded by Erick Noe Tapia Banda",
        "inatTaxonName": "Zinnia elegans",
        "inatTaxonId": 181901,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "ציניה עדינה זנים שונים -  Zinnia elegans",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קוסמוס",
        "botanical": "Cosmos bipinnatus",
        "image": "https://www.meltser.co.il/pics/plant-4412-1.jpg",
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
        "priceLow": 12,
        "priceHigh": 32,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Cosmos bipinnatus",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Cosmos_bipinnatus",
        "wikipediaExtract": "Cosmos bipinnatus, commonly called the garden cosmos, Mexican aster or cosmea, is a medium-sized flowering herbaceous plant in the daisy family Asteraceae, native to the Americas. The species and its varieties and cultivars are popular as ornamental plants in temperate climate gardens.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%94%D7%99%D7%A7%D7%95%D7%9D",
        "imageTitle": "קוסמוס מנוצה -  Cosmos bipinnatus",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2146&plant=%D7%A7%D7%95%D7%A1%D7%9E%D7%95%D7%A1%20-%20Cosmos",
        "imageDescription": "(c) Francisco J. Muñoz Nolasco, some rights reserved (CC BY-NC), uploaded by Francisco J. Muñoz Nolasco",
        "inatTaxonName": "Cosmos bipinnatus",
        "inatTaxonId": 68562,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "קוסמוס מנוצה -  Cosmos bipinnatus",
        "meltzerMatchScore": 375,
        "priceBySize": {
            "small": 12,
            "medium": 17,
            "large": 32
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "חמנית ננסית",
        "botanical": "Helianthus annuus",
        "image": "https://www.meltser.co.il/pics/plant-3354-1.jpg",
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
        "priceHigh": 28,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Common sunflower",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Common_sunflower",
        "wikipediaExtract": "The common sunflower is a large annual forb in the daisy family Asteraceae. The domesticated form of common sunflower is harvested for its edible seeds, which come in two types: oil and confectionary seeds. Oilseed sunflowers are widely grown globally and represent the fourth most used vegetable oil in the world. They also are used widely as bird food or as food for livestock. In contrast, confectionary sunflowers are often eaten as a snack food or in baking. There also are horticultural sunflower varieties that are used as plantings in domestic gardens for aesthetics. Wild plants are known for their multiple flower heads, whereas the domestic sunflower often possesses a single large flower head atop an unbranched stem.",
        "imageTitle": "חמנית מצויה זנים בינוניים וננסיים -  Helianthus annuus medium-size & dwarf cvs.",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1158&plant=%D7%97%D7%9E%D7%A0%D7%99%D7%AA%20-%20Helianthus",
        "imageDescription": "(c) Emily Scherer, some rights reserved (CC BY-NC), uploaded by Emily Scherer",
        "inatTaxonName": "Helianthus annuus",
        "inatTaxonId": 57983,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "חמנית מצויה זנים בינוניים וננסיים -  Helianthus annuus medium-size & dwarf cvs.",
        "meltzerMatchScore": 275,
        "priceBySize": {
            "small": 10,
            "medium": 15,
            "large": 28
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "סלפיגלוסיס",
        "botanical": "Salpiglossis",
        "image": "https://www.meltser.co.il/pics/plant-5287-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Salpiglossis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Salpiglossis",
        "wikipediaExtract": "Salpiglossis is a genus of flowering plants belonging to the subfamily Cestroideae of family Solanaceae. It is closely related to the genus Reyesia, with which it makes up the tribe Salpiglossideae. Species in the genus Salpiglossis are found in Mexico, Argentina and Chile.",
        "imageTitle": "זוגית מפורצת -  Salpiglossis sinuata",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=936&plant=%D7%96%D7%95%D7%92%D7%99%D7%AA%20-%20Salpiglossis",
        "imageDescription": "(c) lucasrojasr, some rights reserved (CC BY-NC), uploaded by lucasrojasr",
        "inatTaxonName": "Salpiglossis",
        "inatTaxonId": 204223,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "זוגית מפורצת -  Salpiglossis sinuata",
        "meltzerMatchScore": 200,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קלנדולה",
        "botanical": "Calendula officinalis",
        "image": "https://www.meltser.co.il/pics/plant-4198-1.jpg",
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
        "priceHigh": 20,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Calendula officinalis",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Calendula_officinalis",
        "wikipediaExtract": "Calendula officinalis, Mary's gold, common marigold, the pot marigold, Scotch marigold, or ruddles, is a flowering plant in the daisy family, Asteraceae. It is probably native to southern Europe, but its long history of cultivation makes its precise origin unknown, and it is widely naturalised. The florets are edible and the plant has historically been used as medicine.",
        "infoSource": "ויקיפדיה",
        "wikipediaHebrewUrl": "https://he.wikipedia.org/wiki/%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99_%D7%97%D7%AA%D7%95%D7%9C",
        "imageTitle": "ציפורני- חתול תרבותיות -  Calendula officinalis",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1755&plant=%D7%A6%D7%99%D7%A4%D7%95%D7%A8%D7%A0%D7%99-%20%D7%97%D7%AA%D7%95%D7%9C%20-%20Calendula",
        "imageDescription": "(c) Konstantinos Barsakis, all rights reserved, uploaded by Konstantinos Barsakis",
        "inatTaxonName": "Calendula officinalis",
        "inatTaxonId": 75931,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "ציפורני- חתול תרבותיות -  Calendula officinalis",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 6,
            "medium": 11,
            "large": 20
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "פורטולקה עונתית",
        "botanical": "Portulaca grandiflora",
        "image": "https://www.meltser.co.il/pics/plant-4512-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Portulaca grandiflora",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Portulaca_grandiflora",
        "wikipediaExtract": "Portulaca grandiflora is a succulent flowering plant in the purslane family Portulacaceae, native to southern Brazil, Argentina, and Uruguay and often cultivated in gardens. It has many common names, including rose moss, eleven o'clock, Mexican rose, moss rose, sun rose, rose Jepun, table rose, rock rose, and moss-rose purslane. Despite these names and the superficial resemblance of some cultivars' flowers to roses, it is not a true rose, nor even a part of the rose family or rosid group; rather, it is much more closely related to carnations and cacti.",
        "imageTitle": "רגלה גדולת-פרחים -  Portulaca grandiflora",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=1901&plant=%D7%A8%D7%92%D7%9C%D7%94%20-%20Portulaca",
        "imageDescription": "(c) WK Cheng, all rights reserved, uploaded by WK Cheng",
        "inatTaxonName": "Portulaca grandiflora",
        "inatTaxonId": 167309,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "רגלה גדולת-פרחים -  Portulaca grandiflora",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "אימפטינס",
        "botanical": "Impatiens walleriana",
        "image": "https://www.meltser.co.il/pics/plant-3688-1.jpg",
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
        "priceHigh": 24,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Impatiens walleriana",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Impatiens_walleriana",
        "wikipediaExtract": "Impatiens walleriana, also known as busy Lizzie, balsam, sultana, or simply impatiens, is a species of the genus Impatiens, native to eastern Africa from Kenya to Mozambique. The Latin specific epithet walleriana honours a British missionary, Horace Waller (1833–1896).",
        "imageTitle": "בשמת השולטן -  Impatiens walleriana",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=620&plant=%D7%91%D7%A9%D7%9E%D7%AA%20-%20Impatiens",
        "imageDescription": "(c) Vinicius P. dos S. F., some rights reserved (CC BY-NC), uploaded by Vinicius P. dos S. F.",
        "inatTaxonName": "Impatiens walleriana",
        "inatTaxonId": 68185,
        "inatPhotoLicense": "cc-by-nc",
        "meltzerLabel": "בשמת השולטן -  Impatiens walleriana",
        "meltzerMatchScore": 240,
        "priceBySize": {
            "small": 8,
            "medium": 13,
            "large": 24
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    },
    {
        "name": "קולאוס",
        "botanical": "Plectranthus scutellarioides",
        "image": "https://www.meltser.co.il/pics/plant-5403-1.jpg",
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
        "priceHigh": 16,
        "tags": [
            "עונתי",
            "פורח",
            "צבע",
            "אדנית",
            "seasonal"
        ],
        "imageSource": "משתלת מלצר",
        "wikipediaTitle": "Coleus scutellarioides",
        "wikipediaUrl": "https://en.wikipedia.org/wiki/Coleus_scutellarioides",
        "wikipediaExtract": "Coleus scutellarioides, commonly known as coleus, is a species of flowering plant in the family Lamiaceae, native to southeast Asia through to Australia. Typically growing to 60–75 cm (24–30 in) tall and wide, it is a bushy, woody-based evergreen perennial, widely grown for the highly decorative variegated leaves found in cultivated varieties.",
        "imageTitle": "פלקטרנטוס  'מונה לוונדר' -  Plectranthus  'Mona Lavender'",
        "imagePageUrl": "https://www.meltser.co.il/plant.php?id=2707&plant=%D7%A4%D7%9C%D7%A7%D7%98%D7%A8%D7%A0%D7%98%D7%95%D7%A1%20-%20Plectranthus",
        "imageDescription": "(c) aslincey, all rights reserved",
        "inatTaxonName": "Coleus scutellarioides",
        "inatTaxonId": 291284,
        "inatPhotoLicense": "all-rights-reserved/source-credit-required",
        "meltzerLabel": "פלקטרנטוס  'מונה לוונדר' -  Plectranthus  'Mona Lavender'",
        "meltzerMatchScore": 80,
        "priceBySize": {
            "small": 4,
            "medium": 9,
            "large": 16
        },
        "gardenStyles": [
            "עירוני",
            "פורח וצבעוני"
        ]
    }
];

const plantGrid = document.getElementById("plantGrid");
const emptyState = document.getElementById("emptyState");
const searchInput = document.getElementById("searchInput");
const sunFilter = document.getElementById("sunFilter");
const soilFilter = document.getElementById("soilFilter");
const waterFilter = document.getElementById("waterFilter");
const styleFilter = document.getElementById("styleFilter");
const tabs = document.querySelectorAll(".tab");
const videoInput = document.getElementById("videoInput");
const videoPreview = document.getElementById("videoPreview");
const recommendButton = document.getElementById("recommendButton");
const recommendationIntro = document.getElementById("recommendationIntro");
const recommendationList = document.getElementById("recommendationList");
const totalCost = document.getElementById("totalCost");
const localPhotoStorageKey = "gardeningArtistsLocalPhotos";

function loadLocalPhotoOverrides() {
    try {
        return JSON.parse(localStorage.getItem(localPhotoStorageKey)) || {};
    } catch (error) {
        return {};
    }
}

function saveLocalPhotoOverrides(overrides) {
    try {
        localStorage.setItem(localPhotoStorageKey, JSON.stringify(overrides));
        return true;
    } catch (error) {
        alert("התמונה גדולה מדי לשמירה בדפדפן. נסו תמונה קטנה יותר, או החליפו אותה בקובץ client-photos.js.");
        return false;
    }
}

function imageFallback(name) {
    const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="900" height="675" viewBox="0 0 900 675"><defs><linearGradient id="bg" x1="0" y1="0" x2="1" y2="1"><stop stop-color="#eef5ef"/><stop offset="1" stop-color="#dce8df"/></linearGradient></defs><rect width="900" height="675" fill="url(#bg)"/><circle cx="230" cy="210" r="92" fill="#6f927a" opacity="0.26"/><circle cx="690" cy="470" r="130" fill="#ead9b7" opacity="0.42"/><path d="M450 478c-70-78-78-160-24-248 73 74 92 154 24 248Z" fill="#476653" opacity="0.82"/><path d="M430 486c-88-42-132-112-128-214 92 35 147 100 128 214Z" fill="#6f927a" opacity="0.72"/><path d="M470 486c88-42 132-112 128-214-92 35-147 100-128 214Z" fill="#6f927a" opacity="0.72"/><text x="450" y="585" text-anchor="middle" font-family="Arial, sans-serif" font-size="42" font-weight="700" fill="#31483a">${name}</text><text x="450" y="626" text-anchor="middle" font-family="Arial, sans-serif" font-size="24" fill="#667568">Gardening Artists</text></svg>`;
    return `data:image/svg+xml;charset=UTF-8,${encodeURIComponent(svg)}`;
}

const clientPhotoOverrides = window.CLIENT_PHOTOS || {};
const remotePhotoService = window.REMOTE_PHOTO_SERVICE || {};
let localPhotoOverrides = loadLocalPhotoOverrides();
let remotePhotoOverrides = {};

function remotePhotosEnabled() {
    return Boolean(
        remotePhotoService.enabled &&
        remotePhotoService.provider === "supabase" &&
        remotePhotoService.supabaseUrl &&
        remotePhotoService.supabaseAnonKey &&
        remotePhotoService.bucket &&
        remotePhotoService.table
    );
}

function supabaseBaseUrl() {
    return remotePhotoService.supabaseUrl.replace(/\/$/, "");
}

function supabaseHeaders(contentType) {
    const headers = {
        apikey: remotePhotoService.supabaseAnonKey,
        Authorization: `Bearer ${remotePhotoService.supabaseAnonKey}`
    };
    if (contentType) {
        headers["Content-Type"] = contentType;
    }
    return headers;
}

function plantStorageKey(plant) {
    return plant.botanical || plant.name;
}

function safeFilePart(value) {
    return value
        .toLowerCase()
        .replace(/[^a-z0-9\u0590-\u05ff]+/gi, "-")
        .replace(/^-+|-+$/g, "")
        .slice(0, 80) || "plant";
}

async function loadRemotePhotoOverrides() {
    if (!remotePhotosEnabled()) return;
    const url = `${supabaseBaseUrl()}/rest/v1/${remotePhotoService.table}?select=plant_key,photo_url`;
    try {
        const response = await fetch(url, { headers: supabaseHeaders() });
        if (!response.ok) throw new Error(`Supabase load failed: ${response.status}`);
        const rows = await response.json();
        remotePhotoOverrides = rows.reduce((accumulator, row) => {
            accumulator[row.plant_key] = row.photo_url;
            return accumulator;
        }, {});
        rerenderCurrentPlants();
    } catch (error) {
        console.warn("Remote photo loading failed", error);
    }
}

async function uploadRemotePhoto(plant, file) {
    if (!remotePhotosEnabled()) return "";
    const extension = (file.name.split(".").pop() || "jpg").toLowerCase().replace(/[^a-z0-9]/g, "") || "jpg";
    const path = `${safeFilePart(plantStorageKey(plant))}-${Date.now()}.${extension}`;
    const uploadUrl = `${supabaseBaseUrl()}/storage/v1/object/${remotePhotoService.bucket}/${encodeURIComponent(path)}`;
    const uploadResponse = await fetch(uploadUrl, {
        method: "POST",
        headers: {
            ...supabaseHeaders(file.type || "application/octet-stream"),
            "x-upsert": "true"
        },
        body: file
    });
    if (!uploadResponse.ok) {
        throw new Error(`Supabase upload failed: ${uploadResponse.status}`);
    }

    const publicUrl = `${supabaseBaseUrl()}/storage/v1/object/public/${remotePhotoService.bucket}/${encodeURIComponent(path)}`;
    const row = {
        plant_key: plantStorageKey(plant),
        plant_name: plant.name,
        botanical_name: plant.botanical,
        photo_url: publicUrl,
        updated_at: new Date().toISOString()
    };
    const saveUrl = `${supabaseBaseUrl()}/rest/v1/${remotePhotoService.table}?on_conflict=plant_key`;
    const saveResponse = await fetch(saveUrl, {
        method: "POST",
        headers: {
            ...supabaseHeaders("application/json"),
            Prefer: "resolution=merge-duplicates"
        },
        body: JSON.stringify(row)
    });
    if (!saveResponse.ok) {
        throw new Error(`Supabase photo row save failed: ${saveResponse.status}`);
    }

    remotePhotoOverrides[plantStorageKey(plant)] = publicUrl;
    return publicUrl;
}

async function deleteRemotePhoto(plant) {
    if (!remotePhotosEnabled()) return;
    const key = encodeURIComponent(plantStorageKey(plant));
    const url = `${supabaseBaseUrl()}/rest/v1/${remotePhotoService.table}?plant_key=eq.${key}`;
    const response = await fetch(url, {
        method: "DELETE",
        headers: supabaseHeaders()
    });
    if (!response.ok) {
        throw new Error(`Supabase photo row delete failed: ${response.status}`);
    }
    delete remotePhotoOverrides[plantStorageKey(plant)];
}

function clientPhotoFor(plant) {
    return remotePhotoOverrides[plantStorageKey(plant)] ||
        localPhotoOverrides[plant.name] ||
        localPhotoOverrides[plant.botanical] ||
        clientPhotoOverrides[plant.name] ||
        clientPhotoOverrides[plant.botanical] ||
        "";
}

function photoUrl(plant) {
    const override = clientPhotoFor(plant);
    return override || (plant.image === "fallback" ? imageFallback(plant.name) : plant.image);
}

function photoSourceUrl(plant) {
    return clientPhotoFor(plant) || plant.imagePageUrl || plant.wikipediaUrl || "#";
}

function photoSourceLabel(plant) {
    if (remotePhotoOverrides[plantStorageKey(plant)]) {
        return "תמונה שנשמרה בענן";
    }
    if (localPhotoOverrides[plant.name] || localPhotoOverrides[plant.botanical]) {
        return "תמונה שהועלתה בדפדפן";
    }
    return clientPhotoFor(plant) ? "תמונה שהוחלפה ידנית" : plant.imageSource;
}

function findPlantByKey(key) {
    return plants.find((plant) => plant.name === key || plant.botanical === key);
}

function activeRubric() {
    const activeTab = document.querySelector(".tab.active");
    return activeTab ? activeTab.dataset.rubric : "all";
}

function rerenderCurrentPlants() {
    renderPlants(activeRubric());
}

document.getElementById("plantCount").textContent = plants.length;

function plantMatchesRubric(plant, rubric) {
    return rubric === "all" ||
        plant.sun.includes(rubric) ||
        plant.soil.includes(rubric) ||
        plant.water === rubric ||
        (plant.gardenStyles || []).includes(rubric);
}

function normalize(value) {
    return value.toLowerCase().trim();
}

function renderPlants(rubric = "all") {
    const query = normalize(searchInput.value);
    const selectedSun = sunFilter.value;
    const selectedSoil = soilFilter.value;
    const selectedWater = waterFilter.value;
    const selectedStyle = styleFilter.value;

    const filteredPlants = plants.filter((plant) => {
        const searchable = normalize([
            plant.name,
            plant.botanical,
            plant.detail,
            plant.wikipediaExtract || "",
            plant.sun.join(" "),
            plant.soil.join(" "),
            plant.water,
            (plant.gardenStyles || []).join(" "),
            plant.tags.join(" ")
        ].join(" "));

        return plantMatchesRubric(plant, rubric) &&
            (!query || searchable.includes(query)) &&
            (!selectedSun || plant.sun.includes(selectedSun)) &&
            (!selectedSoil || plant.soil.includes(selectedSoil)) &&
            (!selectedWater || plant.water === selectedWater) &&
            (!selectedStyle || (plant.gardenStyles || []).includes(selectedStyle));
    });

    plantGrid.innerHTML = filteredPlants.map((plant) => `
        <article class="plant-card">
            <img src="${photoUrl(plant)}" alt="${plant.name}" loading="lazy" decoding="async" onerror="this.onerror=null;this.src=imageFallback(this.alt);">
            <div class="plant-card-content">
                <h3>${plant.name}<span>${plant.botanical}</span></h3>
                <p>${plant.detail}</p>
                <div class="chips">
                    ${plant.sun.map((item) => `<span class="chip">${item}</span>`).join("")}
                    ${plant.soil.map((item) => `<span class="chip">${item}</span>`).join("")}
                    ${(plant.gardenStyles || []).map((item) => `<span class="chip">${item}</span>`).join("")}
                    <span class="chip">השקיה ${plant.water}</span>
                </div>
                <div class="plant-meta">
                    <div class="meta-row"><strong>שמש מיטבית</strong><span>${plant.sun.join(", ")}</span></div>
                    <div class="meta-row"><strong>קרקע מתאימה</strong><span>${plant.soil.join(", ")}</span></div>
                    <div class="meta-row"><strong>השקיה</strong><span>${plant.water}</span></div>
                    <div class="size-prices" aria-label="מחירים לפי גודל">
                        <div class="size-price"><strong>קטן</strong><span>₪${plant.priceBySize.small}</span></div>
                        <div class="size-price"><strong>בינוני</strong><span>₪${plant.priceBySize.medium}</span></div>
                        <div class="size-price"><strong>גדול</strong><span>₪${plant.priceBySize.large}</span></div>
                    </div>
                    <a class="source-link" href="${photoSourceUrl(plant)}" target="_blank" rel="noopener noreferrer">
                        מקור תמונה: ${photoSourceLabel(plant)}
                    </a>
                    <div class="photo-actions">
                        <button class="photo-button replace-photo-button" type="button" data-plant-key="${plant.name}">
                            החלפת תמונה
                        </button>
                        ${remotePhotoOverrides[plantStorageKey(plant)] || localPhotoOverrides[plant.name] || localPhotoOverrides[plant.botanical] ? `
                            <button class="photo-button secondary reset-photo-button" type="button" data-plant-key="${plant.name}">
                                החזרת תמונה מקורית
                            </button>
                        ` : ""}
                    </div>
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
    if (plant.priceBySize) {
        return plant.priceBySize.medium;
    }
    return (plant.priceLow + plant.priceHigh) / 2;
}

function getAdvisorMatches() {
    const sun = document.getElementById("advisorSun").value;
    const soil = document.getElementById("advisorSoil").value;
    const water = document.getElementById("advisorWater").value;
    const style = document.getElementById("advisorStyle").value;
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
            if (style && (plant.gardenStyles || []).includes(style)) score += 4;
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
                <span>סגנון: ${(plant.gardenStyles || []).join(", ")}</span><br>
                <span>עלות לפי גודל בינוני: ₪${itemTotal.toLocaleString()}</span>
            </div>
        `;
    }).join("");

    totalCost.textContent = `₪${runningTotal.toLocaleString()}`;
}

tabs.forEach((tab) => {
    tab.addEventListener("click", () => setActiveTab(tab));
});

[searchInput, sunFilter, soilFilter, waterFilter, styleFilter].forEach((control) => {
    control.addEventListener("input", () => {
        rerenderCurrentPlants();
    });
});

plantGrid.addEventListener("click", (event) => {
    const replaceButton = event.target.closest(".replace-photo-button");
    const resetButton = event.target.closest(".reset-photo-button");

    if (replaceButton) {
        const plant = findPlantByKey(replaceButton.dataset.plantKey);
        if (!plant) return;

        const picker = document.createElement("input");
        picker.type = "file";
        picker.accept = "image/*";
        picker.addEventListener("change", () => {
            const file = picker.files && picker.files[0];
            if (!file) return;
            if (!file.type.startsWith("image/")) {
                alert("נא לבחור קובץ תמונה בלבד.");
                return;
            }

            if (remotePhotosEnabled()) {
                replaceButton.disabled = true;
                replaceButton.textContent = "מעלה תמונה...";
                uploadRemotePhoto(plant, file)
                    .then(() => {
                        delete localPhotoOverrides[plant.name];
                        delete localPhotoOverrides[plant.botanical];
                        saveLocalPhotoOverrides(localPhotoOverrides);
                        rerenderCurrentPlants();
                    })
                    .catch((error) => {
                        console.error(error);
                        alert("שמירת התמונה בענן נכשלה. בדקו את הגדרות Supabase או נסו שוב.");
                    })
                    .finally(() => {
                        replaceButton.disabled = false;
                        replaceButton.textContent = "החלפת תמונה";
                    });
                return;
            }

            const reader = new FileReader();
            reader.addEventListener("load", () => {
                const previousValue = localPhotoOverrides[plant.name];
                localPhotoOverrides[plant.name] = reader.result;
                if (saveLocalPhotoOverrides(localPhotoOverrides)) {
                    rerenderCurrentPlants();
                } else if (previousValue) {
                    localPhotoOverrides[plant.name] = previousValue;
                } else {
                    delete localPhotoOverrides[plant.name];
                }
            });
            reader.readAsDataURL(file);
        });
        picker.click();
    }

    if (resetButton) {
        const plant = findPlantByKey(resetButton.dataset.plantKey);
        if (!plant) return;
        if (remotePhotoOverrides[plantStorageKey(plant)] && remotePhotosEnabled()) {
            resetButton.disabled = true;
            resetButton.textContent = "מוחק...";
            deleteRemotePhoto(plant)
                .then(() => {
                    rerenderCurrentPlants();
                })
                .catch((error) => {
                    console.error(error);
                    alert("מחיקת התמונה מהענן נכשלה. נסו שוב.");
                })
                .finally(() => {
                    resetButton.disabled = false;
                    resetButton.textContent = "החזרת תמונה מקורית";
                });
            return;
        }
        delete localPhotoOverrides[plant.name];
        delete localPhotoOverrides[plant.botanical];
        if (saveLocalPhotoOverrides(localPhotoOverrides)) {
            rerenderCurrentPlants();
        }
    }
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
loadRemotePhotoOverrides();
</script>
</body>
</html>
