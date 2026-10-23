.class public final Lyl5;
.super Lzl5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Lr2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lz0;->a:Lm2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lz0;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "not_defined_in_RFC4178@please_ignore"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v1, Lm2;->b:I

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v0, v2, :cond_3

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    if-eq v0, p0, :cond_3

    .line 32
    .line 33
    const/4 p0, 0x4

    .line 34
    if-ne v0, p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Lfk7;

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Unknown Object Tag "

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, v1, Lm2;->b:I

    .line 47
    .line 48
    const-string v1, " encountered."

    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lzl5;->g(Lz0;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void

    .line 66
    :cond_4
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lzl5;->h(Lz0;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
