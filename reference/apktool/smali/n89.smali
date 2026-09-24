.class public final Ln89;
.super Lp89;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp89;->k(Ljava/lang/Object;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final b(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    sget-boolean p0, Lq89;->f:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4}, Lq89;->i(Ljava/lang/Object;JB)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lq89;->k(Ljava/lang/Object;JB)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/lang/Object;JD)V
    .locals 0

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p4

    .line 5
    invoke-virtual/range {p0 .. p5}, Lp89;->f(Ljava/lang/Object;JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Ljava/lang/Object;JF)V
    .locals 0

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lp89;->e(Ljava/lang/Object;JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    sget-boolean p0, Lq89;->f:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    int-to-byte p0, p4

    .line 6
    invoke-static {p1, p2, p3, p0}, Lq89;->i(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    int-to-byte p0, p4

    .line 11
    invoke-static {p1, p2, p3, p0}, Lq89;->k(Ljava/lang/Object;JB)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp89;->j(Ljava/lang/Object;J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final i(Ljava/lang/Object;J)Z
    .locals 7

    .line 1
    sget-boolean p0, Lq89;->f:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x3

    .line 6
    const-wide/16 v3, 0x3

    .line 7
    .line 8
    const-wide/16 v5, -0x4

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    and-long/2addr v5, p2

    .line 13
    sget-object p0, Lq89;->c:Lp89;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v5, v6}, Lp89;->j(Ljava/lang/Object;J)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    not-long p1, p2

    .line 20
    and-long/2addr p1, v3

    .line 21
    shl-long/2addr p1, v2

    .line 22
    long-to-int p1, p1

    .line 23
    ushr-int/2addr p0, p1

    .line 24
    int-to-byte p0, p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    return v0

    .line 29
    :cond_1
    and-long/2addr v5, p2

    .line 30
    sget-object p0, Lq89;->c:Lp89;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v5, v6}, Lp89;->j(Ljava/lang/Object;J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    and-long p1, p2, v3

    .line 37
    .line 38
    shl-long/2addr p1, v2

    .line 39
    long-to-int p1, p1

    .line 40
    ushr-int/2addr p0, p1

    .line 41
    int-to-byte p0, p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    return v0
.end method
