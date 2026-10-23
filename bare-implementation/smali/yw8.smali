.class public final Lyw8;
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
    const/16 v0, 0x20

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lyw8;->b:[B

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
    and-int/lit16 p1, p1, 0xf8

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    aput-byte p1, v0, p0

    .line 21
    .line 22
    const/16 p0, 0x1f

    .line 23
    .line 24
    aget-byte p1, v0, p0

    .line 25
    .line 26
    and-int/lit8 p1, p1, 0x7f

    .line 27
    .line 28
    int-to-byte p1, p1

    .line 29
    aput-byte p1, v0, p0

    .line 30
    .line 31
    or-int/lit8 p1, p1, 0x40

    .line 32
    .line 33
    int-to-byte p1, p1

    .line 34
    aput-byte p1, v0, p0

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lzw8;[B)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    iget-object v3, v3, Lzw8;->b:[B

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v5, v3, [I

    .line 18
    .line 19
    move v6, v4

    .line 20
    :goto_0
    const/16 v7, 0x10

    .line 21
    .line 22
    const/4 v8, 0x3

    .line 23
    if-ge v6, v3, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v9, v6, 0x4

    .line 26
    .line 27
    move-object/from16 v10, p0

    .line 28
    .line 29
    iget-object v11, v10, Lyw8;->b:[B

    .line 30
    .line 31
    aget-byte v12, v11, v9

    .line 32
    .line 33
    and-int/lit16 v12, v12, 0xff

    .line 34
    .line 35
    add-int/lit8 v13, v9, 0x1

    .line 36
    .line 37
    aget-byte v13, v11, v13

    .line 38
    .line 39
    and-int/lit16 v13, v13, 0xff

    .line 40
    .line 41
    shl-int/2addr v13, v3

    .line 42
    or-int/2addr v12, v13

    .line 43
    add-int/lit8 v13, v9, 0x2

    .line 44
    .line 45
    aget-byte v13, v11, v13

    .line 46
    .line 47
    and-int/lit16 v13, v13, 0xff

    .line 48
    .line 49
    shl-int/lit8 v7, v13, 0x10

    .line 50
    .line 51
    or-int/2addr v7, v12

    .line 52
    add-int/2addr v9, v8

    .line 53
    aget-byte v8, v11, v9

    .line 54
    .line 55
    shl-int/lit8 v8, v8, 0x18

    .line 56
    .line 57
    or-int/2addr v7, v8

    .line 58
    aput v7, v5, v6

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    aget v3, v5, v4

    .line 64
    .line 65
    and-int/lit8 v3, v3, -0x8

    .line 66
    .line 67
    aput v3, v5, v4

    .line 68
    .line 69
    const/4 v3, 0x7

    .line 70
    aget v6, v5, v3

    .line 71
    .line 72
    const v9, 0x7fffffff

    .line 73
    .line 74
    .line 75
    and-int/2addr v6, v9

    .line 76
    aput v6, v5, v3

    .line 77
    .line 78
    const/high16 v9, 0x40000000    # 2.0f

    .line 79
    .line 80
    or-int/2addr v6, v9

    .line 81
    aput v6, v5, v3

    .line 82
    .line 83
    const/16 v3, 0xa

    .line 84
    .line 85
    new-array v6, v3, [I

    .line 86
    .line 87
    invoke-static {v4, v4, v2, v6}, Lnc8;->s(II[B[I)V

    .line 88
    .line 89
    .line 90
    const/4 v9, 0x5

    .line 91
    invoke-static {v7, v9, v2, v6}, Lnc8;->s(II[B[I)V

    .line 92
    .line 93
    .line 94
    const/16 v2, 0x9

    .line 95
    .line 96
    aget v10, v6, v2

    .line 97
    .line 98
    const v11, 0xffffff

    .line 99
    .line 100
    .line 101
    and-int/2addr v10, v11

    .line 102
    aput v10, v6, v2

    .line 103
    .line 104
    new-array v2, v3, [I

    .line 105
    .line 106
    invoke-static {v4, v4, v6, v2}, Lnc8;->n(II[I[I)V

    .line 107
    .line 108
    .line 109
    new-array v10, v3, [I

    .line 110
    .line 111
    const/4 v11, 0x1

    .line 112
    aput v11, v10, v4

    .line 113
    .line 114
    new-array v12, v3, [I

    .line 115
    .line 116
    aput v11, v12, v4

    .line 117
    .line 118
    new-array v13, v3, [I

    .line 119
    .line 120
    new-array v14, v3, [I

    .line 121
    .line 122
    new-array v15, v3, [I

    .line 123
    .line 124
    const/16 v16, 0xfe

    .line 125
    .line 126
    move/from16 v17, v11

    .line 127
    .line 128
    :goto_1
    invoke-static {v12, v13, v14, v12}, Lnc8;->c([I[I[I[I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v10, v13, v2}, Lnc8;->c([I[I[I[I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v14, v2, v14}, Lnc8;->K([I[I[I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v12, v13, v12}, Lnc8;->K([I[I[I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v13, v13}, Lnc8;->i0([I[I)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v2}, Lnc8;->i0([I[I)V

    .line 144
    .line 145
    .line 146
    invoke-static {v13, v2, v15}, Lnc8;->l0([I[I[I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v15, v10}, Lnc8;->J([I[I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v10, v2, v10}, Lnc8;->b([I[I[I)V

    .line 153
    .line 154
    .line 155
    invoke-static {v10, v15, v10}, Lnc8;->K([I[I[I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v13, v2}, Lnc8;->K([I[I[I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v14, v12, v12, v13}, Lnc8;->c([I[I[I[I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v12, v12}, Lnc8;->i0([I[I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v13, v13}, Lnc8;->i0([I[I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v13, v6, v13}, Lnc8;->K([I[I[I)V

    .line 171
    .line 172
    .line 173
    move/from16 p0, v11

    .line 174
    .line 175
    add-int/lit8 v11, v16, -0x1

    .line 176
    .line 177
    ushr-int/lit8 v16, v11, 0x5

    .line 178
    .line 179
    and-int/lit8 v18, v11, 0x1f

    .line 180
    .line 181
    aget v16, v5, v16

    .line 182
    .line 183
    ushr-int v16, v16, v18

    .line 184
    .line 185
    and-int/lit8 v16, v16, 0x1

    .line 186
    .line 187
    xor-int v1, v17, v16

    .line 188
    .line 189
    invoke-static {v1, v2, v12}, Lnc8;->q(I[I[I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v10, v13}, Lnc8;->q(I[I[I)V

    .line 193
    .line 194
    .line 195
    if-ge v11, v8, :cond_4

    .line 196
    .line 197
    move v1, v4

    .line 198
    :goto_2
    if-ge v1, v8, :cond_1

    .line 199
    .line 200
    new-array v5, v3, [I

    .line 201
    .line 202
    new-array v6, v3, [I

    .line 203
    .line 204
    invoke-static {v2, v10, v5, v6}, Lnc8;->c([I[I[I[I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v5, v5}, Lnc8;->i0([I[I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v6, v6}, Lnc8;->i0([I[I)V

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v6, v2}, Lnc8;->K([I[I[I)V

    .line 214
    .line 215
    .line 216
    invoke-static {v5, v6, v5}, Lnc8;->l0([I[I[I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v5, v10}, Lnc8;->J([I[I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v10, v6, v10}, Lnc8;->b([I[I[I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v10, v5, v10}, Lnc8;->K([I[I[I)V

    .line 226
    .line 227
    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_1
    invoke-static {v10, v10}, Lnc8;->E([I[I)V

    .line 232
    .line 233
    .line 234
    invoke-static {v2, v10, v2}, Lnc8;->K([I[I[I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v2}, Lnc8;->M([I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v4, v4, v0, v2}, Lnc8;->x(II[B[I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v9, v7, v0, v2}, Lnc8;->x(II[B[I)V

    .line 244
    .line 245
    .line 246
    move v1, v4

    .line 247
    const/16 v2, 0x20

    .line 248
    .line 249
    :goto_3
    if-ge v4, v2, :cond_2

    .line 250
    .line 251
    aget-byte v3, v0, v4

    .line 252
    .line 253
    or-int/2addr v1, v3

    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_2
    if-eqz v1, :cond_3

    .line 258
    .line 259
    return-void

    .line 260
    :cond_3
    const-string v0, "X25519 agreement failed"

    .line 261
    .line 262
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_4
    const/16 v18, 0x20

    .line 267
    .line 268
    move/from16 v17, v16

    .line 269
    .line 270
    move/from16 v1, v18

    .line 271
    .line 272
    move/from16 v16, v11

    .line 273
    .line 274
    move/from16 v11, p0

    .line 275
    .line 276
    goto/16 :goto_1
.end method
