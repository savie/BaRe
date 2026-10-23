.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lfz5;->v(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onChallengeResponseReceived:"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    const-string v1, "WebViewAuthorizationFragment:onChallengeResponseReceived"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$400(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$400(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->finalizeBeforeSendingResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final setPKeyAuthStatus()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$602(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 4
    .line 5
    .line 6
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 7
    .line 8
    const-string p0, "WebViewAuthorizationFragment:setPKeyAuthStatus"

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, "setPKeyAuthStatus:true"

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
