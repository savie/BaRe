.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# instance fields
.field final synthetic this$2:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$1;->this$2:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClosedConnection()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2$1;->this$2:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;->val$methodTag:Ljava/lang/String;

    .line 6
    .line 7
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string v1, "Device connected via NFC is different from initially connected device."

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showErrorDialog()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
