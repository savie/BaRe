.class public final Lh74;
.super Lod2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public i:Z

.field public final j:I

.field public final k:Lg74;

.field public final l:Lg74;

.field public m:I

.field public n:[B

.field public o:I

.field public final synthetic p:Lk74;


# direct methods
.method public constructor <init>(Lk74;I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh74;->p:Lk74;

    .line 5
    .line 6
    sget-object p1, Lwx3;->a:[B

    .line 7
    .line 8
    iput-object p1, p0, Lh74;->n:[B

    .line 9
    .line 10
    iput p2, p0, Lh74;->j:I

    .line 11
    .line 12
    invoke-static {p3}, Lk74;->a([I)Lg74;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lh74;->k:Lg74;

    .line 17
    .line 18
    invoke-static {p4}, Lk74;->a([I)Lg74;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lh74;->l:Lg74;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lh74;->o:I

    .line 2
    .line 3
    iget p0, p0, Lh74;->m:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final n()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lh74;->i:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final v([BII)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-boolean v5, v0, Lh74;->i:Z

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    return v0

    .line 19
    :cond_1
    iget v5, v0, Lh74;->o:I

    .line 20
    .line 21
    iget v6, v0, Lh74;->m:I

    .line 22
    .line 23
    sub-int/2addr v5, v6

    .line 24
    if-lez v5, :cond_2

    .line 25
    .line 26
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget-object v6, v0, Lh74;->n:[B

    .line 31
    .line 32
    iget v7, v0, Lh74;->m:I

    .line 33
    .line 34
    invoke-static {v6, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v6, v0, Lh74;->m:I

    .line 38
    .line 39
    add-int/2addr v6, v5

    .line 40
    iput v6, v0, Lh74;->m:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v5, v4

    .line 44
    :goto_0
    if-ge v5, v3, :cond_e

    .line 45
    .line 46
    iget-object v6, v0, Lh74;->p:Lk74;

    .line 47
    .line 48
    iget-object v7, v6, Lk74;->c:Lgr0;

    .line 49
    .line 50
    iget-object v8, v6, Lk74;->e:Lb3;

    .line 51
    .line 52
    iget-object v9, v8, Lb3;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, [B

    .line 55
    .line 56
    iget-object v10, v0, Lh74;->k:Lg74;

    .line 57
    .line 58
    invoke-static {v7, v10}, Lk74;->g(Lgr0;Lg74;)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const v10, 0xffff

    .line 63
    .line 64
    .line 65
    const/4 v11, 0x1

    .line 66
    const/16 v12, 0x100

    .line 67
    .line 68
    if-ge v7, v12, :cond_4

    .line 69
    .line 70
    add-int/lit8 v6, v5, 0x1

    .line 71
    .line 72
    add-int/2addr v5, v2

    .line 73
    int-to-byte v7, v7

    .line 74
    iget v12, v8, Lb3;->a:I

    .line 75
    .line 76
    aput-byte v7, v9, v12

    .line 77
    .line 78
    add-int/lit8 v9, v12, 0x1

    .line 79
    .line 80
    and-int/2addr v9, v10

    .line 81
    iget-boolean v10, v8, Lb3;->b:Z

    .line 82
    .line 83
    if-nez v10, :cond_3

    .line 84
    .line 85
    if-ge v9, v12, :cond_3

    .line 86
    .line 87
    iput-boolean v11, v8, Lb3;->b:Z

    .line 88
    .line 89
    :cond_3
    iput v9, v8, Lb3;->a:I

    .line 90
    .line 91
    aput-byte v7, v1, v5

    .line 92
    .line 93
    move/from16 v17, v4

    .line 94
    .line 95
    :goto_1
    move v5, v6

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    if-le v7, v12, :cond_d

    .line 99
    .line 100
    sget-object v12, Lk74;->f:[S

    .line 101
    .line 102
    add-int/lit16 v7, v7, -0x101

    .line 103
    .line 104
    aget-short v7, v12, v7

    .line 105
    .line 106
    ushr-int/lit8 v12, v7, 0x5

    .line 107
    .line 108
    and-int/lit8 v7, v7, 0x1f

    .line 109
    .line 110
    iget-object v13, v6, Lk74;->c:Lgr0;

    .line 111
    .line 112
    invoke-static {v13, v7}, Lk74;->h(Lgr0;I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v13

    .line 116
    invoke-static {v12, v13, v14}, Lbb9;->f(IJ)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    iget-object v12, v6, Lk74;->c:Lgr0;

    .line 121
    .line 122
    iget-object v13, v0, Lh74;->l:Lg74;

    .line 123
    .line 124
    invoke-static {v12, v13}, Lk74;->g(Lgr0;Lg74;)I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    sget-object v13, Lk74;->k:[I

    .line 129
    .line 130
    aget v12, v13, v12

    .line 131
    .line 132
    ushr-int/lit8 v13, v12, 0x4

    .line 133
    .line 134
    and-int/lit8 v12, v12, 0xf

    .line 135
    .line 136
    iget-object v6, v6, Lk74;->c:Lgr0;

    .line 137
    .line 138
    invoke-static {v6, v12}, Lk74;->h(Lgr0;I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v14

    .line 142
    invoke-static {v13, v14, v15}, Lbb9;->f(IJ)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget-object v12, v0, Lh74;->n:[B

    .line 147
    .line 148
    array-length v12, v12

    .line 149
    if-ge v12, v7, :cond_5

    .line 150
    .line 151
    new-array v12, v7, [B

    .line 152
    .line 153
    iput-object v12, v0, Lh74;->n:[B

    .line 154
    .line 155
    :cond_5
    iput v7, v0, Lh74;->o:I

    .line 156
    .line 157
    iput v4, v0, Lh74;->m:I

    .line 158
    .line 159
    iget-object v12, v0, Lh74;->n:[B

    .line 160
    .line 161
    array-length v13, v9

    .line 162
    if-gt v6, v13, :cond_c

    .line 163
    .line 164
    iget v13, v8, Lb3;->a:I

    .line 165
    .line 166
    sub-int v14, v13, v6

    .line 167
    .line 168
    and-int/2addr v14, v10

    .line 169
    iget-boolean v15, v8, Lb3;->b:Z

    .line 170
    .line 171
    if-nez v15, :cond_7

    .line 172
    .line 173
    if-ge v14, v13, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    const-string v0, "Attempt to read beyond memory: dist="

    .line 177
    .line 178
    invoke-static {v6, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v4

    .line 186
    :cond_7
    :goto_2
    move v6, v4

    .line 187
    :goto_3
    if-ge v6, v7, :cond_a

    .line 188
    .line 189
    aget-byte v13, v9, v14

    .line 190
    .line 191
    iget v15, v8, Lb3;->a:I

    .line 192
    .line 193
    aput-byte v13, v9, v15

    .line 194
    .line 195
    add-int/lit8 v16, v15, 0x1

    .line 196
    .line 197
    move/from16 v17, v4

    .line 198
    .line 199
    and-int v4, v16, v10

    .line 200
    .line 201
    move/from16 v16, v10

    .line 202
    .line 203
    iget-boolean v10, v8, Lb3;->b:Z

    .line 204
    .line 205
    if-nez v10, :cond_8

    .line 206
    .line 207
    if-ge v4, v15, :cond_8

    .line 208
    .line 209
    iput-boolean v11, v8, Lb3;->b:Z

    .line 210
    .line 211
    :cond_8
    iput v4, v8, Lb3;->a:I

    .line 212
    .line 213
    aput-byte v13, v12, v6

    .line 214
    .line 215
    add-int/lit8 v6, v6, 0x1

    .line 216
    .line 217
    add-int/lit8 v4, v14, 0x1

    .line 218
    .line 219
    and-int v4, v4, v16

    .line 220
    .line 221
    iget-boolean v10, v8, Lb3;->b:Z

    .line 222
    .line 223
    if-nez v10, :cond_9

    .line 224
    .line 225
    if-ge v4, v14, :cond_9

    .line 226
    .line 227
    iput-boolean v11, v8, Lb3;->b:Z

    .line 228
    .line 229
    :cond_9
    move v14, v4

    .line 230
    move/from16 v10, v16

    .line 231
    .line 232
    move/from16 v4, v17

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_a
    move/from16 v17, v4

    .line 236
    .line 237
    add-int v4, v2, v5

    .line 238
    .line 239
    sub-int v6, v3, v5

    .line 240
    .line 241
    iget v7, v0, Lh74;->o:I

    .line 242
    .line 243
    iget v8, v0, Lh74;->m:I

    .line 244
    .line 245
    sub-int/2addr v7, v8

    .line 246
    if-lez v7, :cond_b

    .line 247
    .line 248
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    iget-object v7, v0, Lh74;->n:[B

    .line 253
    .line 254
    iget v8, v0, Lh74;->m:I

    .line 255
    .line 256
    invoke-static {v7, v8, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    iget v4, v0, Lh74;->m:I

    .line 260
    .line 261
    add-int/2addr v4, v6

    .line 262
    iput v4, v0, Lh74;->m:I

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_b
    move/from16 v6, v17

    .line 266
    .line 267
    :goto_4
    add-int/2addr v6, v5

    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :goto_5
    move/from16 v4, v17

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_c
    move/from16 v17, v4

    .line 275
    .line 276
    const-string v0, "Illegal distance parameter: "

    .line 277
    .line 278
    invoke-static {v6, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return v17

    .line 286
    :cond_d
    iput-boolean v11, v0, Lh74;->i:Z

    .line 287
    .line 288
    :cond_e
    return v5
.end method

.method public final y()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh74;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Lh74;->j:I

    .line 8
    .line 9
    return p0
.end method
