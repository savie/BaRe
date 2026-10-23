.class final Lcom/microsoft/identity/common/internal/logging/Logger$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/logging/ILoggerCallback;


# instance fields
.field final synthetic val$externalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$externalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Lcom/microsoft/identity/common/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eq p1, p2, :cond_3

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    if-eq p1, p2, :cond_2

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string p1, "Unknown or invalid log level"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$externalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;->log(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method
