.class public final Lf82;
.super Lu;


# virtual methods
.method public final l(Lm1;Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lu;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte v1, p0, v0

    .line 5
    .line 6
    const/16 v2, 0xff

    .line 7
    .line 8
    and-int/2addr v1, v2

    .line 9
    array-length v3, p0

    .line 10
    add-int/lit8 v4, v3, -0x1

    .line 11
    .line 12
    aget-byte v5, p0, v4

    .line 13
    .line 14
    shl-int v1, v2, v1

    .line 15
    .line 16
    and-int/2addr v1, v5

    .line 17
    int-to-byte v1, v1

    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v5, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v2, p2, p0}, Lm1;->k(IZ[B)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1, v2, p2}, Lm1;->n(IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lm1;->i(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0, v0, v4}, Lm1;->g([BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lm1;->f(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lu;->a:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final u()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final w()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method
