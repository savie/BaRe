.class final Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;
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
    c = "com.microsoft.identity.common.internal.providers.oauth2.SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1"
    f = "SilentWebViewAuthorizationFragment.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $timeOutInMs:J

.field L$0:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;


# direct methods
.method public constructor <init>(JLcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->$timeOutInMs:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
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
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->$timeOutInMs:J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;-><init>(JLcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;Ljv1;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->L$0:Ljava/lang/String;

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
    const-string v0, "SilentWebViewAuthorizationFragment:cancelAuthorizationOnTimeOut"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->L$0:Ljava/lang/String;

    .line 27
    .line 28
    iput v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->label:I

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->$timeOutInMs:J

    .line 31
    .line 32
    invoke-static {v1, v2, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lyx1;->a:Lyx1;

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    :goto_0
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 42
    .line 43
    const-string p1, "Received Authorization flow cancel request from SDK"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 p1, 0xa

    .line 49
    .line 50
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lbe8;->a:Lbe8;

    .line 63
    .line 64
    return-object p0
.end method
