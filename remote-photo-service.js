/*
 * Gardening Artists - shared cloud photo storage
 *
 * This file is optional. Leave enabled: false until Supabase is configured.
 * After setup, replacing a plant photo from the website will upload it to
 * Supabase Storage and save the URL in a Supabase table for all visitors.
 */
window.REMOTE_PHOTO_SERVICE = {
    enabled: false,
    provider: "supabase",

    // Example: "https://abcxyzcompany.supabase.co"
    supabaseUrl: "",

    // Use the public anon key, not the service-role key.
    supabaseAnonKey: "",

    // Storage bucket name and database table name.
    bucket: "plant-photos",
    table: "plant_photos"
};
