.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;
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
    c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1"
    f = "BrokerDiscoveryClient.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $candidate:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field final synthetic $ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerData;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$candidate:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

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
    new-instance p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$candidate:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerData;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->a:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$candidate:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 9
    .line 10
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion;->access$makeRequest(Lcom/microsoft/identity/common/internal/broker/BrokerData;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
