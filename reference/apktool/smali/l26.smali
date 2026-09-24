.class public final Ll26;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhy5;
.implements Lul0;
.implements Lro4;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Lc35;

.field public final d:I

.field public final e:Z

.field public final f:Lxh3;

.field public final g:Lyl0;

.field public final h:Lxh3;

.field public final i:Lxh3;

.field public final j:Lxh3;

.field public final k:Lxh3;

.field public final l:Lxh3;

.field public final m:Llp1;

.field public n:Z


# direct methods
.method public constructor <init>(Lc35;Lam0;Lm26;)V
    .locals 7

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
    iput-object v0, p0, Ll26;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Llp1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Llp1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ll26;->m:Llp1;

    .line 18
    .line 19
    iput-object p1, p0, Ll26;->c:Lc35;

    .line 20
    .line 21
    iget-object p1, p3, Lm26;->a:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Ll26;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget p1, p3, Lm26;->b:I

    .line 26
    .line 27
    iput p1, p0, Ll26;->d:I

    .line 28
    .line 29
    iget-boolean v0, p3, Lm26;->j:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Ll26;->e:Z

    .line 32
    .line 33
    iget-object v0, p3, Lm26;->c:Lbc;

    .line 34
    .line 35
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Lxh3;

    .line 41
    .line 42
    iput-object v1, p0, Ll26;->f:Lxh3;

    .line 43
    .line 44
    iget-object v1, p3, Lm26;->d:Loc;

    .line 45
    .line 46
    invoke-interface {v1}, Loc;->n()Lyl0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Ll26;->g:Lyl0;

    .line 51
    .line 52
    iget-object v2, p3, Lm26;->e:Lbc;

    .line 53
    .line 54
    invoke-virtual {v2}, Lbc;->n()Lyl0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v3, v2

    .line 59
    check-cast v3, Lxh3;

    .line 60
    .line 61
    iput-object v3, p0, Ll26;->h:Lxh3;

    .line 62
    .line 63
    iget-object v3, p3, Lm26;->g:Lbc;

    .line 64
    .line 65
    invoke-virtual {v3}, Lbc;->n()Lyl0;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v4, v3

    .line 70
    check-cast v4, Lxh3;

    .line 71
    .line 72
    iput-object v4, p0, Ll26;->j:Lxh3;

    .line 73
    .line 74
    iget-object v4, p3, Lm26;->i:Lbc;

    .line 75
    .line 76
    invoke-virtual {v4}, Lbc;->n()Lyl0;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    move-object v5, v4

    .line 81
    check-cast v5, Lxh3;

    .line 82
    .line 83
    iput-object v5, p0, Ll26;->l:Lxh3;

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    if-ne p1, v5, :cond_0

    .line 87
    .line 88
    iget-object v6, p3, Lm26;->f:Lbc;

    .line 89
    .line 90
    invoke-virtual {v6}, Lbc;->n()Lyl0;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lxh3;

    .line 95
    .line 96
    iput-object v6, p0, Ll26;->i:Lxh3;

    .line 97
    .line 98
    iget-object p3, p3, Lm26;->h:Lbc;

    .line 99
    .line 100
    invoke-virtual {p3}, Lbc;->n()Lyl0;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Lxh3;

    .line 105
    .line 106
    iput-object p3, p0, Ll26;->k:Lxh3;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const/4 p3, 0x0

    .line 110
    iput-object p3, p0, Ll26;->i:Lxh3;

    .line 111
    .line 112
    iput-object p3, p0, Ll26;->k:Lxh3;

    .line 113
    .line 114
    :goto_0
    invoke-virtual {p2, v0}, Lam0;->g(Lyl0;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v1}, Lam0;->g(Lyl0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v2}, Lam0;->g(Lyl0;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v3}, Lam0;->g(Lyl0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v4}, Lam0;->g(Lyl0;)V

    .line 127
    .line 128
    .line 129
    if-ne p1, v5, :cond_1

    .line 130
    .line 131
    iget-object p3, p0, Ll26;->i:Lxh3;

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Lam0;->g(Lyl0;)V

    .line 134
    .line 135
    .line 136
    iget-object p3, p0, Ll26;->k:Lxh3;

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Lam0;->g(Lyl0;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-virtual {v0, p0}, Lyl0;->a(Lul0;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p0}, Lyl0;->a(Lul0;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p0}, Lyl0;->a(Lul0;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p0}, Lyl0;->a(Lul0;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p0}, Lyl0;->a(Lul0;)V

    .line 154
    .line 155
    .line 156
    if-ne p1, v5, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Ll26;->i:Lxh3;

    .line 159
    .line 160
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Ll26;->k:Lxh3;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Ll26;->n:Z

    .line 4
    .line 5
    iget-object v2, v0, Ll26;->a:Landroid/graphics/Path;

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
    iget-boolean v1, v0, Ll26;->e:Z

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v9, v0, Ll26;->n:Z

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    iget v1, v0, Ll26;->d:I

    .line 22
    .line 23
    invoke-static {v1}, Ldj7;->A(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v10, v0, Ll26;->g:Lyl0;

    .line 28
    .line 29
    iget-object v4, v0, Ll26;->j:Lxh3;

    .line 30
    .line 31
    iget-object v6, v0, Ll26;->l:Lxh3;

    .line 32
    .line 33
    const-wide v12, 0x4056800000000000L    # 90.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide/16 v14, 0x0

    .line 39
    .line 40
    iget-object v3, v0, Ll26;->h:Lxh3;

    .line 41
    .line 42
    const/high16 v17, 0x42c80000    # 100.0f

    .line 43
    .line 44
    iget-object v5, v0, Ll26;->f:Lxh3;

    .line 45
    .line 46
    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    if-eq v1, v9, :cond_2

    .line 54
    .line 55
    goto/16 :goto_12

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v5}, Lyl0;->f()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Float;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    float-to-double v7, v1

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    double-to-int v1, v7

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v3}, Lyl0;->f()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/Float;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    float-to-double v14, v3

    .line 92
    :goto_0
    sub-double/2addr v14, v12

    .line 93
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    int-to-double v12, v1

    .line 98
    div-double v14, v20, v12

    .line 99
    .line 100
    double-to-float v1, v14

    .line 101
    invoke-virtual {v6}, Lyl0;->f()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Float;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    div-float v14, v3, v17

    .line 112
    .line 113
    invoke-virtual {v4}, Lyl0;->f()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Float;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    float-to-double v3, v15

    .line 124
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    mul-double/2addr v5, v3

    .line 129
    double-to-float v5, v5

    .line 130
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v20

    .line 134
    move-wide/from16 v23, v12

    .line 135
    .line 136
    const/16 v22, 0x0

    .line 137
    .line 138
    mul-double v11, v20, v3

    .line 139
    .line 140
    double-to-float v6, v11

    .line 141
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    .line 143
    .line 144
    float-to-double v11, v1

    .line 145
    add-double/2addr v7, v11

    .line 146
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    .line 147
    .line 148
    .line 149
    move-result-wide v20

    .line 150
    move-wide/from16 v16, v7

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    :goto_1
    int-to-double v7, v1

    .line 154
    cmpg-double v7, v7, v20

    .line 155
    .line 156
    if-gez v7, :cond_5

    .line 157
    .line 158
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    mul-double/2addr v7, v3

    .line 163
    double-to-float v7, v7

    .line 164
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide v23

    .line 168
    move-object/from16 v25, v10

    .line 169
    .line 170
    mul-double v9, v23, v3

    .line 171
    .line 172
    double-to-float v8, v9

    .line 173
    cmpl-float v9, v14, v22

    .line 174
    .line 175
    if-eqz v9, :cond_4

    .line 176
    .line 177
    float-to-double v9, v6

    .line 178
    move v13, v1

    .line 179
    move-object/from16 v23, v2

    .line 180
    .line 181
    float-to-double v1, v5

    .line 182
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    sub-double v1, v1, v18

    .line 187
    .line 188
    double-to-float v1, v1

    .line 189
    float-to-double v1, v1

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 191
    .line 192
    .line 193
    move-result-wide v9

    .line 194
    double-to-float v9, v9

    .line 195
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    double-to-float v1, v1

    .line 200
    move v10, v1

    .line 201
    float-to-double v1, v8

    .line 202
    move-wide/from16 v26, v3

    .line 203
    .line 204
    float-to-double v3, v7

    .line 205
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    sub-double v1, v1, v18

    .line 210
    .line 211
    double-to-float v1, v1

    .line 212
    float-to-double v1, v1

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    double-to-float v3, v3

    .line 218
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    double-to-float v1, v1

    .line 223
    mul-float v2, v15, v14

    .line 224
    .line 225
    const/high16 v4, 0x3e800000    # 0.25f

    .line 226
    .line 227
    mul-float/2addr v2, v4

    .line 228
    mul-float/2addr v9, v2

    .line 229
    mul-float v4, v2, v10

    .line 230
    .line 231
    mul-float/2addr v3, v2

    .line 232
    mul-float/2addr v2, v1

    .line 233
    sub-float/2addr v5, v9

    .line 234
    sub-float v4, v6, v4

    .line 235
    .line 236
    add-float/2addr v3, v7

    .line 237
    add-float v6, v8, v2

    .line 238
    .line 239
    move v2, v5

    .line 240
    move v5, v3

    .line 241
    move v3, v2

    .line 242
    move-object/from16 v2, v23

    .line 243
    .line 244
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    move v13, v1

    .line 249
    move-wide/from16 v26, v3

    .line 250
    .line 251
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    .line 253
    .line 254
    :goto_2
    add-double v16, v16, v11

    .line 255
    .line 256
    add-int/lit8 v1, v13, 0x1

    .line 257
    .line 258
    move v5, v7

    .line 259
    move v6, v8

    .line 260
    move-object/from16 v10, v25

    .line 261
    .line 262
    move-wide/from16 v3, v26

    .line 263
    .line 264
    const/4 v9, 0x1

    .line 265
    goto :goto_1

    .line 266
    :cond_5
    move-object/from16 v25, v10

    .line 267
    .line 268
    invoke-virtual/range {v25 .. v25}, Lyl0;->f()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Landroid/graphics/PointF;

    .line 273
    .line 274
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 275
    .line 276
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 277
    .line 278
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_12

    .line 285
    .line 286
    :cond_6
    move-object/from16 v25, v10

    .line 287
    .line 288
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    const/16 v22, 0x0

    .line 294
    .line 295
    invoke-virtual {v5}, Lyl0;->f()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Ljava/lang/Float;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v3, :cond_7

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_7
    invoke-virtual {v3}, Lyl0;->f()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Ljava/lang/Float;

    .line 313
    .line 314
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    float-to-double v14, v3

    .line 319
    :goto_3
    sub-double/2addr v14, v12

    .line 320
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    float-to-double v9, v1

    .line 325
    div-double v11, v20, v9

    .line 326
    .line 327
    double-to-float v11, v11

    .line 328
    const/high16 v12, 0x40000000    # 2.0f

    .line 329
    .line 330
    div-float v13, v11, v12

    .line 331
    .line 332
    float-to-int v3, v1

    .line 333
    int-to-float v3, v3

    .line 334
    sub-float/2addr v1, v3

    .line 335
    cmpl-float v14, v1, v22

    .line 336
    .line 337
    if-eqz v14, :cond_8

    .line 338
    .line 339
    const/high16 v3, 0x3f800000    # 1.0f

    .line 340
    .line 341
    sub-float/2addr v3, v1

    .line 342
    mul-float/2addr v3, v13

    .line 343
    move v15, v12

    .line 344
    move/from16 v20, v13

    .line 345
    .line 346
    float-to-double v12, v3

    .line 347
    add-double/2addr v7, v12

    .line 348
    goto :goto_4

    .line 349
    :cond_8
    move v15, v12

    .line 350
    move/from16 v20, v13

    .line 351
    .line 352
    :goto_4
    invoke-virtual {v4}, Lyl0;->f()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    check-cast v3, Ljava/lang/Float;

    .line 357
    .line 358
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    iget-object v3, v0, Ll26;->i:Lxh3;

    .line 363
    .line 364
    invoke-virtual {v3}, Lyl0;->f()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    check-cast v3, Ljava/lang/Float;

    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    iget-object v3, v0, Ll26;->k:Lxh3;

    .line 375
    .line 376
    if-eqz v3, :cond_9

    .line 377
    .line 378
    invoke-virtual {v3}, Lyl0;->f()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    check-cast v3, Ljava/lang/Float;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    div-float v3, v3, v17

    .line 389
    .line 390
    move/from16 v21, v3

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_9
    move/from16 v21, v22

    .line 394
    .line 395
    :goto_5
    if-eqz v6, :cond_a

    .line 396
    .line 397
    invoke-virtual {v6}, Lyl0;->f()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/lang/Float;

    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    div-float v3, v3, v17

    .line 408
    .line 409
    move/from16 v17, v3

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_a
    move/from16 v17, v22

    .line 413
    .line 414
    :goto_6
    if-eqz v14, :cond_b

    .line 415
    .line 416
    invoke-static {v12, v13, v1, v13}, Lxs1;->e(FFFF)F

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    float-to-double v4, v3

    .line 421
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 422
    .line 423
    .line 424
    move-result-wide v23

    .line 425
    move v6, v3

    .line 426
    move-wide/from16 v26, v4

    .line 427
    .line 428
    mul-double v3, v23, v26

    .line 429
    .line 430
    double-to-float v3, v3

    .line 431
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 432
    .line 433
    .line 434
    move-result-wide v4

    .line 435
    mul-double v4, v4, v26

    .line 436
    .line 437
    double-to-float v4, v4

    .line 438
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 439
    .line 440
    .line 441
    mul-float v5, v11, v1

    .line 442
    .line 443
    div-float/2addr v5, v15

    .line 444
    move/from16 v23, v3

    .line 445
    .line 446
    move/from16 v24, v4

    .line 447
    .line 448
    float-to-double v3, v5

    .line 449
    add-double/2addr v7, v3

    .line 450
    move/from16 v3, v20

    .line 451
    .line 452
    move/from16 v4, v24

    .line 453
    .line 454
    move/from16 v20, v6

    .line 455
    .line 456
    move/from16 v6, v23

    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_b
    float-to-double v3, v12

    .line 460
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    mul-double/2addr v5, v3

    .line 465
    double-to-float v5, v5

    .line 466
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 467
    .line 468
    .line 469
    move-result-wide v23

    .line 470
    mul-double v3, v3, v23

    .line 471
    .line 472
    double-to-float v4, v3

    .line 473
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 474
    .line 475
    .line 476
    move v6, v5

    .line 477
    move/from16 v3, v20

    .line 478
    .line 479
    move/from16 v20, v4

    .line 480
    .line 481
    float-to-double v4, v3

    .line 482
    add-double/2addr v7, v4

    .line 483
    move/from16 v4, v20

    .line 484
    .line 485
    move/from16 v20, v22

    .line 486
    .line 487
    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 488
    .line 489
    .line 490
    move-result-wide v9

    .line 491
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    .line 492
    .line 493
    mul-double v9, v9, v23

    .line 494
    .line 495
    move v5, v4

    .line 496
    move-wide/from16 v26, v7

    .line 497
    .line 498
    const/4 v4, 0x0

    .line 499
    const/16 v16, 0x0

    .line 500
    .line 501
    :goto_8
    int-to-double v7, v4

    .line 502
    cmpg-double v28, v7, v9

    .line 503
    .line 504
    if-gez v28, :cond_16

    .line 505
    .line 506
    if-eqz v16, :cond_c

    .line 507
    .line 508
    move/from16 v28, v12

    .line 509
    .line 510
    goto :goto_9

    .line 511
    :cond_c
    move/from16 v28, v13

    .line 512
    .line 513
    :goto_9
    cmpl-float v29, v20, v22

    .line 514
    .line 515
    if-eqz v29, :cond_d

    .line 516
    .line 517
    sub-double v30, v9, v23

    .line 518
    .line 519
    cmpl-double v30, v7, v30

    .line 520
    .line 521
    if-nez v30, :cond_d

    .line 522
    .line 523
    mul-float v30, v11, v1

    .line 524
    .line 525
    div-float v30, v30, v15

    .line 526
    .line 527
    move/from16 v15, v30

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_d
    move v15, v3

    .line 531
    :goto_a
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    .line 532
    .line 533
    if-eqz v29, :cond_e

    .line 534
    .line 535
    sub-double v33, v9, v31

    .line 536
    .line 537
    cmpl-double v29, v7, v33

    .line 538
    .line 539
    if-nez v29, :cond_e

    .line 540
    .line 541
    move/from16 v29, v1

    .line 542
    .line 543
    move/from16 v1, v20

    .line 544
    .line 545
    move/from16 v28, v3

    .line 546
    .line 547
    move/from16 v33, v4

    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_e
    move/from16 v29, v1

    .line 551
    .line 552
    move/from16 v1, v28

    .line 553
    .line 554
    move/from16 v33, v4

    .line 555
    .line 556
    move/from16 v28, v3

    .line 557
    .line 558
    :goto_b
    float-to-double v3, v1

    .line 559
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 560
    .line 561
    .line 562
    move-result-wide v34

    .line 563
    move-wide/from16 v36, v3

    .line 564
    .line 565
    mul-double v3, v34, v36

    .line 566
    .line 567
    double-to-float v1, v3

    .line 568
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    .line 569
    .line 570
    .line 571
    move-result-wide v3

    .line 572
    mul-double v3, v3, v36

    .line 573
    .line 574
    double-to-float v3, v3

    .line 575
    cmpl-float v4, v21, v22

    .line 576
    .line 577
    if-nez v4, :cond_f

    .line 578
    .line 579
    cmpl-float v4, v17, v22

    .line 580
    .line 581
    if-nez v4, :cond_f

    .line 582
    .line 583
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 584
    .line 585
    .line 586
    move v7, v1

    .line 587
    move/from16 v38, v3

    .line 588
    .line 589
    goto/16 :goto_11

    .line 590
    .line 591
    :cond_f
    move-wide/from16 v34, v7

    .line 592
    .line 593
    float-to-double v7, v5

    .line 594
    move/from16 v36, v5

    .line 595
    .line 596
    float-to-double v4, v6

    .line 597
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 598
    .line 599
    .line 600
    move-result-wide v4

    .line 601
    sub-double v4, v4, v18

    .line 602
    .line 603
    double-to-float v4, v4

    .line 604
    float-to-double v4, v4

    .line 605
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 606
    .line 607
    .line 608
    move-result-wide v7

    .line 609
    double-to-float v7, v7

    .line 610
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 611
    .line 612
    .line 613
    move-result-wide v4

    .line 614
    double-to-float v4, v4

    .line 615
    move v8, v4

    .line 616
    float-to-double v4, v3

    .line 617
    move-object/from16 v37, v2

    .line 618
    .line 619
    move/from16 v38, v3

    .line 620
    .line 621
    float-to-double v2, v1

    .line 622
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 623
    .line 624
    .line 625
    move-result-wide v2

    .line 626
    sub-double v2, v2, v18

    .line 627
    .line 628
    double-to-float v2, v2

    .line 629
    float-to-double v2, v2

    .line 630
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 631
    .line 632
    .line 633
    move-result-wide v4

    .line 634
    double-to-float v4, v4

    .line 635
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 636
    .line 637
    .line 638
    move-result-wide v2

    .line 639
    double-to-float v2, v2

    .line 640
    if-eqz v16, :cond_10

    .line 641
    .line 642
    move/from16 v3, v21

    .line 643
    .line 644
    goto :goto_c

    .line 645
    :cond_10
    move/from16 v3, v17

    .line 646
    .line 647
    :goto_c
    if-eqz v16, :cond_11

    .line 648
    .line 649
    move/from16 v5, v17

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_11
    move/from16 v5, v21

    .line 653
    .line 654
    :goto_d
    if-eqz v16, :cond_12

    .line 655
    .line 656
    move/from16 v39, v13

    .line 657
    .line 658
    goto :goto_e

    .line 659
    :cond_12
    move/from16 v39, v12

    .line 660
    .line 661
    :goto_e
    if-eqz v16, :cond_13

    .line 662
    .line 663
    move/from16 v40, v12

    .line 664
    .line 665
    goto :goto_f

    .line 666
    :cond_13
    move/from16 v40, v13

    .line 667
    .line 668
    :goto_f
    mul-float v39, v39, v3

    .line 669
    .line 670
    const v3, 0x3ef4e26d    # 0.47829f

    .line 671
    .line 672
    .line 673
    mul-float v39, v39, v3

    .line 674
    .line 675
    mul-float v7, v7, v39

    .line 676
    .line 677
    mul-float v39, v39, v8

    .line 678
    .line 679
    mul-float v40, v40, v5

    .line 680
    .line 681
    mul-float v40, v40, v3

    .line 682
    .line 683
    mul-float v4, v4, v40

    .line 684
    .line 685
    mul-float v40, v40, v2

    .line 686
    .line 687
    if-eqz v14, :cond_15

    .line 688
    .line 689
    if-nez v33, :cond_14

    .line 690
    .line 691
    mul-float v7, v7, v29

    .line 692
    .line 693
    mul-float v39, v39, v29

    .line 694
    .line 695
    goto :goto_10

    .line 696
    :cond_14
    sub-double v2, v9, v31

    .line 697
    .line 698
    cmpl-double v2, v34, v2

    .line 699
    .line 700
    if-nez v2, :cond_15

    .line 701
    .line 702
    mul-float v4, v4, v29

    .line 703
    .line 704
    mul-float v40, v40, v29

    .line 705
    .line 706
    :cond_15
    :goto_10
    sub-float v3, v6, v7

    .line 707
    .line 708
    sub-float v5, v36, v39

    .line 709
    .line 710
    add-float/2addr v4, v1

    .line 711
    add-float v6, v38, v40

    .line 712
    .line 713
    move v2, v5

    .line 714
    move v5, v4

    .line 715
    move v4, v2

    .line 716
    move v7, v1

    .line 717
    move-object/from16 v2, v37

    .line 718
    .line 719
    move/from16 v8, v38

    .line 720
    .line 721
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 722
    .line 723
    .line 724
    :goto_11
    float-to-double v3, v15

    .line 725
    add-double v26, v26, v3

    .line 726
    .line 727
    xor-int/lit8 v16, v16, 0x1

    .line 728
    .line 729
    add-int/lit8 v4, v33, 0x1

    .line 730
    .line 731
    move v6, v7

    .line 732
    move/from16 v3, v28

    .line 733
    .line 734
    move/from16 v1, v29

    .line 735
    .line 736
    move/from16 v5, v38

    .line 737
    .line 738
    const/high16 v15, 0x40000000    # 2.0f

    .line 739
    .line 740
    goto/16 :goto_8

    .line 741
    .line 742
    :cond_16
    invoke-virtual/range {v25 .. v25}, Lyl0;->f()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    check-cast v1, Landroid/graphics/PointF;

    .line 747
    .line 748
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 749
    .line 750
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 751
    .line 752
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 756
    .line 757
    .line 758
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 759
    .line 760
    .line 761
    iget-object v1, v0, Ll26;->m:Llp1;

    .line 762
    .line 763
    invoke-virtual {v1, v2}, Llp1;->a(Landroid/graphics/Path;)V

    .line 764
    .line 765
    .line 766
    const/4 v1, 0x1

    .line 767
    iput-boolean v1, v0, Ll26;->n:Z

    .line 768
    .line 769
    return-object v2
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll26;->n:Z

    .line 3
    .line 4
    iget-object p0, p0, Ll26;->c:Lc35;

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
    iget-object v1, p0, Ll26;->m:Llp1;

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
    sget-object v0, Lf35;->r:Ljava/lang/Float;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll26;->f:Lxh3;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lf35;->s:Ljava/lang/Float;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Ll26;->h:Lxh3;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, Lf35;->i:Landroid/graphics/PointF;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Ll26;->g:Lyl0;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object v0, Lf35;->t:Ljava/lang/Float;

    .line 32
    .line 33
    if-ne p2, v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Ll26;->i:Lxh3;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lyl0;->k(Lcd;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    sget-object v0, Lf35;->u:Ljava/lang/Float;

    .line 44
    .line 45
    if-ne p2, v0, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Ll26;->j:Lxh3;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    sget-object v0, Lf35;->v:Ljava/lang/Float;

    .line 54
    .line 55
    if-ne p2, v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Ll26;->k:Lxh3;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lyl0;->k(Lcd;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    sget-object v0, Lf35;->w:Ljava/lang/Float;

    .line 66
    .line 67
    if-ne p2, v0, :cond_6

    .line 68
    .line 69
    iget-object p0, p0, Ll26;->l:Lxh3;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ll26;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
