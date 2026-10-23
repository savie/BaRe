.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$certDetails:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

.field final synthetic val$methodTag:Ljava/lang/String;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;ILjava/lang/String;Landroid/webkit/ClientCertRequest;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$attemptsRemaining:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$methodTag:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$request:Landroid/webkit/ClientCertRequest;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$certDetails:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClosedConnection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$request:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    iget v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$attemptsRemaining:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$methodTag:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "User has reached the maximum failed attempts allowed."

    .line 17
    .line 18
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 27
    .line 28
    const v1, 0x7f13051b

    .line 29
    .line 30
    .line 31
    const v2, 0x7f13051a

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showErrorDialog(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;->val$certDetails:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 42
    .line 43
    invoke-virtual {v2, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->setPinDialogForIncorrectAttempt(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
