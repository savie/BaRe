.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;


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
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->val$challengeHandlerCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$600(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$600(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->stopDiscovery(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->val$challengeHandlerCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 23
    .line 24
    invoke-static {v1, v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$300(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
