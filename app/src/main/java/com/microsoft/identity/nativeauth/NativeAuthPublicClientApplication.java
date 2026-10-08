package com.microsoft.identity.nativeauth;

import android.content.Context;
import com.microsoft.identity.client.Logger;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.configuration.LoggerConfiguration;
import com.microsoft.identity.common.crypto.AndroidAuthSdkStorageEncryptionManager;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.net.cache.HttpCache;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import defpackage.cn2;
import defpackage.fs7;
import defpackage.l73;
import defpackage.od2;
import defpackage.rf2;
import defpackage.se2;
import defpackage.zm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAuthPublicClientApplication extends PublicClientApplication {
    private static final String TAG;

    static {
        String string = NativeAuthPublicClientApplication.class.toString();
        string.getClass();
        TAG = string;
        fs7 fs7VarA = zm5.a();
        rf2 rf2Var = cn2.a;
        l73.c(od2.u(fs7VarA, se2.c));
    }

    public NativeAuthPublicClientApplication(NativeAuthPublicClientApplicationConfiguration nativeAuthPublicClientApplicationConfiguration) {
        super(nativeAuthPublicClientApplicationConfiguration);
        Context appContext = nativeAuthPublicClientApplicationConfiguration.getAppContext();
        AzureActiveDirectory.setEnvironment(nativeAuthPublicClientApplicationConfiguration.getEnvironment());
        Authority.addKnownAuthorities(nativeAuthPublicClientApplicationConfiguration.getAuthorities());
        LoggerConfiguration loggerConfiguration = nativeAuthPublicClientApplicationConfiguration.getLoggerConfiguration();
        if (loggerConfiguration != null) {
            Logger.LogLevel logLevel = loggerConfiguration.getLogLevel();
            boolean zIsPiiEnabled = loggerConfiguration.isPiiEnabled();
            boolean zIsLogcatEnabled = loggerConfiguration.isLogcatEnabled();
            Logger logger = Logger.getInstance();
            if (logLevel != null) {
                logger.setLogLevel(logLevel);
            }
            logger.setEnablePII(zIsPiiEnabled);
            logger.setEnableLogcatLog(zIsLogcatEnabled);
        }
        PublicClientApplication.checkInternetPermission(nativeAuthPublicClientApplicationConfiguration);
        HttpCache.initialize$1(appContext.getCacheDir());
        StringBuilder sb = new StringBuilder();
        String str = TAG;
        sb.append(str);
        sb.append(".initializeApplication");
        String string = sb.toString();
        str.getClass();
        com.microsoft.identity.common.java.logging.Logger.info(str, null, string);
        Context appContext2 = nativeAuthPublicClientApplicationConfiguration.getAppContext();
        appContext2.getClass();
        new SharedPreferencesFileManager(appContext2, "com.microsoft.identity.client.native_auth_credential_cache", new AndroidAuthSdkStorageEncryptionManager(appContext2));
    }
}
