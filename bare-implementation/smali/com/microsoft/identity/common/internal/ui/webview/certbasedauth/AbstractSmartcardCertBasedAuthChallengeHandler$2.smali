.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;Landroid/webkit/ClientCertRequest;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->val$request:Landroid/webkit/ClientCertRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 9
    .line 10
    const-string v1, "User canceled smartcard CBA flow."

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->val$request:Landroid/webkit/ClientCertRequest;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
