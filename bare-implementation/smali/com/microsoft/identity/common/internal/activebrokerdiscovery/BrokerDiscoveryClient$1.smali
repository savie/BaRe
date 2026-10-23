.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lbt3;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;->$context:Landroid/content/Context;

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
    move-result-object p0

    .line 12
    return-object p0
.end method
