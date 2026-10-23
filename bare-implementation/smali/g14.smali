.class public final Lg14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcj8;
.implements Lpr6;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lg14;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getN()I
    .locals 0

    .line 1
    iget p0, p0, Lg14;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public r(Lul4;F)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lul4;->v()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lul4;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lul4;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lul4;->q()D

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    double-to-float v5, v5

    .line 34
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lul4;->g()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v2, v0, Lg14;->a:I

    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    if-ne v2, v5, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    div-int/lit8 v2, v2, 0x4

    .line 57
    .line 58
    iput v2, v0, Lg14;->a:I

    .line 59
    .line 60
    :cond_4
    iget v2, v0, Lg14;->a:I

    .line 61
    .line 62
    new-array v5, v2, [F

    .line 63
    .line 64
    new-array v6, v2, [I

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    :goto_2
    iget v10, v0, Lg14;->a:I

    .line 70
    .line 71
    mul-int/lit8 v10, v10, 0x4

    .line 72
    .line 73
    const/4 v11, 0x2

    .line 74
    const-wide v12, 0x406fe00000000000L    # 255.0

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    if-ge v7, v10, :cond_a

    .line 80
    .line 81
    div-int/lit8 v10, v7, 0x4

    .line 82
    .line 83
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    check-cast v14, Ljava/lang/Float;

    .line 88
    .line 89
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    float-to-double v14, v14

    .line 94
    rem-int/lit8 v3, v7, 0x4

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    if-eq v3, v4, :cond_7

    .line 99
    .line 100
    if-eq v3, v11, :cond_6

    .line 101
    .line 102
    const/4 v11, 0x3

    .line 103
    if-eq v3, v11, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    mul-double/2addr v14, v12

    .line 107
    double-to-int v3, v14

    .line 108
    const/16 v11, 0xff

    .line 109
    .line 110
    invoke-static {v11, v8, v9, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    aput v3, v6, v10

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    mul-double/2addr v14, v12

    .line 118
    double-to-int v9, v14

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    mul-double/2addr v14, v12

    .line 121
    double-to-int v8, v14

    .line 122
    goto :goto_3

    .line 123
    :cond_8
    if-lez v10, :cond_9

    .line 124
    .line 125
    add-int/lit8 v3, v10, -0x1

    .line 126
    .line 127
    aget v3, v5, v3

    .line 128
    .line 129
    double-to-float v11, v14

    .line 130
    cmpl-float v3, v3, v11

    .line 131
    .line 132
    if-ltz v3, :cond_9

    .line 133
    .line 134
    const v3, 0x3c23d70a    # 0.01f

    .line 135
    .line 136
    .line 137
    add-float/2addr v11, v3

    .line 138
    aput v11, v5, v10

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_9
    double-to-float v3, v14

    .line 142
    aput v3, v5, v10

    .line 143
    .line 144
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_a
    new-instance v0, Le14;

    .line 148
    .line 149
    invoke-direct {v0, v5, v6}, Le14;-><init>([F[I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-gt v3, v10, :cond_b

    .line 157
    .line 158
    goto/16 :goto_a

    .line 159
    .line 160
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-int/2addr v3, v10

    .line 165
    div-int/2addr v3, v11

    .line 166
    new-array v5, v3, [D

    .line 167
    .line 168
    new-array v7, v3, [D

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-ge v10, v9, :cond_d

    .line 176
    .line 177
    rem-int/lit8 v9, v10, 0x2

    .line 178
    .line 179
    if-nez v9, :cond_c

    .line 180
    .line 181
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Ljava/lang/Float;

    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    float-to-double v14, v9

    .line 192
    aput-wide v14, v5, v8

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_c
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Ljava/lang/Float;

    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    float-to-double v14, v9

    .line 206
    aput-wide v14, v7, v8

    .line 207
    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_d
    const/4 v1, 0x0

    .line 214
    :goto_6
    if-ge v1, v2, :cond_10

    .line 215
    .line 216
    aget v8, v6, v1

    .line 217
    .line 218
    iget-object v9, v0, Le14;->a:[F

    .line 219
    .line 220
    aget v9, v9, v1

    .line 221
    .line 222
    float-to-double v9, v9

    .line 223
    move v11, v4

    .line 224
    :goto_7
    if-ge v11, v3, :cond_f

    .line 225
    .line 226
    add-int/lit8 v14, v11, -0x1

    .line 227
    .line 228
    aget-wide v15, v5, v14

    .line 229
    .line 230
    aget-wide v17, v5, v11

    .line 231
    .line 232
    cmpl-double v19, v17, v9

    .line 233
    .line 234
    if-ltz v19, :cond_e

    .line 235
    .line 236
    sub-double/2addr v9, v15

    .line 237
    sub-double v17, v17, v15

    .line 238
    .line 239
    div-double v9, v9, v17

    .line 240
    .line 241
    sget-object v15, Lsg5;->a:Landroid/graphics/PointF;

    .line 242
    .line 243
    move-object v15, v5

    .line 244
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 245
    .line 246
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    const-wide/16 v9, 0x0

    .line 251
    .line 252
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v4

    .line 256
    aget-wide v9, v7, v14

    .line 257
    .line 258
    aget-wide v16, v7, v11

    .line 259
    .line 260
    sub-double v16, v16, v9

    .line 261
    .line 262
    mul-double v16, v16, v4

    .line 263
    .line 264
    add-double v16, v16, v9

    .line 265
    .line 266
    mul-double v4, v16, v12

    .line 267
    .line 268
    :goto_8
    double-to-int v4, v4

    .line 269
    goto :goto_9

    .line 270
    :cond_e
    move-object v15, v5

    .line 271
    add-int/lit8 v11, v11, 0x1

    .line 272
    .line 273
    const/4 v4, 0x1

    .line 274
    goto :goto_7

    .line 275
    :cond_f
    move-object v15, v5

    .line 276
    add-int/lit8 v4, v3, -0x1

    .line 277
    .line 278
    aget-wide v4, v7, v4

    .line 279
    .line 280
    mul-double/2addr v4, v12

    .line 281
    goto :goto_8

    .line 282
    :goto_9
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    invoke-static {v4, v5, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    aput v4, v6, v1

    .line 299
    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    .line 302
    move-object v5, v15

    .line 303
    const/4 v4, 0x1

    .line 304
    goto :goto_6

    .line 305
    :cond_10
    :goto_a
    return-object v0
.end method
