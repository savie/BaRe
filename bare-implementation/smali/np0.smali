.class public final Lnp0;
.super Lop0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final A([Lmp0;[Lmp0;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lnp0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lop0;-><init>(Lop0;[Lmp0;[Lmp0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lop0;->p(Ljava/lang/Object;Lfk4;Lc87;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lop0;->f:Ljava/lang/Object;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lfk4;->q()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public final g(Lfk5;)Lem4;
    .locals 1

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lof8;-><init>(Lop0;Lfk5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final i(Ljava/util/Set;)Lem4;
    .locals 2

    .line 1
    new-instance v0, Lnp0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lop0;-><init>(Lop0;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final r()Lop0;
    .locals 1

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lop0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lip0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lip0;-><init>(Lnp0;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "BeanSerializer for "

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final x(Ljava/util/Set;Ljava/util/Set;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lnp0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lop0;-><init>(Lop0;Ljava/util/Set;Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final y(Ljava/lang/Object;)Lop0;
    .locals 2

    .line 1
    new-instance v0, Lnp0;

    .line 2
    .line 3
    iget-object v1, p0, Lop0;->n:Llr5;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final z(Llr5;)Lop0;
    .locals 2

    .line 1
    new-instance v0, Lnp0;

    .line 2
    .line 3
    iget-object v1, p0, Lop0;->f:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
