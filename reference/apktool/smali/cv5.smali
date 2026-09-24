.class public final Lcv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lev5;


# instance fields
.field public a:Lfv5;

.field public b:Lx46;

.field public c:Ll22;

.field public d:Lev5;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lcv5;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Lx46;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->b:Lx46;

    .line 2
    .line 3
    return-object p0
.end method

.method public final commit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcv5;->c:Ll22;

    .line 2
    .line 3
    iget-object v1, v0, Ll22;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Liv5;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Liv5;->d()Lev5;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Ll22;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ll22;->o(Lev5;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {v1}, Liv5;->d()Lev5;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eq v2, p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Liv5;->c()Lev5;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ll22;->m(Lev5;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, p0}, Ll22;->m(Lev5;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Liv5;->c()Lev5;

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcv5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcv5;->h:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcv5;->h:I

    .line 9
    .line 10
    return-void
.end method

.method public final getAttributes()Lxn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->a:Lfv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParent()Lev5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->d:Lev5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcv5;->h(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcv5;->b:Lx46;

    .line 2
    .line 3
    iget-object v1, p0, Lcv5;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lx46;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcv5;->d:Lev5;

    .line 14
    .line 15
    invoke-interface {p0}, Lev5;->getPrefix()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lev5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcv5;->c:Ll22;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ll22;->l(Lev5;Ljava/lang/String;)Lcv5;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcv5;->c:Ll22;

    .line 2
    .line 3
    iget-object v0, v0, Ll22;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcv5;->c:Ll22;

    .line 2
    .line 3
    iget-object v0, v0, Ll22;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Liv5;

    .line 6
    .line 7
    invoke-virtual {v0}, Liv5;->d()Lev5;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Liv5;->c()Lev5;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Lsn5;

    .line 18
    .line 19
    const-string v0, "Cannot remove node"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lev5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcv5;->a:Lfv5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfv5;->d(Ljava/lang/String;Ljava/lang/String;)Lav5;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcv5;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcv5;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcv5;->g:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "element "

    .line 4
    .line 5
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
