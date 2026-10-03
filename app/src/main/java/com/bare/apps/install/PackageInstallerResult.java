package com.bare.apps.install;

/** F93 normalized PackageInstaller result contract. */
public final class PackageInstallerResult {
    private final int status;
    private final String message;
    private final String packageName;

    public PackageInstallerResult(int status, String message, String packageName) {
        this.status = status;
        this.message = message;
        this.packageName = packageName;
    }

    public int getStatus() { return status; }
    public String getMessage() { return message; }
    public String getPackageName() { return packageName; }
    public boolean isSuccess() { return status == 0; }
}
