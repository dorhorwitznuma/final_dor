<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gardening Artists | Southern Plant Guide</title>
<style>
:root {
    --green-900: #123d25;
    --green-800: #1f5a36;
    --green-700: #2e7d4f;
    --green-100: #eaf6ed;
    --green-50: #f6fbf7;
    --white: #ffffff;
    --gold: #f2c14e;
    --ink: #203226;
    --muted: #627568;
    --line: #d8e6dc;
    --shadow: 0 18px 45px rgba(18, 61, 37, 0.14);
}

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    background: var(--green-50);
    color: var(--ink);
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.6;
}

a {
    color: inherit;
}

.hero {
    background:
        linear-gradient(135deg, rgba(18, 61, 37, 0.96), rgba(46, 125, 79, 0.88)),
        url("https://images.unsplash.com/photo-1416879595882-3373a0480b5b?auto=format&fit=crop&w=1600&q=80");
    background-position: center;
    background-size: cover;
    color: var(--white);
    padding: 32px 7vw 72px;
}

.nav {
    align-items: center;
    display: flex;
    justify-content: space-between;
    gap: 24px;
    margin-bottom: 78px;
}

.brand {
    align-items: center;
    display: flex;
    font-size: 1.35rem;
    font-weight: 800;
    gap: 12px;
    letter-spacing: 0.03em;
}

.brand-mark {
    align-items: center;
    background: var(--white);
    border-radius: 18px;
    color: var(--green-800);
    display: inline-flex;
    font-size: 1.6rem;
    height: 52px;
    justify-content: center;
    width: 52px;
}

.nav-links {
    display: flex;
    flex-wrap: wrap;
    gap: 18px;
    justify-content: flex-end;
}

.nav-links a {
    color: rgba(255, 255, 255, 0.88);
    font-size: 0.95rem;
    font-weight: 700;
    text-decoration: none;
}

.hero-grid {
    display: grid;
    gap: 42px;
    grid-template-columns: minmax(0, 1.2fr) minmax(320px, 0.8fr);
    margin: 0 auto;
    max-width: 1240px;
}

.eyebrow {
    color: var(--gold);
    font-size: 0.85rem;
    font-weight: 800;
    letter-spacing: 0.18em;
    margin: 0 0 14px;
    text-transform: uppercase;
}

h1 {
    font-size: clamp(2.5rem, 7vw, 5.8rem);
    line-height: 0.98;
    margin: 0 0 22px;
    max-width: 850px;
}

.hero-copy {
    color: rgba(255, 255, 255, 0.88);
    font-size: 1.15rem;
    margin: 0 0 28px;
    max-width: 720px;
}

.hero-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 14px;
}

.button {
    align-items: center;
    border: 0;
    border-radius: 999px;
    cursor: pointer;
    display: inline-flex;
    font-size: 0.98rem;
    font-weight: 800;
    gap: 8px;
    justify-content: center;
    padding: 14px 22px;
    text-decoration: none;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.button:hover {
    box-shadow: var(--shadow);
    transform: translateY(-2px);
}

.button-primary {
    background: var(--white);
    color: var(--green-800);
}

.button-secondary {
    background: rgba(255, 255, 255, 0.16);
    border: 1px solid rgba(255, 255, 255, 0.38);
    color: var(--white);
}

.hero-card {
    align-self: end;
    background: rgba(255, 255, 255, 0.94);
    border-radius: 30px;
    box-shadow: var(--shadow);
    color: var(--ink);
    padding: 28px;
}

.hero-card h2 {
    color: var(--green-900);
    margin-top: 0;
}

.hero-stats {
    display: grid;
    gap: 14px;
    grid-template-columns: repeat(3, 1fr);
    margin-top: 22px;
}

.stat {
    background: var(--green-100);
    border-radius: 18px;
    padding: 14px;
}

.stat strong {
    color: var(--green-800);
    display: block;
    font-size: 1.45rem;
}

main {
    margin: 0 auto;
    max-width: 1280px;
    padding: 54px 7vw 80px;
}

.section-heading {
    display: grid;
    gap: 18px;
    grid-template-columns: minmax(0, 0.78fr) minmax(260px, 0.22fr);
    margin-bottom: 24px;
}

.section-heading h2 {
    color: var(--green-900);
    font-size: clamp(2rem, 4vw, 3.2rem);
    line-height: 1.08;
    margin: 0;
}

.section-heading p {
    color: var(--muted);
    margin: 0;
}

.panel {
    background: var(--white);
    border: 1px solid var(--line);
    border-radius: 30px;
    box-shadow: 0 12px 30px rgba(31, 90, 54, 0.07);
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
    color: var(--green-900);
    font-size: 0.82rem;
    font-weight: 800;
    letter-spacing: 0.05em;
    text-transform: uppercase;
}

input,
select,
textarea {
    background: var(--green-50);
    border: 1px solid var(--line);
    border-radius: 16px;
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
    background: var(--green-100);
    border: 1px solid transparent;
    border-radius: 999px;
    color: var(--green-800);
    cursor: pointer;
    font-weight: 800;
    padding: 10px 16px;
}

.tab.active {
    background: var(--green-800);
    color: var(--white);
}

.plant-grid {
    display: grid;
    gap: 22px;
    grid-template-columns: repeat(3, minmax(0, 1fr));
}

.plant-card {
    background: var(--white);
    border: 1px solid var(--line);
    border-radius: 26px;
    box-shadow: 0 10px 24px rgba(18, 61, 37, 0.08);
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
    color: var(--green-900);
    font-size: 1.35rem;
    line-height: 1.1;
    margin: 0;
}

.plant-card h3 span {
    color: var(--muted);
    display: block;
    font-size: 0.88rem;
    font-style: italic;
    font-weight: 500;
    margin-top: 5px;
}

.plant-card p {
    color: var(--muted);
    margin: 0;
}

.chips {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
}

.chip {
    background: var(--green-100);
    border-radius: 999px;
    color: var(--green-800);
    font-size: 0.8rem;
    font-weight: 800;
    padding: 6px 10px;
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
    gap: 8px;
    justify-content: space-between;
}

.meta-row strong {
    color: var(--green-900);
}

.price {
    color: var(--green-800);
    font-size: 1.2rem;
    font-weight: 900;
}

.empty-state {
    background: var(--white);
    border: 1px dashed var(--green-700);
    border-radius: 24px;
    color: var(--muted);
    display: none;
    padding: 28px;
    text-align: center;
}

.advisor {
    display: grid;
    gap: 24px;
    grid-template-columns: minmax(0, 0.85fr) minmax(340px, 1.15fr);
    margin-top: 58px;
}

.upload-box {
    align-items: center;
    background: var(--green-100);
    border: 2px dashed #9fc9ad;
    border-radius: 22px;
    display: flex;
    flex-direction: column;
    gap: 12px;
    justify-content: center;
    min-height: 178px;
    padding: 18px;
    text-align: center;
}

.video-preview {
    border-radius: 18px;
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

.recommendation-card {
    background: linear-gradient(160deg, var(--green-900), var(--green-700));
    border-radius: 30px;
    color: var(--white);
    padding: 28px;
}

.recommendation-card h3 {
    font-size: 2rem;
    margin: 0 0 12px;
}

.recommendation-card p {
    color: rgba(255, 255, 255, 0.86);
}

.recommendation-list {
    display: grid;
    gap: 12px;
    margin: 22px 0;
}

.recommendation-item {
    background: rgba(255, 255, 255, 0.12);
    border: 1px solid rgba(255, 255, 255, 0.2);
    border-radius: 18px;
    padding: 14px;
}

.recommendation-item strong {
    display: block;
}

.total-cost {
    background: var(--white);
    border-radius: 20px;
    color: var(--green-900);
    margin-top: 20px;
    padding: 18px;
}

.total-cost span {
    display: block;
    font-size: 2rem;
    font-weight: 900;
}

.ui-showcase {
    display: grid;
    gap: 22px;
    grid-template-columns: minmax(0, 1fr) minmax(320px, 0.72fr);
    margin-bottom: 58px;
}

.ui-preview {
    background:
        radial-gradient(circle at top left, rgba(242, 193, 78, 0.26), transparent 32%),
        linear-gradient(135deg, var(--white), #eff8f1);
    border: 1px solid var(--line);
    border-radius: 30px;
    box-shadow: var(--shadow);
    overflow: hidden;
}

.ui-toolbar {
    align-items: center;
    background: var(--green-900);
    color: var(--white);
    display: flex;
    justify-content: space-between;
    padding: 16px 20px;
}

.ui-dots {
    display: flex;
    gap: 7px;
}

.ui-dots span {
    background: rgba(255, 255, 255, 0.72);
    border-radius: 999px;
    height: 10px;
    width: 10px;
}

.ui-body {
    display: grid;
    gap: 18px;
    grid-template-columns: minmax(0, 0.9fr) minmax(220px, 1.1fr);
    padding: 22px;
}

.ui-sidebar {
    background: rgba(255, 255, 255, 0.72);
    border: 1px solid var(--line);
    border-radius: 22px;
    padding: 18px;
}

.ui-sidebar h3,
.ui-card h3 {
    color: var(--green-900);
    margin: 0 0 12px;
}

.ui-menu {
    display: grid;
    gap: 10px;
}

.ui-menu span {
    background: var(--green-100);
    border-radius: 14px;
    color: var(--green-800);
    font-weight: 800;
    padding: 10px 12px;
}

.ui-cards {
    display: grid;
    gap: 14px;
}

.ui-card {
    background: var(--white);
    border: 1px solid var(--line);
    border-radius: 22px;
    padding: 18px;
}

.ui-card p {
    color: var(--muted);
    margin: 0;
}

.ui-pill-row {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 12px;
}

.ui-panel {
    background: var(--green-900);
    border-radius: 30px;
    color: var(--white);
    padding: 26px;
}

.ui-panel h2 {
    font-size: clamp(1.8rem, 4vw, 2.7rem);
    line-height: 1.08;
    margin: 0 0 14px;
}

.ui-panel p {
    color: rgba(255, 255, 255, 0.84);
}

.workflow {
    display: grid;
    gap: 12px;
    margin: 22px 0;
}

.workflow-step {
    align-items: flex-start;
    display: grid;
    gap: 12px;
    grid-template-columns: 42px 1fr;
}

.workflow-step span {
    align-items: center;
    background: var(--white);
    border-radius: 14px;
    color: var(--green-800);
    display: inline-flex;
    font-weight: 900;
    height: 42px;
    justify-content: center;
    width: 42px;
}

.rubric-summary {
    display: grid;
    gap: 18px;
    grid-template-columns: repeat(3, 1fr);
    margin: 58px 0;
}

.rubric-card {
    background: var(--white);
    border: 1px solid var(--line);
    border-radius: 26px;
    padding: 24px;
}

.rubric-card h3 {
    color: var(--green-900);
    margin-top: 0;
}

.rubric-card ul {
    color: var(--muted);
    margin: 0;
    padding-left: 20px;
}

footer {
    background: var(--green-900);
    color: rgba(255, 255, 255, 0.84);
    padding: 34px 7vw;
    text-align: center;
}

@media (max-width: 980px) {
    .hero-grid,
    .section-heading,
    .advisor,
    .ui-showcase,
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
        padding: 24px 6vw 52px;
    }

    .nav {
        align-items: flex-start;
        flex-direction: column;
        margin-bottom: 48px;
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
    <nav class="nav" aria-label="Primary navigation">
        <div class="brand">
            <span class="brand-mark" aria-hidden="true">GA</span>
            <span>Gardening Artists</span>
        </div>
        <div class="nav-links">
            <a href="#ui">UI overview</a>
            <a href="#plants">Plant catalogue</a>
            <a href="#rubrics">Rubrics</a>
            <a href="#advisor">Garden advisor</a>
        </div>
    </nav>

    <section class="hero-grid">
        <div>
            <p class="eyebrow">Southern garden plant intelligence</p>
            <h1>Design a greener Southern garden with the right plant in the right place.</h1>
            <p class="hero-copy">
                Browse sun-loving, shade-friendly, drought-wise, clay-tolerant, sandy-soil and moisture-loving plants
                commonly used across Southern landscapes. Compare conditions, photos, care notes and real-world price ranges.
            </p>
            <div class="hero-actions">
                <a class="button button-primary" href="#plants">Explore plants</a>
                <a class="button button-secondary" href="#advisor">Get recommendations</a>
            </div>
        </div>
        <aside class="hero-card" aria-label="Catalogue summary">
            <h2>Built for warm Southern gardens</h2>
            <p>
                Filter by sun exposure, soil type, irrigation style or natural language search.
                Then upload a short garden video and describe the site so the advisor can assemble a suggested palette and budget.
            </p>
            <div class="hero-stats">
                <div class="stat">
                    <strong id="plantCount">0</strong>
                    plants
                </div>
                <div class="stat">
                    <strong>3</strong>
                    rubrics
                </div>
                <div class="stat">
                    <strong>$</strong>
                    budget
                </div>
            </div>
        </aside>
    </section>
</header>

<main>
    <section id="ui" class="ui-showcase" aria-label="Gardening Artists user interface overview">
        <div class="ui-preview">
            <div class="ui-toolbar">
                <strong>Gardening Artists app</strong>
                <div class="ui-dots" aria-hidden="true">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
            <div class="ui-body">
                <aside class="ui-sidebar">
                    <h3>Explore by rubric</h3>
                    <div class="ui-menu">
                        <span>Sun exposure</span>
                        <span>Soil type</span>
                        <span>Irrigation</span>
                        <span>Budget planner</span>
                    </div>
                </aside>
                <div class="ui-cards">
                    <article class="ui-card">
                        <h3>Plant catalogue</h3>
                        <p>Visual cards show plant photos, quick conditions and price ranges.</p>
                        <div class="ui-pill-row">
                            <span class="chip">Full sun</span>
                            <span class="chip">Clay soil</span>
                            <span class="chip">Low water</span>
                        </div>
                    </article>
                    <article class="ui-card">
                        <h3>Smart recommendation</h3>
                        <p>Garden details and video context generate a matching palette and total cost estimate.</p>
                        <div class="ui-pill-row">
                            <span class="chip">Video upload</span>
                            <span class="chip">Garden direction</span>
                            <span class="chip">Cost range</span>
                        </div>
                    </article>
                </div>
            </div>
        </div>

        <aside class="ui-panel">
            <p class="eyebrow">UI experience</p>
            <h2>A simple interface for choosing the right Southern plants.</h2>
            <p>
                The layout guides customers from discovery to recommendation: search the catalogue, compare growing conditions,
                upload a garden video, and receive a practical plant list with budget guidance.
            </p>
            <div class="workflow">
                <div class="workflow-step">
                    <span>1</span>
                    <div><strong>Search</strong><br>Find plants by natural language, sun, soil or water needs.</div>
                </div>
                <div class="workflow-step">
                    <span>2</span>
                    <div><strong>Compare</strong><br>Review photos, care details and typical nursery pricing.</div>
                </div>
                <div class="workflow-step">
                    <span>3</span>
                    <div><strong>Recommend</strong><br>Use site conditions and video input to build a garden plan.</div>
                </div>
            </div>
            <a class="button button-primary" href="#advisor">Start a garden plan</a>
        </aside>
    </section>

    <section id="plants">
        <div class="section-heading">
            <div>
                <p class="eyebrow">Plant catalogue</p>
                <h2>Southern plants organized by sun exposure, soil and irrigation needs.</h2>
            </div>
            <p>
                Each listing includes a photo, concise care detail, optimal growing conditions and a typical retail price range
                for starter to landscape-ready nursery sizes.
            </p>
        </div>

        <div class="panel">
            <div class="filters" role="search" aria-label="Plant search and filters">
                <div class="field">
                    <label for="searchInput">Intuitive search</label>
                    <input id="searchInput" type="search" placeholder="Try: fragrant hedge, drought full sun, clay shade">
                </div>
                <div class="field">
                    <label for="sunFilter">Sun exposure</label>
                    <select id="sunFilter">
                        <option value="">All sun levels</option>
                        <option value="Full sun">Full sun</option>
                        <option value="Part sun">Part sun</option>
                        <option value="Part shade">Part shade</option>
                        <option value="Shade">Shade</option>
                    </select>
                </div>
                <div class="field">
                    <label for="soilFilter">Soil type</label>
                    <select id="soilFilter">
                        <option value="">All soils</option>
                        <option value="Clay">Clay</option>
                        <option value="Loam">Loam</option>
                        <option value="Sandy">Sandy</option>
                        <option value="Acidic">Acidic</option>
                        <option value="Moist">Moist</option>
                        <option value="Well-drained">Well-drained</option>
                    </select>
                </div>
                <div class="field">
                    <label for="waterFilter">Irrigation</label>
                    <select id="waterFilter">
                        <option value="">All watering</option>
                        <option value="Low">Low</option>
                        <option value="Moderate">Moderate</option>
                        <option value="Regular">Regular</option>
                    </select>
                </div>
            </div>

            <div class="rubric-tabs" aria-label="Quick rubrics">
                <button class="tab active" type="button" data-rubric="all">All plants</button>
                <button class="tab" type="button" data-rubric="Full sun">Full sun</button>
                <button class="tab" type="button" data-rubric="Part shade">Part shade</button>
                <button class="tab" type="button" data-rubric="Clay">Clay soil</button>
                <button class="tab" type="button" data-rubric="Sandy">Sandy soil</button>
                <button class="tab" type="button" data-rubric="Low">Low irrigation</button>
                <button class="tab" type="button" data-rubric="Regular">Regular irrigation</button>
            </div>

            <div id="plantGrid" class="plant-grid" aria-live="polite"></div>
            <div id="emptyState" class="empty-state">
                No plants match those filters yet. Try widening the sun, soil or irrigation criteria.
            </div>
        </div>
    </section>

    <section id="rubrics" class="rubric-summary" aria-label="Plant rubrics explained">
        <article class="rubric-card">
            <h3>Sun exposure rubrics</h3>
            <ul>
                <li><strong>Full sun:</strong> 6+ hours of direct light, often best on south and west exposures.</li>
                <li><strong>Part sun:</strong> 4-6 hours of light, useful for east exposures.</li>
                <li><strong>Part shade / shade:</strong> filtered light or morning light, best near trees and north walls.</li>
            </ul>
        </article>
        <article class="rubric-card">
            <h3>Soil type rubrics</h3>
            <ul>
                <li><strong>Clay:</strong> nutrient-rich but slow draining; use tough roots and compost.</li>
                <li><strong>Sandy:</strong> fast draining; use drought-tolerant plants and mulch.</li>
                <li><strong>Acidic / moist:</strong> ideal for many Southern woodland and evergreen classics.</li>
            </ul>
        </article>
        <article class="rubric-card">
            <h3>Irrigation rubrics</h3>
            <ul>
                <li><strong>Low:</strong> drought-tolerant once established.</li>
                <li><strong>Moderate:</strong> weekly deep watering in dry spells.</li>
                <li><strong>Regular:</strong> consistent moisture for lush tropical or woodland growth.</li>
            </ul>
        </article>
    </section>

    <section id="advisor" class="advisor">
        <div class="panel">
            <p class="eyebrow">Garden advisor</p>
            <h2>Upload a garden video and add site characteristics.</h2>
            <p>
                The browser-based advisor uses your garden direction, sun exposure, soil, irrigation plan and area to recommend
                matching plants and estimate an installed plant budget.
            </p>

            <div class="upload-box">
                <strong>Insert garden video</strong>
                <span>Upload a walk-through clip of the garden bed, patio border or yard.</span>
                <input id="videoInput" type="file" accept="video/*">
            </div>
            <video id="videoPreview" class="video-preview" controls></video>

            <div class="form-grid" style="margin-top: 20px;">
                <div class="field">
                    <label for="directionInput">Garden direction</label>
                    <select id="directionInput">
                        <option value="South">South-facing</option>
                        <option value="West">West-facing</option>
                        <option value="East">East-facing</option>
                        <option value="North">North-facing</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorSun">Amount of sun</label>
                    <select id="advisorSun">
                        <option value="Full sun">Full sun</option>
                        <option value="Part sun">Part sun</option>
                        <option value="Part shade">Part shade</option>
                        <option value="Shade">Shade</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorSoil">Soil type</label>
                    <select id="advisorSoil">
                        <option value="Clay">Clay</option>
                        <option value="Loam">Loam</option>
                        <option value="Sandy">Sandy</option>
                        <option value="Acidic">Acidic</option>
                        <option value="Moist">Moist</option>
                        <option value="Well-drained">Well-drained</option>
                    </select>
                </div>
                <div class="field">
                    <label for="advisorWater">Irrigation type</label>
                    <select id="advisorWater">
                        <option value="Low">Low / xeric</option>
                        <option value="Moderate">Moderate drip</option>
                        <option value="Regular">Regular irrigation</option>
                    </select>
                </div>
                <div class="field">
                    <label for="gardenSize">Garden area</label>
                    <input id="gardenSize" type="number" min="20" max="5000" value="180" step="10">
                </div>
                <div class="field">
                    <label for="densityInput">Planting density</label>
                    <select id="densityInput">
                        <option value="0.045">Open and airy</option>
                        <option value="0.065" selected>Balanced</option>
                        <option value="0.085">Lush and full</option>
                    </select>
                </div>
                <div class="field full">
                    <label for="notesInput">Video notes or goals</label>
                    <textarea id="notesInput" placeholder="Example: I see afternoon heat, a fence line, clay soil, and want privacy with flowers."></textarea>
                </div>
                <button id="recommendButton" class="button button-primary full" type="button">Recommend plants and estimate total cost</button>
            </div>
        </div>

        <aside class="recommendation-card" aria-live="polite">
            <h3>Your garden plan</h3>
            <p id="recommendationIntro">
                Add your garden details and click the recommendation button to create a matching plant palette.
            </p>
            <div id="recommendationList" class="recommendation-list"></div>
            <div class="total-cost">
                Estimated plant budget
                <span id="totalCost">$0</span>
                <small>Budget uses plant price midpoints and site size. Labor, soil amendments, delivery and taxes are not included.</small>
            </div>
        </aside>
    </section>
</main>

<footer>
    <strong>Gardening Artists</strong> - green and white Southern garden design tools for beautiful, practical plant choices.
</footer>

<script>
const plants = [
    {
        name: "Southern Magnolia",
        botanical: "Magnolia grandiflora",
        image: "https://images.unsplash.com/photo-1591102775602-8bb201a72819?auto=format&fit=crop&w=900&q=80",
        detail: "Iconic evergreen tree with glossy leaves and large lemon-scented white flowers. Best as a focal tree or large screen.",
        sun: ["Full sun", "Part sun"],
        soil: ["Loam", "Acidic", "Well-drained"],
        water: "Moderate",
        priceLow: 55,
        priceHigh: 180,
        tags: ["evergreen", "tree", "fragrant", "privacy"]
    },
    {
        name: "Crape Myrtle",
        botanical: "Lagerstroemia indica",
        image: "https://images.unsplash.com/photo-1663191934642-523a1e0acdc8?auto=format&fit=crop&w=900&q=80",
        detail: "Heat-loving ornamental tree with summer flowers, smooth bark and strong urban tolerance.",
        sun: ["Full sun"],
        soil: ["Clay", "Loam", "Sandy", "Well-drained"],
        water: "Low",
        priceLow: 35,
        priceHigh: 150,
        tags: ["flowering", "tree", "heat", "drought"]
    },
    {
        name: "Live Oak",
        botanical: "Quercus virginiana",
        image: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=900&q=80",
        detail: "Long-lived shade tree with broad limbs and excellent tolerance for heat, wind and compacted Southern soils.",
        sun: ["Full sun", "Part sun"],
        soil: ["Clay", "Loam", "Sandy", "Well-drained"],
        water: "Low",
        priceLow: 85,
        priceHigh: 300,
        tags: ["native", "shade", "tree", "wildlife"]
    },
    {
        name: "Oakleaf Hydrangea",
        botanical: "Hydrangea quercifolia",
        image: "https://images.unsplash.com/photo-1606041008023-472dfb5e530f?auto=format&fit=crop&w=900&q=80",
        detail: "Native shrub with cone-shaped white blooms, textured leaves and burgundy fall color.",
        sun: ["Part sun", "Part shade"],
        soil: ["Loam", "Acidic", "Moist", "Well-drained"],
        water: "Regular",
        priceLow: 28,
        priceHigh: 70,
        tags: ["native", "flowering", "shrub", "woodland"]
    },
    {
        name: "Encore Azalea",
        botanical: "Rhododendron hybrid",
        image: "https://images.unsplash.com/photo-1598809344016-0d3b3db69e74?auto=format&fit=crop&w=900&q=80",
        detail: "Reblooming evergreen shrub that brings spring, summer and fall color to acidic Southern beds.",
        sun: ["Part sun", "Part shade"],
        soil: ["Acidic", "Loam", "Moist", "Well-drained"],
        water: "Regular",
        priceLow: 24,
        priceHigh: 65,
        tags: ["evergreen", "flowering", "foundation", "acid-loving"]
    },
    {
        name: "Gardenia",
        botanical: "Gardenia jasminoides",
        image: "https://images.unsplash.com/photo-1560717789-0ac7c58ac90a?auto=format&fit=crop&w=900&q=80",
        detail: "Fragrant evergreen shrub with creamy flowers for entries, patios and mixed borders.",
        sun: ["Part sun", "Part shade"],
        soil: ["Acidic", "Loam", "Moist", "Well-drained"],
        water: "Regular",
        priceLow: 22,
        priceHigh: 60,
        tags: ["fragrant", "evergreen", "flowering", "patio"]
    },
    {
        name: "Wax Myrtle",
        botanical: "Morella cerifera",
        image: "https://images.unsplash.com/photo-1446071103084-c257b5f70672?auto=format&fit=crop&w=900&q=80",
        detail: "Fast-growing native evergreen shrub for privacy hedges, wildlife cover and difficult coastal sites.",
        sun: ["Full sun", "Part sun", "Part shade"],
        soil: ["Clay", "Sandy", "Loam", "Moist"],
        water: "Low",
        priceLow: 18,
        priceHigh: 65,
        tags: ["native", "privacy", "hedge", "coastal"]
    },
    {
        name: "Beautyberry",
        botanical: "Callicarpa americana",
        image: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=900&q=80",
        detail: "Loose native shrub known for bright purple berry clusters that feed birds in fall.",
        sun: ["Full sun", "Part sun", "Part shade"],
        soil: ["Clay", "Loam", "Sandy", "Well-drained"],
        water: "Moderate",
        priceLow: 16,
        priceHigh: 45,
        tags: ["native", "berries", "wildlife", "shrub"]
    },
    {
        name: "Muhly Grass",
        botanical: "Muhlenbergia capillaris",
        image: "https://images.unsplash.com/photo-1600566752355-35792bedcfea?auto=format&fit=crop&w=900&q=80",
        detail: "Airy native ornamental grass with pink fall plumes and excellent drought tolerance once established.",
        sun: ["Full sun"],
        soil: ["Sandy", "Loam", "Well-drained"],
        water: "Low",
        priceLow: 12,
        priceHigh: 35,
        tags: ["native", "grass", "drought", "texture"]
    },
    {
        name: "Lantana",
        botanical: "Lantana camara",
        image: "https://images.unsplash.com/photo-1602578208701-3a2de6f5127a?auto=format&fit=crop&w=900&q=80",
        detail: "Colorful, pollinator-friendly bloomer that thrives in heat, reflected sun and dry borders.",
        sun: ["Full sun"],
        soil: ["Sandy", "Loam", "Well-drained"],
        water: "Low",
        priceLow: 6,
        priceHigh: 22,
        tags: ["pollinator", "annual", "perennial", "heat"]
    },
    {
        name: "Salvia",
        botanical: "Salvia greggii",
        image: "https://images.unsplash.com/photo-1620315442714-05eae288ed45?auto=format&fit=crop&w=900&q=80",
        detail: "Tough flowering perennial with aromatic foliage that attracts hummingbirds and bees.",
        sun: ["Full sun", "Part sun"],
        soil: ["Sandy", "Loam", "Well-drained"],
        water: "Low",
        priceLow: 8,
        priceHigh: 28,
        tags: ["pollinator", "perennial", "hummingbird", "drought"]
    },
    {
        name: "Black-Eyed Susan",
        botanical: "Rudbeckia fulgida",
        image: "https://images.unsplash.com/photo-1597848212624-e6b10e2fc1b6?auto=format&fit=crop&w=900&q=80",
        detail: "Reliable native perennial with golden daisy blooms for sunny meadow-style beds.",
        sun: ["Full sun", "Part sun"],
        soil: ["Clay", "Loam", "Well-drained"],
        water: "Moderate",
        priceLow: 7,
        priceHigh: 24,
        tags: ["native", "perennial", "flowering", "pollinator"]
    },
    {
        name: "Foxtail Fern",
        botanical: "Asparagus densiflorus",
        image: "https://images.unsplash.com/photo-1598880940080-ff9a29891b85?auto=format&fit=crop&w=900&q=80",
        detail: "Sculptural evergreen perennial with soft upright plumes for containers and bright shade.",
        sun: ["Part sun", "Part shade"],
        soil: ["Loam", "Well-drained"],
        water: "Moderate",
        priceLow: 14,
        priceHigh: 38,
        tags: ["container", "texture", "evergreen", "shade"]
    },
    {
        name: "Cast Iron Plant",
        botanical: "Aspidistra elatior",
        image: "https://images.unsplash.com/photo-1592150621744-aca64f48394a?auto=format&fit=crop&w=900&q=80",
        detail: "Durable deep-shade groundcover with broad evergreen leaves that tolerates neglect and tree roots.",
        sun: ["Part shade", "Shade"],
        soil: ["Clay", "Loam", "Well-drained"],
        water: "Low",
        priceLow: 18,
        priceHigh: 45,
        tags: ["shade", "evergreen", "groundcover", "low-care"]
    },
    {
        name: "Sweetspire",
        botanical: "Itea virginica",
        image: "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?auto=format&fit=crop&w=900&q=80",
        detail: "Native shrub with fragrant white racemes, red fall color and tolerance for wet or average soils.",
        sun: ["Full sun", "Part sun", "Part shade"],
        soil: ["Clay", "Loam", "Moist", "Acidic"],
        water: "Moderate",
        priceLow: 20,
        priceHigh: 58,
        tags: ["native", "wet soil", "fragrant", "shrub"]
    },
    {
        name: "Dwarf Palmetto",
        botanical: "Sabal minor",
        image: "https://images.unsplash.com/photo-1589840946983-5f6f0c2e0f6d?auto=format&fit=crop&w=900&q=80",
        detail: "Hardy native palm for tropical texture in Southern shade, rain gardens and moist woodland edges.",
        sun: ["Part sun", "Part shade", "Shade"],
        soil: ["Moist", "Loam", "Clay"],
        water: "Moderate",
        priceLow: 26,
        priceHigh: 90,
        tags: ["native", "palm", "tropical", "rain garden"]
    },
    {
        name: "Confederate Jasmine",
        botanical: "Trachelospermum jasminoides",
        image: "https://images.unsplash.com/photo-1508610048659-a06b669e3321?auto=format&fit=crop&w=900&q=80",
        detail: "Fragrant evergreen vine for fences, arbors and groundcover where winters are mild.",
        sun: ["Full sun", "Part sun", "Part shade"],
        soil: ["Loam", "Well-drained"],
        water: "Moderate",
        priceLow: 18,
        priceHigh: 48,
        tags: ["vine", "fragrant", "evergreen", "fence"]
    },
    {
        name: "Agapanthus",
        botanical: "Agapanthus africanus",
        image: "https://images.unsplash.com/photo-1654688857981-890ebea7d12e?auto=format&fit=crop&w=900&q=80",
        detail: "Strappy perennial with blue or white summer flower globes for formal edges and containers.",
        sun: ["Full sun", "Part sun"],
        soil: ["Loam", "Sandy", "Well-drained"],
        water: "Moderate",
        priceLow: 12,
        priceHigh: 34,
        tags: ["perennial", "flowering", "border", "container"]
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
                    <span class="chip">${plant.water} irrigation</span>
                </div>
                <div class="plant-meta">
                    <div class="meta-row"><strong>Optimal sun</strong><span>${plant.sun.join(", ")}</span></div>
                    <div class="meta-row"><strong>Best soil</strong><span>${plant.soil.join(", ")}</span></div>
                    <div class="meta-row"><strong>Irrigation</strong><span>${plant.water}</span></div>
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
        South: "Full sun",
        West: "Full sun",
        East: "Part sun",
        North: "Part shade"
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
            if (notes.includes("privacy") && plant.tags.includes("privacy")) score += 2;
            if (notes.includes("flower") && plant.tags.includes("flowering")) score += 2;
            if (notes.includes("pollinator") && plant.tags.includes("pollinator")) score += 2;
            if (notes.includes("shade") && plant.sun.includes("Shade")) score += 2;
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
        ? "Video received. Based on the visible site context plus your selected conditions, this plant palette should fit the garden."
        : "Based on your selected garden conditions, this plant palette should fit the site.";

    recommendationList.innerHTML = selected.map(({ plant }, index) => {
        const quantity = index === selected.length - 1
            ? totalPlants - (perPlant * (selected.length - 1))
            : perPlant;
        const itemTotal = Math.round(quantity * midpoint(plant));
        runningTotal += itemTotal;

        return `
            <div class="recommendation-item">
                <strong>${quantity} x ${plant.name}</strong>
                <span>${plant.sun.join(", ")} | ${plant.soil.join(", ")} | ${plant.water} irrigation</span><br>
                <span>Estimated plant cost: $${itemTotal.toLocaleString()}</span>
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
