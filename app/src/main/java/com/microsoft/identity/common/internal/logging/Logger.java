package com.microsoft.identity.common.internal.logging;

import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.DeprecatedApiUsageEvent;
import defpackage.g84;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class Logger extends com.microsoft.identity.common.logging.Logger {
    private static final Logger INSTANCE = new Logger();
    private static boolean sEmitDeprecationEvent = true;
    private final com.microsoft.identity.common.logging.Logger mInstanceDelegate = com.microsoft.identity.common.logging.Logger.getInstance();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class LogLevel {
        private static final /* synthetic */ LogLevel[] $VALUES;
        public static final LogLevel ERROR;
        public static final LogLevel INFO;
        public static final LogLevel VERBOSE;
        public static final LogLevel WARN;

        static {
            LogLevel logLevel = new LogLevel("ERROR", 0);
            ERROR = logLevel;
            LogLevel logLevel2 = new LogLevel("WARN", 1);
            WARN = logLevel2;
            LogLevel logLevel3 = new LogLevel("INFO", 2);
            INFO = logLevel3;
            LogLevel logLevel4 = new LogLevel("VERBOSE", 3);
            VERBOSE = logLevel4;
            $VALUES = new LogLevel[]{logLevel, logLevel2, logLevel3, logLevel4};
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    private static void emitDeprecationEvent() {
        if (sEmitDeprecationEvent) {
            sEmitDeprecationEvent = false;
            DeprecatedApiUsageEvent deprecatedApiUsageEvent = new DeprecatedApiUsageEvent();
            deprecatedApiUsageEvent.put("Microsoft.MSAL.event_name", "deprecated_api_usage_event");
            deprecatedApiUsageEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.library_consumer_event");
            deprecatedApiUsageEvent.put("Microsoft.MSAL.package_name", Logger.class.getPackage().toString());
            deprecatedApiUsageEvent.put("Microsoft.MSAL.class_name", "Logger");
            Telemetry.emit(deprecatedApiUsageEvent);
        }
    }

    public static void error(Exception exc, String str, String str2) {
        emitDeprecationEvent();
        com.microsoft.identity.common.java.logging.Logger.error(str, str2, exc);
    }

    public static void errorPII(NullPointerException nullPointerException) {
        emitDeprecationEvent();
        com.microsoft.identity.common.java.logging.Logger.errorPII(nullPointerException, "PublicClientApplicationConfiguration:hasSchemeAndAuthority", "Invalid, null, or malformed redirect_uri supplied");
    }

    public static Logger getInstance() {
        emitDeprecationEvent();
        return INSTANCE;
    }

    public static void info(String str, String str2) {
        emitDeprecationEvent();
        com.microsoft.identity.common.java.logging.Logger.info(str, str2);
    }

    public static void setAllowLogcat(boolean z) {
        emitDeprecationEvent();
        com.microsoft.identity.common.logging.Logger.setAllowLogcat(z);
    }

    public static void setAllowPii(boolean z) {
        emitDeprecationEvent();
        com.microsoft.identity.common.java.logging.Logger.setAllowPii(z);
    }

    public static void warn(String str, String str2) {
        emitDeprecationEvent();
        com.microsoft.identity.common.java.logging.Logger.warn(str, str2);
    }

    public final void setExternalLogger(final ILoggerCallback iLoggerCallback) {
        emitDeprecationEvent();
        com.microsoft.identity.common.logging.ILoggerCallback iLoggerCallback2 = new com.microsoft.identity.common.logging.ILoggerCallback() { // from class: com.microsoft.identity.common.internal.logging.Logger.1
            @Override // com.microsoft.identity.common.logging.ILoggerCallback
            public final void log(String str, com.microsoft.identity.common.logging.Logger.LogLevel logLevel, String str2, boolean z) {
                LogLevel logLevel2;
                int iOrdinal = logLevel.ordinal();
                if (iOrdinal == 1) {
                    logLevel2 = LogLevel.ERROR;
                } else if (iOrdinal == 2) {
                    logLevel2 = LogLevel.WARN;
                } else if (iOrdinal == 3) {
                    logLevel2 = LogLevel.INFO;
                } else {
                    if (iOrdinal != 4) {
                        throw new RuntimeException("Unknown or invalid log level");
                    }
                    logLevel2 = LogLevel.VERBOSE;
                }
                iLoggerCallback.log(logLevel2);
                throw null;
            }
        };
        this.mInstanceDelegate.getClass();
        com.microsoft.identity.common.logging.Logger.setExternalLogger(iLoggerCallback2);
    }

    public final void setLogLevel(LogLevel logLevel) {
        com.microsoft.identity.common.logging.Logger.LogLevel logLevel2;
        com.microsoft.identity.common.java.logging.Logger.LogLevel logLevel3;
        emitDeprecationEvent();
        int iOrdinal = logLevel.ordinal();
        if (iOrdinal == 0) {
            logLevel2 = com.microsoft.identity.common.logging.Logger.LogLevel.ERROR;
        } else if (iOrdinal == 1) {
            logLevel2 = com.microsoft.identity.common.logging.Logger.LogLevel.WARN;
        } else if (iOrdinal == 2) {
            logLevel2 = com.microsoft.identity.common.logging.Logger.LogLevel.INFO;
        } else {
            if (iOrdinal != 3) {
                g84.h("Unknown or invalid log level");
                return;
            }
            logLevel2 = com.microsoft.identity.common.logging.Logger.LogLevel.VERBOSE;
        }
        this.mInstanceDelegate.getClass();
        int iOrdinal2 = logLevel2.ordinal();
        if (iOrdinal2 == 0) {
            logLevel3 = com.microsoft.identity.common.java.logging.Logger.LogLevel.NO_LOG;
        } else if (iOrdinal2 == 1) {
            logLevel3 = com.microsoft.identity.common.java.logging.Logger.LogLevel.ERROR;
        } else if (iOrdinal2 != 2) {
            logLevel3 = iOrdinal2 != 3 ? com.microsoft.identity.common.java.logging.Logger.LogLevel.VERBOSE : com.microsoft.identity.common.java.logging.Logger.LogLevel.INFO;
        } else {
            logLevel3 = com.microsoft.identity.common.java.logging.Logger.LogLevel.WARN;
        }
        com.microsoft.identity.common.java.logging.Logger.setLogLevel(logLevel3);
    }
}
