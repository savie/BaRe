package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.logging.Logger;
import defpackage.eq3;
import defpackage.nq7;
import defpackage.pe4;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HelloCache {
    private final Context context;
    private final AbstractSharedPrefNameValueStorage fileManager;
    private final String targetAppPackageName;

    public HelloCache(Context context, PlatformComponents platformComponents, String str) {
        context.getClass();
        str.getClass();
        platformComponents.getClass();
        this.context = context;
        this.targetAppPackageName = str;
        this.fileManager = platformComponents.getStorageSupplier().getUnencryptedNameValueStore("com.microsoft.common.ipc.hello.cache");
    }

    private final String getNegotiatedProtocolVersionCacheKey(String str, String str2) throws PackageManager.NameNotFoundException {
        StringBuilder sb = new StringBuilder("msal.to.broker[");
        sb.append(str);
        sb.append(',');
        sb.append(str2);
        sb.append("]:");
        String str3 = this.targetAppPackageName;
        sb.append(str3);
        sb.append('[');
        PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(str3, 0);
        sb.append(Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode));
        sb.append(']');
        return sb.toString();
    }

    private final void saveNegotiatedValue(String str, String str2, HelloCacheResult helloCacheResult, String str3) {
        String strK = eq3.k("HelloCache", str3, ":saveNegotiatedProtocolVersion");
        try {
            this.fileManager.put(helloCacheResult.serialize$common_distRelease(), getNegotiatedProtocolVersionCacheKey(str, str2));
        } catch (PackageManager.NameNotFoundException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error(strK, "Failed to retrieve key", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0099  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    public final HelloCacheResult getHelloCacheResult(String str, String str2) {
        HelloCacheResult helloCacheResult;
        str2.getClass();
        try {
            String negotiatedProtocolVersionCacheKey = getNegotiatedProtocolVersionCacheKey(str, str2);
            AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.fileManager;
            String str3 = (String) abstractSharedPrefNameValueStorage.get(negotiatedProtocolVersionCacheKey);
            if (str3 == null || str3.length() == 0) {
                return null;
            }
            List listX0 = nq7.x0(str3, new String[]{","}, 6);
            if (listX0.size() == 3) {
                try {
                    long j = Long.parseLong((String) listX0.get(2));
                    helloCacheResult = pe4.d(listX0.get(0), "E") ? new HelloCacheResult(null, (String) listX0.get(1), j) : new HelloCacheResult((String) listX0.get(1), null, j);
                } catch (NumberFormatException e) {
                    String strConcat = "Invalid cache entry. ".concat(str3);
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("HelloCacheResult:deserialize", strConcat, e);
                    helloCacheResult = null;
                }
                if (helloCacheResult == null) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("HelloCache:tryGetNegotiatedProtocolVersion", "Legacy or invalid cache value.");
                    abstractSharedPrefNameValueStorage.remove(negotiatedProtocolVersionCacheKey);
                    return null;
                }
                if (System.currentTimeMillis() - helloCacheResult.getTimeStamp$common_distRelease() > 14400000) {
                    return helloCacheResult;
                }
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("HelloCache:tryGetNegotiatedProtocolVersion", "Cache entry is expired.");
                abstractSharedPrefNameValueStorage.remove(negotiatedProtocolVersionCacheKey);
                return null;
            }
            String strConcat2 = "Legacy or Invalid cache entry. ".concat(str3);
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("HelloCacheResult:deserialize", strConcat2);
            helloCacheResult = null;
            if (helloCacheResult == null) {
                int i5 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("HelloCache:tryGetNegotiatedProtocolVersion", "Legacy or invalid cache value.");
                abstractSharedPrefNameValueStorage.remove(negotiatedProtocolVersionCacheKey);
                return null;
            }
            if (System.currentTimeMillis() - helloCacheResult.getTimeStamp$common_distRelease() > 14400000) {
                return helloCacheResult;
            }
            int i6 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("HelloCache:tryGetNegotiatedProtocolVersion", "Cache entry is expired.");
            abstractSharedPrefNameValueStorage.remove(negotiatedProtocolVersionCacheKey);
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            int i7 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("HelloCache:tryGetNegotiatedProtocolVersion", "Failed to retrieve key", e2);
            return null;
        }
    }

    public final void saveHandshakeError(String str, String str2) {
        str2.getClass();
        saveNegotiatedValue(str, str2, new HelloCacheResult(null, "handshake_error", System.currentTimeMillis()), "HelloCache:saveHandShakeError");
    }

    public final void saveNegotiatedProtocolVersion(String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        saveNegotiatedValue(str, str2, new HelloCacheResult(str3, null, System.currentTimeMillis()), "HelloCache:saveNegotiatedProtocolVersion");
    }
}
