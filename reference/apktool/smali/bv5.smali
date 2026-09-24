.class public final Lbv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lev5;


# instance fields
.field public a:Lfv5;

.field public b:Ll22;

.field public c:Liv5;

.field public d:Ljava/lang/String;

.field public e:I


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lbv5;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Lx46;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final commit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lbv5;->c:Liv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lev5;

    .line 23
    .line 24
    :goto_0
    invoke-interface {p0}, Lev5;->commit()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Lsn5;

    .line 29
    .line 30
    const-string v0, "No root node"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
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
    iput p1, p0, Lbv5;->e:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lbv5;->e:I

    .line 9
    .line 10
    return-void
.end method

.method public final getAttributes()Lxn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lbv5;->a:Lfv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getParent()Lev5;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbv5;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Z)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lev5;
    .locals 1

    .line 1
    iget-object v0, p0, Lbv5;->b:Ll22;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lbv5;->c:Liv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-object p0, p0, Lbv5;->c:Liv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lev5;

    .line 23
    .line 24
    :goto_0
    invoke-interface {p0}, Lev5;->remove()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Lsn5;

    .line 29
    .line 30
    const-string v0, "No root node"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lev5;
    .locals 0

    .line 1
    iget-object p0, p0, Lbv5;->a:Lfv5;

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
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbv5;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
