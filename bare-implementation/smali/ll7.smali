.class public final Lll7;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lbn4;->z()D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Double;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    iget-boolean p0, p1, Ldn4;->e:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    iput-boolean p0, p1, Ldn4;->e:Z

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ldn4;->m(Ljava/lang/String;)Ldn4;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Ldn4;->A()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ldn4;->a()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Ldn4;->k:Lnw0;

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p2}, Lnw0;->Z(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p1, Ldn4;->d:[I

    .line 53
    .line 54
    iget p1, p1, Ldn4;->a:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 57
    .line 58
    aget p2, p0, p1

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    aput p2, p0, p1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const-string p0, "Numeric values must be finite, but was "

    .line 66
    .line 67
    invoke-static {p0, v0, v1}, Ld6;->g(Ljava/lang/String;D)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JsonAdapter(Double)"

    .line 2
    .line 3
    return-object p0
.end method
