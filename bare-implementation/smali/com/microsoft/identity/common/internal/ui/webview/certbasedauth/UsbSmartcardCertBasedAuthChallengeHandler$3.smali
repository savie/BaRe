.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

.field final synthetic val$certDetails:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

.field final synthetic val$methodTag:Ljava/lang/String;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;->val$certDetails:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;->val$request:Landroid/webkit/ClientCertRequest;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;->val$methodTag:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick([C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 6
    .line 7
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$3;[C)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->requestDeviceSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
