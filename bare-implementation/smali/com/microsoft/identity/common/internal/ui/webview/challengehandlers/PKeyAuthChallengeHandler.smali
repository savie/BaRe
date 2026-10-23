.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->mWebView:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->mWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final processChallenge(Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->mWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->setPKeyAuthStatus()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeader()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;

    .line 16
    .line 17
    invoke-direct {v3, p0, p1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;Ljava/util/HashMap;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 30
    .line 31
    .line 32
    instance-of p1, p0, Ljava/lang/InterruptedException;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    :cond_0
    instance-of p1, p0, Ljava/lang/Error;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_1
    check-cast p0, Ljava/lang/Error;

    .line 49
    .line 50
    throw p0
.end method
