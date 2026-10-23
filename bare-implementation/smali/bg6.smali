.class public final Lbg6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lul0;
.implements Lro4;
.implements Lhy5;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lc35;

.field public final f:Lyl0;

.field public final g:Lyl0;

.field public final h:Lxh3;

.field public final i:Llp1;

.field public j:Z


# direct methods
.method public constructor <init>(Lc35;Lam0;Lcg6;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lbg6;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lbg6;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Llp1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Llp1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lbg6;->i:Llp1;

    .line 25
    .line 26
    iget-object v0, p3, Lcg6;->a:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lbg6;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-boolean v0, p3, Lcg6;->e:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lbg6;->d:Z

    .line 33
    .line 34
    iput-object p1, p0, Lbg6;->e:Lc35;

    .line 35
    .line 36
    iget-object p1, p3, Lcg6;->b:Loc;

    .line 37
    .line 38
    invoke-interface {p1}, Loc;->n()Lyl0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lbg6;->f:Lyl0;

    .line 43
    .line 44
    iget-object v0, p3, Lcg6;->c:Loc;

    .line 45
    .line 46
    invoke-interface {v0}, Loc;->n()Lyl0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lbg6;->g:Lyl0;

    .line 51
    .line 52
    iget-object p3, p3, Lcg6;->d:Lbc;

    .line 53
    .line 54
    invoke-virtual {p3}, Lbc;->n()Lyl0;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    move-object v1, p3

    .line 59
    check-cast v1, Lxh3;

    .line 60
    .line 61
    iput-object v1, p0, Lbg6;->h:Lxh3;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lam0;->g(Lyl0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Lam0;->g(Lyl0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lyl0;->a(Lul0;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p0}, Lyl0;->a(Lul0;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lbg6;->j:Z

    .line 4
    .line 5
    iget-object v2, v0, Lbg6;->a:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lbg6;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v3, v0, Lbg6;->j:Z

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    iget-object v1, v0, Lbg6;->g:Lyl0;

    .line 22
    .line 23
    invoke-virtual {v1}, Lyl0;->f()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/graphics/PointF;

    .line 28
    .line 29
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 30
    .line 31
    const/high16 v5, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v4, v5

    .line 34
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    div-float/2addr v1, v5

    .line 37
    const/4 v6, 0x0

    .line 38
    iget-object v7, v0, Lbg6;->h:Lxh3;

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    move v7, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v7}, Lxh3;->l()F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    :goto_0
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    cmpl-float v9, v7, v8

    .line 53
    .line 54
    if-lez v9, :cond_3

    .line 55
    .line 56
    move v7, v8

    .line 57
    :cond_3
    iget-object v8, v0, Lbg6;->f:Lyl0;

    .line 58
    .line 59
    invoke-virtual {v8}, Lyl0;->f()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroid/graphics/PointF;

    .line 64
    .line 65
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 66
    .line 67
    add-float/2addr v9, v4

    .line 68
    iget v10, v8, Landroid/graphics/PointF;->y:F

    .line 69
    .line 70
    sub-float/2addr v10, v1

    .line 71
    add-float/2addr v10, v7

    .line 72
    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    .line 74
    .line 75
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 76
    .line 77
    add-float/2addr v9, v4

    .line 78
    iget v10, v8, Landroid/graphics/PointF;->y:F

    .line 79
    .line 80
    add-float/2addr v10, v1

    .line 81
    sub-float/2addr v10, v7

    .line 82
    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    .line 85
    cmpl-float v9, v7, v6

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    const/high16 v11, 0x42b40000    # 90.0f

    .line 89
    .line 90
    iget-object v12, v0, Lbg6;->b:Landroid/graphics/RectF;

    .line 91
    .line 92
    if-lez v9, :cond_4

    .line 93
    .line 94
    iget v13, v8, Landroid/graphics/PointF;->x:F

    .line 95
    .line 96
    add-float/2addr v13, v4

    .line 97
    mul-float v14, v7, v5

    .line 98
    .line 99
    sub-float v15, v13, v14

    .line 100
    .line 101
    move/from16 v16, v5

    .line 102
    .line 103
    iget v5, v8, Landroid/graphics/PointF;->y:F

    .line 104
    .line 105
    add-float/2addr v5, v1

    .line 106
    sub-float v14, v5, v14

    .line 107
    .line 108
    invoke-virtual {v12, v15, v14, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v12, v6, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move/from16 v16, v5

    .line 116
    .line 117
    :goto_1
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 118
    .line 119
    sub-float/2addr v5, v4

    .line 120
    add-float/2addr v5, v7

    .line 121
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 122
    .line 123
    add-float/2addr v6, v1

    .line 124
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    .line 126
    .line 127
    if-lez v9, :cond_5

    .line 128
    .line 129
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 130
    .line 131
    sub-float/2addr v5, v4

    .line 132
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 133
    .line 134
    add-float/2addr v6, v1

    .line 135
    mul-float v13, v7, v16

    .line 136
    .line 137
    sub-float v14, v6, v13

    .line 138
    .line 139
    add-float/2addr v13, v5

    .line 140
    invoke-virtual {v12, v5, v14, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v12, v11, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 144
    .line 145
    .line 146
    :cond_5
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 147
    .line 148
    sub-float/2addr v5, v4

    .line 149
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 150
    .line 151
    sub-float/2addr v6, v1

    .line 152
    add-float/2addr v6, v7

    .line 153
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    .line 155
    .line 156
    if-lez v9, :cond_6

    .line 157
    .line 158
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 159
    .line 160
    sub-float/2addr v5, v4

    .line 161
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 162
    .line 163
    sub-float/2addr v6, v1

    .line 164
    mul-float v13, v7, v16

    .line 165
    .line 166
    add-float v14, v5, v13

    .line 167
    .line 168
    add-float/2addr v13, v6

    .line 169
    invoke-virtual {v12, v5, v6, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    .line 171
    .line 172
    const/high16 v5, 0x43340000    # 180.0f

    .line 173
    .line 174
    invoke-virtual {v2, v12, v5, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 178
    .line 179
    add-float/2addr v5, v4

    .line 180
    sub-float/2addr v5, v7

    .line 181
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 182
    .line 183
    sub-float/2addr v6, v1

    .line 184
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    .line 186
    .line 187
    if-lez v9, :cond_7

    .line 188
    .line 189
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 190
    .line 191
    add-float/2addr v5, v4

    .line 192
    mul-float v7, v7, v16

    .line 193
    .line 194
    sub-float v4, v5, v7

    .line 195
    .line 196
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 197
    .line 198
    sub-float/2addr v6, v1

    .line 199
    add-float/2addr v7, v6

    .line 200
    invoke-virtual {v12, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    .line 202
    .line 203
    const/high16 v1, 0x43870000    # 270.0f

    .line 204
    .line 205
    invoke-virtual {v2, v12, v1, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 206
    .line 207
    .line 208
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lbg6;->i:Llp1;

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Llp1;->a(Landroid/graphics/Path;)V

    .line 214
    .line 215
    .line 216
    iput-boolean v3, v0, Lbg6;->j:Z

    .line 217
    .line 218
    return-object v2
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbg6;->j:Z

    .line 3
    .line 4
    iget-object p0, p0, Lbg6;->e:Lc35;

    .line 5
    .line 6
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lgu1;

    .line 16
    .line 17
    instance-of v1, v0, Lnb8;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lnb8;

    .line 22
    .line 23
    iget v1, v0, Lnb8;->c:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lbg6;->i:Llp1;

    .line 29
    .line 30
    iget-object v1, v1, Llp1;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lnb8;->d(Lul0;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final d(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lsg5;->e(Lpo4;ILjava/util/ArrayList;Lpo4;Lro4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lf35;->g:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lbg6;->g:Lyl0;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lf35;->i:Landroid/graphics/PointF;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lbg6;->f:Lyl0;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, Lf35;->h:Ljava/lang/Float;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lbg6;->h:Lxh3;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbg6;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
