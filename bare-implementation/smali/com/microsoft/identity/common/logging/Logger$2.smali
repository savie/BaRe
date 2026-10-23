.class final Lcom/microsoft/identity/common/logging/Logger$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/logging/ILoggerCallback;


# instance fields
.field final synthetic val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/logging/ILoggerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/logging/Logger$2;->val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    sget-object p2, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p2, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object p2, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-object p2, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    sget-object p2, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->NO_LOG:Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    .line 29
    .line 30
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/logging/Logger$2;->val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;

    .line 31
    .line 32
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/logging/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/common/logging/Logger$LogLevel;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method
