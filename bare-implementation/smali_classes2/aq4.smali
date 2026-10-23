.class public abstract Laq4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:[B

.field public final f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(IIIILv40;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Laq4;->g:I

    .line 6
    .line 7
    iput v0, p0, Laq4;->h:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Laq4;->i:Z

    .line 11
    .line 12
    iput v0, p0, Laq4;->j:I

    .line 13
    .line 14
    iput v0, p0, Laq4;->k:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    const/16 v0, 0x111

    .line 18
    .line 19
    add-int/2addr p3, v0

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    const/high16 v1, 0x40000

    .line 23
    .line 24
    add-int/2addr p1, v1

    .line 25
    const/high16 v1, 0x20000000

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int v1, p2, p3

    .line 32
    .line 33
    add-int/2addr v1, p1

    .line 34
    iput v1, p0, Laq4;->f:I

    .line 35
    .line 36
    invoke-virtual {p5, v1}, Lv40;->a(I)[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Laq4;->e:[B

    .line 41
    .line 42
    iput p2, p0, Laq4;->a:I

    .line 43
    .line 44
    iput p3, p0, Laq4;->b:I

    .line 45
    .line 46
    iput v0, p0, Laq4;->c:I

    .line 47
    .line 48
    iput p4, p0, Laq4;->d:I

    .line 49
    .line 50
    return-void
.end method

.method public static f(II[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p0, :cond_1

    .line 4
    .line 5
    aget v2, p2, v1

    .line 6
    .line 7
    if-gt v2, p1, :cond_0

    .line 8
    .line 9
    aput v0, p2, v1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sub-int/2addr v2, p1

    .line 13
    aput v2, p2, v1

    .line 14
    .line 15
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    .line 1
    iget v0, p0, Laq4;->g:I

    .line 2
    .line 3
    iget v1, p0, Laq4;->f:I

    .line 4
    .line 5
    iget v2, p0, Laq4;->b:I

    .line 6
    .line 7
    sub-int v3, v1, v2

    .line 8
    .line 9
    iget-object v4, p0, Laq4;->e:[B

    .line 10
    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iget v3, p0, Laq4;->a:I

    .line 16
    .line 17
    sub-int/2addr v0, v3

    .line 18
    and-int/lit8 v0, v0, -0x10

    .line 19
    .line 20
    iget v3, p0, Laq4;->j:I

    .line 21
    .line 22
    sub-int/2addr v3, v0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v4, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Laq4;->g:I

    .line 28
    .line 29
    sub-int/2addr v3, v0

    .line 30
    iput v3, p0, Laq4;->g:I

    .line 31
    .line 32
    iget v3, p0, Laq4;->h:I

    .line 33
    .line 34
    sub-int/2addr v3, v0

    .line 35
    iput v3, p0, Laq4;->h:I

    .line 36
    .line 37
    iget v3, p0, Laq4;->j:I

    .line 38
    .line 39
    sub-int/2addr v3, v0

    .line 40
    iput v3, p0, Laq4;->j:I

    .line 41
    .line 42
    :cond_0
    iget v0, p0, Laq4;->j:I

    .line 43
    .line 44
    sub-int/2addr v1, v0

    .line 45
    if-le p3, v1, :cond_1

    .line 46
    .line 47
    move p3, v1

    .line 48
    :cond_1
    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Laq4;->j:I

    .line 52
    .line 53
    add-int/2addr p1, p3

    .line 54
    iput p1, p0, Laq4;->j:I

    .line 55
    .line 56
    if-lt p1, v2, :cond_2

    .line 57
    .line 58
    sub-int/2addr p1, v2

    .line 59
    iput p1, p0, Laq4;->h:I

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Laq4;->g()V

    .line 62
    .line 63
    .line 64
    return p3
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget v0, p0, Laq4;->g:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object p0, p0, Laq4;->e:[B

    .line 5
    .line 6
    aget-byte p0, p0, v0

    .line 7
    .line 8
    and-int/lit16 p0, p0, 0xff

    .line 9
    .line 10
    return p0
.end method

.method public final c(II)I
    .locals 1

    .line 1
    iget v0, p0, Laq4;->g:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    sub-int/2addr v0, p2

    .line 5
    iget-object p0, p0, Laq4;->e:[B

    .line 6
    .line 7
    aget-byte p0, p0, v0

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    return p0
.end method

.method public abstract d()Lnn1;
.end method

.method public final e(I)I
    .locals 2

    .line 1
    iget v0, p0, Laq4;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Laq4;->g:I

    .line 6
    .line 7
    iget v1, p0, Laq4;->j:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    if-ge v1, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    if-lt v1, p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Laq4;->i:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Laq4;->k:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Laq4;->k:I

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1
    return v1
.end method

.method public final g()V
    .locals 3

    .line 1
    iget v0, p0, Laq4;->k:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Laq4;->g:I

    .line 6
    .line 7
    iget v2, p0, Laq4;->h:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    iput v1, p0, Laq4;->g:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Laq4;->k:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Laq4;->i(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public abstract h(Lv40;)V
.end method

.method public abstract i(I)V
.end method
