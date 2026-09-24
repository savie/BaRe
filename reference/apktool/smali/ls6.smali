.class public final Lls6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final H(Lst6;)V
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lol1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lol1;->t(Lev6;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Lst6;->d()Lst6;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lva8;

    .line 17
    .line 18
    const-string v0, "Missing compounded message data"

    .line 19
    .line 20
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final c(Lev6;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lst6;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lst6;

    .line 6
    .line 7
    iget-object p0, p1, Lev6;->a:Ldv6;

    .line 8
    .line 9
    check-cast p0, Lut6;

    .line 10
    .line 11
    iget p0, p0, Lut6;->l:I

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method
