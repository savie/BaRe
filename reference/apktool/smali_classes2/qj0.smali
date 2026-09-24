.class public final Lqj0;
.super Laq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lx24;

.field public final m:[I

.field public final n:Lnn1;

.field public final o:I

.field public final p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(IIIIILv40;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Laq4;-><init>(IIIILv40;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    iput p0, v0, Lqj0;->q:I

    .line 12
    .line 13
    add-int/lit8 p1, v1, 0x1

    .line 14
    .line 15
    iput p1, v0, Lqj0;->p:I

    .line 16
    .line 17
    iput p1, v0, Lqj0;->r:I

    .line 18
    .line 19
    new-instance p0, Lx24;

    .line 20
    .line 21
    invoke-direct {p0, v1, v5}, Lx24;-><init>(ILv40;)V

    .line 22
    .line 23
    .line 24
    iput-object p0, v0, Lqj0;->l:Lx24;

    .line 25
    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v5, p1, p0}, Lv40;->b(IZ)[I

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput-object p0, v0, Lqj0;->m:[I

    .line 34
    .line 35
    new-instance p0, Lnn1;

    .line 36
    .line 37
    add-int/lit8 p4, v4, -0x1

    .line 38
    .line 39
    invoke-direct {p0, p4}, Lnn1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p0, v0, Lqj0;->n:Lnn1;

    .line 43
    .line 44
    if-lez p5, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    div-int/lit8 p4, v4, 0x2

    .line 48
    .line 49
    add-int/lit8 p5, p4, 0x10

    .line 50
    .line 51
    :goto_0
    iput p5, v0, Lqj0;->o:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final d()Lnn1;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqj0;->n:Lnn1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v1, Lnn1;->a:I

    .line 7
    .line 8
    iget-object v3, v1, Lnn1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, [I

    .line 11
    .line 12
    iget-object v4, v1, Lnn1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, [I

    .line 15
    .line 16
    invoke-virtual {v0}, Lqj0;->j()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget v6, v0, Laq4;->c:I

    .line 21
    .line 22
    iget v7, v0, Laq4;->d:I

    .line 23
    .line 24
    if-ge v5, v6, :cond_1

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    if-le v7, v5, :cond_2

    .line 30
    .line 31
    move v7, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v5, v6

    .line 34
    :cond_2
    :goto_0
    iget v6, v0, Laq4;->g:I

    .line 35
    .line 36
    iget-object v8, v0, Lqj0;->l:Lx24;

    .line 37
    .line 38
    iget-object v9, v0, Laq4;->e:[B

    .line 39
    .line 40
    invoke-virtual {v8, v9, v6}, Lx24;->a([BI)V

    .line 41
    .line 42
    .line 43
    iget v6, v0, Lqj0;->r:I

    .line 44
    .line 45
    iget-object v10, v8, Lx24;->b:[I

    .line 46
    .line 47
    iget v11, v8, Lx24;->f:I

    .line 48
    .line 49
    aget v10, v10, v11

    .line 50
    .line 51
    sub-int v10, v6, v10

    .line 52
    .line 53
    iget-object v11, v8, Lx24;->c:[I

    .line 54
    .line 55
    iget v12, v8, Lx24;->g:I

    .line 56
    .line 57
    aget v11, v11, v12

    .line 58
    .line 59
    sub-int v11, v6, v11

    .line 60
    .line 61
    iget-object v12, v8, Lx24;->d:[I

    .line 62
    .line 63
    iget v13, v8, Lx24;->h:I

    .line 64
    .line 65
    aget v12, v12, v13

    .line 66
    .line 67
    invoke-virtual {v8, v6}, Lx24;->b(I)V

    .line 68
    .line 69
    .line 70
    iget v6, v0, Lqj0;->p:I

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    if-ge v10, v6, :cond_3

    .line 74
    .line 75
    iget v13, v0, Laq4;->g:I

    .line 76
    .line 77
    sub-int v14, v13, v10

    .line 78
    .line 79
    aget-byte v14, v9, v14

    .line 80
    .line 81
    aget-byte v13, v9, v13

    .line 82
    .line 83
    if-ne v14, v13, :cond_3

    .line 84
    .line 85
    const/4 v13, 0x2

    .line 86
    aput v13, v4, v2

    .line 87
    .line 88
    add-int/lit8 v14, v10, -0x1

    .line 89
    .line 90
    aput v14, v3, v2

    .line 91
    .line 92
    iput v8, v1, Lnn1;->a:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v13, v2

    .line 96
    :goto_1
    const/4 v14, 0x3

    .line 97
    if-eq v10, v11, :cond_4

    .line 98
    .line 99
    if-ge v11, v6, :cond_4

    .line 100
    .line 101
    iget v15, v0, Laq4;->g:I

    .line 102
    .line 103
    sub-int v16, v15, v11

    .line 104
    .line 105
    move/from16 v17, v2

    .line 106
    .line 107
    aget-byte v2, v9, v16

    .line 108
    .line 109
    aget-byte v15, v9, v15

    .line 110
    .line 111
    if-ne v2, v15, :cond_5

    .line 112
    .line 113
    iget v2, v1, Lnn1;->a:I

    .line 114
    .line 115
    add-int/lit8 v10, v2, 0x1

    .line 116
    .line 117
    iput v10, v1, Lnn1;->a:I

    .line 118
    .line 119
    add-int/lit8 v10, v11, -0x1

    .line 120
    .line 121
    aput v10, v3, v2

    .line 122
    .line 123
    move v10, v11

    .line 124
    move v13, v14

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move/from16 v17, v2

    .line 127
    .line 128
    :cond_5
    :goto_2
    iget v2, v1, Lnn1;->a:I

    .line 129
    .line 130
    if-lez v2, :cond_6

    .line 131
    .line 132
    iget v2, v0, Laq4;->g:I

    .line 133
    .line 134
    invoke-static {v9, v2, v10, v13, v5}, Lrs9;->g([BIIII)I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    iget v2, v1, Lnn1;->a:I

    .line 139
    .line 140
    sub-int/2addr v2, v8

    .line 141
    aput v13, v4, v2

    .line 142
    .line 143
    if-lt v13, v7, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0, v7, v12}, Lqj0;->k(II)V

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_6
    if-ge v13, v14, :cond_7

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    move v14, v13

    .line 153
    :goto_3
    iget v2, v0, Lqj0;->q:I

    .line 154
    .line 155
    shl-int/2addr v2, v8

    .line 156
    add-int/lit8 v10, v2, 0x1

    .line 157
    .line 158
    iget v11, v0, Lqj0;->o:I

    .line 159
    .line 160
    move/from16 v16, v8

    .line 161
    .line 162
    move/from16 v13, v17

    .line 163
    .line 164
    move v15, v13

    .line 165
    :goto_4
    iget v8, v0, Lqj0;->r:I

    .line 166
    .line 167
    sub-int/2addr v8, v12

    .line 168
    add-int/lit8 v18, v11, -0x1

    .line 169
    .line 170
    move/from16 v19, v2

    .line 171
    .line 172
    iget-object v2, v0, Lqj0;->m:[I

    .line 173
    .line 174
    if-eqz v11, :cond_8

    .line 175
    .line 176
    if-lt v8, v6, :cond_9

    .line 177
    .line 178
    :cond_8
    move-object/from16 v21, v2

    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_9
    iget v11, v0, Lqj0;->q:I

    .line 183
    .line 184
    sub-int v20, v11, v8

    .line 185
    .line 186
    if-le v8, v11, :cond_a

    .line 187
    .line 188
    move v11, v6

    .line 189
    goto :goto_5

    .line 190
    :cond_a
    move/from16 v11, v17

    .line 191
    .line 192
    :goto_5
    add-int v20, v20, v11

    .line 193
    .line 194
    shl-int/lit8 v11, v20, 0x1

    .line 195
    .line 196
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result v20

    .line 200
    move-object/from16 v21, v2

    .line 201
    .line 202
    iget v2, v0, Laq4;->g:I

    .line 203
    .line 204
    add-int v22, v2, v20

    .line 205
    .line 206
    sub-int v23, v22, v8

    .line 207
    .line 208
    move-object/from16 v24, v3

    .line 209
    .line 210
    aget-byte v3, v9, v23

    .line 211
    .line 212
    move-object/from16 v23, v4

    .line 213
    .line 214
    aget-byte v4, v9, v22

    .line 215
    .line 216
    if-ne v3, v4, :cond_d

    .line 217
    .line 218
    add-int/lit8 v3, v20, 0x1

    .line 219
    .line 220
    invoke-static {v9, v2, v8, v3, v5}, Lrs9;->g([BIIII)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-le v2, v14, :cond_c

    .line 225
    .line 226
    iget v3, v1, Lnn1;->a:I

    .line 227
    .line 228
    aput v2, v23, v3

    .line 229
    .line 230
    add-int/lit8 v4, v8, -0x1

    .line 231
    .line 232
    aput v4, v24, v3

    .line 233
    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    iput v3, v1, Lnn1;->a:I

    .line 237
    .line 238
    if-lt v2, v7, :cond_b

    .line 239
    .line 240
    aget v0, v21, v11

    .line 241
    .line 242
    aput v0, v21, v19

    .line 243
    .line 244
    add-int/lit8 v11, v11, 0x1

    .line 245
    .line 246
    aget v0, v21, v11

    .line 247
    .line 248
    aput v0, v21, v10

    .line 249
    .line 250
    return-object v1

    .line 251
    :cond_b
    move v14, v2

    .line 252
    move/from16 v20, v14

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_c
    move/from16 v20, v2

    .line 256
    .line 257
    :cond_d
    :goto_6
    iget v2, v0, Laq4;->g:I

    .line 258
    .line 259
    add-int v2, v2, v20

    .line 260
    .line 261
    sub-int v3, v2, v8

    .line 262
    .line 263
    aget-byte v3, v9, v3

    .line 264
    .line 265
    and-int/lit16 v3, v3, 0xff

    .line 266
    .line 267
    aget-byte v2, v9, v2

    .line 268
    .line 269
    and-int/lit16 v2, v2, 0xff

    .line 270
    .line 271
    if-ge v3, v2, :cond_e

    .line 272
    .line 273
    aput v12, v21, v19

    .line 274
    .line 275
    add-int/lit8 v11, v11, 0x1

    .line 276
    .line 277
    aget v2, v21, v11

    .line 278
    .line 279
    move v12, v2

    .line 280
    move v2, v11

    .line 281
    move/from16 v15, v20

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_e
    aput v12, v21, v10

    .line 285
    .line 286
    aget v2, v21, v11

    .line 287
    .line 288
    move v12, v2

    .line 289
    move v10, v11

    .line 290
    move/from16 v2, v19

    .line 291
    .line 292
    move/from16 v13, v20

    .line 293
    .line 294
    :goto_7
    move/from16 v11, v18

    .line 295
    .line 296
    move-object/from16 v4, v23

    .line 297
    .line 298
    move-object/from16 v3, v24

    .line 299
    .line 300
    goto/16 :goto_4

    .line 301
    .line 302
    :goto_8
    aput v17, v21, v10

    .line 303
    .line 304
    aput v17, v21, v19

    .line 305
    .line 306
    return-object v1
.end method

.method public final h(Lv40;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqj0;->m:[I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lv40;->d([I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqj0;->l:Lx24;

    .line 7
    .line 8
    iget-object v1, v0, Lx24;->d:[I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lv40;->d([I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lx24;->c:[I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lv40;->d([I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lx24;->b:[I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lv40;->d([I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Laq4;->e:[B

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lv40;->c([B)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final i(I)V
    .locals 4

    .line 1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    if-lez p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lqj0;->j()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Laq4;->d:I

    .line 10
    .line 11
    if-ge p1, v1, :cond_0

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :cond_1
    iget-object v1, p0, Laq4;->e:[B

    .line 18
    .line 19
    iget v2, p0, Laq4;->g:I

    .line 20
    .line 21
    iget-object v3, p0, Lqj0;->l:Lx24;

    .line 22
    .line 23
    invoke-virtual {v3, v1, v2}, Lx24;->a([BI)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v3, Lx24;->d:[I

    .line 27
    .line 28
    iget v2, v3, Lx24;->h:I

    .line 29
    .line 30
    aget v1, v1, v2

    .line 31
    .line 32
    iget v2, p0, Lqj0;->r:I

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lx24;->b(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Lqj0;->k(II)V

    .line 38
    .line 39
    .line 40
    :goto_1
    move p1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final j()I
    .locals 6

    .line 1
    iget v0, p0, Laq4;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Laq4;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lqj0;->r:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p0, Lqj0;->r:I

    .line 14
    .line 15
    const v2, 0x7fffffff

    .line 16
    .line 17
    .line 18
    iget v3, p0, Lqj0;->p:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iget-object v1, p0, Lqj0;->l:Lx24;

    .line 24
    .line 25
    iget-object v4, v1, Lx24;->b:[I

    .line 26
    .line 27
    const/16 v5, 0x400

    .line 28
    .line 29
    invoke-static {v5, v2, v4}, Laq4;->f(II[I)V

    .line 30
    .line 31
    .line 32
    iget-object v4, v1, Lx24;->c:[I

    .line 33
    .line 34
    const/high16 v5, 0x10000

    .line 35
    .line 36
    invoke-static {v5, v2, v4}, Laq4;->f(II[I)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v1, Lx24;->d:[I

    .line 40
    .line 41
    iget v1, v1, Lx24;->e:I

    .line 42
    .line 43
    invoke-static {v1, v2, v4}, Laq4;->f(II[I)V

    .line 44
    .line 45
    .line 46
    mul-int/lit8 v1, v3, 0x2

    .line 47
    .line 48
    iget-object v4, p0, Lqj0;->m:[I

    .line 49
    .line 50
    invoke-static {v1, v2, v4}, Laq4;->f(II[I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lqj0;->r:I

    .line 54
    .line 55
    sub-int/2addr v1, v2

    .line 56
    iput v1, p0, Lqj0;->r:I

    .line 57
    .line 58
    :cond_0
    iget v1, p0, Lqj0;->q:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, p0, Lqj0;->q:I

    .line 63
    .line 64
    if-ne v1, v3, :cond_1

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lqj0;->q:I

    .line 68
    .line 69
    :cond_1
    return v0
.end method

.method public final k(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lqj0;->q:I

    .line 6
    .line 7
    shl-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    add-int/lit8 v3, v3, 0x1

    .line 10
    .line 11
    shl-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    iget v4, v0, Lqj0;->o:I

    .line 14
    .line 15
    move v6, v4

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move v4, v3

    .line 19
    move v3, v2

    .line 20
    move/from16 v2, p2

    .line 21
    .line 22
    :goto_0
    iget v9, v0, Lqj0;->r:I

    .line 23
    .line 24
    sub-int/2addr v9, v2

    .line 25
    add-int/lit8 v10, v6, -0x1

    .line 26
    .line 27
    iget-object v11, v0, Lqj0;->m:[I

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget v6, v0, Lqj0;->p:I

    .line 32
    .line 33
    if-lt v9, v6, :cond_1

    .line 34
    .line 35
    :cond_0
    const/16 v17, 0x0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_1
    iget v12, v0, Lqj0;->q:I

    .line 39
    .line 40
    sub-int v13, v12, v9

    .line 41
    .line 42
    if-le v9, v12, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v6, 0x0

    .line 46
    :goto_1
    add-int/2addr v13, v6

    .line 47
    shl-int/lit8 v6, v13, 0x1

    .line 48
    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    iget v13, v0, Laq4;->g:I

    .line 54
    .line 55
    add-int v14, v13, v12

    .line 56
    .line 57
    sub-int/2addr v14, v9

    .line 58
    iget-object v15, v0, Laq4;->e:[B

    .line 59
    .line 60
    aget-byte v14, v15, v14

    .line 61
    .line 62
    add-int v16, v13, v12

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    aget-byte v5, v15, v16

    .line 67
    .line 68
    if-ne v14, v5, :cond_3

    .line 69
    .line 70
    add-int/lit8 v12, v12, 0x1

    .line 71
    .line 72
    invoke-static {v15, v13, v9, v12, v1}, Lrs9;->g([BIIII)I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-ne v12, v1, :cond_3

    .line 77
    .line 78
    aget v0, v11, v6

    .line 79
    .line 80
    aput v0, v11, v3

    .line 81
    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    aget v0, v11, v6

    .line 85
    .line 86
    aput v0, v11, v4

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget v5, v0, Laq4;->g:I

    .line 90
    .line 91
    add-int v13, v5, v12

    .line 92
    .line 93
    sub-int/2addr v13, v9

    .line 94
    aget-byte v9, v15, v13

    .line 95
    .line 96
    and-int/lit16 v9, v9, 0xff

    .line 97
    .line 98
    add-int/2addr v5, v12

    .line 99
    aget-byte v5, v15, v5

    .line 100
    .line 101
    and-int/lit16 v5, v5, 0xff

    .line 102
    .line 103
    if-ge v9, v5, :cond_4

    .line 104
    .line 105
    aput v2, v11, v3

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    aget v2, v11, v6

    .line 110
    .line 111
    move v3, v6

    .line 112
    move v8, v12

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    aput v2, v11, v4

    .line 115
    .line 116
    aget v2, v11, v6

    .line 117
    .line 118
    move v4, v6

    .line 119
    move v7, v12

    .line 120
    :goto_2
    move v6, v10

    .line 121
    goto :goto_0

    .line 122
    :goto_3
    aput v17, v11, v4

    .line 123
    .line 124
    aput v17, v11, v3

    .line 125
    .line 126
    return-void
.end method
