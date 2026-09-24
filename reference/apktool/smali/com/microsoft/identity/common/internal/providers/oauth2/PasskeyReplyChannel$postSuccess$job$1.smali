.class final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lws7;",
        "Lqt3;"
    }
.end annotation

.annotation runtime Lnd2;
    c = "com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$postSuccess$job$1"
    f = "PasskeyReplyChannel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $baggage:Lzk0;

.field final synthetic $json:Ljava/lang/String;

.field final synthetic $span:Lr86;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lr86;Ljava/lang/String;Lzk0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$span:Lr86;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$json:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$baggage:Lzk0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljv1;",
            ")",
            "Ljv1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$json:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$baggage:Lzk0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$span:Lr86;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lr86;Ljava/lang/String;Lzk0;Ljv1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$json:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$baggage:Lzk0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;->$span:Lr86;

    .line 11
    .line 12
    invoke-static {v1, p0, p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->access$recordPostSuccessTelemetry(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lr86;Ljava/lang/String;Lzk0;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lbe8;->a:Lbe8;

    .line 16
    .line 17
    return-object p0
.end method
