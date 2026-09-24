.class public abstract Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Landroid/webkit/ClientCertRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mIsCertBasedAuthProceeding:Z

.field protected mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;


# virtual methods
.method public abstract cleanUp()V
.end method

.method public final emitTelemetryForCertBasedAuthResults(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mIsCertBasedAuthProceeding:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultSuccess()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getException()Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->mTelemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0

    .line 43
    :pswitch_0
    const-string p1, "TIMED_OUT"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_1
    const-string p1, "INSUFFICIENT_DEVICE_REGISTRATION"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_2
    const-string p1, "MDM_FLOW"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    const-string p1, "SDK_CANCELLED"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_4
    const-string p1, "DEVICE_REGISTRATION_REQUIRED"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_5
    const-string p1, "BROKER_INSTALLATION_TRIGGERED"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_6
    const-string p1, "COMPLETED"

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_7
    const-string p1, "NON_OAUTH_ERROR"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_8
    const-string p1, "CANCELLED"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_9
    const-string p1, "UNKNOWN"

    .line 71
    .line 72
    :goto_1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
