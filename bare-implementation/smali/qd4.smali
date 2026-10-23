.class public final Lqd4;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lqd4;->l(Lwo4;F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final l(Lwo4;F)I
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
    check-cast v2, Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v3, p1, Lwo4;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Ljava/lang/Integer;

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
    check-cast p0, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_0
    iget p0, p1, Lwo4;->k:I

    .line 42
    .line 43
    const v1, 0x2ec8fb09

    .line 44
    .line 45
    .line 46
    if-ne p0, v1, :cond_1

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    iput p0, p1, Lwo4;->k:I

    .line 55
    .line 56
    :cond_1
    iget p0, p1, Lwo4;->k:I

    .line 57
    .line 58
    iget v0, p1, Lwo4;->l:I

    .line 59
    .line 60
    if-ne v0, v1, :cond_2

    .line 61
    .line 62
    iget-object v0, p1, Lwo4;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p1, Lwo4;->l:I

    .line 71
    .line 72
    :cond_2
    iget p1, p1, Lwo4;->l:I

    .line 73
    .line 74
    sget-object v0, Lsg5;->a:Landroid/graphics/PointF;

    .line 75
    .line 76
    int-to-float v0, p0

    .line 77
    sub-int/2addr p1, p0

    .line 78
    int-to-float p0, p1

    .line 79
    mul-float/2addr p2, p0

    .line 80
    add-float/2addr p2, v0

    .line 81
    float-to-int p0, p2

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
