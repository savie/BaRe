.class public abstract Lcom/microsoft/identity/common/java/logging/Logger;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final $LOCK:[Ljava/lang/Object;

.field private static sAllowPii:Z

.field private static final sDateTimeFormatter:Ljava/text/SimpleDateFormat;

.field private static final sLogExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

.field private static final sLoggers:Ljava/util/HashMap;

.field private static final sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sPlatformString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->$LOCK:[Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 13
    .line 14
    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 15
    .line 16
    sput-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sDateTimeFormatter:Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    const-string v1, "UTC"

    .line 50
    .line 51
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sDateTimeFormatter:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    move-object v4, p0

    .line 6
    move-object v0, p1

    .line 7
    move-object v3, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static infoPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static isAllowPii()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    .line 2
    .line 3
    return v0
.end method

.method private static log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->NO_LOG:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_3

    .line 12
    .line 13
    sget-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "thread_id"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const-string v4, "UNSET"

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    move-object v1, v4

    .line 48
    :cond_1
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    const-string p2, "correlation_id"

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    move-object p2, v4

    .line 69
    :cond_2
    const-string v0, "thread_id: "

    .line 70
    .line 71
    const-string v3, ", correlation_id: "

    .line 72
    .line 73
    invoke-static {v0, v1, v3, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v1, Lcom/microsoft/identity/common/java/logging/Logger$1;

    .line 78
    .line 79
    move-object v6, p0

    .line 80
    move-object v7, p1

    .line 81
    move-object v4, p3

    .line 82
    move-object v5, p4

    .line 83
    move v8, p5

    .line 84
    invoke-direct/range {v1 .. v8}, Lcom/microsoft/identity/common/java/logging/Logger$1;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V

    .line 85
    .line 86
    .line 87
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    return-void
.end method

.method public static setAllowPii(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setLogLevel(Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 2
    .line 3
    return-void
.end method

.method public static setLogger(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static setPlatformString(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->$LOCK:[Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbosePII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warnPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
