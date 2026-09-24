.class public final Ll14;
.super Lqn0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Le26;

.field public B:Lxi8;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Lv15;

.field public final u:Lv15;

.field public final v:Landroid/graphics/RectF;

.field public final w:I

.field public final x:I

.field public final y:Lf14;

.field public final z:Le26;


# direct methods
.method public constructor <init>(Lc35;Lam0;Lk14;)V
    .locals 12

    .line 1
    iget v0, p3, Lk14;->h:I

    .line 2
    .line 3
    invoke-static {v0}, Ldj7;->A(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 13
    .line 14
    :goto_0
    move-object v5, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget v0, p3, Lk14;->i:I

    .line 23
    .line 24
    invoke-static {v0}, Ldj7;->A(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_2
    move-object v6, v0

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_3
    iget v7, p3, Lk14;->j:F

    .line 48
    .line 49
    iget-object v8, p3, Lk14;->d:Ldc;

    .line 50
    .line 51
    iget-object v9, p3, Lk14;->g:Lbc;

    .line 52
    .line 53
    iget-object v10, p3, Lk14;->k:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v11, p3, Lk14;->l:Lbc;

    .line 56
    .line 57
    move-object v2, p0

    .line 58
    move-object v3, p1

    .line 59
    move-object v4, p2

    .line 60
    invoke-direct/range {v2 .. v11}, Lqn0;-><init>(Lc35;Lam0;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLdc;Lbc;Ljava/util/ArrayList;Lbc;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lv15;

    .line 64
    .line 65
    invoke-direct {p0}, Lv15;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p0, v2, Ll14;->t:Lv15;

    .line 69
    .line 70
    new-instance p0, Lv15;

    .line 71
    .line 72
    invoke-direct {p0}, Lv15;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p0, v2, Ll14;->u:Lv15;

    .line 76
    .line 77
    new-instance p0, Landroid/graphics/RectF;

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p0, v2, Ll14;->v:Landroid/graphics/RectF;

    .line 83
    .line 84
    iget-object p0, p3, Lk14;->a:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p0, v2, Ll14;->r:Ljava/lang/String;

    .line 87
    .line 88
    iget p0, p3, Lk14;->b:I

    .line 89
    .line 90
    iput p0, v2, Ll14;->w:I

    .line 91
    .line 92
    iget-boolean p0, p3, Lk14;->m:Z

    .line 93
    .line 94
    iput-boolean p0, v2, Ll14;->s:Z

    .line 95
    .line 96
    iget-object p0, v3, Lc35;->b:Le25;

    .line 97
    .line 98
    invoke-virtual {p0}, Le25;->b()F

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    const/high16 p1, 0x42000000    # 32.0f

    .line 103
    .line 104
    div-float/2addr p0, p1

    .line 105
    float-to-int p0, p0

    .line 106
    iput p0, v2, Ll14;->x:I

    .line 107
    .line 108
    iget-object p0, p3, Lk14;->c:Lcc;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcc;->n()Lyl0;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    move-object p1, p0

    .line 115
    check-cast p1, Lf14;

    .line 116
    .line 117
    iput-object p1, v2, Ll14;->y:Lf14;

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lyl0;->a(Lul0;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, p0}, Lam0;->g(Lyl0;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p3, Lk14;->e:Lfc;

    .line 126
    .line 127
    invoke-virtual {p0}, Lfc;->n()Lyl0;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    move-object p1, p0

    .line 132
    check-cast p1, Le26;

    .line 133
    .line 134
    iput-object p1, v2, Ll14;->z:Le26;

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lyl0;->a(Lul0;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, p0}, Lam0;->g(Lyl0;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p3, Lk14;->f:Lfc;

    .line 143
    .line 144
    invoke-virtual {p0}, Lfc;->n()Lyl0;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    move-object p1, p0

    .line 149
    check-cast p1, Le26;

    .line 150
    .line 151
    iput-object p1, v2, Ll14;->A:Le26;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Lyl0;->a(Lul0;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, p0}, Lam0;->g(Lyl0;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method


# virtual methods
.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lqn0;->f(Lcd;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf35;->G:[Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Ll14;->B:Lxi8;

    .line 9
    .line 10
    iget-object v0, p0, Lqn0;->f:Lam0;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lam0;->p(Lyl0;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p2, Lxi8;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Ll14;->B:Lxi8;

    .line 24
    .line 25
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Ll14;->B:Lxi8;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lam0;->g(Lyl0;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final g([I)[I
    .locals 3

    .line 1
    iget-object p0, p0, Ll14;->B:Lxi8;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lxi8;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/Integer;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    :goto_0
    array-length v0, p1

    .line 17
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    aget-object v0, p0, v2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    aput v0, p1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p1, p0

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    :goto_1
    array-length v0, p0

    .line 34
    if-ge v2, v0, :cond_1

    .line 35
    .line 36
    aget-object v0, p0, v2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aput v0, p1, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ll14;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Ll14;->s:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Ll14;->v:Landroid/graphics/RectF;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Lqn0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 14
    .line 15
    .line 16
    iget v2, v0, Ll14;->w:I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    iget-object v4, v0, Ll14;->y:Lf14;

    .line 20
    .line 21
    iget-object v5, v0, Ll14;->A:Le26;

    .line 22
    .line 23
    iget-object v6, v0, Ll14;->z:Le26;

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ll14;->i()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v2, v2

    .line 32
    iget-object v7, v0, Ll14;->t:Lv15;

    .line 33
    .line 34
    invoke-virtual {v7, v2, v3}, Lv15;->b(J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Landroid/graphics/LinearGradient;

    .line 39
    .line 40
    if-eqz v8, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v6}, Lyl0;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/graphics/PointF;

    .line 49
    .line 50
    invoke-virtual {v5}, Lyl0;->f()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/graphics/PointF;

    .line 55
    .line 56
    invoke-virtual {v4}, Lyl0;->f()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Le14;

    .line 61
    .line 62
    iget-object v8, v4, Le14;->b:[I

    .line 63
    .line 64
    invoke-virtual {v0, v8}, Ll14;->g([I)[I

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    iget-object v15, v4, Le14;->a:[F

    .line 69
    .line 70
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 73
    .line 74
    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 75
    .line 76
    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 77
    .line 78
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 79
    .line 80
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v9, v2, v3}, Lv15;->e(Ljava/lang/Object;J)V

    .line 86
    .line 87
    .line 88
    :goto_0
    move-object v8, v9

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v0}, Ll14;->i()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-long v2, v2

    .line 95
    iget-object v7, v0, Ll14;->u:Lv15;

    .line 96
    .line 97
    invoke-virtual {v7, v2, v3}, Lv15;->b(J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/graphics/RadialGradient;

    .line 102
    .line 103
    if-eqz v8, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v6}, Lyl0;->f()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Landroid/graphics/PointF;

    .line 111
    .line 112
    invoke-virtual {v5}, Lyl0;->f()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Landroid/graphics/PointF;

    .line 117
    .line 118
    invoke-virtual {v4}, Lyl0;->f()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Le14;

    .line 123
    .line 124
    iget-object v8, v4, Le14;->b:[I

    .line 125
    .line 126
    invoke-virtual {v0, v8}, Ll14;->g([I)[I

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    iget-object v14, v4, Le14;->a:[F

    .line 131
    .line 132
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 133
    .line 134
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    iget v4, v5, Landroid/graphics/PointF;->x:F

    .line 137
    .line 138
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 139
    .line 140
    sub-float/2addr v4, v10

    .line 141
    float-to-double v8, v4

    .line 142
    sub-float/2addr v5, v11

    .line 143
    float-to-double v4, v5

    .line 144
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    double-to-float v12, v4

    .line 149
    new-instance v9, Landroid/graphics/RadialGradient;

    .line 150
    .line 151
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 152
    .line 153
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v9, v2, v3}, Lv15;->e(Ljava/lang/Object;J)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :goto_1
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lqn0;->i:Lvp4;

    .line 164
    .line 165
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 166
    .line 167
    .line 168
    invoke-super/range {p0 .. p3}, Lqn0;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final i()I
    .locals 3

    .line 1
    iget-object v0, p0, Ll14;->z:Le26;

    .line 2
    .line 3
    iget v0, v0, Lyl0;->d:F

    .line 4
    .line 5
    iget v1, p0, Ll14;->x:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Ll14;->A:Le26;

    .line 14
    .line 15
    iget v2, v2, Lyl0;->d:F

    .line 16
    .line 17
    mul-float/2addr v2, v1

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p0, p0, Ll14;->y:Lf14;

    .line 23
    .line 24
    iget p0, p0, Lyl0;->d:F

    .line 25
    .line 26
    mul-float/2addr p0, v1

    .line 27
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/16 v1, 0x20f

    .line 34
    .line 35
    mul-int/2addr v1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v1, 0x11

    .line 38
    .line 39
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v1, v1, 0x1f

    .line 42
    .line 43
    mul-int/2addr v1, v2

    .line 44
    :cond_1
    if-eqz p0, :cond_2

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    mul-int/2addr v1, p0

    .line 49
    :cond_2
    return v1
.end method
