.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

.field final synthetic val$challengeHandlerCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

.field final synthetic val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->val$challengeHandlerCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreateConnection()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$400(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->clearAllSmartcardConnectionAndDisconnectionCallbacks()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardNfcLoadingDialog()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$600(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 34
    .line 35
    const-string v7, "NfcSmartcardCertBasedAuthChallengeHandler"

    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;->val$challengeHandlerCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 41
    .line 42
    invoke-interface {p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;->onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
