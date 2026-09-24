.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;
.super Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final domExceptionMessage:Ljava/lang/String;

.field private final domExceptionName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->domExceptionMessage:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->domExceptionName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->type:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getData()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "domExceptionMessage"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->domExceptionMessage:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "domExceptionName"

    .line 14
    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->domExceptionName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "error"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
