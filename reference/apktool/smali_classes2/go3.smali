.class public final synthetic Lgo3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lio3;

.field public final synthetic e:J

.field public final synthetic f:Lkh6;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;Lio3;JLkh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgo3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lgo3;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lgo3;->c:Lkh6;

    .line 9
    .line 10
    iput-object p4, p0, Lgo3;->d:Lio3;

    .line 11
    .line 12
    iput-wide p5, p0, Lgo3;->e:J

    .line 13
    .line 14
    iput-object p7, p0, Lgo3;->f:Lkh6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v2, p0, Lgo3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lgo3;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lgo3;->c:Lkh6;

    .line 6
    .line 7
    iget-object v3, p0, Lgo3;->d:Lio3;

    .line 8
    .line 9
    iget-wide v4, p0, Lgo3;->e:J

    .line 10
    .line 11
    iget-object v6, p0, Lgo3;->f:Lkh6;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-class p0, Lio3;

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    new-instance v0, Lrh1;

    .line 25
    .line 26
    invoke-direct/range {v0 .. v6}, Lrh1;-><init>(Lkh6;Ljava/util/concurrent/ConcurrentHashMap;Lio3;JLkh6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v0}, Lrh1;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p1, v0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :goto_0
    monitor-exit p0

    .line 37
    sget-object p0, Lbe8;->a:Lbe8;

    .line 38
    .line 39
    return-object p0

    .line 40
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p1
.end method
