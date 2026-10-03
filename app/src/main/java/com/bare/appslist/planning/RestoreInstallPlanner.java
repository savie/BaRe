package com.bare.appslist.planning;

import com.bare.appslist.planning.RestoreInstallDecision.Kind;

/**
 * Evidence-backed APK restore/install decision boundary.
 *
 * Reference xw/mv separates normal install, downgrade preparation and
 * secondary-user downgrade handling. This planner only decides the path;
 * PackageInstaller, shell install, uninstall, archive preservation and
 * runtime verification remain downstream execution concerns.
 */
public final class RestoreInstallPlanner {
    public static final class Request {
        private final String packageName;
        private final boolean installed;
        private final long backupVersionCode;
        private final long installedVersionCode;
        private final boolean allowDowngrade;
        private final boolean systemApp;
        private final boolean secondaryUser;

        public Request(
                String packageName,
                boolean installed,
                long backupVersionCode,
                long installedVersionCode,
                boolean allowDowngrade,
                boolean systemApp,
                boolean secondaryUser) {
            if (packageName == null || packageName.isEmpty()) {
                throw new IllegalArgumentException("packageName");
            }
            if (backupVersionCode < 0) {
                throw new IllegalArgumentException("backupVersionCode");
            }
            if (installed && installedVersionCode < 0) {
                throw new IllegalArgumentException("installedVersionCode");
            }
            this.packageName = packageName;
            this.installed = installed;
            this.backupVersionCode = backupVersionCode;
            this.installedVersionCode = installedVersionCode;
            this.allowDowngrade = allowDowngrade;
            this.systemApp = systemApp;
            this.secondaryUser = secondaryUser;
        }

        public String getPackageName() { return packageName; }
        public boolean isInstalled() { return installed; }
        public long getBackupVersionCode() { return backupVersionCode; }
        public long getInstalledVersionCode() { return installedVersionCode; }
        public boolean isAllowDowngrade() { return allowDowngrade; }
        public boolean isSystemApp() { return systemApp; }
        public boolean isSecondaryUser() { return secondaryUser; }
    }

    public RestoreInstallDecision plan(Request request) {
        if (request == null) throw new IllegalArgumentException("request");

        if (!request.isInstalled()) {
            return new RestoreInstallDecision(
                    Kind.INSTALL,
                    "Target app is not installed.");
        }

        if (request.getBackupVersionCode() >= request.getInstalledVersionCode()) {
            return new RestoreInstallDecision(
                    Kind.INSTALL,
                    "Backup APK is not older than the installed version.");
        }

        if (request.isSecondaryUser()) {
            return new RestoreInstallDecision(
                    Kind.SECONDARY_USER_REQUIRES_PREPARATION,
                    "Older backup APK on a secondary user requires the Reference downgrade workaround path.");
        }

        if (!request.isAllowDowngrade()) {
            return new RestoreInstallDecision(
                    Kind.REJECT,
                    "APK downgrade is not allowed.");
        }

        if (request.isSystemApp()) {
            return new RestoreInstallDecision(
                    Kind.REJECT,
                    "System-app APK downgrade is not allowed.");
        }

        return new RestoreInstallDecision(
                Kind.DOWNGRADE_REQUIRES_PREPARATION,
                "Older backup APK requires the Reference downgrade preparation path.");
    }
}
