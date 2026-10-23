.class public final Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final INVALID_TIMESTAMP:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lt14;->s:Lt14;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v2, v0, Lt14;->b:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lt14;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v1}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lt14;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v1}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lt14;->k:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-static {v0}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->INVALID_TIMESTAMP:Ljava/lang/Long;

    .line 44
    .line 45
    return-void
.end method

.method public static brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "broker_result_v2_compressed"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "invalid_broker_bundle"

    .line 9
    .line 10
    const-string v3, "MsalBrokerResultAdapter:brokerResultFromBundle"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->decompressBytesToString([B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    const-string v0, "Failed to decompress broker result :"

    .line 23
    .line 24
    invoke-static {v3, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "Failed to decompress broker result"

    .line 28
    .line 29
    invoke-static {v2, v0, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    const-string v0, "broker_result_v2"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lt14;

    .line 46
    .line 47
    invoke-direct {v0}, Lt14;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;-><init>()V

    .line 53
    .line 54
    .line 55
    const-class v2, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/google/gson/a;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 63
    .line 64
    .line 65
    const-class v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 66
    .line 67
    invoke-virtual {v1, p0, v0}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_1
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 75
    .line 76
    const-string p0, "Broker Result not returned from Broker"

    .line 77
    .line 78
    invoke-static {v3, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-object v1
.end method

.method public static getAccountsFromResultBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    const-string v0, "broker_accounts_compressed"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->decompressBytesToString([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    const-string v0, "MsalBrokerResultAdapter:getAccountsFromResultBundle"

    .line 18
    .line 19
    const-string v1, " Failed to decompress account list to bytes"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "invalid_broker_bundle"

    .line 25
    .line 26
    const-string v0, " Failed to decompress account list to bytes."

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    const-string v0, "broker_accounts"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getICacheRecordListFromJsonString(Ljava/lang/String;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method public static getAcquireTokenResultFromResultBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    const-string v0, "broker_request_v2_success"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    new-instance v0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 19
    .line 20
    const-string v2, "MsalBrokerResultAdapter:authenticationResultFromBundle"

    .line 21
    .line 22
    const-string v3, "Broker Result returned from Bundle, constructing authentication result"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantProfileData()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    new-instance v2, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 41
    .line 42
    sget-object v5, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->isServicedFromCache()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-direct {v2, v4, v3, v5, v1}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/ArrayList;Lcom/microsoft/identity/common/java/request/SdkType;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBrokerPerformanceMetricsFromBundle(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "broker.version"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :cond_0
    const-string v1, "broker.package.name"

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    :cond_1
    return-object v0

    .line 80
    :cond_2
    const-string p0, "getTenantProfileData is null"

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-static {v2, p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "invalid_broker_bundle"

    .line 87
    .line 88
    const-string v1, "getTenantProfileData is null."

    .line 89
    .line 90
    invoke-static {p0, v1, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_3
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0
.end method

.method public static getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 7

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "MsalBrokerResultAdapter:getBaseExceptionFromBundle"

    .line 4
    .line 5
    const-string v1, "Constructing exception from result bundle"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getExceptionType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBrokerPerformanceMetricsFromBundle(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "brokerTokenRequest"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    if-nez v3, :cond_6

    .line 29
    .line 30
    const-string v0, "Received a "

    .line 31
    .line 32
    const-string v3, " from Broker : "

    .line 33
    .line 34
    invoke-static {v0, v2, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "MsalBrokerResultAdapter:getBaseExceptionFromExceptionType"

    .line 50
    .line 51
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "com.microsoft.identity.common.exception.UiRequiredException"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getUiRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_0
    const-string v0, "com.microsoft.identity.common.exception.ServiceException"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    const-string v0, "com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException"

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "com.microsoft.identity.common.exception.UserCancelException"

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    new-instance v0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 104
    .line 105
    invoke-direct {v0, v5, v5, v5}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "com.microsoft.identity.common.exception.ClientException"

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-direct {v0, v2, v3, v5}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const-string v0, "com.microsoft.identity.common.exception.ArgumentException"

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v4, " Exception type is unknown : "

    .line 156
    .line 157
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, ", defaulting to Client Exception "

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-direct {v0, v2, v3, v5}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemErrorCode()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemSubErrorCode()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCorrelationId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCorrelationId(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSpeRing()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshTokenAge()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_4

    .line 238
    .line 239
    :cond_6
    const-string v2, "Exception type is not returned from the broker, using error codes to transform to the right exception"

    .line 240
    .line 241
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v2, "interaction_required"

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    const-string v3, "MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes"

    .line 255
    .line 256
    if-nez v2, :cond_d

    .line 257
    .line 258
    const-string v2, "invalid_grant"

    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_d

    .line 265
    .line 266
    const-string v2, "Broker refresh token is invalid"

    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_d

    .line 273
    .line 274
    const-string v2, "no_account_found"

    .line 275
    .line 276
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_d

    .line 281
    .line 282
    const-string v2, "no_tokens_found"

    .line 283
    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_7

    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :cond_7
    const-string v2, "unauthorized_client"

    .line 293
    .line 294
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_8

    .line 299
    .line 300
    const-string v2, "protection_policy_required"

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_8

    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v4, "Received a IntuneAppProtectionPolicyRequiredException exception from Broker : "

    .line 315
    .line 316
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    goto/16 :goto_3

    .line 334
    .line 335
    :cond_8
    const-string v2, "User cancelled"

    .line 336
    .line 337
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_9

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v4, "Received a User cancelled exception from Broker : "

    .line 346
    .line 347
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 361
    .line 362
    invoke-direct {v0, v5, v5, v5}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :cond_9
    const-string v2, "illegal_argument_exception"

    .line 368
    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_a

    .line 374
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v5, "Received a Argument exception from Broker : "

    .line 378
    .line 379
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-direct {v2, v4, v0, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    move-object v0, v2

    .line 402
    goto :goto_3

    .line 403
    :cond_a
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_c

    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-nez v2, :cond_b

    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v4, "Received a Client exception from Broker : "

    .line 427
    .line 428
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 442
    .line 443
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-direct {v0, v2, v3, v5}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_c
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v4, "Received a Service exception from Broker : "

    .line 458
    .line 459
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    goto :goto_3

    .line 477
    :cond_d
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v4, "Received a UIRequired exception from Broker : "

    .line 480
    .line 481
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getUiRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :goto_3
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemErrorCode()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemSubErrorCode()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCorrelationId()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCorrelationId(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSpeRing()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshTokenAge()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :goto_4
    const-string v1, "broker.version"

    .line 541
    .line 542
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_e

    .line 547
    .line 548
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    :cond_e
    const-string v1, "broker.package.name"

    .line 552
    .line 553
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_f

    .line 558
    .line 559
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    :cond_f
    return-object v0

    .line 563
    :catch_0
    move-exception p0

    .line 564
    return-object p0
.end method

.method public static getBrokerPerformanceMetricsFromBundle(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->INVALID_TIMESTAMP:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "broker_request_received_timestamp"

    .line 8
    .line 9
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v6

    .line 13
    const-string v1, "broker_response_generation_timestamp"

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    const-string v1, "broker_silent_executor_pool_size"

    .line 24
    .line 25
    sget v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    cmp-long p0, v6, v1

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    cmp-long p0, v8, v0

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    new-instance v4, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;

    .line 48
    .line 49
    invoke-direct/range {v4 .. v9}, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;-><init>(IJJ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 54
    .line 55
    const-string p0, "MsalBrokerResultAdapter"

    .line 56
    .line 57
    const-string v0, "Broker performance metrics not found in the result bundle."

    .line 58
    .line 59
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static getExceptionForEmptyResultBundle()Lcom/microsoft/identity/common/java/exception/ClientException;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 2
    .line 3
    const-string v1, "Broker Result not returned from Broker."

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "invalid_broker_bundle"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;->setTenantId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getAuthority()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;->setAuthorityUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getLocalAccountId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;->setAccountUserId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getUserName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;->setAccountUpn(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/util/HashMapExtensions;->jsonStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponseBody(Ljava/util/HashMap;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponseHeaders(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_0
    return-object v0

    .line 79
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 80
    .line 81
    const-string p0, "MsalBrokerResultAdapter:getIntuneProtectionRequiredException"

    .line 82
    .line 83
    const-string v1, "Unable to parse json"

    .line 84
    .line 85
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method private static getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/ServiceException;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/util/HashMapExtensions;->jsonStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponseBody(Ljava/util/HashMap;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_1
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponseHeaders(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 53
    .line 54
    const-string p0, "MsalBrokerResultAdapter:getServiceException"

    .line 55
    .line 56
    const-string v1, "Unable to parse json"

    .line 57
    .line 58
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method private static getUiRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/java/exception/UiRequiredException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, v3, v0, v2}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "interaction_required"

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, "invalid_grant"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getUserName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getUserName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setUsername(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-object v1
.end method

.method public static verifyHelloFromResultBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    const-string v0, "MsalBrokerResultAdapter:verifyHelloFromResultBundle"

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    const-string v1, "common.broker.protocol.version.name"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "Able to establish the connect, the broker protocol version in common is ["

    .line 18
    .line 19
    const-string p1, "]"

    .line 20
    .line 21
    invoke-static {p0, v1, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 26
    .line 27
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    const-string v1, "error"

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const-string v1, "broker_result_v2"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    instance-of v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 54
    .line 55
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {p1, v0, p0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 71
    .line 72
    const-string p0, "The result bundle is not in a recognizable format."

    .line 73
    .line 74
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p0, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "error_description"

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v1, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 94
    .line 95
    invoke-direct {v1, p1, v0, p0}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_3
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 100
    .line 101
    const-string p0, "The hello result bundle is null."

    .line 102
    .line 103
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p0, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method

.method public static verifyRemoveAccountResultFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "broker_result_v2"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    new-instance v1, Lt14;

    .line 17
    .line 18
    invoke-direct {v1}, Lt14;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;-><init>()V

    .line 24
    .line 25
    .line 26
    const-class v3, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/google/gson/a;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->isSuccess()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 54
    .line 55
    const-string v0, "MsalBrokerResultAdapter:verifyRemoveAccountResultFromBundle"

    .line 56
    .line 57
    const-string v1, "Failed to remove account."

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :cond_2
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0
.end method
