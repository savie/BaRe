.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

.field final synthetic val$hasCallbackBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$nextInteractionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->val$hasCallbackBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->val$nextInteractionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClosedConnection()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->val$hasCallbackBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 19
    .line 20
    check-cast v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mActivity:Landroid/app/Activity;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->stopDiscovery(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$2;->val$nextInteractionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;->onClosedConnection()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
