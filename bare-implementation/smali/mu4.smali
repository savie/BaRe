.class public final Lmu4;
.super Lrx1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqg2;


# static fields
.field public static final synthetic n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final synthetic c:Lqg2;

.field public final d:Lrx1;

.field public final e:I

.field public final f:Lw05;

.field public final k:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lmu4;

    .line 2
    .line 3
    const-string v1, "runningWorkers$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmu4;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lrx1;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx1;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lqg2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lqg2;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lhe2;->a:Lqg2;

    .line 16
    .line 17
    :cond_1
    iput-object v0, p0, Lmu4;->c:Lqg2;

    .line 18
    .line 19
    iput-object p1, p0, Lmu4;->d:Lrx1;

    .line 20
    .line 21
    iput p2, p0, Lmu4;->e:I

    .line 22
    .line 23
    new-instance p1, Lw05;

    .line 24
    .line 25
    invoke-direct {p1}, Lw05;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lmu4;->f:Lw05;

    .line 29
    .line 30
    new-instance p1, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lmu4;->k:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final b(JLh48;Lox1;)Lin2;
    .locals 0

    .line 1
    iget-object p0, p0, Lmu4;->c:Lqg2;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lqg2;->b(JLh48;Lox1;)Lin2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g(JLo21;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmu4;->c:Lqg2;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lqg2;->g(JLo21;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lox1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmu4;->f:Lw05;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lw05;->a(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    sget-object p1, Lmu4;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget v0, p0, Lmu4;->e:I

    .line 13
    .line 14
    if-ge p2, v0, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, Lmu4;->k:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lmu4;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    monitor-exit p2

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    monitor-exit p2

    .line 33
    invoke-virtual {p0}, Lmu4;->q()Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_2
    new-instance p2, Ltd9;

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-direct {p2, v0, p0, p1}, Ltd9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lmu4;->d:Lrx1;

    .line 47
    .line 48
    invoke-static {p1, p0, p2}, Lly8;->M(Lrx1;Lox1;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    sget-object p2, Lmu4;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    monitor-exit p2

    .line 61
    throw p0

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public final q()Ljava/lang/Runnable;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lmu4;->f:Lw05;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw05;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lmu4;->k:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lmu4;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lmu4;->f:Lw05;

    .line 20
    .line 21
    invoke-virtual {v2}, Lw05;->c()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    .line 37
    throw p0

    .line 38
    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lmu4;->d:Lrx1;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".limitedParallelism("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lmu4;->e:I

    .line 17
    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
