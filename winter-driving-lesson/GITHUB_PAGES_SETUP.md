# הפעלת GitHub Pages — פעם אחת

הפריסה רצה אוטומטית בכל push ל־`main`, אבל **בעל המאגר** צריך להפעיל Pages פעם אחת:

## שלב 1 — הפעלה

1. פתחו: **https://github.com/dorhorwitznuma/final_dor/settings/pages**
2. תחת **Build and deployment** בחרו אחת מהאפשרויות:

### מומלץ: GitHub Actions

- **Source:** `GitHub Actions`
- אחרי מיזוג, הריצה `Deploy winter driving lesson to GitHub Pages` מפרסמת את האתר.

### חלופה: ענף gh-pages

אם Actions נכשל, ה-workflow מפרסם לענף `gh-pages` אוטומטית:

- **Source:** `Deploy from a branch`
- **Branch:** `gh-pages` / **Folder:** `/ (root)`

## שלב 2 — הרצה מחדש

1. **Actions** → `Deploy winter driving lesson to GitHub Pages` → **Run workflow**
2. המתינו ל־✓ ירוק (כ־1 דקה)

## כתובת לתלמידים

**https://dorhorwitznuma.github.io/final_dor/**

(ייתכן עיכוב של 2–5 דקות אחרי הפריסה הראשונה)
