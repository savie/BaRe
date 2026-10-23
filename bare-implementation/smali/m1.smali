.class public Lm1;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static c(I)I
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v0
.end method

.method public static d(IZ)I
    .locals 1

    .line 1
    invoke-static {p0}, Lm1;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    add-int/2addr v0, p0

    .line 7
    return v0
.end method

.method public static e(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    :goto_0
    ushr-int/lit8 p0, p0, 0x7

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v0
.end method


# virtual methods
.method public a()Lr82;
    .locals 1

    .line 1
    new-instance v0, Lr82;

    .line 2
    .line 3
    iget-object p0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lm1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public b()Lg92;
    .locals 1

    .line 1
    new-instance v0, Lg92;

    .line 2
    .line 3
    iget-object p0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lm1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h([BI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    shl-int/lit8 p2, p2, 0x3

    .line 5
    .line 6
    or-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    int-to-long v0, p2

    .line 9
    invoke-virtual {p0, v0, v1}, Lm1;->r(J)V

    .line 10
    .line 11
    .line 12
    array-length p2, p1

    .line 13
    int-to-long v0, p2

    .line 14
    invoke-virtual {p0, v0, v1}, Lm1;->r(J)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public i(I)V
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 13
    .line 14
    int-to-byte v4, p1

    .line 15
    aput-byte v4, v2, v3

    .line 16
    .line 17
    ushr-int/lit8 p1, p1, 0x8

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    rsub-int/lit8 p1, v3, 0x5

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x2

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    int-to-byte p1, p1

    .line 27
    aput-byte p1, v2, v1

    .line 28
    .line 29
    rsub-int/lit8 p1, v3, 0x6

    .line 30
    .line 31
    invoke-virtual {p0, v2, v1, p1}, Lm1;->g([BII)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    move v1, v3

    .line 36
    goto :goto_0
.end method

.method public j([Lb0;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-interface {v2}, Lb0;->d()Lq1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, p0, v3}, Lq1;->l(Lm1;Z)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public k(IZ[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lm1;->n(IZ)V

    .line 2
    .line 3
    .line 4
    array-length p1, p3

    .line 5
    invoke-virtual {p0, p1}, Lm1;->i(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    array-length p2, p3

    .line 10
    invoke-virtual {p0, p3, p1, p2}, Lm1;->g([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public l(ZI[Lb0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lm1;->n(IZ)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x80

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3}, Lm1;->j([Lb0;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public m(II)V
    .locals 4

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x6

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    and-int/lit8 v2, p2, 0x7f

    .line 14
    .line 15
    int-to-byte v2, v2

    .line 16
    const/4 v3, 0x5

    .line 17
    aput-byte v2, v1, v3

    .line 18
    .line 19
    :goto_0
    const/16 v2, 0x7f

    .line 20
    .line 21
    if-le p2, v2, :cond_1

    .line 22
    .line 23
    ushr-int/lit8 p2, p2, 0x7

    .line 24
    .line 25
    add-int/lit8 v3, v3, -0x1

    .line 26
    .line 27
    and-int/lit8 v2, p2, 0x7f

    .line 28
    .line 29
    or-int/lit16 v2, v2, 0x80

    .line 30
    .line 31
    int-to-byte v2, v2

    .line 32
    aput-byte v2, v1, v3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    or-int/2addr p1, v0

    .line 38
    int-to-byte p1, p1

    .line 39
    aput-byte p1, v1, v3

    .line 40
    .line 41
    rsub-int/lit8 p1, v3, 0x6

    .line 42
    .line 43
    invoke-virtual {p0, v1, v3, p1}, Lm1;->g([BII)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public n(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lm1;->f(I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public o(Lq1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p0, v0}, Lq1;->l(Lm1;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public p([Lq1;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, p0, v3}, Lq1;->l(Lm1;Z)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public q(II)V
    .locals 2

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Lm1;->r(J)V

    .line 5
    .line 6
    .line 7
    int-to-long p1, p2

    .line 8
    const-wide v0, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    and-long/2addr p1, v0

    .line 14
    invoke-virtual {p0, p1, p2}, Lm1;->r(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public r(J)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    iget-object v1, p0, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    long-to-int p0, p1

    .line 13
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    long-to-int v0, p1

    .line 18
    and-int/lit8 v0, v0, 0x7f

    .line 19
    .line 20
    or-int/lit16 v0, v0, 0x80

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    ushr-long/2addr p1, v0

    .line 27
    goto :goto_0
.end method
