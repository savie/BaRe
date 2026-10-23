.class public final Lsb9;
.super Landroid/database/ContentObserver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Ltb9;


# direct methods
.method public constructor <init>(Ltb9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsb9;->a:Ltb9;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsb9;->a:Ltb9;

    .line 2
    .line 3
    iget-object p1, p0, Ltb9;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Ltb9;->e:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lje9;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_1
    iget-object p1, p0, Ltb9;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    throw p0
.end method
