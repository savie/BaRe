.class public abstract Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static volatile clientSdkInstance:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

.field private static final lock:Lmj5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmj5;

    .line 2
    .line 3
    invoke-direct {v0}, Lmj5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->lock:Lmj5;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getClientSdkInstance$cp()Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->clientSdkInstance:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Lmj5;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->lock:Lmj5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setClientSdkInstance$cp(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->clientSdkInstance:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 2
    .line 3
    return-void
.end method
