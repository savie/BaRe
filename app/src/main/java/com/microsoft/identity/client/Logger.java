package com.microsoft.identity.client;

import defpackage.c6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Logger {
    private static final Logger sINSTANCE = new Logger();
    private ILoggerCallback mExternalLogger;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class LogLevel {
        private static final /* synthetic */ LogLevel[] $VALUES = {new LogLevel("ERROR", 0), new LogLevel("WARNING", 1), new LogLevel("INFO", 2), new LogLevel("VERBOSE", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        LogLevel EF5;

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    public static /* synthetic */ ILoggerCallback access$000(Logger logger) {
        logger.getClass();
        return null;
    }

    public static Logger getInstance() {
        return sINSTANCE;
    }

    public synchronized void removeExternalLogger() {
    }

    public void setEnableLogcatLog(boolean z) {
        com.microsoft.identity.common.internal.logging.Logger.setAllowLogcat(z);
    }

    public void setEnablePII(boolean z) {
        com.microsoft.identity.common.internal.logging.Logger.setAllowPii(z);
    }

    public synchronized void setExternalLogger(ILoggerCallback iLoggerCallback) {
        if (iLoggerCallback == null) {
            return;
        }
        com.microsoft.identity.common.internal.logging.Logger.getInstance().setExternalLogger(new com.microsoft.identity.common.internal.logging.ILoggerCallback() { // from class: com.microsoft.identity.client.Logger.1
            @Override // com.microsoft.identity.common.internal.logging.ILoggerCallback
            public final void log(com.microsoft.identity.common.internal.logging.Logger.LogLevel logLevel) {
                int iOrdinal = logLevel.ordinal();
                Logger logger = Logger.this;
                if (iOrdinal == 0) {
                    Logger.access$000(logger);
                    throw null;
                }
                if (iOrdinal == 1) {
                    Logger.access$000(logger);
                    throw null;
                }
                if (iOrdinal == 2) {
                    Logger.access$000(logger);
                    throw null;
                }
                if (iOrdinal != 3) {
                    throw new IllegalArgumentException("Unknown logLevel");
                }
                Logger.access$000(logger);
                throw null;
            }
        });
    }

    public void setLogLevel(LogLevel logLevel) {
        com.microsoft.identity.common.internal.logging.Logger logger = com.microsoft.identity.common.internal.logging.Logger.getInstance();
        int iOrdinal = logLevel.ordinal();
        if (iOrdinal == 0) {
            logger.setLogLevel(com.microsoft.identity.common.internal.logging.Logger.LogLevel.ERROR);
            return;
        }
        if (iOrdinal == 1) {
            logger.setLogLevel(com.microsoft.identity.common.internal.logging.Logger.LogLevel.WARN);
            return;
        }
        if (iOrdinal == 2) {
            logger.setLogLevel(com.microsoft.identity.common.internal.logging.Logger.LogLevel.INFO);
        } else if (iOrdinal == 3) {
            logger.setLogLevel(com.microsoft.identity.common.internal.logging.Logger.LogLevel.VERBOSE);
        } else {
            c6.f("Unknown logLevel");
        }
    }
}
