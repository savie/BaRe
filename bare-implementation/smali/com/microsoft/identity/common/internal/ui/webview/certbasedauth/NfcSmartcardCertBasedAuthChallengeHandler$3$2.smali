.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;

.field final synthetic val$pin:[C


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;[C)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;->val$pin:[C

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCreateConnection()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardNfcLoadingDialog()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 11
    .line 12
    check-cast v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 13
    .line 14
    iget-boolean v3, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->isDeviceChanged:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;->val$pin:[C

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;->val$request:Landroid/webkit/ClientCertRequest;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;->prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$2;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->requestDeviceSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
