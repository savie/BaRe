.class final Lcom/microsoft/identity/client/Logger$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/Logger;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final log(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "Unknown logLevel"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static {p0}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    invoke-static {p0}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_3
    invoke-static {p0}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    .line 40
    .line 41
    .line 42
    throw v0
.end method
