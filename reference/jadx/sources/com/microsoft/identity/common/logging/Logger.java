package com.microsoft.identity.common.logging;

import android.os.Build;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Logger {
    private static final Logger INSTANCE = new Logger();
    public static final /* synthetic */ int a = 0;
    private static boolean sAllowLogcat = false;

    /* JADX INFO: renamed from: com.microsoft.identity.common.logging.Logger$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements com.microsoft.identity.common.java.logging.ILoggerCallback {
        @Override // com.microsoft.identity.common.java.logging.ILoggerCallback
        public final void log(String str, com.microsoft.identity.common.java.logging.Logger.LogLevel logLevel, String str2, boolean z) {
            if (Logger.sAllowLogcat) {
                int iOrdinal = logLevel.ordinal();
                if (iOrdinal == 1) {
                    Log.e(str, str2);
                    return;
                }
                if (iOrdinal == 2) {
                    Log.w(str, str2);
                } else if (iOrdinal == 3) {
                    Log.i(str, str2);
                } else {
                    if (iOrdinal != 4) {
                        return;
                    }
                    Log.v(str, str2);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class LogLevel {
        private static final /* synthetic */ LogLevel[] $VALUES;
        public static final LogLevel ERROR;
        public static final LogLevel INFO;
        public static final LogLevel NO_LOG;
        public static final LogLevel VERBOSE;
        public static final LogLevel WARN;

        static {
            LogLevel logLevel = new LogLevel("NO_LOG", 0);
            NO_LOG = logLevel;
            LogLevel logLevel2 = new LogLevel("ERROR", 1);
            ERROR = logLevel2;
            LogLevel logLevel3 = new LogLevel("WARN", 2);
            WARN = logLevel3;
            LogLevel logLevel4 = new LogLevel("INFO", 3);
            INFO = logLevel4;
            LogLevel logLevel5 = new LogLevel("VERBOSE", 4);
            VERBOSE = logLevel5;
            $VALUES = new LogLevel[]{logLevel, logLevel2, logLevel3, logLevel4, logLevel5};
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    static {
        setAndroidLogger();
    }

    public static Logger getInstance() {
        return INSTANCE;
    }

    public static void setAllowLogcat(boolean z) {
        sAllowLogcat = z;
    }

    public static void setAndroidLogger() {
        com.microsoft.identity.common.java.logging.Logger.setLogger("ANDROID_LOGCAT_LOGGER", new AnonymousClass1());
        com.microsoft.identity.common.java.logging.Logger.setPlatformString("Android " + Build.VERSION.SDK_INT);
    }

    public static void setExternalLogger(final ILoggerCallback iLoggerCallback) {
        com.microsoft.identity.common.java.logging.Logger.setLogger("ANDROID_EXTERNAL_LOGGER", new com.microsoft.identity.common.java.logging.ILoggerCallback() { // from class: com.microsoft.identity.common.logging.Logger.2
            @Override // com.microsoft.identity.common.java.logging.ILoggerCallback
            public final void log(String str, com.microsoft.identity.common.java.logging.Logger.LogLevel logLevel, String str2, boolean z) {
                LogLevel logLevel2;
                int iOrdinal = logLevel.ordinal();
                if (iOrdinal == 0) {
                    logLevel2 = LogLevel.NO_LOG;
                } else if (iOrdinal == 1) {
                    logLevel2 = LogLevel.ERROR;
                } else if (iOrdinal != 2) {
                    logLevel2 = iOrdinal != 3 ? LogLevel.VERBOSE : LogLevel.INFO;
                } else {
                    logLevel2 = LogLevel.WARN;
                }
                iLoggerCallback.log(str, logLevel2, str2, z);
                throw null;
            }
        });
    }
}
