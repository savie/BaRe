.class final Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;
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
    c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$shouldUseAccountManager$1"
    f = "BaseActiveBrokerCache.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Lkj5;

.field L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

.field label:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

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
    new-instance p1, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->label:I

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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->L$0:Lkj5;

    .line 12
    .line 13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->this$0:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->access$getLock$p(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;)Lkj5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->L$0:Lkj5;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->L$1:Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;

    .line 35
    .line 36
    iput v1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;->label:I

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    check-cast v3, Lmj5;

    .line 40
    .line 41
    invoke-virtual {v3, p0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object v3, Lyx1;->a:Lyx1;

    .line 46
    .line 47
    if-ne p0, v3, :cond_2

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    move-object p0, p1

    .line 51
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->access$getStorage$p(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY"

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    invoke-static {p1}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    new-instance p1, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-direct {p1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    cmp-long p1, v3, v5

    .line 89
    .line 90
    if-gez p1, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 94
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :try_start_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :goto_2
    invoke-interface {p0, v2}, Lkj5;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method
