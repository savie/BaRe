.class public final Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
.super Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "api_end_event"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Microsoft.MSAL.api_event"

    .line 10
    .line 11
    const-string v1, "Microsoft.MSAL.event_type"

    .line 12
    .line 13
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final isApiCallSuccessful()V
    .locals 2

    .line 1
    const-string v0, "_is_successful"

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final put$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final putApiId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "Microsoft.MSAL.api_id"

    .line 4
    .line 5
    invoke-super {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "apiId is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final putException(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "Microsoft.MSAL.user_cancel"

    .line 13
    .line 14
    const-string v1, "true"

    .line 15
    .line 16
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const-string v0, "Microsoft.MSAL.server_error_code"

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getCliTelemErrorCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "Microsoft.MSAL.server_sub_error_code"

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getCliTelemSubErrorCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "Microsoft.MSAL.error_code"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "Microsoft.MSAL.spe_ring"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getSpeRing()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "Microsoft.MSAL.error_description"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "Microsoft.MSAL.rt_age"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getRefreshTokenAge()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-super {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "_is_successful"

    .line 74
    .line 75
    const-string v0, "false"

    .line 76
    .line 77
    invoke-super {p0, p1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final putResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "true"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "false"

    .line 18
    .line 19
    :goto_0
    const-string v1, "_is_successful"

    .line 20
    .line 21
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getUniqueId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "Microsoft.MSAL.user_id"

    .line 39
    .line 40
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Microsoft.MSAL.tenant_id"

    .line 52
    .line 53
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getSpeRing()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "Microsoft.MSAL.spe_ring"

    .line 65
    .line 66
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getRefreshTokenAge()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "Microsoft.MSAL.rt_age"

    .line 78
    .line 79
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getCorrelationId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    const-string v0, "Microsoft.MSAL.correlation_id"

    .line 97
    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    return-void
.end method
