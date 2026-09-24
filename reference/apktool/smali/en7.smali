.class public final Len7;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [C

    .line 2
    .line 3
    array-length p0, p2

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    check-cast p1, [C

    .line 2
    .line 3
    sget-object p0, Lx77;->x:Lx77;

    .line 4
    .line 5
    iget-object p3, p3, Lc87;->a:Lv77;

    .line 6
    .line 7
    invoke-virtual {p3, p0}, Lv77;->l(Lx77;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 p3, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    array-length p0, p1

    .line 15
    invoke-virtual {p2, p1}, Lfk4;->U(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    array-length p0, p1

    .line 19
    :goto_0
    if-ge p3, p0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, p1, p3, v0}, Lfk4;->c0([CII)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 p3, p3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lfk4;->n()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    array-length p0, p1

    .line 33
    invoke-virtual {p2, p1, p3, p0}, Lfk4;->c0([CII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    check-cast p1, [C

    .line 2
    .line 3
    sget-object p0, Lx77;->x:Lx77;

    .line 4
    .line 5
    iget-object p3, p3, Lc87;->a:Lv77;

    .line 6
    .line 7
    invoke-virtual {p3, p0}, Lv77;->l(Lx77;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 p3, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lmm4;->e:Lmm4;

    .line 15
    .line 16
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    array-length v0, p1

    .line 25
    :goto_0
    if-ge p3, v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p2, p1, p3, v1}, Lfk4;->c0([CII)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 p3, p3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p0, Lmm4;->k:Lmm4;

    .line 35
    .line 36
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    array-length v0, p1

    .line 45
    invoke-virtual {p2, p1, p3, v0}, Lfk4;->c0([CII)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 49
    .line 50
    .line 51
    return-void
.end method
