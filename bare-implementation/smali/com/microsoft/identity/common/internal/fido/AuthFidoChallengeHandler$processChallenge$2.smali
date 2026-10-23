.class final Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;
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
    c = "com.microsoft.identity.common.internal.fido.AuthFidoChallengeHandler$processChallenge$2"
    f = "AuthFidoChallengeHandler.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $allowedCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $authChallenge:Ljava/lang/String;

.field final synthetic $context:Ljava/lang/String;

.field final synthetic $methodTag:Ljava/lang/String;

.field final synthetic $relyingPartyIdentifier:Ljava/lang/String;

.field final synthetic $span:Lr86;

.field final synthetic $submitUrl:Ljava/lang/String;

.field final synthetic $userVerificationPolicy:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->this$0:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$authChallenge:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$relyingPartyIdentifier:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$allowedCredentials:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$userVerificationPolicy:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$span:Lr86;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$submitUrl:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$context:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$methodTag:Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p10}, Lws7;-><init>(ILjv1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 11
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
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;

    .line 2
    .line 3
    iget-object v8, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$context:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v9, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$methodTag:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->this$0:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$authChallenge:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$relyingPartyIdentifier:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$allowedCredentials:Ljava/util/List;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$userVerificationPolicy:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$span:Lr86;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$submitUrl:Ljava/lang/String;

    .line 20
    .line 21
    move-object v10, p2

    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;-><init>(Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljv1;)V

    .line 23
    .line 24
    .line 25
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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->label:I

    .line 2
    .line 3
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$methodTag:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$span:Lr86;

    .line 6
    .line 7
    iget-object v8, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->this$0:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    move-object v0, p1

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :catch_1
    move-exception v0

    .line 22
    :goto_0
    move-object v1, v8

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-static {v8}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->access$getFidoManager$p(Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;)Lcom/microsoft/identity/common/internal/fido/IFidoManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$authChallenge:Ljava/lang/String;

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$relyingPartyIdentifier:Ljava/lang/String;

    .line 42
    .line 43
    move-object v5, v3

    .line 44
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$allowedCredentials:Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    move-object v9, v5

    .line 47
    move-object v5, v4

    .line 48
    :try_start_2
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$userVerificationPolicy:Ljava/lang/String;

    .line 49
    .line 50
    iput v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->label:I

    .line 51
    .line 52
    check-cast v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 53
    .line 54
    move-object v6, p0

    .line 55
    move-object v1, v9

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lqj7;Lkv1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    move-object v4, v5

    .line 61
    sget-object v1, Lyx1;->a:Lyx1;

    .line 62
    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_2
    :goto_1
    :try_start_3
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$submitUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$context:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v8, v1, v0, v2, v4}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr86;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_2
    move-exception v0

    .line 77
    move-object v4, v5

    .line 78
    goto :goto_2

    .line 79
    :catch_3
    move-exception v0

    .line 80
    move-object v4, v5

    .line 81
    goto :goto_0

    .line 82
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$submitUrl:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$context:Ljava/lang/String;

    .line 93
    .line 94
    move-object v6, v0

    .line 95
    move-object v1, v8

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallengeWithError(Ljava/lang/String;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :goto_3
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$context:Ljava/lang/String;

    .line 101
    .line 102
    const-string v5, "Coroutine job of FIDO API calls cancelled."

    .line 103
    .line 104
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;->$submitUrl:Ljava/lang/String;

    .line 105
    .line 106
    move-object v6, v0

    .line 107
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallengeWithError(Ljava/lang/String;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_4
    sget-object v0, Lbe8;->a:Lbe8;

    .line 111
    .line 112
    return-object v0
.end method
