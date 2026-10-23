.class public abstract Ldv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public final c:Lfk6;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public e:Z

.field public final synthetic f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldv;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ldv;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lfk6;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ldv;->c:Lfk6;

    .line 22
    .line 23
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Ldv;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Ldv;->e:Z

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic i(Ldv;ZLgk6;ZZI)V
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 v0, p5, 0x4

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 12
    .line 13
    if-eqz p5, :cond_2

    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Ldv;->g(ZLgk6;ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract a()Lik6;
.end method

.method public final b(Ljava/lang/String;)Ljl0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ldv;->c:Lfk6;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lfk6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljl0;

    .line 11
    .line 12
    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 3

    .line 1
    iget v0, p0, Ldv;->f:I

    .line 2
    .line 3
    iget-object p0, p0, Ldv;->c:Lfk6;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lfk6;->a()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Lfk6;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 24
    .line 25
    new-instance v1, Lsl;

    .line 26
    .line 27
    const/4 v2, 0x7

    .line 28
    invoke-direct {v1, v2}, Lsl;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_0
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)Ljl0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ldv;->e()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Ljl0;

    .line 24
    .line 25
    invoke-interface {v1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    check-cast v0, Ljl0;

    .line 38
    .line 39
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ldv;->c:Lfk6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ldv;->c()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ldv;->m()Lik6;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lik6;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    return-object p0
.end method

.method public final declared-synchronized f(Z)Lik6;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ldv;->c()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lik6;

    .line 13
    .line 14
    sget-object v2, Lhk6;->Success:Lhk6;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v0, p1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Lik6;

    .line 24
    .line 25
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-direct {v1, v0, v2, p1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public g(ZLgk6;ZZ)V
    .locals 1

    .line 1
    iget v0, p0, Ldv;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Ldv;->h(ZLgk6;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 p4, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Ldv;->h(ZLgk6;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final h(ZLgk6;ZZ)V
    .locals 1

    .line 1
    new-instance v0, Lek6;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1, p0, p3}, Lek6;-><init>(Lgk6;ZLdv;Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    sget-object p0, Lzn4;->a:Lzn4;

    .line 9
    .line 10
    invoke-static {v0}, Lzn4;->d(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object p0, Lzn4;->a:Lzn4;

    .line 15
    .line 16
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final declared-synchronized j(Lik6;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcv;

    .line 3
    .line 4
    const/16 v1, 0xd

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Ldv;->e:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lzn4;->a:Lzn4;

    .line 14
    .line 15
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcv;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public k(Lji;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 5
    .line 6
    new-instance v0, Lcv;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1, p1, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(Ljl0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldv;->c:Lfk6;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Ldv;->f(Z)Lik6;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ldv;->j(Lik6;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final declared-synchronized m()Lik6;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ldv;->a()Lik6;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Ldv;->c:Lfk6;

    .line 21
    .line 22
    iget-object v2, v0, Lik6;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljl0;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljl0;->getItemId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    monitor-exit p0

    .line 60
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 64
    .line 65
    const-string v1, "Method called from main thread"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v0
.end method

.method public final n(Ljl0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldv;->c:Lfk6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lfk6;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Ldv;->f(Z)Lik6;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ldv;->j(Lik6;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ldv;->n(Ljl0;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final p(Lgk6;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldv;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
