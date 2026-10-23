.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler<",
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 6

    .line 1
    const-string v5, "UsbSmartcardCertBasedAuthChallengeHandler"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 17
    .line 18
    new-instance p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final clearAllManagerCallbacks()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 8
    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 12
    .line 13
    return-void
.end method

.method public final getSmartcardPinDialogPositiveButtonListener(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ":getSmartcardPinDialogPositiveButtonListener"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;->onClosedConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final promptSmartcardRemovalForResult(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDeviceInitiallyPluggedIn:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$4;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 21
    .line 22
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardRemovalPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;->onResultReady()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setPinDialogForIncorrectAttempt(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->setPinDialogErrorMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
