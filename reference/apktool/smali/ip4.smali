.class public final Lip4;
.super Ljp4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ljp4;->a:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Ljp4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_1
    if-nez p3, :cond_2

    .line 10
    .line 11
    iget-object p3, p0, Ljp4;->c:Lhp4;

    .line 12
    .line 13
    :cond_2
    if-nez p4, :cond_3

    .line 14
    .line 15
    iget-object p4, p0, Ljp4;->d:Lhp4;

    .line 16
    .line 17
    :cond_3
    new-instance p0, Lip4;

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Ljp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final i()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object p0, p0, Ljp4;->d:Lhp4;

    .line 10
    .line 11
    invoke-interface {p0}, Lhp4;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method
