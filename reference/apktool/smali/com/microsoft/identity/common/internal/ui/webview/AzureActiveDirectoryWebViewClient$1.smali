.class final Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
