.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$2;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lmt3;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$2;->$context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->isSignedByKnownKeys(Lcom/microsoft/identity/common/internal/broker/BrokerData;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
