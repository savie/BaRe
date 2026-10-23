.class public final Ldx2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld33;


# static fields
.field public static final N:Llv1;


# instance fields
.field public G:I

.field public H:Z

.field public I:Lfy3;

.field public J:Z

.field public K:Lfx2;

.field public L:Ltd2;

.field public volatile M:Z

.field public final a:Lcx2;

.field public final b:Lrm7;

.field public final c:Lzw2;

.field public final d:Ld36;

.field public final e:Llv1;

.field public final f:Lzw2;

.field public final k:Ljy3;

.field public final n:Ljy3;

.field public final p:Ljy3;

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public r:Lex2;

.field public t:Z

.field public x:Z

.field public y:Lll6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llv1;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldx2;->N:Llv1;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljy3;Ljy3;Ljy3;Ljy3;Lzw2;Lzw2;Ll22;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcx2;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p3, v0}, Lcx2;-><init>(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Ldx2;->a:Lcx2;

    .line 16
    .line 17
    new-instance p3, Lrm7;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Ldx2;->b:Lrm7;

    .line 23
    .line 24
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Ldx2;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    iput-object p1, p0, Ldx2;->k:Ljy3;

    .line 32
    .line 33
    iput-object p2, p0, Ldx2;->n:Ljy3;

    .line 34
    .line 35
    iput-object p4, p0, Ldx2;->p:Ljy3;

    .line 36
    .line 37
    iput-object p5, p0, Ldx2;->f:Lzw2;

    .line 38
    .line 39
    iput-object p6, p0, Ldx2;->c:Lzw2;

    .line 40
    .line 41
    iput-object p7, p0, Ldx2;->d:Ld36;

    .line 42
    .line 43
    sget-object p1, Ldx2;->N:Llv1;

    .line 44
    .line 45
    iput-object p1, p0, Ldx2;->e:Llv1;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lrm7;
    .locals 0

    .line 1
    iget-object p0, p0, Ldx2;->b:Lrm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized b(Lfh7;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldx2;->b:Lrm7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lrm7;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ldx2;->a:Lcx2;

    .line 8
    .line 9
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lbx2;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lbx2;-><init>(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Ldx2;->H:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ldx2;->d(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ltd9;

    .line 28
    .line 29
    invoke-direct {v0, v1, p0, p1}, Ltd9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-boolean v0, p0, Ldx2;->J:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ldx2;->d(I)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lax2;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1, p0, p1}, Lax2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-boolean p1, p0, Ldx2;->M:Z

    .line 56
    .line 57
    xor-int/2addr p1, v1

    .line 58
    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    .line 59
    .line 60
    invoke-static {p2, p1}, Lms8;->h(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method

.method public final c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldx2;->b:Lrm7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lrm7;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ldx2;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Not yet complete!"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lms8;->h(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ldx2;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lms8;->h(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Ldx2;->K:Lfx2;

    .line 35
    .line 36
    invoke-virtual {p0}, Ldx2;->f()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lfx2;->e()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public final declared-synchronized d(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ldx2;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Not yet complete!"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lms8;->h(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ldx2;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Ldx2;->K:Lfx2;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lfx2;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldx2;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Ldx2;->H:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Ldx2;->M:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final declared-synchronized f()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldx2;->r:Lex2;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Ldx2;->a:Lcx2;

    .line 7
    .line 8
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ldx2;->r:Lex2;

    .line 15
    .line 16
    iput-object v0, p0, Ldx2;->K:Lfx2;

    .line 17
    .line 18
    iput-object v0, p0, Ldx2;->y:Lll6;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Ldx2;->J:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Ldx2;->M:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Ldx2;->H:Z

    .line 26
    .line 27
    iget-object v2, p0, Ldx2;->L:Ltd2;

    .line 28
    .line 29
    iget-object v3, v2, Ltd2;->k:Lsd2;

    .line 30
    .line 31
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v4, 0x1

    .line 33
    :try_start_1
    iput-boolean v4, v3, Lsd2;->a:Z

    .line 34
    .line 35
    invoke-virtual {v3}, Lsd2;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    monitor-exit v3

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ltd2;->k()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object v0, p0, Ldx2;->L:Ltd2;

    .line 46
    .line 47
    iput-object v0, p0, Ldx2;->I:Lfy3;

    .line 48
    .line 49
    iput v1, p0, Ldx2;->G:I

    .line 50
    .line 51
    iget-object v0, p0, Ldx2;->d:Ld36;

    .line 52
    .line 53
    invoke-interface {v0, p0}, Ld36;->c(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    throw v0
.end method

.method public final declared-synchronized g(Lfh7;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldx2;->b:Lrm7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lrm7;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ldx2;->a:Lcx2;

    .line 8
    .line 9
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lbx2;

    .line 12
    .line 13
    sget-object v2, Lxh8;->f:Lrz2;

    .line 14
    .line 15
    invoke-direct {v1, p1, v2}, Lbx2;-><init>(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Ldx2;->a:Lcx2;

    .line 22
    .line 23
    iget-object p1, p1, Lcx2;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Ldx2;->e()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Ldx2;->M:Z

    .line 40
    .line 41
    iget-object v0, p0, Ldx2;->L:Ltd2;

    .line 42
    .line 43
    iput-boolean p1, v0, Ltd2;->S:Z

    .line 44
    .line 45
    iget-object p1, v0, Ltd2;->Q:Lta2;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lta2;->cancel()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Ldx2;->f:Lzw2;

    .line 53
    .line 54
    iget-object v0, p0, Ldx2;->r:Lex2;

    .line 55
    .line 56
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v1, p1, Lzw2;->a:Ldi4;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v1, v1, Ldi4;->a:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eq p0, v2, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    :goto_0
    :try_start_2
    monitor-exit p1

    .line 75
    :goto_1
    iget-boolean p1, p0, Ldx2;->H:Z

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    iget-boolean p1, p0, Ldx2;->J:Z

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :cond_3
    :goto_2
    iget-object p1, p0, Ldx2;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Ldx2;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :cond_4
    :goto_3
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    throw p1
.end method
