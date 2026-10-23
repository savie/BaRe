.class final Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

.field final synthetic val$clientCertRequest:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Landroid/webkit/ClientCertRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;->val$clientCertRequest:Landroid/webkit/ClientCertRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->access$102(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;->val$clientCertRequest:Landroid/webkit/ClientCertRequest;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;->processChallenge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method
