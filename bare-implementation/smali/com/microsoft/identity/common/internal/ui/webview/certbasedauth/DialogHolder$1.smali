.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;


# instance fields
.field final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreateConnection()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
