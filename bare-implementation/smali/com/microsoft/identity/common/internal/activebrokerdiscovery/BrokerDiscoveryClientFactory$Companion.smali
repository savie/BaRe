.class public abstract Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static getInstanceForClientSdk(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->access$getClientSdkInstance$cp()Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljv1;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ll73;->A(Lqt3;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->access$getClientSdkInstance$cp()Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
