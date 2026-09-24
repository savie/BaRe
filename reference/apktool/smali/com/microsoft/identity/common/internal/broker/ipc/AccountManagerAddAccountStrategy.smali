.class public final Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Broker operation: "

    .line 8
    .line 9
    const-string v2, " brokerPackage: "

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string v1, "AccountManagerAddAccountStrategy:communicateToBroker"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "com.microsoft.workaccount"

    .line 38
    .line 39
    const-string v4, "adal.authtoken.type"

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->getAccountManagerBundle()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->getPreferredHandler()Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "Received result from broker"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    return-object p0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :goto_0
    move-object p0, v0

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    const-string v1, "Failed to connect to AccountManager"

    .line 86
    .line 87
    const/4 v2, 0x3

    .line 88
    invoke-direct {p1, v2, v0, v1, p0}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final isSupportedByTargetedBroker(Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->getActiveBrokerFromAccountManager()Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "com.microsoft.workaccount"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v0, "user"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/os/UserManager;

    .line 43
    .line 44
    const-string v2, "no_modify_accounts"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v2, "AccountManagerUtil:canUseAccountManagerOperation:"

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 55
    .line 56
    const-string p0, "UserManager.DISALLOW_MODIFY_ACCOUNTS is enabled for this user."

    .line 57
    .line 58
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_1
    :try_start_0
    const-string v0, "device_policy"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 72
    .line 73
    const-string p0, "AccountManagerUtil:getDevicePolicyManager"

    .line 74
    .line 75
    const-string v0, "Cannot get DevicePolicyManager."

    .line 76
    .line 77
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    :goto_0
    if-eqz p0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    array-length v0, p0

    .line 90
    move v3, v1

    .line 91
    :goto_1
    if-ge v3, v0, :cond_3

    .line 92
    .line 93
    aget-object v4, p0, v3

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    const-string p0, "Account type "

    .line 102
    .line 103
    const-string p1, " is disabled by MDM."

    .line 104
    .line 105
    invoke-static {p0, v4, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 110
    .line 111
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const/4 v1, 0x1

    .line 119
    :cond_4
    :goto_2
    return v1
.end method
