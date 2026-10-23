.class public final synthetic Lio8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkh6;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio8;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lio8;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio8;->c:Lkh6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lio8;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lio8;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lio8;->c:Lkh6;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class p1, Ljo8;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-wide v3, p0, Lkh6;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    sub-long/2addr v1, v3

    .line 25
    const-wide/16 v3, 0x7d0

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-gtz v1, :cond_0

    .line 30
    .line 31
    monitor-exit p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lel1;->o1(Ljava/util/Collection;)J

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lkh6;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    monitor-exit p1

    .line 50
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 51
    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method
