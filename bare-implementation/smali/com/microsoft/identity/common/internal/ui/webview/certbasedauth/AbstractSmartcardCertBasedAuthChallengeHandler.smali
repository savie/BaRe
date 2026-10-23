.class public abstract Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;",
        ">",
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final mActivity:Landroid/app/Activity;

.field protected final mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;",
            "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;",
            "Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mActivity:Landroid/app/Activity;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mIsCertBasedAuthProceeding:Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 16
    .line 17
    invoke-virtual {p4, p5}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setCertBasedAuthChallengeHandler(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->clearAllManagerCallbacks()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract clearAllManagerCallbacks()V
.end method

.method public abstract getSmartcardPinDialogPositiveButtonListener(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;
.end method

.method public final indicateGeneralException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 6
    .line 7
    invoke-static {p1, v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f130519

    .line 16
    .line 17
    .line 18
    const p2, 0x7f130518

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showErrorDialog(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public abstract prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V
.end method

.method public final processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ":processChallenge"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;Ljava/lang/String;Landroid/webkit/ClientCertRequest;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->requestDeviceSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public abstract promptSmartcardRemovalForResult(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V
.end method

.method public abstract setPinDialogForIncorrectAttempt(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)V
.end method

.method public final tryUsingSmartcardWithPin([CLcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ":tryUsingSmartcardWithPin"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-virtual {p4, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->verifyPin([C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mCbaManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->initBeforeProceedingWithRequest(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getKeyForAuth(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;[C)Lj16;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    filled-new-array {p2}, [Ljava/security/cert/X509Certificate;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    aget-object v0, p2, v0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p4, v0}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setPublicKeyAlgoType(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 51
    .line 52
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 53
    .line 54
    .line 55
    const/4 p4, 0x1

    .line 56
    iput-boolean p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mIsCertBasedAuthProceeding:Z

    .line 57
    .line 58
    invoke-virtual {p3, p1, p2}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getPinAttemptsRemaining()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;

    .line 67
    .line 68
    move-object v3, p0

    .line 69
    move-object v7, p2

    .line 70
    move-object v6, p3

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;ILjava/lang/String;Landroid/webkit/ClientCertRequest;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
