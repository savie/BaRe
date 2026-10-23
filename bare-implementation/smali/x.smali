.class public final Lx;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final C(Lm2;[B)Lz0;
    .locals 2

    .line 1
    array-length p0, p2

    .line 2
    const/4 p1, 0x0

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    move p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p0, p1

    .line 9
    :goto_0
    array-length v1, p2

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    new-instance p0, La0;

    .line 13
    .line 14
    aget-byte v1, p2, p1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_1
    sget-object v0, Lm2;->f:Ld2;

    .line 20
    .line 21
    invoke-direct {p0, v0, p2}, Lr1;-><init>(Lm2;[B)V

    .line 22
    .line 23
    .line 24
    iput-boolean p1, p0, La0;->c:Z

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "Value of ASN1Boolean should have length 1, but was "

    .line 28
    .line 29
    invoke-static {v1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method
