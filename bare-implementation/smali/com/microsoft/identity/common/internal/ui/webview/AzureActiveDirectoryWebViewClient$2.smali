.class final Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

.field final synthetic val$appLink:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->val$appLink:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->val$view:Landroid/webkit/WebView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "browser://"

    .line 2
    .line 3
    const-string v1, "https://"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->val$appLink:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.intent.action.VIEW"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;->val$view:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
