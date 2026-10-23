.class public final Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;
.super Lcom/microsoft/identity/client/PublicClientApplication;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalClientException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 9
    .line 10
    new-instance v1, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.microsoft.identity.client.single_account_credential_cache"

    .line 16
    .line 17
    invoke-direct {v0, p1, v2, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;)Lcom/microsoft/identity/client/MultiTenantAccount;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getPersistedCurrentAccount()Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static access$200(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V
    .locals 5

    .line 1
    const-string v0, "persisting cache records with size "

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "SingleAccountPublicClientApplication"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 34
    .line 35
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-class v0, Ljava/util/List;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 42
    .line 43
    const-class v3, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aput-object v3, v2, v4

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v2, Lcom/google/gson/a;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/google/gson/a;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1, v0}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 66
    .line 67
    const-string v0, "com.microsoft.identity.client.single_account_credential_cache.current_account"

    .line 68
    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->clear()V

    .line 79
    .line 80
    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public static access$300(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;Ljava/util/List;Lcom/microsoft/identity/client/MultiTenantAccount;Z)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object p2, p0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getAccountFromICacheRecordList(Ljava/util/List;)Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    if-nez p4, :cond_1

    .line 11
    .line 12
    invoke-static {p3, p2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->isHomeAccountIdMatching(Lcom/microsoft/identity/client/MultiTenantAccount;Lcom/microsoft/identity/client/Account;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_2

    .line 17
    .line 18
    :cond_1
    move-object p3, p1

    .line 19
    check-cast p3, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;

    .line 20
    .line 21
    new-instance p4, Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 22
    .line 23
    invoke-direct {p4, p2}, Lcom/microsoft/identity/client/CurrentAccountResult;-><init>(Lcom/microsoft/identity/client/MultiTenantAccount;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p3, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 27
    .line 28
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 29
    .line 30
    invoke-direct {v0, p4, p0}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    check-cast p1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;

    .line 37
    .line 38
    new-instance p3, Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 39
    .line 40
    invoke-direct {p3, p2}, Lcom/microsoft/identity/client/CurrentAccountResult;-><init>(Lcom/microsoft/identity/client/MultiTenantAccount;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 44
    .line 45
    new-instance p2, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 46
    .line 47
    invoke-direct {p2, p3, p0}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static getAccountFromICacheRecordList(Ljava/util/List;)Lcom/microsoft/identity/client/MultiTenantAccount;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 20
    .line 21
    const-string v0, "SingleAccountPublicClientApplication:getAccountFromICacheRecords"

    .line 22
    .line 23
    const-string v1, "Returned cacheRecords were adapted into multiple IAccount. This is unexpected in Single account mode.Returning the first adapted account."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method private getPersistedCurrentAccount()Lcom/microsoft/identity/client/MultiTenantAccount;
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->sharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 5
    .line 6
    const-string v1, "com.microsoft.identity.client.single_account_credential_cache.current_account"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getICacheRecordListFromJsonString(Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getAccountFromICacheRecordList(Ljava/util/List;)Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private static isHomeAccountIdMatching(Lcom/microsoft/identity/client/MultiTenantAccount;Lcom/microsoft/identity/client/Account;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object p0, v0

    .line 6
    :goto_0
    instance-of v1, p1, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 12
    .line 13
    :cond_1
    const-string p1, ""

    .line 14
    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    move-object p0, p1

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_1
    if-nez v0, :cond_3

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method


# virtual methods
.method public final acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/AuthenticationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/microsoft/identity/client/exception/MsalException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getPersistedCurrentAccount()Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->isHomeAccountIdMatching(Lcom/microsoft/identity/client/MultiTenantAccount;Lcom/microsoft/identity/client/Account;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/AuthenticationResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 24
    .line 25
    const-string p1, "current_account_mismatch"

    .line 26
    .line 27
    const-string v0, "The signed in account does not match with the provided account."

    .line 28
    .line 29
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 34
    .line 35
    const-string p1, "no_current_account"

    .line 36
    .line 37
    const-string v0, "There is no signed in account."

    .line 38
    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/SilentAuthenticationCallback;",
            "Lcom/microsoft/identity/client/TokenParameters;",
            ")",
            "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
            "Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;",
            "Lcom/microsoft/identity/common/java/exception/BaseException;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;-><init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getCurrentAccount()Lcom/microsoft/identity/client/CurrentAccountResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/microsoft/identity/client/exception/MsalException;
        }
    .end annotation

    .line 1
    const-string v0, "getCurrentAccount"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;-><init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v3, v4, v1, v5}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/microsoft/identity/common/java/authorities/Authority;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->getMigrationStatus()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->onMigrationFinished()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v5, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v5, v6}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    const-string v6, "com.microsoft.aad.adal.cache"

    .line 78
    .line 79
    invoke-direct {v1, v4, v6, v5}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getAll()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v4, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {v3, v1, p0, v2}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->_import(Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 121
    .line 122
    const-string v1, "unknown_error"

    .line 123
    .line 124
    const-string v2, "Unknown exception while fetching current account."

    .line 125
    .line 126
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final signIn(Lcom/microsoft/identity/client/SignInParameters;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getPersistedCurrentAccount()Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/client/SignInParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 13
    .line 14
    const-string v0, "invalid_parameter"

    .line 15
    .line 16
    const-string v2, "An account is already signed in."

    .line 17
    .line 18
    invoke-direct {p1, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    check-cast p0, Lut5;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lut5;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/SignInParameters;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/client/SignInParameters;->getScopes()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/microsoft/identity/client/SignInParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v3, "activity"

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v3, "scopes"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "callback"

    .line 50
    .line 51
    invoke-static {p1, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->startAuthorizationFromActivity(Landroid/app/Activity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/Account;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withPrompt(Lcom/microsoft/identity/client/Prompt;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    new-array v2, v2, [Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withOtherScopesToAuthorize(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withLoginHint(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 104
    .line 105
    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 106
    .line 107
    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;-><init>(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)V

    .line 108
    .line 109
    .line 110
    const-string p1, "132"

    .line 111
    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final signOut()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-string v0, "signOut"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getPersistedCurrentAccount()Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 23
    .line 24
    const-string v1, "There is no signed in account."

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "no_current_account"

    .line 28
    .line 29
    invoke-direct {p0, v3, v1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 33
    .line 34
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-direct {v1, v2, p0}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v3, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getEnvironment()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v2, v4, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->createRemoveAccountCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Lcom/microsoft/identity/common/internal/commands/RemoveCurrentAccountCommand;

    .line 73
    .line 74
    new-instance v5, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 75
    .line 76
    invoke-direct {v5, v2}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;

    .line 80
    .line 81
    invoke-direct {v2, p0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;-><init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V

    .line 82
    .line 83
    .line 84
    const-string p0, "927"

    .line 85
    .line 86
    invoke-direct {v4, v3, v5, v2, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 121
    .line 122
    const-string v1, "unknown_error"

    .line 123
    .line 124
    const-string v2, "Unexpected error during signOut."

    .line 125
    .line 126
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method
