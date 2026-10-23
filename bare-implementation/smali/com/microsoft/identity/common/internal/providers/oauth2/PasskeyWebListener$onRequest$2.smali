.class final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;
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
    c = "com.microsoft.identity.common.internal.providers.oauth2.PasskeyWebListener$onRequest$2"
    f = "PasskeyWebListener.kt"
    l = {
        0xa1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $passkeyReplyChannel:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

.field final synthetic $webAuthNMessage:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$webAuthNMessage:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$passkeyReplyChannel:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2
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
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$webAuthNMessage:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$passkeyReplyChannel:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Ljv1;)V

    .line 10
    .line 11
    .line 12
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->label:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->access$getCredentialManagerHandler$p(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;)Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$webAuthNMessage:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;->getRequest()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->label:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;->$passkeyReplyChannel:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 37
    .line 38
    invoke-static {v1, p1, v0, v2, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->access$handleGetFlow(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lkv1;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lyx1;->a:Lyx1;

    .line 43
    .line 44
    if-ne p0, p1, :cond_2

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->access$getHavePendingRequest$p(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lbe8;->a:Lbe8;

    .line 56
    .line 57
    return-object p0
.end method
