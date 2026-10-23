.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;->webView:Landroid/webkit/WebView;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;->headers:Ljava/util/HashMap;

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

.method public final processChallenge(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 5
    .line 6
    const-string v0, "ReAttachPrtHeaderHandler"

    .line 7
    .line 8
    const-string v1, "Processing challenge to attach prt header."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "login_hint"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "CommonRefreshTokenCredentialProvider:getRefreshTokenCredential"

    .line 35
    .line 36
    const-string v1, "mRefreshTokenCredentialHolder is not initialized!"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;->webView:Landroid/webkit/WebView;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;->headers:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
