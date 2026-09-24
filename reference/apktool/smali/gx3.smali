.class public final Lgx3;
.super Lxo2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lxo2;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast p0, Lfx3;

    .line 4
    .line 5
    iget-object p0, p0, Lfx3;->a:Lex3;

    .line 6
    .line 7
    iget-object p0, p0, Lex3;->a:Llx3;

    .line 8
    .line 9
    iget-object p0, p0, Llx3;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object p0, p0, Lxo2;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast p0, Lfx3;

    .line 4
    .line 5
    invoke-virtual {p0}, Lfx3;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lfx3;->d:Z

    .line 10
    .line 11
    iget-object p0, p0, Lfx3;->a:Lex3;

    .line 12
    .line 13
    iget-object p0, p0, Lex3;->a:Llx3;

    .line 14
    .line 15
    iget-object v1, p0, Llx3;->d:Lyk6;

    .line 16
    .line 17
    iget-object v2, p0, Llx3;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Llx3;->l:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v4, p0, Llx3;->e:Lnr0;

    .line 28
    .line 29
    invoke-interface {v4, v2}, Lnr0;->f(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Llx3;->l:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Llx3;->f:Z

    .line 36
    .line 37
    iget-object v2, p0, Llx3;->i:Ljx3;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lyk6;->i(Lpx7;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Llx3;->i:Ljx3;

    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Llx3;->k:Ljx3;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lyk6;->i(Lpx7;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Llx3;->k:Ljx3;

    .line 54
    .line 55
    :cond_2
    iget-object v2, p0, Llx3;->m:Ljx3;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lyk6;->i(Lpx7;)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Llx3;->m:Ljx3;

    .line 63
    .line 64
    :cond_3
    iget-object v1, p0, Llx3;->a:Lgl7;

    .line 65
    .line 66
    iget-object v2, v1, Lgl7;->c:Lot9;

    .line 67
    .line 68
    iput-object v3, v1, Lgl7;->l:Lnx3;

    .line 69
    .line 70
    iget-object v4, v1, Lgl7;->i:[B

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    iget-object v5, v2, Lot9;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lm35;

    .line 77
    .line 78
    if-nez v5, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v5, v4}, Lm35;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_0
    iget-object v4, v1, Lgl7;->j:[I

    .line 85
    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    iget-object v5, v2, Lot9;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Lm35;

    .line 91
    .line 92
    if-nez v5, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    invoke-virtual {v5, v4}, Lm35;->g(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    :goto_1
    iget-object v4, v1, Lgl7;->m:Landroid/graphics/Bitmap;

    .line 99
    .line 100
    if-eqz v4, :cond_8

    .line 101
    .line 102
    iget-object v5, v2, Lot9;->a:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v5, Lnr0;

    .line 105
    .line 106
    invoke-interface {v5, v4}, Lnr0;->f(Landroid/graphics/Bitmap;)V

    .line 107
    .line 108
    .line 109
    :cond_8
    iput-object v3, v1, Lgl7;->m:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    iput-object v3, v1, Lgl7;->d:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    iput-object v3, v1, Lgl7;->s:Ljava/lang/Boolean;

    .line 114
    .line 115
    iget-object v1, v1, Lgl7;->e:[B

    .line 116
    .line 117
    if-eqz v1, :cond_a

    .line 118
    .line 119
    iget-object v2, v2, Lot9;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Lm35;

    .line 122
    .line 123
    if-nez v2, :cond_9

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    invoke-virtual {v2, v1}, Lm35;->g(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    :goto_2
    iput-boolean v0, p0, Llx3;->j:Z

    .line 130
    .line 131
    return-void
.end method

.method public final c()I
    .locals 3

    .line 1
    iget-object p0, p0, Lxo2;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast p0, Lfx3;

    .line 4
    .line 5
    iget-object p0, p0, Lfx3;->a:Lex3;

    .line 6
    .line 7
    iget-object p0, p0, Lex3;->a:Llx3;

    .line 8
    .line 9
    iget-object v0, p0, Llx3;->a:Lgl7;

    .line 10
    .line 11
    iget-object v1, v0, Lgl7;->d:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Lgl7;->i:[B

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    iget-object v0, v0, Lgl7;->j:[I

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    mul-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iget p0, p0, Llx3;->n:I

    .line 28
    .line 29
    add-int/2addr v0, p0

    .line 30
    return v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Lfx3;

    .line 2
    .line 3
    return-object p0
.end method
