package com.bareapps.barebackup;

import android.app.Application;

import com.bareapps.rootservice.PrivilegeManager;

/** Application-scoped owner for root/Shizuku binding and execution capability state. */
public final class BareApp extends Application {
    private static volatile BareApp instance;
    private PrivilegeManager privilegeManager;

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
        privilegeManager = new PrivilegeManager(this);
    }

    public static BareApp getInstance() {
        return instance;
    }

    public PrivilegeManager getPrivilegeManager() {
        return privilegeManager;
    }
}
