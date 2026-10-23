.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/util/HashMap;Lr86;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;->webView:Landroid/webkit/WebView;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;->headers:Ljava/util/HashMap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final processChallenge(Ljava/net/URL;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "sso_nonce"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;->headers:Ljava/util/HashMap;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v2, "x-ms-RefreshTokenCredential"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    const-string v2, "NonceRedirectHandler:getHeadersWithNewRefreshTokenCredential"

    .line 48
    .line 49
    const-string v3, "PRT credential header found in headers!"

    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "login_hint"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v0, "CommonRefreshTokenCredentialProvider:getRefreshTokenCredentialUsingNewNonce"

    .line 69
    .line 70
    const-string v2, "mRefreshTokenCredentialHolder is not initialized!"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;->webView:Landroid/webkit/WebView;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
