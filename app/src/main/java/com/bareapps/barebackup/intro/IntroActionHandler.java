package com.bareapps.barebackup.intro;

import android.content.Context;

import com.bareapps.barebackup.BareApp;
import com.bareapps.rootservice.PrivilegeManager;

/** Connects onboarding actions to the real application-scoped privilege manager. */
public final class IntroActionHandler {
    private final PrivilegeManager privilegeManager;

    public IntroActionHandler(Context context) {
        Context app = context.getApplicationContext();
        if (!(app instanceof BareApp)) {
            throw new IllegalStateException("BΛR☰ Application is not initialized");
        }
        privilegeManager = ((BareApp) app).getPrivilegeManager();
    }

    public boolean isEnabled() {
        return privilegeManager != null;
    }

    public PrivilegeManager.Status getStatus() {
        return privilegeManager.getStatus();
    }

    public void requestRootAccess(PrivilegeManager.StatusListener completion) {
        privilegeManager.requestRootAccess(completion);
    }

    public void requestShizukuAccess() {
        privilegeManager.requestShizukuAccess();
    }

    public void execute(String[] command, long timeoutMillis,
                        PrivilegeManager.CommandCallback callback) {
        privilegeManager.execute(command, timeoutMillis, callback);
    }
}
