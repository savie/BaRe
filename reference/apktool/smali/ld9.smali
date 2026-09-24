.class public final Lld9;
.super Lpb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final x:[Ljava/lang/Object;

.field public static final y:Lld9;


# instance fields
.field public final transient n:[Ljava/lang/Object;

.field public final transient p:I

.field public final transient q:[Ljava/lang/Object;

.field public final transient r:I

.field public final transient t:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v5, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v5, Lld9;->x:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v1, Lld9;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v6, v5

    .line 12
    invoke-direct/range {v1 .. v6}, Lld9;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lld9;->y:Lld9;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lga4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p4, p0, Lld9;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Lld9;->p:I

    .line 8
    .line 9
    iput-object p5, p0, Lld9;->q:[Ljava/lang/Object;

    .line 10
    .line 11
    iput p2, p0, Lld9;->r:I

    .line 12
    .line 13
    iput p3, p0, Lld9;->t:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final C()Lib9;
    .locals 1

    .line 1
    iget-object v0, p0, Lld9;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    iget p0, p0, Lld9;->t:I

    .line 4
    .line 5
    invoke-static {p0, v0}, Lib9;->B(I[Ljava/lang/Object;)Lid9;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lld9;->q:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    const-wide/32 v3, -0x3361d2af

    .line 15
    .line 16
    .line 17
    mul-long/2addr v1, v3

    .line 18
    long-to-int v1, v1

    .line 19
    const/16 v2, 0xf

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-long v1, v1

    .line 26
    const-wide/32 v3, 0x1b873593

    .line 27
    .line 28
    .line 29
    mul-long/2addr v1, v3

    .line 30
    long-to-int v1, v1

    .line 31
    :goto_0
    iget v2, p0, Lld9;->r:I

    .line 32
    .line 33
    and-int/2addr v1, v2

    .line 34
    aget-object v2, v0, v1

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lld9;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final i([Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lld9;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget p0, p0, Lld9;->t:I

    .line 5
    .line 6
    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpb9;->B()Lib9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lib9;->E(I)Lra9;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final k()I
    .locals 0

    .line 1
    iget p0, p0, Lld9;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public final o()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final s()Lne8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpb9;->B()Lib9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lib9;->E(I)Lra9;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lld9;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public final t()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lld9;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
