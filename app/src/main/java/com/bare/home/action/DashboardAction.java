package com.bare.home.action;

/** Reference action IDs used by yc6/zc6. */
public enum DashboardAction {
    BACKUP_ALL_APPS(101),
    RESTORE_ALL_APPS(201),
    BACKUP_CALLS(0),
    RESTORE_CALLS(0),
    BACKUP_FOLDERS(0),
    RESTORE_FOLDERS(0),
    BACKUP_MESSAGES(0),
    RESTORE_MESSAGES(0),
    DELETE_UNINSTALLED_APP_BACKUPS(301),
    ENABLE_DISABLE_APPS(302);

    public final int id;
    DashboardAction(int id) { this.id = id; }
}
