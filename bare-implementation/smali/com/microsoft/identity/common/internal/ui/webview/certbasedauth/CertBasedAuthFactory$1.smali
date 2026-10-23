.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

.field final synthetic val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

.field final synthetic val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 9
    .line 10
    return-void
.end method
