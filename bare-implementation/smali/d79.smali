.class public final Ld79;
.super Lc79;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I

.field public final f:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld79;->f:Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    if-ltz p2, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x14

    .line 9
    .line 10
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-array p2, p1, [B

    .line 15
    .line 16
    iput-object p2, p0, Ld79;->c:[B

    .line 17
    .line 18
    iput p1, p0, Ld79;->d:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "bufferSize must be >= 0"

    .line 22
    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lc79;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Ld79;->c:[B

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 8
    .line 9
    iget v2, p0, Ld79;->e:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v2, 0x1

    .line 14
    .line 15
    iput v0, p0, Ld79;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    int-to-byte p0, p1

    .line 19
    invoke-static {v1, v2, v3, p0}, Lq89;->e([BJB)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 24
    .line 25
    iput v0, p0, Ld79;->e:I

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    or-int/lit16 v0, p1, 0x80

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    invoke-static {v1, v2, v3, v0}, Lq89;->e([BJB)V

    .line 32
    .line 33
    .line 34
    ushr-int/lit8 p1, p1, 0x7

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    .line 38
    .line 39
    iget v2, p0, Ld79;->e:I

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    add-int/lit8 v0, v2, 0x1

    .line 44
    .line 45
    iput v0, p0, Ld79;->e:I

    .line 46
    .line 47
    int-to-byte p0, p1

    .line 48
    aput-byte p0, v1, v2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 52
    .line 53
    iput v0, p0, Ld79;->e:I

    .line 54
    .line 55
    or-int/lit16 v0, p1, 0x80

    .line 56
    .line 57
    int-to-byte v0, v0

    .line 58
    aput-byte v0, v1, v2

    .line 59
    .line 60
    ushr-int/lit8 p1, p1, 0x7

    .line 61
    .line 62
    goto :goto_1
.end method

.method public final B(I)V
    .locals 2

    .line 1
    iget v0, p0, Ld79;->d:I

    .line 2
    .line 3
    iget v1, p0, Ld79;->e:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ld79;->v()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final a(B)V
    .locals 2

    .line 1
    iget v0, p0, Ld79;->e:I

    .line 2
    .line 3
    iget v1, p0, Ld79;->d:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ld79;->v()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Ld79;->e:I

    .line 11
    .line 12
    iget-object v1, p0, Ld79;->c:[B

    .line 13
    .line 14
    aput-byte p1, v1, v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Ld79;->e:I

    .line 19
    .line 20
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ld79;->z(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ld79;->z(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Ld79;->w(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Ld79;->p(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    mul-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    invoke-static {p1}, Lc79;->t(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int v1, v0, p1

    .line 16
    .line 17
    iget v2, p0, Ld79;->d:I

    .line 18
    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    new-array v0, p1, [B

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {p2, v0, v1, p1}, Ltu0;->F(Ljava/lang/String;[BII)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Ld79;->o(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p1}, Ld79;->u([BII)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget p1, p0, Ld79;->e:I

    .line 36
    .line 37
    sub-int p1, v2, p1

    .line 38
    .line 39
    if-le v1, p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Ld79;->v()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Lc79;->t(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget v1, p0, Ld79;->e:I

    .line 53
    .line 54
    iget-object v3, p0, Ld79;->c:[B

    .line 55
    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    add-int v0, v1, p1

    .line 59
    .line 60
    :try_start_0
    iput v0, p0, Ld79;->e:I

    .line 61
    .line 62
    sub-int/2addr v2, v0

    .line 63
    invoke-static {p2, v3, v0, v2}, Ltu0;->F(Ljava/lang/String;[BII)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput v1, p0, Ld79;->e:I

    .line 68
    .line 69
    sub-int v0, p2, v1

    .line 70
    .line 71
    sub-int/2addr v0, p1

    .line 72
    invoke-virtual {p0, v0}, Ld79;->A(I)V

    .line 73
    .line 74
    .line 75
    iput p2, p0, Ld79;->e:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-static {p2}, Ltu0;->E(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Ld79;->A(I)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Ld79;->e:I

    .line 86
    .line 87
    invoke-static {p2, v3, v0, p1}, Ltu0;->F(Ljava/lang/String;[BII)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Ld79;->e:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    move-exception p0

    .line 95
    new-instance p1, Le79;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Le79;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public final f(ILt69;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Ld79;->p(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lt69;->d()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Ld79;->o(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lt69;->p(Lc79;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    int-to-byte p1, p2

    .line 11
    iget p2, p0, Ld79;->e:I

    .line 12
    .line 13
    iget-object v0, p0, Ld79;->c:[B

    .line 14
    .line 15
    aput-byte p1, v0, p2

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    iput p2, p0, Ld79;->e:I

    .line 20
    .line 21
    return-void
.end method

.method public final h(J)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ld79;->w(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ld79;->u([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld79;->o(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Ld79;->m(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    if-ltz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ld79;->A(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-long p1, p2

    .line 17
    invoke-virtual {p0, p1, p2}, Ld79;->x(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final l(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Ld79;->x(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final m(J)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ld79;->x(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ld79;->A(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Ld79;->o(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final q(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld79;->B(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Ld79;->y(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ld79;->A(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final u([BII)V
    .locals 4

    .line 1
    iget v0, p0, Ld79;->e:I

    .line 2
    .line 3
    iget v1, p0, Ld79;->d:I

    .line 4
    .line 5
    sub-int v2, v1, v0

    .line 6
    .line 7
    iget-object v3, p0, Ld79;->c:[B

    .line 8
    .line 9
    if-lt v2, p3, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Ld79;->e:I

    .line 15
    .line 16
    add-int/2addr p1, p3

    .line 17
    iput p1, p0, Ld79;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    add-int/2addr p2, v2

    .line 24
    sub-int/2addr p3, v2

    .line 25
    iput v1, p0, Ld79;->e:I

    .line 26
    .line 27
    invoke-virtual {p0}, Ld79;->v()V

    .line 28
    .line 29
    .line 30
    if-gt p3, v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput p3, p0, Ld79;->e:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Ld79;->f:Ljava/io/ByteArrayOutputStream;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget v0, p0, Ld79;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Ld79;->f:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    iget-object v2, p0, Ld79;->c:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v3, p0, Ld79;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public final w(J)V
    .locals 7

    .line 1
    iget v0, p0, Ld79;->e:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    long-to-int v2, p1

    .line 6
    int-to-byte v2, v2

    .line 7
    iget-object v3, p0, Ld79;->c:[B

    .line 8
    .line 9
    aput-byte v2, v3, v0

    .line 10
    .line 11
    add-int/lit8 v2, v0, 0x2

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    shr-long v5, p1, v4

    .line 16
    .line 17
    long-to-int v5, v5

    .line 18
    int-to-byte v5, v5

    .line 19
    aput-byte v5, v3, v1

    .line 20
    .line 21
    add-int/lit8 v1, v0, 0x3

    .line 22
    .line 23
    const/16 v5, 0x10

    .line 24
    .line 25
    shr-long v5, p1, v5

    .line 26
    .line 27
    long-to-int v5, v5

    .line 28
    int-to-byte v5, v5

    .line 29
    aput-byte v5, v3, v2

    .line 30
    .line 31
    add-int/lit8 v2, v0, 0x4

    .line 32
    .line 33
    const/16 v5, 0x18

    .line 34
    .line 35
    shr-long v5, p1, v5

    .line 36
    .line 37
    long-to-int v5, v5

    .line 38
    int-to-byte v5, v5

    .line 39
    aput-byte v5, v3, v1

    .line 40
    .line 41
    add-int/lit8 v1, v0, 0x5

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    shr-long v5, p1, v5

    .line 46
    .line 47
    long-to-int v5, v5

    .line 48
    int-to-byte v5, v5

    .line 49
    aput-byte v5, v3, v2

    .line 50
    .line 51
    add-int/lit8 v2, v0, 0x6

    .line 52
    .line 53
    const/16 v5, 0x28

    .line 54
    .line 55
    shr-long v5, p1, v5

    .line 56
    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    aput-byte v5, v3, v1

    .line 60
    .line 61
    add-int/lit8 v1, v0, 0x7

    .line 62
    .line 63
    const/16 v5, 0x30

    .line 64
    .line 65
    shr-long v5, p1, v5

    .line 66
    .line 67
    long-to-int v5, v5

    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v3, v2

    .line 70
    .line 71
    add-int/2addr v0, v4

    .line 72
    const/16 v2, 0x38

    .line 73
    .line 74
    shr-long/2addr p1, v2

    .line 75
    long-to-int p1, p1

    .line 76
    int-to-byte p1, p1

    .line 77
    aput-byte p1, v3, v1

    .line 78
    .line 79
    iput v0, p0, Ld79;->e:I

    .line 80
    .line 81
    return-void
.end method

.method public final x(J)V
    .locals 9

    .line 1
    sget-boolean v0, Lc79;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object v2, p0, Ld79;->c:[B

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const-wide/16 v5, -0x80

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    and-long v7, p1, v5

    .line 13
    .line 14
    cmp-long v0, v7, v3

    .line 15
    .line 16
    iget v7, p0, Ld79;->e:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 v0, v7, 0x1

    .line 21
    .line 22
    iput v0, p0, Ld79;->e:I

    .line 23
    .line 24
    int-to-long v0, v7

    .line 25
    long-to-int p0, p1

    .line 26
    int-to-byte p0, p0

    .line 27
    invoke-static {v2, v0, v1, p0}, Lq89;->e([BJB)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v0, v7, 0x1

    .line 32
    .line 33
    iput v0, p0, Ld79;->e:I

    .line 34
    .line 35
    int-to-long v7, v7

    .line 36
    long-to-int v0, p1

    .line 37
    or-int/lit16 v0, v0, 0x80

    .line 38
    .line 39
    int-to-byte v0, v0

    .line 40
    invoke-static {v2, v7, v8, v0}, Lq89;->e([BJB)V

    .line 41
    .line 42
    .line 43
    ushr-long/2addr p1, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    and-long v7, p1, v5

    .line 46
    .line 47
    cmp-long v0, v7, v3

    .line 48
    .line 49
    iget v7, p0, Ld79;->e:I

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    add-int/lit8 v0, v7, 0x1

    .line 54
    .line 55
    iput v0, p0, Ld79;->e:I

    .line 56
    .line 57
    long-to-int p0, p1

    .line 58
    int-to-byte p0, p0

    .line 59
    aput-byte p0, v2, v7

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    add-int/lit8 v0, v7, 0x1

    .line 63
    .line 64
    iput v0, p0, Ld79;->e:I

    .line 65
    .line 66
    long-to-int v0, p1

    .line 67
    or-int/lit16 v0, v0, 0x80

    .line 68
    .line 69
    int-to-byte v0, v0

    .line 70
    aput-byte v0, v2, v7

    .line 71
    .line 72
    ushr-long/2addr p1, v1

    .line 73
    goto :goto_1
.end method

.method public final y(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Ld79;->A(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final z(I)V
    .locals 5

    .line 1
    iget v0, p0, Ld79;->e:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    int-to-byte v2, p1

    .line 6
    iget-object v3, p0, Ld79;->c:[B

    .line 7
    .line 8
    aput-byte v2, v3, v0

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x2

    .line 11
    .line 12
    shr-int/lit8 v4, p1, 0x8

    .line 13
    .line 14
    int-to-byte v4, v4

    .line 15
    aput-byte v4, v3, v1

    .line 16
    .line 17
    add-int/lit8 v1, v0, 0x3

    .line 18
    .line 19
    shr-int/lit8 v4, p1, 0x10

    .line 20
    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, v3, v2

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    shr-int/lit8 p1, p1, 0x18

    .line 27
    .line 28
    aput-byte p1, v3, v1

    .line 29
    .line 30
    iput v0, p0, Ld79;->e:I

    .line 31
    .line 32
    return-void
.end method
