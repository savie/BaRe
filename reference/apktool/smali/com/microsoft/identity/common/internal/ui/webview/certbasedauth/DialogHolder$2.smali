.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# instance fields
.field final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClosedConnection()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->isDialogShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->onUnexpectedUnplug()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->isSmartcardRemovalPromptDialogShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const v1, 0x7f130516

    .line 23
    .line 24
    .line 25
    const v2, 0x7f130515

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showErrorDialog(II)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 34
    .line 35
    const-string v0, "Smartcard was disconnected while dialog was still displayed."

    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;->this$0:Ljava/lang/Object;

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
