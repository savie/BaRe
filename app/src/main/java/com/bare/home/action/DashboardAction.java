package com.bare.home.action;

/** Reference quick-action identities. Some Reference actions intentionally use id=0. */
public enum DashboardAction {
    BACKUP_ALL_APPS("ID_BACKUP_ALL_APPS", 101),
    RESTORE_ALL_APPS("ID_RESTORE_ALL_APPS", 201),
    BACKUP_CALLS("ID_BACKUP_CALLS", 0),
    RESTORE_CALLS("ID_RESTORE_CALLS", 0),
    BACKUP_FOLDERS("ID_BACKUP_FOLDERS", 0),
    RESTORE_FOLDERS("ID_RESTORE_FOLDERS", 0),
    BACKUP_MESSAGES("ID_BACKUP_MESSAGES", 0),
    RESTORE_MESSAGES("ID_RESTORE_MESSAGES", 0),
    DELETE_UNINSTALLED_APP_BACKUPS("ID_DELETE_BACKUPS_UNINSTALLED_APPS", 301),
    ENABLE_DISABLE_APPS("ID_ENABLE_DISABLE_APPS_APPS", 302);

    public final String key;
    public final int id;

    DashboardAction(String key, int id) {
        this.key = key;
        this.id = id;
    }
}
