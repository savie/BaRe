package com.microsoft.identity.common.java.configuration;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LibraryConfiguration {
    private static LibraryConfiguration sInstance;
    private final boolean authorizationInCurrentTask;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class LibraryConfigurationBuilder {
        private boolean authorizationInCurrentTask;

        public final void authorizationInCurrentTask(boolean z) {
            this.authorizationInCurrentTask = z;
        }

        public final LibraryConfiguration build() {
            return new LibraryConfiguration(this.authorizationInCurrentTask);
        }

        public final String toString() {
            return dj7.p(new StringBuilder("LibraryConfiguration.LibraryConfigurationBuilder(authorizationInCurrentTask="), this.authorizationInCurrentTask, ", refreshInEnabled=false)");
        }
    }

    public LibraryConfiguration(boolean z) {
        this.authorizationInCurrentTask = z;
    }

    public static synchronized LibraryConfiguration getInstance() {
        if (sInstance == null) {
            synchronized (LibraryConfiguration.class) {
                LibraryConfigurationBuilder libraryConfigurationBuilder = new LibraryConfigurationBuilder();
                libraryConfigurationBuilder.authorizationInCurrentTask(false);
                sInstance = libraryConfigurationBuilder.build();
            }
        }
        return sInstance;
    }

    public static synchronized void intializeLibraryConfiguration(LibraryConfiguration libraryConfiguration) {
        try {
            if (sInstance == null) {
                sInstance = libraryConfiguration;
            } else {
                Logger.warn("LibraryConfiguration", "MsalConfiguration was already initialized");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof LibraryConfiguration) && this.authorizationInCurrentTask == ((LibraryConfiguration) obj).authorizationInCurrentTask;
    }

    public final int hashCode() {
        return (((this.authorizationInCurrentTask ? 79 : 97) + 59) * 59) + 97;
    }

    public final boolean isAuthorizationInCurrentTask() {
        return this.authorizationInCurrentTask;
    }
}
