.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;
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
    c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$getActiveBroker$1"
    f = "BrokerDiscoveryClient.kt"
    l = {
        0x1bb,
        0x157
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Lkj5;

.field L$1:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0
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
    new-instance p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lyx1;->a:Lyx1;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$0:Lkj5;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$1:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$0:Lkj5;

    .line 31
    .line 32
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->access$getClassLevelLock$cp()Lmj5;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$0:Lkj5;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$1:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 49
    .line 50
    iput v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->label:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-ne v2, v4, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$0:Lkj5;

    .line 60
    .line 61
    iput-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->L$1:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 62
    .line 63
    iput v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;->label:I

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->access$getActiveBrokerAsync(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;ZLkv1;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-ne p0, v4, :cond_4

    .line 71
    .line 72
    :goto_1
    return-object v4

    .line 73
    :cond_4
    move-object v5, p1

    .line 74
    move-object p1, p0

    .line 75
    move-object p0, v5

    .line 76
    :goto_2
    invoke-interface {p0, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    move-object v5, p1

    .line 82
    move-object p1, p0

    .line 83
    move-object p0, v5

    .line 84
    :goto_3
    invoke-interface {p0, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
