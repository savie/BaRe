.class public abstract Lcom/microsoft/identity/client/PublicClientApplication;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalClientException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 11
    .line 12
    const-string v0, "PublicClientApplication:setupTelemetry"

    .line 13
    .line 14
    const-string v1, "Telemetry configuration is null. Telemetry is disabled."

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->withContext(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->build()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/java/authorities/Environment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->addKnownAuthorities(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isPiiEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isLogcatEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {}, Lcom/microsoft/identity/client/Logger;->getInstance()Lcom/microsoft/identity/client/Logger;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/microsoft/identity/client/Logger;->setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/client/Logger;->setEnablePII(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lcom/microsoft/identity/client/Logger;->setEnableLogcatLog(Z)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkIntentFilterAddedToAppManifestForBrokerFlow()V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/microsoft/identity/client/PublicClientApplication;->checkInternetPermission(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize$1(Ljava/io/File;)Z

    .line 96
    .line 97
    .line 98
    const-string p0, "Create new public client application."

    .line 99
    .line 100
    const-string p1, "PublicClientApplication:initializeApplication"

    .line 101
    .line 102
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    const-string p0, "TSL support mandates use of the MsalOAuth2TokenCache"

    .line 107
    .line 108
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    throw p0
.end method

.method public static checkInternetPermission(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android.permission.INTERNET"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p0, "android.permission.Internet or android.permission.ACCESS_NETWORK_STATE is missing"

    .line 43
    .line 44
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/microsoft/identity/client/exception/MsalException;
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/AccountAdapter;->loadConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 14
    .line 15
    const-string v0, "PublicClientApplicationConfigurationFactory:loadDefaultConfiguration"

    .line 16
    .line 17
    const-string v1, "Loading default configuration"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f120007

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/AccountAdapter;->loadConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setAppContext(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mergeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateConfiguration()V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->authorizationInCurrentTask()Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->build()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->intializeLibraryConfiguration(Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "MsalOAuth2TokenCache:create"

    .line 68
    .line 69
    const-string v1, "Creating MsalOAuth2TokenCache"

    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 75
    .line 76
    invoke-direct {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "com.microsoft.identity.client.account_credential_cache"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->getEncryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;

    .line 90
    .line 91
    invoke-direct {v2, p1, v1}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;-><init>(Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 100
    .line 101
    invoke-direct {v1, p0, v2, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;-><init>(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setOAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V

    .line 105
    .line 106
    .line 107
    const-string p0, "configuration"

    .line 108
    .line 109
    invoke-static {v0, p0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "createPublicClientApplication"

    .line 113
    .line 114
    invoke-static {p0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance p0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Lcom/microsoft/identity/client/PublicClientApplication$8;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateAccountModeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v0, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v3, Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;

    .line 140
    .line 141
    new-instance v4, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 142
    .line 143
    invoke-direct {v4, v0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lcom/microsoft/identity/client/PublicClientApplication$9;

    .line 147
    .line 148
    invoke-direct {v5, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication$9;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 149
    .line 150
    .line 151
    const-string p1, "1200"

    .line 152
    .line 153
    invoke-direct {v3, v2, v4, v5, p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    new-instance v3, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 162
    .line 163
    invoke-direct {v3, v1, v2}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p1, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_3

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplication;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    instance-of p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 190
    .line 191
    if-eqz p1, :cond_1

    .line 192
    .line 193
    check-cast p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    sget-object p1, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 201
    .line 202
    if-eq p0, p1, :cond_2

    .line 203
    .line 204
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 205
    .line 206
    const-string p1, "single_account_pca_init_fail_account_mode"

    .line 207
    .line 208
    const-string v0, "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication."

    .line 209
    .line 210
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_2
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 215
    .line 216
    const-string p1, "single_account_pca_init_fail_unknown_reason"

    .line 217
    .line 218
    const-string v0, "A single account public client application could not be created for unknown reasons."

    .line 219
    .line 220
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    throw p0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :catch_1
    move-exception p0

    .line 230
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 231
    .line 232
    const-string v0, "unknown_error"

    .line 233
    .line 234
    const-string v1, "Unexpected error while initializing PCA."

    .line 235
    .line 236
    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    throw p1
.end method

.method public static postAuthResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getScope()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getScope()[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "Returning DeclinedScopeException as not all requested scopes are granted, Requested scopes: "

    .line 125
    .line 126
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, " Granted scopes:"

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 157
    .line 158
    const-string v3, "com.microsoft.identity.client.AuthenticationResultAdapter:declinedScopeExceptionFromResult"

    .line 159
    .line 160
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    instance-of v2, p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    check-cast p0, Lcom/microsoft/identity/client/Account;

    .line 186
    .line 187
    new-instance v2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->withCallback$1(Lcom/microsoft/identity/client/AuthenticationCallback;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v2, p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 228
    .line 229
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/Account;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 234
    .line 235
    new-instance p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 236
    .line 237
    invoke-direct {p1, p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;-><init>(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/client/TokenParameters;->setScopes(Ljava/util/List;)V

    .line 241
    .line 242
    .line 243
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;

    .line 244
    .line 245
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p2, p0}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_5
    new-instance p1, Lcom/microsoft/identity/client/AuthenticationResult;

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getCorrelationId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-direct {p1, p0, v0}, Lcom/microsoft/identity/client/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onSuccess(Lcom/microsoft/identity/client/AuthenticationResult;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_6
    const-string p0, "callback cannot be null or empty"

    .line 270
    .line 271
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public static selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/client/TokenParameters;->setAuthority(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v4, v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 50
    .line 51
    if-nez v4, :cond_e

    .line 52
    .line 53
    instance-of v4, v3, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_2
    instance-of p0, v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 60
    .line 61
    if-eqz p0, :cond_d

    .line 62
    .line 63
    move-object p0, v3

    .line 64
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 75
    .line 76
    invoke-direct {v5}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getEnvironment()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-eqz v4, :cond_c

    .line 94
    .line 95
    :try_start_0
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    invoke-static {v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setRealm(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_4

    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_4

    .line 141
    .line 142
    const-string v3, "tid"

    .line 143
    .line 144
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    const/4 p0, 0x0

    .line 154
    :goto_1
    if-eqz p0, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-virtual {v2}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Lcom/microsoft/identity/client/Account;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    if-eqz p0, :cond_7

    .line 173
    .line 174
    move-object p0, v2

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    move-object p0, v1

    .line 177
    :goto_3
    if-nez p0, :cond_a

    .line 178
    .line 179
    instance-of p1, p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 180
    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_8
    invoke-virtual {v2}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lcom/microsoft/identity/client/TenantProfile;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-eqz v2, :cond_9

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_a
    move-object v0, p0

    .line 222
    :goto_4
    if-eqz v0, :cond_b

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/microsoft/identity/client/Account;->getId()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {v5, p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setLocalAccountId(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/microsoft/identity/client/Account;->getUsername()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v5, p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setUsername(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-object v5

    .line 239
    :cond_b
    const-string p0, "No account record found for IAccount with request tenantId: "

    .line 240
    .line 241
    invoke-static {p0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 246
    .line 247
    const-string p1, "PublicClientApplication:selectAccountRecordForTokenRequest"

    .line 248
    .line 249
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string p0, "no_account_found"

    .line 253
    .line 254
    const-string p1, "No account record found for IAccount"

    .line 255
    .line 256
    invoke-static {p0, p1, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    return-object v1

    .line 260
    :cond_c
    const-string p0, "inputString is marked non-null but is null"

    .line 261
    .line 262
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    const-string p1, "Unsupported Authority type: "

    .line 275
    .line 276
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object v1

    .line 284
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getTenantId()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-nez v3, :cond_f

    .line 305
    .line 306
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :cond_f
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 312
    .line 313
    const-string p0, "AccountAdapter:getAccountInternal"

    .line 314
    .line 315
    const-string p1, "homeAccountIdentifier was null or empty -- invalid criteria"

    .line 316
    .line 317
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v1
.end method

.method private static validateAccountModeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 24
    .line 25
    const-string v0, "PublicClientApplication:validateAccountModeConfiguration"

    .line 26
    .line 27
    const-string v1, "Warning! B2C applications should use MultipleAccountPublicClientApplication. Use of SingleAccount mode with multiple IEF policies is unsupported."

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v0, 0x1

    .line 41
    if-gt p0, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 45
    .line 46
    const-string v0, "SingleAccountPublicClientApplication cannot be used with multiple B2C policies."

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, v0, v1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$15;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$15;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object p1, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/AuthenticationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/microsoft/identity/client/exception/MsalException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$17;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/PublicClientApplication$17;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->setCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$16;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$16;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object p1, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/microsoft/identity/client/AuthenticationResult;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 60
    .line 61
    const-string v0, "unknown_error"

    .line 62
    .line 63
    const-string v1, "Unexpected error while acquiring token."

    .line 64
    .line 65
    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    const-string p0, "Do not provide callback for synchronous methods"

    .line 70
    .line 71
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$19;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/identity/client/PublicClientApplication$19;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 2
    .line 3
    return-object p0
.end method
