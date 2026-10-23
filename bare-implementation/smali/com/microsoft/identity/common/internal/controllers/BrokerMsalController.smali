.class public final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;
.super Lcom/microsoft/identity/common/java/controllers/BaseController;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mActiveBrokerPackageName:Ljava/lang/String;

.field private final mApplicationContext:Landroid/content/Context;

.field private mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ResultFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field private final mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

.field private final mMaxMsalBrokerProtocolVersion:Ljava/lang/String;

.field private mOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

.field protected final mRequestAdapter:Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

.field protected final mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mRequestAdapter:Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 10
    .line 11
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/HelloCache;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/HelloCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    .line 30
    .line 31
    const-string p1, "20.0"

    .line 32
    .line 33
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mMaxMsalBrokerProtocolVersion:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Lcom/microsoft/identity/common/java/util/ResultFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method public static access$100(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "11.0"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 24
    .line 25
    const-string v0, "The min broker protocol version for PopAuthenticationSchemeWithClientKey should be equal or more than 11.0. Current required version is set to: "

    .line 26
    .line 27
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "auth_scheme_not_supported"

    .line 32
    .line 33
    invoke-direct {p1, v0, p0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hasNestedAppParameters()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    const-string v0, "15.0"

    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 73
    .line 74
    const-string v0, "The min broker protocol version for Nested app auth should be equal or more than 15.0. Current required version is set to: "

    .line 75
    .line 76
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "nested_app_auth_not_supported"

    .line 81
    .line 82
    invoke-direct {p1, v0, p0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const-string v0, "nested_app_invalid_parameters"

    .line 95
    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    sget-object p1, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL_CPP:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 113
    .line 114
    if-ne p0, p1, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const-string p0, "Nested app auth is only supported for request originating from OneAuth"

    .line 118
    .line 119
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    const-string p0, "RedirectURI of the nested app is null or empty"

    .line 124
    .line 125
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    const-string p0, "ClientId of the nested app is null or empty"

    .line 130
    .line 131
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_2
    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->verifyBrokerVersionIsSupported(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->getIpcStrategies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget v5, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->a:I

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 32
    .line 33
    const-string v6, "BROKER_METADATA_CACHE_STORE_ON_CLIENT_SDK_SIDE"

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->getEncryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {}, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->access$getSClientSdkSideLock$cp()Lmj5;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v4, v6}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;-><init>(Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;Lmj5;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3, v5}, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;-><init>(Ljava/util/List;Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object v0

    .line 64
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v0
.end method

.method private static saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "broker_request_v2_success"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p0, "9188040d-6c67-4c5b-b112-36a304b66dad"

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p0, "BrokerMsalController:saveMsaAccountToCache"

    .line 30
    .line 31
    const-string v1, "Result returned for MSA Account, saving to cache"

    .line 32
    .line 33
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientInfo()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    :try_start_0
    new-instance v4, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientInfo()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v4, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 56
    .line 57
    new-instance v2, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getIdToken()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "MicrosoftStsAccount"

    .line 70
    .line 71
    const-string v3, "Init: MicrosoftStsAccount"

    .line 72
    .line 73
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->setEnvironment(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshToken()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getScope()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getFamilyId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-direct/range {v2 .. v8}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object p1, v0

    .line 114
    const-string v0, "Exception while creating Idtoken or ClientInfo, cannot save MSA account tokens"

    .line 115
    .line 116
    invoke-static {p1, p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 120
    .line 121
    const-string v0, "invalid_jwt"

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_0
    const-string p1, "ClientInfo is empty."

    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    const-string p0, "unknown_error"

    .line 138
    .line 139
    invoke-static {p0, p1, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    return-void
.end method

.method private verifyBrokerVersionIsSupported(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;
        }
    .end annotation

    .line 1
    const-string v0, "BrokerMsalController:verifyBrokerVersionIsSupported"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 6
    .line 7
    const-string p0, "result bundle is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->isSuccess()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const-string v1, "unsupported_broker_version"

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    .line 42
    .line 43
    const-string v1, "20.0"

    .line 44
    .line 45
    invoke-virtual {p1, p2, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveHandshakeError(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_2
    :goto_0
    return-void

    .line 57
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 58
    .line 59
    const-string p0, "ResultBundle does not contain BrokerResult. So, this is not likely a broker version supported issue. Continuing."

    .line 60
    .line 61
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final acquireToken(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    const-string v0, "201"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->acquireTokenInternal(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;Landroid/content/Intent;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "common.broker.protocol.version.name"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const-string v3, "14.0"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, v1, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->verifyBrokerVersionIsSupported(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getAcquireTokenResultFromResultBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 71
    .line 72
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :goto_1
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final acquireTokenInternal(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "201"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 23
    .line 24
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->getActivity()Landroid/app/Activity;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v1, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "broker_intent"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 51
    .line 52
    new-instance v3, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;

    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "return_broker_interactive_acquire_token_result"

    .line 58
    .line 59
    invoke-virtual {v1, v4, v3}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V

    .line 60
    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    const/high16 p1, 0x10000000

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroid/os/Bundle;

    .line 83
    .line 84
    const-string p1, "common.broker.protocol.version.name"

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method

.method public final acquireTokenSilent(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$5;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$5;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 15
    .line 16
    return-object p0
.end method

.method public final canEqual(Lcom/microsoft/identity/common/java/controllers/BaseController;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final getCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string v0, "BrokerMsalController:getCurrentAccount"

    .line 10
    .line 11
    const-string v1, "Not a shared device, invoke getAccounts() instead of getCurrentAccount()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$10;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$10;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/List;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getDeviceMode(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hello(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mMaxMsalBrokerProtocolVersion:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p2, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->getHelloCacheResult(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const-string v5, "BrokerMsalController:tryGetNegotiatedProtocolVersionFromHelloCache"

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 17
    .line 18
    const-string v2, "No valid entry found in cache"

    .line 19
    .line 20
    invoke-static {v5, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->isHandShakeError()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_4

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->getNegotiatedProtocolVersion()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    move-object v4, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 43
    .line 44
    const-string v2, "Unexpected: cachedProtocolVersion is empty. Continue with hello IPC protocol."

    .line 45
    .line 46
    invoke-static {v5, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_2
    const-string v2, ", ClientMaxProtocolVersion="

    .line 57
    .line 58
    const-string v4, ", ActiveBroker="

    .line 59
    .line 60
    const-string v5, "Calling broker for to establish negotiated protocol version for: MinRequestVersion="

    .line 61
    .line 62
    invoke-static {v5, p2, v2, v1, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 74
    .line 75
    const-string v4, "BrokerMsalController:hello"

    .line 76
    .line 77
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "broker.protocol.version.name"

    .line 86
    .line 87
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    const-string v4, "required.broker.protocol.version.name"

    .line 97
    .line 98
    invoke-virtual {v2, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 102
    .line 103
    sget-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 104
    .line 105
    invoke-direct {v4, v5, v3, v2}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 109
    .line 110
    invoke-interface {p1, v4}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v3}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->verifyHelloFromResultBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v0, p2, v1, p0}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveNegotiatedProtocolVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {v0, p2, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveHandshakeError(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_4
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 131
    .line 132
    const-string p0, "Handshake error from cache."

    .line 133
    .line 134
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 138
    .line 139
    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public final onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final removeCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string v0, ":removeCurrentAccount"

    .line 10
    .line 11
    const-string v1, "Not a shared device, invoke removeAccount() instead of removeCurrentAccount()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerOperationExecutor()Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$11;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$11;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method
