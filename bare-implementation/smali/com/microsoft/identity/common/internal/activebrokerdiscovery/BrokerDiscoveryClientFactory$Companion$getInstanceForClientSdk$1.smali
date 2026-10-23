.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lws7;",
        "Lqt3;"
    }
.end annotation

.annotation runtime Lnd2;
    c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1"
    f = "BrokerDiscoveryClientFactory.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field L$0:Lmj5;

.field L$1:Landroid/content/Context;

.field L$2:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljv1;",
            ")",
            "Ljv1;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$2:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$1:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$0:Lmj5;

    .line 14
    .line 15
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->access$getLock$cp()Lmj5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$0:Lmj5;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$context:Landroid/content/Context;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$1:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->$platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 39
    .line 40
    iput-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->L$2:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 41
    .line 42
    iput v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;->label:I

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v1, Lyx1;->a:Lyx1;

    .line 49
    .line 50
    if-ne p0, v1, :cond_2

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    move-object p0, p1

    .line 54
    move-object v1, v0

    .line 55
    move-object v0, v3

    .line 56
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->access$getClientSdkInstance$cp()Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    new-instance p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 63
    .line 64
    sget v3, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->a:I

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 74
    .line 75
    const-string v5, "BROKER_METADATA_CACHE_STORE_ON_CLIENT_SDK_SIDE"

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->getEncryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {}, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->access$getSClientSdkSideLock$cp()Lmj5;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-direct {v4, v3, v5}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;-><init>(Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;Lmj5;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v1, v0, v4}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->access$setClientSdkInstance$cp(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    :goto_1
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lbe8;->a:Lbe8;

    .line 104
    .line 105
    return-object p0

    .line 106
    :goto_2
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
