.class public final Lil7;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p1, Lbn4;->k:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lbn4;->h()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    :cond_0
    const/4 v0, 0x5

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    iput v1, p1, Lbn4;->k:I

    .line 15
    .line 16
    iget-object p0, p1, Lbn4;->d:[I

    .line 17
    .line 18
    iget p1, p1, Lbn4;->a:I

    .line 19
    .line 20
    sub-int/2addr p1, v2

    .line 21
    aget v0, p0, p1

    .line 22
    .line 23
    add-int/2addr v0, v2

    .line 24
    aput v0, p0, p1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x6

    .line 29
    if-ne p0, v0, :cond_2

    .line 30
    .line 31
    iput v1, p1, Lbn4;->k:I

    .line 32
    .line 33
    iget-object p0, p1, Lbn4;->d:[I

    .line 34
    .line 35
    iget p1, p1, Lbn4;->a:I

    .line 36
    .line 37
    sub-int/2addr p1, v2

    .line 38
    aget v0, p0, p1

    .line 39
    .line 40
    add-int/2addr v0, v2

    .line 41
    aput v0, p0, p1

    .line 42
    .line 43
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {p1}, Lbn4;->W()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Leq3;->s(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1}, Lbn4;->r()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "Expected a boolean but was "

    .line 61
    .line 62
    invoke-static {p0, p1, v0}, Lq;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    iget-boolean p2, p1, Ldn4;->e:Z

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ldn4;->A()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ldn4;->a()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Ldn4;->k:Lnw0;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "true"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "false"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p2, p0}, Lnw0;->Z(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Ldn4;->d:[I

    .line 30
    .line 31
    iget p1, p1, Ldn4;->a:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    aget p2, p0, p1

    .line 36
    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    aput p2, p0, p1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Ldn4;->j()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "Boolean cannot be used as a map key in JSON at path "

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JsonAdapter(Boolean)"

    .line 2
    .line 3
    return-object p0
.end method
