.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;


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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final trackNewUrlStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->trackUrlStatus(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateLatestUrlStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->updateLatestUrlStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
