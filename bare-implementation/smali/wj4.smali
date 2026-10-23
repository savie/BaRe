.class public Lwj4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final p:I

.field public static final q:I

.field public static final r:Lz77;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lwl4;

.field public d:Lar5;

.field public final e:Lay2;

.field public final f:Lmp7;

.field public final k:Lz77;

.field public final n:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ldj7;->C(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    aget v5, v0, v3

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-static {v5}, Leq3;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    or-int/2addr v4, v5

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    throw v0

    .line 26
    :cond_1
    sput v4, Lwj4;->p:I

    .line 27
    .line 28
    invoke-static {}, Lhl4;->values()[Lhl4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    array-length v1, v0

    .line 33
    move v3, v2

    .line 34
    :goto_1
    if-ge v3, v1, :cond_2

    .line 35
    .line 36
    aget-object v4, v0, v3

    .line 37
    .line 38
    iget-boolean v4, v4, Lhl4;->a:Z

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {}, Lek4;->values()[Lek4;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    array-length v1, v0

    .line 48
    move v3, v2

    .line 49
    :goto_2
    if-ge v2, v1, :cond_4

    .line 50
    .line 51
    aget-object v4, v0, v2

    .line 52
    .line 53
    iget-boolean v5, v4, Lek4;->a:Z

    .line 54
    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    iget v4, v4, Lek4;->b:I

    .line 58
    .line 59
    or-int/2addr v3, v4

    .line 60
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    sput v3, Lwj4;->q:I

    .line 64
    .line 65
    new-instance v0, Lz77;

    .line 66
    .line 67
    const-string v1, " "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lz77;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lwj4;->r:Lz77;

    .line 73
    .line 74
    return-void
.end method

.method public constructor <init>(Lqr5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    new-instance v1, Lhx0;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, v2}, Lhx0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget v0, Lwj4;->p:I

    .line 19
    .line 20
    iput v0, p0, Lwj4;->a:I

    .line 21
    .line 22
    sget v0, Lwj4;->q:I

    .line 23
    .line 24
    iput v0, p0, Lwj4;->b:I

    .line 25
    .line 26
    sget-object v0, Lwj4;->r:Lz77;

    .line 27
    .line 28
    iput-object v0, p0, Lwj4;->k:Lz77;

    .line 29
    .line 30
    sget-object v0, Lwl4;->a:Lwl4;

    .line 31
    .line 32
    iput-object v0, p0, Lwj4;->c:Lwl4;

    .line 33
    .line 34
    iput-object p1, p0, Lwj4;->d:Lar5;

    .line 35
    .line 36
    const/16 p1, 0x22

    .line 37
    .line 38
    iput-char p1, p0, Lwj4;->n:C

    .line 39
    .line 40
    sget-object p1, Lmp7;->a:Lmp7;

    .line 41
    .line 42
    iput-object p1, p0, Lwj4;->f:Lmp7;

    .line 43
    .line 44
    sget-object p1, Lay2;->a:Lay2;

    .line 45
    .line 46
    iput-object p1, p0, Lwj4;->e:Lay2;

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    new-instance p1, Lge;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
