-- Make per-user device upserts idempotent without relying on a service-role key.
-- The devices table is currently empty; this unique index establishes the key contract
-- used by the Android client when it records a device after authenticated sign-in.
create unique index if not exists devices_user_id_device_key_uidx
    on public.devices (user_id, device_key);

comment on index public.devices_user_id_device_key_uidx is
    'BΛR☰ per-user stable installation key for idempotent client upserts.';
