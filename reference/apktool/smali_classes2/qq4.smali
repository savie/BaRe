.class public final Lqq4;
.super Lpq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public B:Lnn1;


# virtual methods
.method public final k()I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpq4;->z:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lpq4;->j()Lnn1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lqq4;->B:Lnn1;

    .line 13
    .line 14
    :cond_0
    iput v2, v0, Lpq4;->y:I

    .line 15
    .line 16
    iget-object v1, v0, Lpq4;->n:Laq4;

    .line 17
    .line 18
    iget v2, v1, Laq4;->j:I

    .line 19
    .line 20
    iget-object v3, v1, Laq4;->e:[B

    .line 21
    .line 22
    iget v4, v1, Laq4;->g:I

    .line 23
    .line 24
    sub-int/2addr v2, v4

    .line 25
    const/16 v4, 0x111

    .line 26
    .line 27
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ge v2, v4, :cond_1

    .line 34
    .line 35
    move/from16 v18, v5

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    move v8, v7

    .line 42
    move v9, v8

    .line 43
    :goto_0
    iget v10, v0, Lpq4;->r:I

    .line 44
    .line 45
    iget-object v11, v0, Lgq4;->b:[I

    .line 46
    .line 47
    const/4 v12, 0x4

    .line 48
    if-ge v7, v12, :cond_5

    .line 49
    .line 50
    aget v11, v11, v7

    .line 51
    .line 52
    iget v12, v1, Laq4;->g:I

    .line 53
    .line 54
    add-int/2addr v11, v5

    .line 55
    invoke-static {v3, v12, v11, v6, v2}, Lrs9;->g([BIIII)I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-ge v11, v4, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-lt v11, v10, :cond_3

    .line 63
    .line 64
    iput v7, v0, Lpq4;->y:I

    .line 65
    .line 66
    add-int/lit8 v1, v11, -0x1

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lpq4;->l(I)V

    .line 69
    .line 70
    .line 71
    return v11

    .line 72
    :cond_3
    if-le v11, v8, :cond_4

    .line 73
    .line 74
    move v9, v7

    .line 75
    move v8, v11

    .line 76
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-object v7, v0, Lqq4;->B:Lnn1;

    .line 80
    .line 81
    iget v13, v7, Lnn1;->a:I

    .line 82
    .line 83
    if-lez v13, :cond_9

    .line 84
    .line 85
    iget-object v14, v7, Lnn1;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v14, [I

    .line 88
    .line 89
    sub-int/2addr v13, v5

    .line 90
    aget v14, v14, v13

    .line 91
    .line 92
    iget-object v7, v7, Lnn1;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v7, [I

    .line 95
    .line 96
    aget v7, v7, v13

    .line 97
    .line 98
    if-lt v14, v10, :cond_6

    .line 99
    .line 100
    add-int/2addr v7, v12

    .line 101
    iput v7, v0, Lpq4;->y:I

    .line 102
    .line 103
    add-int/lit8 v1, v14, -0x1

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lpq4;->l(I)V

    .line 106
    .line 107
    .line 108
    return v14

    .line 109
    :cond_6
    :goto_2
    iget-object v10, v0, Lqq4;->B:Lnn1;

    .line 110
    .line 111
    iget v13, v10, Lnn1;->a:I

    .line 112
    .line 113
    if-le v13, v5, :cond_7

    .line 114
    .line 115
    iget-object v15, v10, Lnn1;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v15, [I

    .line 118
    .line 119
    add-int/lit8 v16, v13, -0x2

    .line 120
    .line 121
    aget v17, v15, v16

    .line 122
    .line 123
    move/from16 v18, v5

    .line 124
    .line 125
    add-int/lit8 v5, v17, 0x1

    .line 126
    .line 127
    if-ne v14, v5, :cond_8

    .line 128
    .line 129
    iget-object v5, v10, Lnn1;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v5, [I

    .line 132
    .line 133
    aget v6, v5, v16

    .line 134
    .line 135
    ushr-int/lit8 v12, v7, 0x7

    .line 136
    .line 137
    if-ge v6, v12, :cond_8

    .line 138
    .line 139
    add-int/lit8 v6, v13, -0x1

    .line 140
    .line 141
    iput v6, v10, Lnn1;->a:I

    .line 142
    .line 143
    add-int/lit8 v13, v13, -0x2

    .line 144
    .line 145
    aget v14, v15, v13

    .line 146
    .line 147
    aget v7, v5, v13

    .line 148
    .line 149
    move/from16 v5, v18

    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v12, 0x4

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    move/from16 v18, v5

    .line 155
    .line 156
    :cond_8
    if-ne v14, v4, :cond_a

    .line 157
    .line 158
    const/16 v5, 0x80

    .line 159
    .line 160
    if-lt v7, v5, :cond_a

    .line 161
    .line 162
    move/from16 v14, v18

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    move/from16 v18, v5

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v14, 0x0

    .line 169
    :cond_a
    :goto_3
    if-lt v8, v4, :cond_d

    .line 170
    .line 171
    add-int/lit8 v5, v8, 0x1

    .line 172
    .line 173
    if-ge v5, v14, :cond_c

    .line 174
    .line 175
    add-int/lit8 v5, v8, 0x2

    .line 176
    .line 177
    if-lt v5, v14, :cond_b

    .line 178
    .line 179
    const/16 v5, 0x200

    .line 180
    .line 181
    if-ge v7, v5, :cond_c

    .line 182
    .line 183
    :cond_b
    add-int/lit8 v5, v8, 0x3

    .line 184
    .line 185
    if-lt v5, v14, :cond_d

    .line 186
    .line 187
    const v5, 0x8000

    .line 188
    .line 189
    .line 190
    if-lt v7, v5, :cond_d

    .line 191
    .line 192
    :cond_c
    iput v9, v0, Lpq4;->y:I

    .line 193
    .line 194
    add-int/lit8 v1, v8, -0x1

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lpq4;->l(I)V

    .line 197
    .line 198
    .line 199
    return v8

    .line 200
    :cond_d
    if-lt v14, v4, :cond_15

    .line 201
    .line 202
    if-gt v2, v4, :cond_e

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_e
    invoke-virtual {v0}, Lpq4;->j()Lnn1;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, v0, Lqq4;->B:Lnn1;

    .line 210
    .line 211
    iget v5, v2, Lnn1;->a:I

    .line 212
    .line 213
    if-lez v5, :cond_12

    .line 214
    .line 215
    iget-object v6, v2, Lnn1;->b:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v6, [I

    .line 218
    .line 219
    add-int/lit8 v5, v5, -0x1

    .line 220
    .line 221
    aget v6, v6, v5

    .line 222
    .line 223
    iget-object v2, v2, Lnn1;->c:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, [I

    .line 226
    .line 227
    aget v2, v2, v5

    .line 228
    .line 229
    if-lt v6, v14, :cond_f

    .line 230
    .line 231
    if-lt v2, v7, :cond_15

    .line 232
    .line 233
    :cond_f
    add-int/lit8 v5, v14, 0x1

    .line 234
    .line 235
    if-ne v6, v5, :cond_11

    .line 236
    .line 237
    ushr-int/lit8 v8, v2, 0x7

    .line 238
    .line 239
    if-ge v7, v8, :cond_10

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_10
    return v18

    .line 243
    :cond_11
    :goto_4
    if-gt v6, v5, :cond_15

    .line 244
    .line 245
    add-int/lit8 v6, v6, 0x1

    .line 246
    .line 247
    if-lt v6, v14, :cond_12

    .line 248
    .line 249
    const/4 v5, 0x3

    .line 250
    if-lt v14, v5, :cond_12

    .line 251
    .line 252
    ushr-int/lit8 v5, v7, 0x7

    .line 253
    .line 254
    if-ge v2, v5, :cond_12

    .line 255
    .line 256
    return v18

    .line 257
    :cond_12
    add-int/lit8 v2, v14, -0x1

    .line 258
    .line 259
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const/4 v4, 0x0

    .line 264
    const/4 v5, 0x4

    .line 265
    :goto_5
    if-ge v4, v5, :cond_14

    .line 266
    .line 267
    aget v6, v11, v4

    .line 268
    .line 269
    iget v8, v1, Laq4;->g:I

    .line 270
    .line 271
    add-int/lit8 v6, v6, 0x1

    .line 272
    .line 273
    const/4 v9, 0x0

    .line 274
    invoke-static {v3, v8, v6, v9, v2}, Lrs9;->g([BIIII)I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-ne v6, v2, :cond_13

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_14
    add-int/2addr v7, v5

    .line 285
    iput v7, v0, Lpq4;->y:I

    .line 286
    .line 287
    add-int/lit8 v1, v14, -0x2

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Lpq4;->l(I)V

    .line 290
    .line 291
    .line 292
    return v14

    .line 293
    :cond_15
    :goto_6
    return v18
.end method
