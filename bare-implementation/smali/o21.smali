.class public Lo21;
.super Lan2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lm21;
.implements Lzx1;
.implements Lwn8;


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic p:J

.field public static final synthetic q:J


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public final d:Ljv1;

.field public final e:Lox1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "_decisionAndIndex$volatile"

    .line 2
    .line 3
    const-class v1, Lo21;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    const-class v0, Ljava/lang/Object;

    .line 12
    .line 13
    const-string v2, "_state$volatile"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sput-object v3, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sput-wide v4, Lo21;->q:J

    .line 32
    .line 33
    const-string v2, "_parentHandle$volatile"

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lo21;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sput-wide v0, Lo21;->p:J

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(ILjv1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lan2;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo21;->d:Ljv1;

    .line 5
    .line 6
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lo21;->e:Lox1;

    .line 11
    .line 12
    const p1, 0x1fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lo21;->_decisionAndIndex$volatile:I

    .line 16
    .line 17
    sget-object p1, Lt8;->a:Lt8;

    .line 18
    .line 19
    iput-object p1, p0, Lo21;->_state$volatile:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public static F(Lho5;Ljava/lang/Object;ILrt3;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lln1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    return-object p1

    .line 14
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    .line 15
    .line 16
    instance-of p2, p0, Lj21;

    .line 17
    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_3
    new-instance v0, Ljn1;

    .line 22
    .line 23
    instance-of p2, p0, Lj21;

    .line 24
    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    check-cast p0, Lj21;

    .line 28
    .line 29
    :goto_1
    move-object v2, p0

    .line 30
    goto :goto_2

    .line 31
    :cond_4
    const/4 p0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :goto_2
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0x10

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    move-object v3, p3

    .line 38
    invoke-direct/range {v0 .. v5}, Ljn1;-><init>(Ljava/lang/Object;Lj21;Lrt3;Ljava/lang/Throwable;I)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static z(Lho5;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ", already has "

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "CancellableContinuation"

    .line 2
    .line 3
    return-object p0
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo21;->d:Ljv1;

    .line 2
    .line 3
    instance-of v1, v0, Lym2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lym2;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lym2;->p(Lo21;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lo21;->o()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lo21;->n(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_1
    return-void
.end method

.method public final C()Z
    .locals 5

    .line 1
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    instance-of v4, v3, Ljn1;

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    check-cast v3, Ljn1;

    .line 19
    .line 20
    iget-object v3, v3, Ljn1;->d:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lo21;->o()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    sget-object v3, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 30
    .line 31
    const v4, 0x1fffffff

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    sget-object v3, Lt8;->a:Lt8;

    .line 38
    .line 39
    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public final D(Ljava/lang/Object;ILrt3;)V
    .locals 9

    .line 1
    :goto_0
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    move-object v0, v7

    .line 19
    check-cast v0, Lho5;

    .line 20
    .line 21
    invoke-static {v0, p1, p2, p3}, Lo21;->F(Lho5;Ljava/lang/Object;ILrt3;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    :goto_1
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 26
    .line 27
    sget-wide v5, Lo21;->q:J

    .line 28
    .line 29
    move-object v4, p0

    .line 30
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lo21;->y()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lo21;->o()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v4, p2}, Lo21;->p(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eq p0, v7, :cond_2

    .line 54
    .line 55
    move-object p0, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object p0, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v4, p0

    .line 60
    instance-of p0, v7, Lq21;

    .line 61
    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    check-cast v7, Lq21;

    .line 65
    .line 66
    sget-object p0, Lq21;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v7, p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    if-eqz p3, :cond_4

    .line 77
    .line 78
    iget-object p0, v7, Lln1;->a:Ljava/lang/Throwable;

    .line 79
    .line 80
    invoke-virtual {v4, p3, p0, p1}, Lo21;->l(Lrt3;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void

    .line 84
    :cond_5
    const-string p0, "Already resumed, but proposed with update "

    .line 85
    .line 86
    invoke-static {p1, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final E(Lrx1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo21;->d:Ljv1;

    .line 2
    .line 3
    instance-of v1, v0, Lym2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lym2;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lym2;->d:Lrx1;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v0, v2

    .line 18
    :goto_1
    if-ne v0, p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    iget p1, p0, Lan2;->c:I

    .line 23
    .line 24
    :goto_2
    sget-object v0, Lbe8;->a:Lbe8;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v2}, Lo21;->D(Ljava/lang/Object;ILrt3;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final G(Ljava/lang/Object;Lrt3;)Ldu9;
    .locals 10

    .line 1
    sget-object v0, Lpe4;->a:Ldu9;

    .line 2
    .line 3
    :goto_0
    sget-object v1, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 9
    .line 10
    sget-wide v2, Lo21;->q:J

    .line 11
    .line 12
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    instance-of v1, v8, Lho5;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    move-object v1, v8

    .line 21
    check-cast v1, Lho5;

    .line 22
    .line 23
    iget v4, p0, Lan2;->c:I

    .line 24
    .line 25
    invoke-static {v1, p1, v4, p2}, Lo21;->F(Lho5;Ljava/lang/Object;ILrt3;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    :goto_1
    sget-object v4, Loh6;->a:Lsun/misc/Unsafe;

    .line 30
    .line 31
    sget-wide v6, Lo21;->q:J

    .line 32
    .line 33
    move-object v5, p0

    .line 34
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5}, Lo21;->y()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v5}, Lo21;->o()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {v4, v5, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eq p0, v8, :cond_2

    .line 55
    .line 56
    move-object p0, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object p0, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final a(Ln67;I)V
    .locals 4

    .line 1
    :cond_0
    sget-object v0, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0x1fffffff

    .line 8
    .line 9
    .line 10
    and-int v3, v1, v2

    .line 11
    .line 12
    if-ne v3, v2, :cond_1

    .line 13
    .line 14
    shr-int/lit8 v2, v1, 0x1d

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x1d

    .line 17
    .line 18
    add-int/2addr v2, p2

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lo21;->x(Lho5;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "invokeOnCancellation should be called at most once"

    .line 30
    .line 31
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Ljava/lang/Object;Lrt3;)Ldu9;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo21;->G(Ljava/lang/Object;Lrt3;)Ldu9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final c(Ljava/util/concurrent/CancellationException;)V
    .locals 10

    .line 1
    :goto_0
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lho5;

    .line 15
    .line 16
    if-nez v0, :cond_9

    .line 17
    .line 18
    instance-of v0, v7, Lln1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    instance-of v0, v7, Ljn1;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    move-object v0, v7

    .line 29
    check-cast v0, Ljn1;

    .line 30
    .line 31
    iget-object v3, v0, Ljn1;->e:Ljava/lang/Throwable;

    .line 32
    .line 33
    if-nez v3, :cond_4

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/16 v4, 0xf

    .line 37
    .line 38
    invoke-static {v0, v3, p1, v4}, Ljn1;->a(Ljn1;Lj21;Ljava/lang/Throwable;I)Ljn1;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    :goto_1
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 43
    .line 44
    sget-wide v5, Lo21;->q:J

    .line 45
    .line 46
    move-object v4, p0

    .line 47
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    move-object v9, v4

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    iget-object p0, v0, Ljn1;->b:Lj21;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v9, p0, p1}, Lo21;->k(Lj21;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, v0, Ljn1;->c:Lrt3;

    .line 62
    .line 63
    if-eqz p0, :cond_6

    .line 64
    .line 65
    iget-object v0, v0, Ljn1;->a:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v9, p0, p1, v0}, Lo21;->l(Lrt3;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {v3, v9, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eq p0, v7, :cond_3

    .line 76
    .line 77
    move-object p0, p1

    .line 78
    move-object v4, v9

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    move-object p0, v9

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string p0, "Must be called at most once"

    .line 83
    .line 84
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    move-object v9, p0

    .line 89
    new-instance v3, Ljn1;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    const/16 v8, 0xe

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    move-object v4, v7

    .line 96
    move-object v7, p1

    .line 97
    invoke-direct/range {v3 .. v8}, Ljn1;-><init>(Ljava/lang/Object;Lj21;Lrt3;Ljava/lang/Throwable;I)V

    .line 98
    .line 99
    .line 100
    move-object p0, v7

    .line 101
    move-object v7, v4

    .line 102
    :goto_2
    move-object v8, v3

    .line 103
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 104
    .line 105
    sget-wide v5, Lo21;->q:J

    .line 106
    .line 107
    move-object v4, v9

    .line 108
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    move-object v0, v3

    .line 113
    move-object v3, v8

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    :cond_6
    :goto_3
    return-void

    .line 117
    :cond_7
    invoke-virtual {v0, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eq p1, v7, :cond_8

    .line 122
    .line 123
    :goto_4
    move-object p1, p0

    .line 124
    move-object p0, v4

    .line 125
    goto :goto_0

    .line 126
    :cond_8
    move-object v9, v4

    .line 127
    goto :goto_2

    .line 128
    :cond_9
    const-string p0, "Not completed"

    .line 129
    .line 130
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final d()Ljv1;
    .locals 0

    .line 1
    iget-object p0, p0, Lo21;->d:Ljv1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lrt3;)V
    .locals 1

    .line 1
    iget v0, p0, Lan2;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lo21;->D(Ljava/lang/Object;ILrt3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lan2;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Lan2;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo21;->p(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCallerFrame()Lzx1;
    .locals 1

    .line 1
    iget-object p0, p0, Lo21;->d:Ljv1;

    .line 2
    .line 3
    instance-of v0, p0, Lzx1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lzx1;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final getContext()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lo21;->e:Lox1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    instance-of p0, p1, Ljn1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljn1;

    .line 6
    .line 7
    iget-object p0, p1, Ljn1;->a:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final k(Lj21;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lj21;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    new-instance p2, Lmn1;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Exception in invokeOnCancellation handler for "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lo21;->e:Lox1;

    .line 26
    .line 27
    invoke-static {p0, p2}, Ly13;->m(Lox1;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l(Lrt3;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo21;->e:Lox1;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p2, p3, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Lmn1;

    .line 9
    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Exception in resume onCancellation handler for "

    .line 13
    .line 14
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2}, Ly13;->m(Lox1;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final m(Ln67;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lo21;->e:Lox1;

    .line 2
    .line 3
    sget-object v0, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x1fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, v0, p2}, Ln67;->m(ILox1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    new-instance v0, Lmn1;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Ly13;->m(Lox1;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string p0, "The index for Segment.onCancellation(..) is broken"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 10

    .line 1
    :goto_0
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lho5;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    new-instance v8, Lq21;

    .line 21
    .line 22
    instance-of v0, v7, Lj21;

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    instance-of v0, v7, Ln67;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    move v3, v9

    .line 32
    :cond_2
    if-nez p1, :cond_3

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "Continuation "

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, " was cancelled normally"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v0, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v0, p1

    .line 60
    :goto_1
    invoke-direct {v8, v0, v3}, Lln1;-><init>(Ljava/lang/Throwable;Z)V

    .line 61
    .line 62
    .line 63
    :goto_2
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 64
    .line 65
    sget-wide v5, Lo21;->q:J

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_7

    .line 73
    .line 74
    move-object p0, v7

    .line 75
    check-cast p0, Lho5;

    .line 76
    .line 77
    instance-of v0, p0, Lj21;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    check-cast v7, Lj21;

    .line 82
    .line 83
    invoke-virtual {v4, v7, p1}, Lo21;->k(Lj21;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    instance-of p0, p0, Ln67;

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    check-cast v7, Ln67;

    .line 92
    .line 93
    invoke-virtual {v4, v7, p1}, Lo21;->m(Ln67;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lo21;->y()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4}, Lo21;->o()V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget p0, v4, Lan2;->c:I

    .line 106
    .line 107
    invoke-virtual {v4, p0}, Lo21;->p(I)V

    .line 108
    .line 109
    .line 110
    return v9

    .line 111
    :cond_7
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eq p0, v7, :cond_8

    .line 116
    .line 117
    move-object p0, v4

    .line 118
    goto :goto_0

    .line 119
    :cond_8
    move-object p0, v4

    .line 120
    goto :goto_2
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo21;->r()Lin2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Lin2;->dispose()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lo21;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 17
    .line 18
    sget-wide v1, Lo21;->p:J

    .line 19
    .line 20
    sget-object v3, Lao5;->a:Lao5;

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final p(I)V
    .locals 6

    .line 1
    :cond_0
    sget-object v0, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shr-int/lit8 v2, v1, 0x1d

    .line 8
    .line 9
    if-eqz v2, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne v2, v0, :cond_b

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    move v1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_0
    iget-object v3, p0, Lo21;->d:Ljv1;

    .line 22
    .line 23
    if-nez v1, :cond_a

    .line 24
    .line 25
    instance-of v4, v3, Lym2;

    .line 26
    .line 27
    if-eqz v4, :cond_a

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    if-ne p1, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move p1, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    move p1, v0

    .line 38
    :goto_2
    iget v5, p0, Lan2;->c:I

    .line 39
    .line 40
    if-eq v5, v0, :cond_4

    .line 41
    .line 42
    if-ne v5, v4, :cond_5

    .line 43
    .line 44
    :cond_4
    move v2, v0

    .line 45
    :cond_5
    if-ne p1, v2, :cond_a

    .line 46
    .line 47
    move-object p1, v3

    .line 48
    check-cast p1, Lym2;

    .line 49
    .line 50
    iget-object v1, p1, Lym2;->d:Lrx1;

    .line 51
    .line 52
    iget-object p1, p1, Lym2;->e:Lkv1;

    .line 53
    .line 54
    invoke-interface {p1}, Ljv1;->getContext()Lox1;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lly8;->N(Lrx1;Lox1;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    invoke-static {v1, p1, p0}, Lly8;->M(Lrx1;Lox1;Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    invoke-static {}, Lr28;->a()Luy2;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-wide v1, p1, Luy2;->c:J

    .line 73
    .line 74
    const-wide v4, 0x100000000L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v1, v1, v4

    .line 80
    .line 81
    if-ltz v1, :cond_8

    .line 82
    .line 83
    iget-object v0, p1, Luy2;->e:Lw40;

    .line 84
    .line 85
    if-nez v0, :cond_7

    .line 86
    .line 87
    new-instance v0, Lw40;

    .line 88
    .line 89
    invoke-direct {v0}, Lw40;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p1, Luy2;->e:Lw40;

    .line 93
    .line 94
    :cond_7
    invoke-virtual {v0, p0}, Lw40;->addLast(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_8
    invoke-virtual {p1, v0}, Luy2;->r(Z)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    invoke-static {p0, v3, v0}, Lzv1;->q(Lo21;Ljv1;Z)V

    .line 102
    .line 103
    .line 104
    :cond_9
    invoke-virtual {p1}, Luy2;->v()Z

    .line 105
    .line 106
    .line 107
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-nez v1, :cond_9

    .line 109
    .line 110
    :goto_3
    invoke-virtual {p1, v0}, Luy2;->q(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :catchall_0
    move-exception v1

    .line 115
    :try_start_1
    invoke-virtual {p0, v1}, Lan2;->i(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    invoke-virtual {p1, v0}, Luy2;->q(Z)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_a
    invoke-static {p0, v3, v1}, Lzv1;->q(Lo21;Ljv1;Z)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_b
    const-string p0, "Already resumed"

    .line 129
    .line 130
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_c
    const v2, 0x1fffffff

    .line 135
    .line 136
    .line 137
    and-int/2addr v2, v1

    .line 138
    const/high16 v3, 0x40000000    # 2.0f

    .line 139
    .line 140
    add-int/2addr v3, v2

    .line 141
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    .line 147
    :goto_4
    return-void
.end method

.method public q(Lci4;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lci4;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final r()Lin2;
    .locals 3

    .line 1
    sget-object v0, Lo21;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->p:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lin2;

    .line 15
    .line 16
    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lln1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lln1;-><init>(Ljava/lang/Throwable;Z)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lan2;->c:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lo21;->D(Ljava/lang/Object;ILrt3;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo21;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    sget-object v1, Lo21;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    shr-int/lit8 v3, v2, 0x1d

    .line 12
    .line 13
    if-eqz v3, :cond_7

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v3, v1, :cond_6

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lo21;->B()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v2, v0, Lln1;

    .line 28
    .line 29
    if-nez v2, :cond_5

    .line 30
    .line 31
    iget v2, p0, Lan2;->c:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    if-ne v2, v1, :cond_4

    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Lo21;->e:Lox1;

    .line 39
    .line 40
    sget-object v2, Lnh4;->b:Lnh4;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Lox1;->get(Lnx1;)Lmx1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Loh4;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Loh4;->isActive()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-interface {v1}, Loh4;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lo21;->c(Ljava/util/concurrent/CancellationException;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lo21;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_5
    check-cast v0, Lln1;

    .line 71
    .line 72
    iget-object p0, v0, Lln1;->a:Ljava/lang/Throwable;

    .line 73
    .line 74
    throw p0

    .line 75
    :cond_6
    const-string p0, "Already suspended"

    .line 76
    .line 77
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0

    .line 82
    :cond_7
    const v3, 0x1fffffff

    .line 83
    .line 84
    .line 85
    and-int/2addr v3, v2

    .line 86
    const/high16 v4, 0x20000000

    .line 87
    .line 88
    add-int/2addr v4, v3

    .line 89
    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    invoke-virtual {p0}, Lo21;->r()Lin2;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_8

    .line 100
    .line 101
    invoke-virtual {p0}, Lo21;->v()Lin2;

    .line 102
    .line 103
    .line 104
    :cond_8
    if-eqz v0, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0}, Lo21;->B()V

    .line 107
    .line 108
    .line 109
    :cond_9
    sget-object p0, Lyx1;->a:Lyx1;

    .line 110
    .line 111
    return-object p0
.end method

.method public final t()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lo21;->A()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x28

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lo21;->d:Ljv1;

    .line 19
    .line 20
    invoke-static {v1}, Lod2;->z(Ljv1;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "){"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lho5;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const-string v1, "Active"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    instance-of v1, v1, Lq21;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Cancelled"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "Completed"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "}@"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lod2;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo21;->v()Lin2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Lho5;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lin2;->dispose()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lo21;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 25
    .line 26
    sget-wide v1, Lo21;->p:J

    .line 27
    .line 28
    sget-object v3, Lao5;->a:Lao5;

    .line 29
    .line 30
    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final v()Lin2;
    .locals 9

    .line 1
    iget-object v0, p0, Lo21;->e:Lox1;

    .line 2
    .line 3
    sget-object v1, Lnh4;->b:Lnh4;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lox1;->get(Lnx1;)Lmx1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Loh4;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v1, Ld61;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ld61;-><init>(Lo21;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v0, v2, v1}, Lsz8;->G(Loh4;ZLsh4;)Lin2;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    :goto_0
    sget-object v0, Lo21;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 31
    .line 32
    sget-wide v5, Lo21;->p:J

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v4, p0

    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    :goto_1
    return-object v8

    .line 50
    :cond_2
    move-object p0, v4

    .line 51
    goto :goto_0
.end method

.method public final w(Lmt3;)V
    .locals 1

    .line 1
    new-instance v0, Li21;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Li21;-><init>(Lmt3;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lo21;->x(Lho5;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final x(Lho5;)V
    .locals 10

    .line 1
    :goto_0
    sget-object v0, Lo21;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lo21;->q:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lt8;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :goto_1
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-wide v5, Lo21;->q:J

    .line 21
    .line 22
    move-object v4, p0

    .line 23
    move-object v8, p1

    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eq p0, v7, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    move-object p0, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v4, p0

    .line 43
    instance-of p0, v7, Lj21;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_10

    .line 47
    .line 48
    instance-of p0, v7, Ln67;

    .line 49
    .line 50
    if-nez p0, :cond_10

    .line 51
    .line 52
    instance-of p0, v7, Lln1;

    .line 53
    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    move-object p0, v7

    .line 57
    check-cast p0, Lln1;

    .line 58
    .line 59
    sget-object v1, Lln1;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    instance-of v0, v7, Lq21;

    .line 70
    .line 71
    if-eqz v0, :cond_d

    .line 72
    .line 73
    iget-object p0, p0, Lln1;->a:Ljava/lang/Throwable;

    .line 74
    .line 75
    instance-of v0, p1, Lj21;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    check-cast p1, Lj21;

    .line 80
    .line 81
    invoke-virtual {v4, p1, p0}, Lo21;->k(Lj21;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    check-cast p1, Ln67;

    .line 86
    .line 87
    invoke-virtual {v4, p1, p0}, Lo21;->m(Ln67;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    invoke-static {p1, v7}, Lo21;->z(Lho5;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_5
    instance-of p0, v7, Ljn1;

    .line 96
    .line 97
    if-eqz p0, :cond_b

    .line 98
    .line 99
    move-object p0, v7

    .line 100
    check-cast p0, Ljn1;

    .line 101
    .line 102
    iget-object v3, p0, Ljn1;->b:Lj21;

    .line 103
    .line 104
    if-nez v3, :cond_a

    .line 105
    .line 106
    instance-of v3, p1, Ln67;

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object v3, p1

    .line 112
    check-cast v3, Lj21;

    .line 113
    .line 114
    iget-object v5, p0, Ljn1;->e:Ljava/lang/Throwable;

    .line 115
    .line 116
    if-eqz v5, :cond_7

    .line 117
    .line 118
    invoke-virtual {v4, v3, v5}, Lo21;->k(Lj21;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_7
    const/16 v5, 0x1d

    .line 123
    .line 124
    invoke-static {p0, v3, v0, v5}, Ljn1;->a(Ljn1;Lj21;Ljava/lang/Throwable;I)Ljn1;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    :cond_8
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 129
    .line 130
    sget-wide v5, Lo21;->q:J

    .line 131
    .line 132
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    move-object v9, v4

    .line 137
    if-eqz p0, :cond_9

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    invoke-virtual {v3, v9, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    move-object v4, v9

    .line 145
    if-eq p0, v7, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_a
    invoke-static {p1, v7}, Lo21;->z(Lho5;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_b
    move-object v9, v4

    .line 153
    instance-of p0, p1, Ln67;

    .line 154
    .line 155
    if-eqz p0, :cond_c

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_c
    move-object v5, p1

    .line 159
    check-cast v5, Lj21;

    .line 160
    .line 161
    new-instance v3, Ljn1;

    .line 162
    .line 163
    move-object v4, v7

    .line 164
    const/4 v7, 0x0

    .line 165
    const/16 v8, 0x1c

    .line 166
    .line 167
    const/4 v6, 0x0

    .line 168
    invoke-direct/range {v3 .. v8}, Ljn1;-><init>(Ljava/lang/Object;Lj21;Lrt3;Ljava/lang/Throwable;I)V

    .line 169
    .line 170
    .line 171
    move-object v7, v4

    .line 172
    :goto_2
    move-object v8, v3

    .line 173
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 174
    .line 175
    sget-wide v5, Lo21;->q:J

    .line 176
    .line 177
    move-object v4, v9

    .line 178
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    move-object v0, v3

    .line 183
    move-object v3, v8

    .line 184
    if-eqz p0, :cond_e

    .line 185
    .line 186
    :cond_d
    :goto_3
    return-void

    .line 187
    :cond_e
    invoke-virtual {v0, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-eq p0, v7, :cond_f

    .line 192
    .line 193
    :goto_4
    move-object p0, v4

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_f
    move-object v9, v4

    .line 197
    goto :goto_2

    .line 198
    :cond_10
    invoke-static {p1, v7}, Lo21;->z(Lho5;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget v0, p0, Lan2;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lo21;->d:Ljv1;

    .line 7
    .line 8
    check-cast p0, Lym2;

    .line 9
    .line 10
    invoke-virtual {p0}, Lym2;->n()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method
