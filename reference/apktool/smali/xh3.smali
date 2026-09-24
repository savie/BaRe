.class public final Lxh3;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lxh3;->m(Lwo4;F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final l()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lyl0;->b()Lwo4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lyl0;->d()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lxh3;->m(Lwo4;F)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final m(Lwo4;F)F
    .locals 4

    .line 1
    iget-object v0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p1, Lwo4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lyl0;->e:Lcd;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p1, Lwo4;->h:Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Ljava/lang/Float;

    .line 20
    .line 21
    iget-object v3, p1, Lwo4;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {p0}, Lyl0;->e()F

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Float;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_0
    iget p0, p1, Lwo4;->i:F

    .line 42
    .line 43
    const v1, -0x358c9d09

    .line 44
    .line 45
    .line 46
    cmpl-float p0, p0, v1

    .line 47
    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Float;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    iput p0, p1, Lwo4;->i:F

    .line 57
    .line 58
    :cond_1
    iget p0, p1, Lwo4;->i:F

    .line 59
    .line 60
    iget v0, p1, Lwo4;->j:F

    .line 61
    .line 62
    cmpl-float v0, v0, v1

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p1, Lwo4;->c:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p1, Lwo4;->j:F

    .line 75
    .line 76
    :cond_2
    iget p1, p1, Lwo4;->j:F

    .line 77
    .line 78
    invoke-static {p0, p1, p2}, Lsg5;->d(FFF)F

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :cond_3
    const-string p0, "Missing values for keyframe."

    .line 84
    .line 85
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return p0
.end method
