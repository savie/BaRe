package com.bare.appslist.detail;

import com.bare.detail.DetailActionContext;

import java.util.EnumSet;

/** F07 capability-aware detail action projection. */
public final class DetailActionAvailability {
    public enum Action { BACKUP, RESTORE, OPEN, APP_INFO }

    private DetailActionAvailability() {}

    public static EnumSet<Action> forContext(DetailActionContext context) {
        if (context == null) throw new NullPointerException("context");
        EnumSet<Action> result = EnumSet.of(Action.APP_INFO);
        if (context.isInstalled()) result.add(Action.OPEN);
        if (context.isInstalled() || context.hasLocalBackup() || context.hasCloudBackup()) {
            result.add(Action.BACKUP);
        }
        if (context.hasLocalBackup() || context.hasCloudBackup()) {
            result.add(Action.RESTORE);
        }
        return result;
    }
}
