-- Firebase ID tokens without a custom role claim are assigned to PostgreSQL role anon.
-- RLS validates this project issuer, audience and subject; the anon role only needs
-- normal row operations on these metadata tables. Remove DDL-adjacent table grants.
revoke truncate, references, trigger on table
  public.profiles,
  public.devices,
  public.backup_records,
  public.backup_versions,
  public.folder_configs,
  public.backup_schedules,
  public.app_settings,
  public.sync_state
from anon;

grant select, insert, update, delete on table
  public.profiles,
  public.devices,
  public.backup_records,
  public.backup_versions,
  public.folder_configs,
  public.backup_schedules,
  public.app_settings,
  public.sync_state
to anon;
