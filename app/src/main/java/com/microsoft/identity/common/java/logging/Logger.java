package com.microsoft.identity.common.java.logging;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import defpackage.xs1;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Logger {
    private static final SimpleDateFormat sDateTimeFormatter;
    private static final Object[] $LOCK = new Object[0];
    private static final ExecutorService sLogExecutor = Executors.newSingleThreadExecutor();
    private static LogLevel sLogLevel = LogLevel.VERBOSE;
    private static boolean sAllowPii = false;
    private static String sPlatformString = "";
    private static final ReentrantReadWriteLock sLoggersLock = new ReentrantReadWriteLock();
    private static final HashMap sLoggers = new HashMap();

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
            $VALUES = new LogLevel[]{logLevel, logLevel2, logLevel3, logLevel4, logLevel5, new LogLevel("UNDEFINED", 5)};
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        sDateTimeFormatter = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static void error(String str, String str2, Throwable th) {
        log(str, LogLevel.ERROR, null, str2, th, false);
    }

    public static void errorPII(Exception exc, String str, String str2) {
        log(str, LogLevel.ERROR, null, str2, exc, true);
    }

    public static void info(String str, String str2) {
        log(str, LogLevel.INFO, null, str2, null, false);
    }

    public static void infoPII(String str, String str2) {
        log(str, LogLevel.INFO, null, str2, null, true);
    }

    public static boolean isAllowPii() {
        return sAllowPii;
    }

    private static void log(final String str, final LogLevel logLevel, String str2, final String str3, final Throwable th, final boolean z) {
        LogLevel logLevel2 = sLogLevel;
        if (logLevel2 == LogLevel.NO_LOG || logLevel.compareTo(logLevel2) > 0) {
            return;
        }
        if (sAllowPii || !z) {
            final Date date = new Date();
            RequestContext requestContext = DiagnosticContext.INSTANCE.getRequestContext();
            String str4 = requestContext.get("thread_id");
            if (StringUtil.isNullOrEmpty(str4)) {
                str4 = "UNSET";
            }
            if (StringUtil.isNullOrEmpty(str2)) {
                str2 = requestContext.get("correlation_id");
                if (StringUtil.isNullOrEmpty(str2)) {
                    str2 = "UNSET";
                }
            }
            final String strL = dj7.l("thread_id: ", str4, ", correlation_id: ", str2);
            sLogExecutor.execute(new Runnable() { // from class: com.microsoft.identity.common.java.logging.Logger.1
                @Override // java.lang.Runnable
                public final void run() {
                    String str5 = Logger.sDateTimeFormatter.format(date);
                    String str6 = Logger.sPlatformString;
                    if (str5 == null) {
                        f6.n("dateTimeStamp is marked non-null but is null");
                        return;
                    }
                    String str7 = str3;
                    String str8 = "";
                    if (StringUtil.isNullOrEmpty(str7)) {
                        str7 = "";
                    }
                    StringBuilder sb = new StringBuilder("[");
                    sb.append(str5);
                    String str9 = strL;
                    xs1.t(sb, StringUtil.isNullOrEmpty(str9) ? TokenAuthenticationScheme.SCHEME_DELIMITER : eq3.k(" - ", str9, TokenAuthenticationScheme.SCHEME_DELIMITER), "- ", str6, "] ");
                    xs1.t(sb, str7, TokenAuthenticationScheme.SCHEME_DELIMITER, "", TokenAuthenticationScheme.SCHEME_DELIMITER);
                    Throwable th2 = th;
                    if (th2 != null) {
                        str8 = "\n" + FileUtil.getStackTraceAsString(th2);
                    }
                    sb.append(str8);
                    String string = sb.toString();
                    Logger.sLoggersLock.readLock().lock();
                    try {
                        Iterator it = Logger.sLoggers.keySet().iterator();
                        while (it.hasNext()) {
                            try {
                                ILoggerCallback iLoggerCallback = (ILoggerCallback) Logger.sLoggers.get((String) it.next());
                                if (iLoggerCallback != null) {
                                    iLoggerCallback.log(str, logLevel, string, z);
                                }
                            } catch (Exception unused) {
                            }
                        }
                        Logger.sLoggersLock.readLock().unlock();
                    } catch (Throwable th3) {
                        Logger.sLoggersLock.readLock().unlock();
                        throw th3;
                    }
                }
            });
        }
    }

    public static void setAllowPii(boolean z) {
        sAllowPii = z;
    }

    public static void setLogLevel(LogLevel logLevel) {
        sLogLevel = logLevel;
    }

    public static void setLogger(String str, ILoggerCallback iLoggerCallback) {
        HashMap map = sLoggers;
        ReentrantReadWriteLock reentrantReadWriteLock = sLoggersLock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!map.containsValue(iLoggerCallback)) {
                map.put(str, iLoggerCallback);
            }
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public static void setPlatformString(String str) {
        synchronized ($LOCK) {
            sPlatformString = str;
        }
    }

    public static void verbose(String str, String str2) {
        log(str, LogLevel.VERBOSE, null, str2, null, false);
    }

    public static void verbosePII(String str, String str2) {
        log(str, LogLevel.VERBOSE, null, str2, null, true);
    }

    public static void warn(String str, String str2) {
        log(str, LogLevel.WARN, null, str2, null, false);
    }

    public static void warnPII(String str, String str2) {
        log(str, LogLevel.WARN, null, str2, null, true);
    }

    public static void error(String str, String str2, String str3, Exception exc) {
        log(str, LogLevel.ERROR, str2, str3, exc, false);
    }

    public static void info(String str, String str2, String str3) {
        log(str, LogLevel.INFO, str2, str3, null, false);
    }

    public static void verbose(String str, String str2, String str3) {
        log(str, LogLevel.VERBOSE, str2, str3, null, false);
    }

    public static void warn(String str, String str2, String str3) {
        log(str, LogLevel.WARN, str2, str3, null, false);
    }
}
