.class public final Lcom/microsoft/identity/client/Logger;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final sINSTANCE:Lcom/microsoft/identity/client/Logger;


# instance fields
.field private mExternalLogger:Lcom/microsoft/identity/client/ILoggerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/Logger;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/client/Logger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/client/Logger;->sINSTANCE:Lcom/microsoft/identity/client/Logger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static getInstance()Lcom/microsoft/identity/client/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/Logger;->sINSTANCE:Lcom/microsoft/identity/client/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public declared-synchronized removeExternalLogger()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public setEnableLogcatLog(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setAllowLogcat(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setEnablePII(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setAllowPii(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setExternalLogger(Lcom/microsoft/identity/client/ILoggerCallback;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lcom/microsoft/identity/client/Logger$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/Logger$1;-><init>(Lcom/microsoft/identity/client/Logger;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->setExternalLogger(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Unknown logLevel"

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
