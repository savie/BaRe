.class public final Lax8;
.super Ln60;


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x38

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lax8;->b:[B

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    aget-byte p1, v0, p0

    .line 16
    .line 17
    and-int/lit16 p1, p1, 0xfc

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    aput-byte p1, v0, p0

    .line 21
    .line 22
    const/16 p0, 0x37

    .line 23
    .line 24
    aget-byte p1, v0, p0

    .line 25
    .line 26
    or-int/lit16 p1, p1, 0x80

    .line 27
    .line 28
    int-to-byte p1, p1

    .line 29
    aput-byte p1, v0, p0

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lbx8;[B)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x38

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    iget-object v3, v3, Lbx8;->b:[B

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xe

    .line 16
    .line 17
    new-array v5, v3, [I

    .line 18
    .line 19
    move v6, v4

    .line 20
    :goto_0
    const/16 v7, 0x8

    .line 21
    .line 22
    const/16 v8, 0x10

    .line 23
    .line 24
    if-ge v6, v3, :cond_0

    .line 25
    .line 26
    mul-int/lit8 v9, v6, 0x4

    .line 27
    .line 28
    move-object/from16 v10, p0

    .line 29
    .line 30
    iget-object v11, v10, Lax8;->b:[B

    .line 31
    .line 32
    aget-byte v12, v11, v9

    .line 33
    .line 34
    and-int/lit16 v12, v12, 0xff

    .line 35
    .line 36
    add-int/lit8 v13, v9, 0x1

    .line 37
    .line 38
    aget-byte v13, v11, v13

    .line 39
    .line 40
    and-int/lit16 v13, v13, 0xff

    .line 41
    .line 42
    shl-int/lit8 v7, v13, 0x8

    .line 43
    .line 44
    or-int/2addr v7, v12

    .line 45
    add-int/lit8 v12, v9, 0x2

    .line 46
    .line 47
    aget-byte v12, v11, v12

    .line 48
    .line 49
    and-int/lit16 v12, v12, 0xff

    .line 50
    .line 51
    shl-int/lit8 v8, v12, 0x10

    .line 52
    .line 53
    or-int/2addr v7, v8

    .line 54
    add-int/lit8 v9, v9, 0x3

    .line 55
    .line 56
    aget-byte v8, v11, v9

    .line 57
    .line 58
    shl-int/lit8 v8, v8, 0x18

    .line 59
    .line 60
    or-int/2addr v7, v8

    .line 61
    aput v7, v5, v6

    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    aget v6, v5, v4

    .line 67
    .line 68
    and-int/lit8 v6, v6, -0x4

    .line 69
    .line 70
    aput v6, v5, v4

    .line 71
    .line 72
    const/16 v6, 0xd

    .line 73
    .line 74
    aget v9, v5, v6

    .line 75
    .line 76
    const/high16 v10, -0x80000000

    .line 77
    .line 78
    or-int/2addr v9, v10

    .line 79
    aput v9, v5, v6

    .line 80
    .line 81
    new-array v6, v8, [I

    .line 82
    .line 83
    invoke-static {v4, v4, v2, v6}, Lzh8;->j(II[B[I)V

    .line 84
    .line 85
    .line 86
    const/4 v9, 0x7

    .line 87
    const/4 v10, 0x2

    .line 88
    invoke-static {v9, v10, v2, v6}, Lzh8;->j(II[B[I)V

    .line 89
    .line 90
    .line 91
    const/4 v9, 0x4

    .line 92
    invoke-static {v3, v9, v2, v6}, Lzh8;->j(II[B[I)V

    .line 93
    .line 94
    .line 95
    const/16 v9, 0x15

    .line 96
    .line 97
    const/4 v11, 0x6

    .line 98
    invoke-static {v9, v11, v2, v6}, Lzh8;->j(II[B[I)V

    .line 99
    .line 100
    .line 101
    const/16 v9, 0x1c

    .line 102
    .line 103
    invoke-static {v9, v7, v2, v6}, Lzh8;->j(II[B[I)V

    .line 104
    .line 105
    .line 106
    const/16 v7, 0x23

    .line 107
    .line 108
    const/16 v9, 0xa

    .line 109
    .line 110
    invoke-static {v7, v9, v2, v6}, Lzh8;->j(II[B[I)V

    .line 111
    .line 112
    .line 113
    const/16 v7, 0x2a

    .line 114
    .line 115
    const/16 v9, 0xc

    .line 116
    .line 117
    invoke-static {v7, v9, v2, v6}, Lzh8;->j(II[B[I)V

    .line 118
    .line 119
    .line 120
    const/16 v7, 0x31

    .line 121
    .line 122
    invoke-static {v7, v3, v2, v6}, Lzh8;->j(II[B[I)V

    .line 123
    .line 124
    .line 125
    new-array v2, v8, [I

    .line 126
    .line 127
    invoke-static {v4, v4, v6, v2}, Lzh8;->g(II[I[I)V

    .line 128
    .line 129
    .line 130
    new-array v3, v8, [I

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    aput v7, v3, v4

    .line 134
    .line 135
    new-array v9, v8, [I

    .line 136
    .line 137
    aput v7, v9, v4

    .line 138
    .line 139
    new-array v11, v8, [I

    .line 140
    .line 141
    new-array v12, v8, [I

    .line 142
    .line 143
    new-array v13, v8, [I

    .line 144
    .line 145
    const/16 v14, 0x1bf

    .line 146
    .line 147
    move v15, v7

    .line 148
    :goto_1
    invoke-static {v9, v11, v12}, Lzh8;->b([I[I[I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v9, v11, v9}, Lzh8;->M([I[I[I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v3, v11}, Lzh8;->b([I[I[I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v3, v2}, Lzh8;->M([I[I[I)V

    .line 158
    .line 159
    .line 160
    invoke-static {v12, v2, v12}, Lzh8;->z([I[I[I)V

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v11, v9}, Lzh8;->z([I[I[I)V

    .line 164
    .line 165
    .line 166
    invoke-static {v11, v11}, Lzh8;->L([I[I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v2}, Lzh8;->L([I[I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v11, v2, v13}, Lzh8;->M([I[I[I)V

    .line 173
    .line 174
    .line 175
    const v4, 0x98aa

    .line 176
    .line 177
    .line 178
    invoke-static {v4, v13, v3}, Lzh8;->y(I[I[I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v2, v3}, Lzh8;->b([I[I[I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v13, v3}, Lzh8;->z([I[I[I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v11, v2}, Lzh8;->z([I[I[I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v12, v9, v11}, Lzh8;->M([I[I[I)V

    .line 191
    .line 192
    .line 193
    invoke-static {v12, v9, v9}, Lzh8;->b([I[I[I)V

    .line 194
    .line 195
    .line 196
    invoke-static {v9, v9}, Lzh8;->L([I[I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v11, v11}, Lzh8;->L([I[I)V

    .line 200
    .line 201
    .line 202
    invoke-static {v11, v6, v11}, Lzh8;->z([I[I[I)V

    .line 203
    .line 204
    .line 205
    const/4 v1, -0x1

    .line 206
    add-int/2addr v14, v1

    .line 207
    ushr-int/lit8 v16, v14, 0x5

    .line 208
    .line 209
    and-int/lit8 v17, v14, 0x1f

    .line 210
    .line 211
    aget v16, v5, v16

    .line 212
    .line 213
    ushr-int v16, v16, v17

    .line 214
    .line 215
    and-int/lit8 v16, v16, 0x1

    .line 216
    .line 217
    xor-int v15, v15, v16

    .line 218
    .line 219
    invoke-static {v15, v2, v9}, Lzh8;->h(I[I[I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v15, v3, v11}, Lzh8;->h(I[I[I)V

    .line 223
    .line 224
    .line 225
    if-ge v14, v10, :cond_4

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    :goto_2
    if-ge v5, v10, :cond_1

    .line 229
    .line 230
    new-array v6, v8, [I

    .line 231
    .line 232
    new-array v9, v8, [I

    .line 233
    .line 234
    invoke-static {v2, v3, v6}, Lzh8;->b([I[I[I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v2, v3, v9}, Lzh8;->M([I[I[I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v6, v6}, Lzh8;->L([I[I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v9, v9}, Lzh8;->L([I[I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v6, v9, v2}, Lzh8;->z([I[I[I)V

    .line 247
    .line 248
    .line 249
    invoke-static {v6, v9, v6}, Lzh8;->M([I[I[I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v6, v3}, Lzh8;->y(I[I[I)V

    .line 253
    .line 254
    .line 255
    invoke-static {v3, v9, v3}, Lzh8;->b([I[I[I)V

    .line 256
    .line 257
    .line 258
    invoke-static {v3, v6, v3}, Lzh8;->z([I[I[I)V

    .line 259
    .line 260
    .line 261
    add-int/lit8 v5, v5, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_1
    invoke-static {v3, v3}, Lzh8;->u([I[I)V

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v3, v2}, Lzh8;->z([I[I[I)V

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v7}, Lzh8;->E([II)V

    .line 271
    .line 272
    .line 273
    invoke-static {v2, v1}, Lzh8;->E([II)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v2}, Lzh8;->l([B[I)V

    .line 277
    .line 278
    .line 279
    const/4 v1, 0x0

    .line 280
    const/4 v4, 0x0

    .line 281
    const/16 v15, 0x38

    .line 282
    .line 283
    :goto_3
    if-ge v4, v15, :cond_2

    .line 284
    .line 285
    aget-byte v2, v0, v4

    .line 286
    .line 287
    or-int/2addr v1, v2

    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_2
    if-eqz v1, :cond_3

    .line 292
    .line 293
    return-void

    .line 294
    :cond_3
    const-string v0, "X448 agreement failed"

    .line 295
    .line 296
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_4
    move/from16 v15, v16

    .line 301
    .line 302
    const/16 v1, 0x38

    .line 303
    .line 304
    const/4 v4, 0x0

    .line 305
    goto/16 :goto_1
.end method
