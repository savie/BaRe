.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler<",
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;",
        ">;"
    }
.end annotation


# virtual methods
.method public final clearAllManagerCallbacks()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 7
    .line 8
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
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;

    .line 10
    .line 11
    invoke-direct {v1, p0, p2, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;Landroid/webkit/ClientCertRequest;Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;->onClosedConnection()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;->clearAllManagerCallbacks()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$1;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardRemovalPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;

    .line 35
    .line 36
    invoke-direct {v2, p0, v1, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->disconnect(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final promptSmartcardRemovalForResult(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$4;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;->prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;->onResultReady()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setPinDialogForIncorrectAttempt(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;->getSmartcardPinDialogPositiveButtonListener(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;Landroid/webkit/ClientCertRequest;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showPinDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->setPinDialogErrorMode()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
