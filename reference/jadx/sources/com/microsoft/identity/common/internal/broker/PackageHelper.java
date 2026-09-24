package com.microsoft.identity.common.internal.broker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Base64;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.eq3;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PackageHelper {
    private final PackageManager mPackageManager;

    public PackageHelper(Context context) {
        this.mPackageManager = context.getPackageManager();
    }

    public static PackageInfo getPackageInfo(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageInfo(str, Build.VERSION.SDK_INT >= 28 ? 134217728 : 64);
    }

    public static Signature[] getSignatures(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 28) {
            return packageInfo.signatures;
        }
        SigningInfo signingInfo = packageInfo.signingInfo;
        if (signingInfo == null) {
            return null;
        }
        boolean zHasMultipleSigners = signingInfo.hasMultipleSigners();
        SigningInfo signingInfo2 = packageInfo.signingInfo;
        return zHasMultipleSigners ? signingInfo2.getApkContentsSigners() : signingInfo2.getSigningCertificateHistory();
    }

    private static String getSigningCertificateThumbprintForPackage(PackageInfo packageInfo, boolean z) {
        try {
            Signature[] signatures = getSignatures(packageInfo);
            if (signatures == null || signatures.length <= 0) {
                return null;
            }
            Signature signature = signatures[0];
            MessageDigest messageDigest = MessageDigest.getInstance(z ? "SHA-512" : "SHA");
            messageDigest.update(signature.toByteArray());
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (NoSuchAlgorithmException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("CallerInfo:getSigningCertificateThumbprintForPackage", "Digest SHA algorithm does not exists. ", "", e);
            return null;
        }
    }

    public final String getSha1SignatureForPackage(String str) {
        try {
            return getSigningCertificateThumbprintForPackage(getPackageInfo(this.mPackageManager, str), false);
        } catch (PackageManager.NameNotFoundException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("CallerInfo:getSha1SignatureForPackage", "Calling App's package does not exist in PackageManager. ", "", e);
            return null;
        }
    }

    public final String getSha512SignatureForPackage() {
        try {
            return getSigningCertificateThumbprintForPackage(getPackageInfo(this.mPackageManager, "com.microsoft.skype.teams.ipphone"), true);
        } catch (PackageManager.NameNotFoundException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("CallerInfo:getSha512SignatureForPackage", "Calling App's package does not exist in PackageManager. ", "", e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0044  */
    public final boolean isPackageInstalledAndEnabled(String str) {
        PackageManager packageManager = this.mPackageManager;
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("CallerInfo:isPackageInstalledAndEnabled", str + " applicationInfo is null");
                return false;
            }
            if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.USE_ENABLED_SETTING_FOR_PACKAGE_CHECK)) {
                try {
                    int applicationEnabledSetting = packageManager.getApplicationEnabledSetting(str);
                    boolean z2 = applicationInfo.enabled;
                    if (applicationEnabledSetting == 1) {
                        z = true;
                    } else if (applicationEnabledSetting != 2 && applicationEnabledSetting != 3) {
                        if (applicationEnabledSetting != 4) {
                            z = z2;
                        } else {
                            z = true;
                        }
                    }
                } catch (IllegalArgumentException unused) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.verbose("CallerInfo:isPackageInstalledAndEnabled", "Unable to read enabled setting for package: " + str);
                    z = applicationInfo.enabled;
                }
            } else {
                z = applicationInfo.enabled;
            }
            String str2 = str + " is installed. enabled? [" + z + "]";
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("CallerInfo:isPackageInstalledAndEnabled", str2);
            return z;
        } catch (PackageManager.NameNotFoundException unused2) {
            String strJ = eq3.j(str, " is not found");
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("CallerInfo:isPackageInstalledAndEnabled", strJ);
            return false;
        }
    }

    public PackageHelper(PackageManager packageManager) {
        this.mPackageManager = packageManager;
    }
}
