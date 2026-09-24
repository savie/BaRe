.class public final Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        ">",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;>;"
    }
.end annotation


# instance fields
.field private mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

.field private mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ResultFuture<",
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2Strategy;"
        }
    .end annotation
.end field


# virtual methods
.method public final completeAuthorization(ILcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .locals 3

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    const-string v1, "EmbeddedWebViewAuthorizationStrategy:completeAuthorization"

    .line 4
    .line 5
    if-ne p1, v0, :cond_3

    .line 6
    .line 7
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "SDK Cancel triggering before request is sent out. Potentially due to an stale activity state, oAuth2Strategy null ? ["

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    move p2, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move p2, v0

    .line 48
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, "]mAuthorizationResultFuture ? ["

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    move v0, v2

    .line 61
    :cond_2
    const-string p0, "]"

    .line 62
    .line 63
    invoke-static {p1, v0, p0}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 68
    .line 69
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string p0, "Unknown request code "

    .line 74
    .line 75
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 80
    .line 81
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final requestAuthorization(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;)Lcom/microsoft/identity/common/java/util/ResultFuture;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 17
    .line 18
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 19
    .line 20
    const-string v2, "EmbeddedWebViewAuthorizationStrategy:requestAuthorization"

    .line 21
    .line 22
    const-string v3, "Perform the authorization request with embedded webView."

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->getAuthorizationRequestAsHttpRequest()Ljava/net/URI;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getLibraryName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v4, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getLibraryVersion()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v14, v2

    .line 47
    move-object v15, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v14, v3

    .line 50
    move-object v15, v14

    .line 51
    :goto_0
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->getUtid()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :cond_1
    move-object/from16 v16, v3

    .line 60
    .line 61
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getBrkRedirectUri()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getBrkRedirectUri()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_1
    move-object v9, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v5, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getRequestHeaders()Ljava/util/HashMap;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->isWebViewZoomEnabled()Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->isWebViewZoomControlsEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/16 v17, 0x1800

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    sget-object v11, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 123
    .line 124
    invoke-direct/range {v5 .. v17}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v5}, Lcom/microsoft/identity/common/PropertyBagUtil;->getAuthorizationActivityIntent(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->launchIntent(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 135
    .line 136
    return-object v0
.end method
