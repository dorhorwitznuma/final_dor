# שמירת תמונות בענן עם Supabase

האתר עובד גם בלי שרת. ברירת המחדל היא:

- תמונות אוטומטיות מ-iNaturalist
- החלפת תמונה מקומית בדפדפן
- החלפה קבועה דרך `client-photos.js`

אם רוצים שכפתור **"החלפת תמונה"** ישמור תמונה לכל הלקוחות, צריך להגדיר Supabase.

## 1. יצירת פרויקט Supabase

1. פתחו חשבון ב-Supabase.
2. צרו פרויקט חדש.
3. העתיקו:
   - Project URL
   - anon public key

## 2. יצירת Storage bucket

ב-Supabase:

1. עברו ל-Storage.
2. צרו bucket בשם:

```text
plant-photos
```

3. סמנו אותו כ-Public bucket.

## 3. יצירת טבלה

ב-SQL Editor הריצו:

```sql
create table if not exists public.plant_photos (
  plant_key text primary key,
  plant_name text not null,
  botanical_name text not null,
  photo_url text not null,
  updated_at timestamptz not null default now()
);

alter table public.plant_photos enable row level security;

create policy "Allow public read plant photos"
on public.plant_photos
for select
using (true);

create policy "Allow public upsert plant photos"
on public.plant_photos
for insert
with check (true);

create policy "Allow public update plant photos"
on public.plant_photos
for update
using (true)
with check (true);

create policy "Allow public delete plant photos"
on public.plant_photos
for delete
using (true);
```

## 4. Storage policies

אם Supabase דורש מדיניות ל-Storage, הריצו:

```sql
create policy "Allow public read plant photo files"
on storage.objects
for select
using (bucket_id = 'plant-photos');

create policy "Allow public upload plant photo files"
on storage.objects
for insert
with check (bucket_id = 'plant-photos');
```

## 5. הפעלת השירות באתר

פתחו את הקובץ:

```text
remote-photo-service.js
```

ועדכנו:

```js
window.REMOTE_PHOTO_SERVICE = {
    enabled: true,
    provider: "supabase",
    supabaseUrl: "https://YOUR_PROJECT.supabase.co",
    supabaseAnonKey: "YOUR_ANON_PUBLIC_KEY",
    bucket: "plant-photos",
    table: "plant_photos"
};
```

## איך זה עובד באתר?

1. פותחים כרטיס צמח.
2. לוחצים **החלפת תמונה**.
3. בוחרים תמונה מהמחשב / טלפון / טאבלט.
4. התמונה עולה ל-Supabase Storage.
5. ה-URL נשמר בטבלת `plant_photos`.
6. כל לקוח שפותח את האתר רואה את התמונה החדשה.

## חשוב

המדיניות בדוגמה מאפשרת העלאה ציבורית. זה נוח לדמו ולניהול פשוט, אבל לא אידיאלי לאתר פתוח לחלוטין.

לאתר אמיתי מומלץ להוסיף:

- התחברות מנהל
- הרשאות העלאה רק למנהל
- בדיקת גודל וסוג קובץ
- דחיסת תמונות לפני העלאה
