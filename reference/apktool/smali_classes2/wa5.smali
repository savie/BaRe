.class public final synthetic Lwa5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Ljb5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ldb5;

.field public final synthetic e:Lft7;

.field public final synthetic f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final synthetic k:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>([BLjb5;Ljava/lang/String;Ldb5;Lft7;Ljava/util/concurrent/ConcurrentHashMap$KeySetView;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwa5;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Lwa5;->b:Ljb5;

    .line 7
    .line 8
    iput-object p3, p0, Lwa5;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lwa5;->d:Ldb5;

    .line 11
    .line 12
    iput-object p5, p0, Lwa5;->e:Lft7;

    .line 13
    .line 14
    iput-object p6, p0, Lwa5;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 15
    .line 16
    iput-object p7, p0, Lwa5;->k:Ljava/util/concurrent/Semaphore;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v4, p0, Lwa5;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lwa5;->b:Ljb5;

    .line 4
    .line 5
    iget-object v1, p0, Lwa5;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lwa5;->d:Ldb5;

    .line 8
    .line 9
    iget-object v5, p0, Lwa5;->e:Lft7;

    .line 10
    .line 11
    iget-object v6, p0, Lwa5;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 12
    .line 13
    iget-object p0, p0, Lwa5;->k:Ljava/util/concurrent/Semaphore;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    new-instance v8, Lib5;

    .line 17
    .line 18
    array-length v9, v4

    .line 19
    iget-wide v2, v2, Ldb5;->a:J

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v6}, Ljb5;->v(Ljava/lang/String;J[BLft7;Ljava/util/Set;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v8, v9, v0}, Lib5;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 35
    .line 36
    .line 37
    return-object v8

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
