package org.swiftapps.swiftbackup;

import android.app.Application;

/** Application entry point reconstructed from the observed APK contract. */
public final class SwiftApp extends Application {
    private static SwiftApp instance;

    public static SwiftApp getInstance() {
        return instance;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
    }
}
