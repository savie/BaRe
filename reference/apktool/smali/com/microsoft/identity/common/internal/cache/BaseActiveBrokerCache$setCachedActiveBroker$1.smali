.class final Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;
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
    c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$setCachedActiveBroker$1"
    f = "BaseActiveBrokerCache.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $brokerData:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field L$0:Lkj5;

.field L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

.field L$2:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Lcom/microsoft/identity/common/internal/broker/BrokerData;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->$brokerData:Lcom/microsoft/identity/common/internal/broker/BrokerData;

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
    new-instance p1, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->$brokerData:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Lcom/microsoft/identity/common/internal/broker/BrokerData;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->label:I

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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$2:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$0:Lkj5;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->access$getLock$p(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;)Lkj5;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$0:Lkj5;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->$brokerData:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 39
    .line 40
    iput-object v3, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->L$2:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 41
    .line 42
    iput v1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;->label:I

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Lmj5;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object v1, Lyx1;->a:Lyx1;

    .line 52
    .line 53
    if-ne p0, v1, :cond_2

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_2
    move-object v1, p1

    .line 57
    move-object p0, v0

    .line 58
    move-object v0, v3

    .line 59
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->setCachedActiveBrokerWithoutLock(Lcom/microsoft/identity/common/internal/broker/BrokerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lbe8;->a:Lbe8;

    .line 66
    .line 67
    return-object p0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method
