.class public final Lpx2;
.super Ly50;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lx77;->K:Lx77;

    .line 15
    .line 16
    iget-object v2, p3, Lc87;->a:Lv77;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lv77;->l(Lx77;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lpx2;->s(Ljava/util/EnumSet;Lfk4;Lc87;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p2, p1}, Lfk4;->U(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lpx2;->s(Ljava/util/EnumSet;Lfk4;Lc87;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lfk4;->n()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final o(Lrc8;)Lfu1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final bridge synthetic q(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lpx2;->s(Ljava/util/EnumSet;Lfk4;Lc87;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)Ly50;
    .locals 6

    .line 1
    new-instance v0, Lpx2;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Ly50;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final s(Ljava/util/EnumSet;Lfk4;Lc87;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Ly50;->n:Lem4;

    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Enum;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Ly50;->d:Lkp0;

    .line 29
    .line 30
    invoke-virtual {p3, v0, v2}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    invoke-virtual {v0, v1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
