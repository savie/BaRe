.class public final Ljs6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final f(Lzu6;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p1, Low0;->b:Lvw2;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lvw2;->d(Low0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Low0;->s()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    if-lez v3, :cond_1

    .line 18
    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v5, p0, Lev6;->a:Ldv6;

    .line 25
    .line 26
    check-cast v5, Lut6;

    .line 27
    .line 28
    iget v5, v5, Lut6;->n:I

    .line 29
    .line 30
    add-int/2addr v5, v2

    .line 31
    iput v5, p1, Low0;->c:I

    .line 32
    .line 33
    :goto_0
    iget v5, p1, Low0;->c:I

    .line 34
    .line 35
    new-instance v6, Ly40;

    .line 36
    .line 37
    invoke-direct {v6}, Ly40;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Low0;->s()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iput v7, v6, Ly40;->b:I

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lvw2;->e(Low0;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    const-class v9, Lz83;

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    invoke-static {v7, v8, v9, v10}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lz83;

    .line 58
    .line 59
    iput-object v7, v6, Ly40;->c:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lvw2;->e(Low0;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    sget-object v9, Lh51;->c:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    long-to-int v7, v7

    .line 68
    div-int/2addr v7, v0

    .line 69
    invoke-virtual {p1, v9, v7}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iput-object v7, v6, Ly40;->d:Ljava/io/Serializable;

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget v6, v6, Ly40;->b:I

    .line 79
    .line 80
    if-nez v6, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    add-int/2addr v5, v6

    .line 84
    iput v5, p1, Low0;->c:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 88
    .line 89
    check-cast p0, Lut6;

    .line 90
    .line 91
    iget p0, p0, Lut6;->n:I

    .line 92
    .line 93
    add-int/2addr p0, v2

    .line 94
    add-int/2addr p0, v3

    .line 95
    iput p0, p1, Low0;->c:I

    .line 96
    .line 97
    return-void
.end method
