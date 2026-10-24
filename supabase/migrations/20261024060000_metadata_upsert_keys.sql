-- Stable client-generated keys used by the Android metadata repository.
-- Existing rows receive a deterministic key before NOT NULL is enforced.
alter table public.folder_configs
  add column if not exists source_key text;

update public.folder_configs
set source_key = id::text
where source_key is null;

alter table public.folder_configs
  alter column source_key set not null;

create unique index if not exists folder_configs_user_source_key_uidx
  on public.folder_configs (user_id, source_key);

create unique index if not exists backup_records_user_kind_object_key_uidx
  on public.backup_records (user_id, backup_kind, object_key);

create unique index if not exists backup_versions_user_record_version_uidx
  on public.backup_versions (user_id, backup_record_id, version_number);

comment on index public.folder_configs_user_source_key_uidx is
  'Stable folder item id for idempotent BΛR☰ metadata upserts.';
comment on index public.backup_records_user_kind_object_key_uidx is
  'Stable per-user backup identity for idempotent metadata upserts.';
comment on index public.backup_versions_user_record_version_uidx is
  'Stable per-record version identity for idempotent metadata upserts.';
