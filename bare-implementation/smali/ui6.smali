.class public final Lui6;
.super Lna4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final x:[Ljava/lang/Object;

.field public static final y:Lui6;


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
    sput-object v5, Lui6;->x:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v1, Lui6;

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
    invoke-direct/range {v1 .. v6}, Lui6;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lui6;->y:Lui6;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lga4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p4, p0, Lui6;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Lui6;->p:I

    .line 8
    .line 9
    iput-object p5, p0, Lui6;->q:[Ljava/lang/Object;

    .line 10
    .line 11
    iput p2, p0, Lui6;->r:I

    .line 12
    .line 13
    iput p3, p0, Lui6;->t:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c([Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lui6;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget p0, p0, Lui6;->t:I

    .line 5
    .line 6
    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lui6;->q:[Ljava/lang/Object;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1}, Lcy0;->H(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    iget v3, p0, Lui6;->r:I

    .line 15
    .line 16
    and-int/2addr v2, v3

    .line 17
    aget-object v3, v1, v2

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    return v0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lui6;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()I
    .locals 0

    .line 1
    iget p0, p0, Lui6;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lui6;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lna4;->f:Lla4;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lla4;->f:Lja4;

    .line 6
    .line 7
    iget v0, p0, Lui6;->t:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Loi6;->p:Loi6;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Loi6;

    .line 15
    .line 16
    iget-object v2, p0, Lui6;->n:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Loi6;-><init>(I[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :goto_0
    iput-object v0, p0, Lna4;->f:Lla4;

    .line 23
    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    invoke-virtual {v0, p0}, Lla4;->x(I)Lja4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lui6;->t:I

    .line 2
    .line 3
    return p0
.end method
