.class public final Lcom/microsoft/identity/common/internal/logging/Logger;
.super Lcom/microsoft/identity/common/logging/Logger;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

.field private static sEmitDeprecationEvent:Z = true


# instance fields
.field private final mInstanceDelegate:Lcom/microsoft/identity/common/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/logging/Logger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/logging/Logger;->getInstance()Lcom/microsoft/identity/common/logging/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mInstanceDelegate:Lcom/microsoft/identity/common/logging/Logger;

    .line 9
    .line 10
    return-void
.end method

.method private static emitDeprecationEvent()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sEmitDeprecationEvent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sEmitDeprecationEvent:Z

    .line 7
    .line 8
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/DeprecatedApiUsageEvent;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "deprecated_api_usage_event"

    .line 14
    .line 15
    const-string v2, "Microsoft.MSAL.event_name"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "Microsoft.MSAL.library_consumer_event"

    .line 21
    .line 22
    const-string v2, "Microsoft.MSAL.event_type"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-class v1, Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Package;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "Microsoft.MSAL.package_name"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "Microsoft.MSAL.class_name"

    .line 43
    .line 44
    const-string v2, "Logger"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static errorPII(Ljava/lang/NullPointerException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PublicClientApplicationConfiguration:hasSchemeAndAuthority"

    .line 5
    .line 6
    const-string v1, "Invalid, null, or malformed redirect_uri supplied"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

    .line 5
    .line 6
    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static setAllowLogcat(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/microsoft/identity/common/logging/Logger;->setAllowLogcat(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static setAllowPii(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/Logger;->setAllowPii(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final setExternalLogger(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$1;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger$1;-><init>(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mInstanceDelegate:Lcom/microsoft/identity/common/logging/Logger;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/microsoft/identity/common/logging/Logger;->setExternalLogger(Lcom/microsoft/identity/common/logging/ILoggerCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->emitDeprecationEvent()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "Unknown or invalid log level"

    .line 23
    .line 24
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mInstanceDelegate:Lcom/microsoft/identity/common/logging/Logger;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_7

    .line 46
    .line 47
    if-eq p0, v2, :cond_6

    .line 48
    .line 49
    if-eq p0, v1, :cond_5

    .line 50
    .line 51
    if-eq p0, v0, :cond_4

    .line 52
    .line 53
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_6
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_7
    sget-object p0, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->NO_LOG:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    .line 66
    .line 67
    :goto_1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
