.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;
.super Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final data:Lorg/json/JSONObject;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;->type:Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    new-instance p2, Lbn6;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p2}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_1
    check-cast p2, Lorg/json/JSONObject;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;->data:Lorg/json/JSONObject;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getData()Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;->data:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "success"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
