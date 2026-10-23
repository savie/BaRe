.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final alias(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    const-string v1, "OnDeviceCertBasedAuthChallengeHandler:processChallenge"

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    const-string p1, "No certificate chosen by user, cancelling the TLS request."

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;)Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    array-length v3, v2

    .line 40
    if-lez v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aget-object v4, v2, v4

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setPublicKeyAlgoType(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;)Landroid/app/Activity;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v3, "Certificate is chosen by user, proceed with TLS request."

    .line 72
    .line 73
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 74
    .line 75
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mIsCertBasedAuthProceeding:Z

    .line 80
    .line 81
    invoke-virtual {v0, p1, v2}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_1
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 86
    .line 87
    const-string v2, "InterruptedException exception"

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 99
    .line 100
    const-string v2, "KeyChain exception"

    .line 101
    .line 102
    invoke-static {p1, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 111
    .line 112
    const-string p1, "ClientCertRequest unexpectedly cancelled."

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 118
    .line 119
    .line 120
    return-void
.end method
