package com.bare.appsquickactions;

import android.os.Parcel;
import android.os.Parcelable;

/** Reference zc6-shaped Apps Quick Action selection payload. */
public final class AppsQuickActionRequest implements Parcelable {
    public enum Operation { BACKUP, RESTORE, MAINTENANCE }

    public static final Creator<AppsQuickActionRequest> CREATOR = new Creator<AppsQuickActionRequest>() {
        @Override public AppsQuickActionRequest createFromParcel(Parcel in) {
            return new AppsQuickActionRequest(in);
        }
        @Override public AppsQuickActionRequest[] newArray(int size) {
            return new AppsQuickActionRequest[size];
        }
    };

    public final String actionId;
    public final int actionCode;
    public final Operation operation;
    public final boolean cloud;
    public final boolean selectionFiltered;

    public AppsQuickActionRequest(
            String actionId, int actionCode, Operation operation,
            boolean cloud, boolean selectionFiltered) {
        if (actionId == null) throw new NullPointerException("actionId");
        if (operation == null) throw new NullPointerException("operation");
        this.actionId = actionId;
        this.actionCode = actionCode;
        this.operation = operation;
        this.cloud = cloud;
        this.selectionFiltered = selectionFiltered;
    }

    private AppsQuickActionRequest(Parcel in) {
        actionId = in.readString();
        actionCode = in.readInt();
        operation = Operation.values()[in.readInt()];
        cloud = in.readInt() != 0;
        selectionFiltered = in.readInt() != 0;
    }

    public static AppsQuickActionRequest fromReferenceId(String id) {
        if ("ID_BACKUP_ALL_APPS".equals(id)) return new AppsQuickActionRequest(id, 101, Operation.BACKUP, false, false);
        if ("ID_BACKUP_PENDING_APPS".equals(id)) return new AppsQuickActionRequest(id, 102, Operation.BACKUP, false, true);
        if ("ID_BACKUP_UPDATED_APPS".equals(id)) return new AppsQuickActionRequest(id, 103, Operation.BACKUP, false, true);
        if ("ID_BACKUP_REDO_APPS".equals(id)) return new AppsQuickActionRequest(id, 104, Operation.BACKUP, false, true);
        if ("ID_BACKUP_SYNC_APPS".equals(id)) return new AppsQuickActionRequest(id, 105, Operation.BACKUP, true, false);
        if ("ID_RESTORE_ALL_APPS".equals(id)) return new AppsQuickActionRequest(id, 201, Operation.RESTORE, true, true);
        if ("ID_RESTORE_MISSING_APPS".equals(id)) return new AppsQuickActionRequest(id, 202, Operation.RESTORE, true, true);
        if ("ID_RESTORE_NEW_VERSIONS_APPS".equals(id)) return new AppsQuickActionRequest(id, 203, Operation.RESTORE, true, true);
        if ("ID_DELETE_BACKUPS_UNINSTALLED_APPS".equals(id)) return new AppsQuickActionRequest(id, 301, Operation.MAINTENANCE, false, true);
        if ("ID_ENABLE_DISABLE_APPS_APPS".equals(id)) return new AppsQuickActionRequest(id, 302, Operation.MAINTENANCE, false, true);
        throw new IllegalArgumentException("Unknown Apps Quick Action: " + id);
    }

    public boolean isBackup() { return operation == Operation.BACKUP; }
    public boolean isRestore() { return operation == Operation.RESTORE; }

    @Override public int describeContents() { return 0; }

    @Override public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(actionId);
        dest.writeInt(actionCode);
        dest.writeInt(operation.ordinal());
        dest.writeInt(cloud ? 1 : 0);
        dest.writeInt(selectionFiltered ? 1 : 0);
    }
}
