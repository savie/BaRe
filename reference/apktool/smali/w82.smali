.class public final Lw82;
.super Lq2;


# virtual methods
.method public final B(Lq1;)Lv1;
    .locals 0

    .line 1
    new-instance p0, Lt82;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lv1;-><init>(Lb0;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lt82;->c:I

    .line 8
    .line 9
    return-object p0
.end method

.method public final l(Lm1;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2;->d:Lb0;

    .line 2
    .line 3
    invoke-interface {v0}, Lb0;->d()Lq1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lq1;->u()Lq1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lq2;->y()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    iget p2, p0, Lq2;->b:I

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lq1;->o()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    :cond_0
    or-int/lit8 p2, p2, 0x20

    .line 28
    .line 29
    :cond_1
    iget p0, p0, Lq2;->c:I

    .line 30
    .line 31
    invoke-virtual {p1, p2, p0}, Lm1;->m(II)V

    .line 32
    .line 33
    .line 34
    :cond_2
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    invoke-virtual {v0, p0}, Lq1;->p(Z)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p1, p0}, Lm1;->i(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p1}, Lm1;->a()Lr82;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0, v1}, Lq1;->l(Lm1;Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lq2;->d:Lb0;

    .line 8
    .line 9
    invoke-interface {p0}, Lb0;->d()Lq1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lq1;->u()Lq1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lq1;->o()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final p(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2;->d:Lb0;

    .line 2
    .line 3
    invoke-interface {v0}, Lb0;->d()Lq1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lq1;->u()Lq1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lq2;->y()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lq1;->p(Z)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Lm1;->c(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget p0, p0, Lq2;->c:I

    .line 29
    .line 30
    invoke-static {p0}, Lm1;->e(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    add-int/2addr v0, p0

    .line 37
    return v0
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
