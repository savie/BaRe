.class public final Llh8;
.super Lz85;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e([BII)Ljava/lang/String;
    .locals 9

    .line 1
    or-int p0, p2, p3

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    sub-int/2addr v0, p2

    .line 5
    sub-int/2addr v0, p3

    .line 6
    or-int/2addr p0, v0

    .line 7
    if-ltz p0, :cond_e

    .line 8
    .line 9
    add-int p0, p2, p3

    .line 10
    .line 11
    new-array p3, p3, [C

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge p2, p0, :cond_0

    .line 16
    .line 17
    aget-byte v2, p1, p2

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    add-int/lit8 v3, v1, 0x1

    .line 24
    .line 25
    int-to-char v2, v2

    .line 26
    aput-char v2, p3, v1

    .line 27
    .line 28
    move v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    if-ge p2, p0, :cond_d

    .line 31
    .line 32
    add-int/lit8 v2, p2, 0x1

    .line 33
    .line 34
    aget-byte v3, p1, p2

    .line 35
    .line 36
    if-ltz v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 p2, v1, 0x1

    .line 39
    .line 40
    int-to-char v3, v3

    .line 41
    aput-char v3, p3, v1

    .line 42
    .line 43
    :goto_2
    if-ge v2, p0, :cond_1

    .line 44
    .line 45
    aget-byte v1, p1, v2

    .line 46
    .line 47
    if-ltz v1, :cond_1

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    add-int/lit8 v3, p2, 0x1

    .line 52
    .line 53
    int-to-char v1, v1

    .line 54
    aput-char v1, p3, p2

    .line 55
    .line 56
    move p2, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move v1, p2

    .line 59
    move p2, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/16 v4, -0x20

    .line 62
    .line 63
    if-ge v3, v4, :cond_5

    .line 64
    .line 65
    if-ge v2, p0, :cond_4

    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x2

    .line 68
    .line 69
    aget-byte v2, p1, v2

    .line 70
    .line 71
    add-int/lit8 v4, v1, 0x1

    .line 72
    .line 73
    const/16 v5, -0x3e

    .line 74
    .line 75
    if-lt v3, v5, :cond_3

    .line 76
    .line 77
    invoke-static {v2}, Lvm4;->v(B)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_3

    .line 82
    .line 83
    and-int/lit8 v3, v3, 0x1f

    .line 84
    .line 85
    shl-int/lit8 v3, v3, 0x6

    .line 86
    .line 87
    and-int/lit8 v2, v2, 0x3f

    .line 88
    .line 89
    or-int/2addr v2, v3

    .line 90
    int-to-char v2, v2

    .line 91
    aput-char v2, p3, v1

    .line 92
    .line 93
    move v1, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    throw p0

    .line 100
    :cond_4
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0

    .line 105
    :cond_5
    const/16 v5, -0x10

    .line 106
    .line 107
    if-ge v3, v5, :cond_a

    .line 108
    .line 109
    add-int/lit8 v5, p0, -0x1

    .line 110
    .line 111
    if-ge v2, v5, :cond_9

    .line 112
    .line 113
    add-int/lit8 v5, p2, 0x2

    .line 114
    .line 115
    aget-byte v2, p1, v2

    .line 116
    .line 117
    add-int/lit8 p2, p2, 0x3

    .line 118
    .line 119
    aget-byte v5, p1, v5

    .line 120
    .line 121
    add-int/lit8 v6, v1, 0x1

    .line 122
    .line 123
    invoke-static {v2}, Lvm4;->v(B)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_8

    .line 128
    .line 129
    const/16 v7, -0x60

    .line 130
    .line 131
    if-ne v3, v4, :cond_6

    .line 132
    .line 133
    if-lt v2, v7, :cond_8

    .line 134
    .line 135
    :cond_6
    const/16 v4, -0x13

    .line 136
    .line 137
    if-ne v3, v4, :cond_7

    .line 138
    .line 139
    if-ge v2, v7, :cond_8

    .line 140
    .line 141
    :cond_7
    invoke-static {v5}, Lvm4;->v(B)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_8

    .line 146
    .line 147
    and-int/lit8 v3, v3, 0xf

    .line 148
    .line 149
    shl-int/lit8 v3, v3, 0xc

    .line 150
    .line 151
    and-int/lit8 v2, v2, 0x3f

    .line 152
    .line 153
    shl-int/lit8 v2, v2, 0x6

    .line 154
    .line 155
    or-int/2addr v2, v3

    .line 156
    and-int/lit8 v3, v5, 0x3f

    .line 157
    .line 158
    or-int/2addr v2, v3

    .line 159
    int-to-char v2, v2

    .line 160
    aput-char v2, p3, v1

    .line 161
    .line 162
    move v1, v6

    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_8
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    throw p0

    .line 170
    :cond_9
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    throw p0

    .line 175
    :cond_a
    add-int/lit8 v4, p0, -0x2

    .line 176
    .line 177
    if-ge v2, v4, :cond_c

    .line 178
    .line 179
    add-int/lit8 v4, p2, 0x2

    .line 180
    .line 181
    aget-byte v2, p1, v2

    .line 182
    .line 183
    add-int/lit8 v5, p2, 0x3

    .line 184
    .line 185
    aget-byte v4, p1, v4

    .line 186
    .line 187
    add-int/lit8 p2, p2, 0x4

    .line 188
    .line 189
    aget-byte v5, p1, v5

    .line 190
    .line 191
    add-int/lit8 v6, v1, 0x1

    .line 192
    .line 193
    invoke-static {v2}, Lvm4;->v(B)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-nez v7, :cond_b

    .line 198
    .line 199
    shl-int/lit8 v7, v3, 0x1c

    .line 200
    .line 201
    add-int/lit8 v8, v2, 0x70

    .line 202
    .line 203
    add-int/2addr v8, v7

    .line 204
    shr-int/lit8 v7, v8, 0x1e

    .line 205
    .line 206
    if-nez v7, :cond_b

    .line 207
    .line 208
    invoke-static {v4}, Lvm4;->v(B)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-nez v7, :cond_b

    .line 213
    .line 214
    invoke-static {v5}, Lvm4;->v(B)Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-nez v7, :cond_b

    .line 219
    .line 220
    and-int/lit8 v3, v3, 0x7

    .line 221
    .line 222
    shl-int/lit8 v3, v3, 0x12

    .line 223
    .line 224
    and-int/lit8 v2, v2, 0x3f

    .line 225
    .line 226
    shl-int/lit8 v2, v2, 0xc

    .line 227
    .line 228
    or-int/2addr v2, v3

    .line 229
    and-int/lit8 v3, v4, 0x3f

    .line 230
    .line 231
    shl-int/lit8 v3, v3, 0x6

    .line 232
    .line 233
    or-int/2addr v2, v3

    .line 234
    and-int/lit8 v3, v5, 0x3f

    .line 235
    .line 236
    or-int/2addr v2, v3

    .line 237
    ushr-int/lit8 v3, v2, 0xa

    .line 238
    .line 239
    const v4, 0xd7c0

    .line 240
    .line 241
    .line 242
    add-int/2addr v3, v4

    .line 243
    int-to-char v3, v3

    .line 244
    aput-char v3, p3, v1

    .line 245
    .line 246
    and-int/lit16 v2, v2, 0x3ff

    .line 247
    .line 248
    const v3, 0xdc00

    .line 249
    .line 250
    .line 251
    add-int/2addr v2, v3

    .line 252
    int-to-char v2, v2

    .line 253
    aput-char v2, p3, v6

    .line 254
    .line 255
    add-int/lit8 v1, v1, 0x2

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_b
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    throw p0

    .line 264
    :cond_c
    invoke-static {}, Lfg4;->a()Lfg4;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    throw p0

    .line 269
    :cond_d
    new-instance p0, Ljava/lang/String;

    .line 270
    .line 271
    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 272
    .line 273
    .line 274
    return-object p0

    .line 275
    :cond_e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 276
    .line 277
    array-length p1, p1

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const-string p2, "buffer length=%d, index=%d, size=%d"

    .line 295
    .line 296
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p0
.end method

.method public final g(Ljava/lang/String;[BII)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p4, p3

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    const/16 v1, 0x80

    .line 8
    .line 9
    if-ge v0, p0, :cond_0

    .line 10
    .line 11
    add-int v2, v0, p3

    .line 12
    .line 13
    if-ge v2, p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    int-to-byte v1, v3

    .line 22
    aput-byte v1, p2, v2

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne v0, p0, :cond_1

    .line 28
    .line 29
    add-int/2addr p3, p0

    .line 30
    return p3

    .line 31
    :cond_1
    add-int/2addr p3, v0

    .line 32
    :goto_1
    if-ge v0, p0, :cond_b

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v2, v1, :cond_2

    .line 39
    .line 40
    if-ge p3, p4, :cond_2

    .line 41
    .line 42
    add-int/lit8 v3, p3, 0x1

    .line 43
    .line 44
    int-to-byte v2, v2

    .line 45
    aput-byte v2, p2, p3

    .line 46
    .line 47
    move p3, v3

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_2
    const/16 v3, 0x800

    .line 51
    .line 52
    if-ge v2, v3, :cond_3

    .line 53
    .line 54
    add-int/lit8 v3, p4, -0x2

    .line 55
    .line 56
    if-gt p3, v3, :cond_3

    .line 57
    .line 58
    add-int/lit8 v3, p3, 0x1

    .line 59
    .line 60
    ushr-int/lit8 v4, v2, 0x6

    .line 61
    .line 62
    or-int/lit16 v4, v4, 0x3c0

    .line 63
    .line 64
    int-to-byte v4, v4

    .line 65
    aput-byte v4, p2, p3

    .line 66
    .line 67
    add-int/lit8 p3, p3, 0x2

    .line 68
    .line 69
    and-int/lit8 v2, v2, 0x3f

    .line 70
    .line 71
    or-int/2addr v2, v1

    .line 72
    int-to-byte v2, v2

    .line 73
    aput-byte v2, p2, v3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const v3, 0xdfff

    .line 77
    .line 78
    .line 79
    const v4, 0xd800

    .line 80
    .line 81
    .line 82
    if-lt v2, v4, :cond_4

    .line 83
    .line 84
    if-ge v3, v2, :cond_5

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v5, p4, -0x3

    .line 87
    .line 88
    if-gt p3, v5, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, p3, 0x1

    .line 91
    .line 92
    ushr-int/lit8 v4, v2, 0xc

    .line 93
    .line 94
    or-int/lit16 v4, v4, 0x1e0

    .line 95
    .line 96
    int-to-byte v4, v4

    .line 97
    aput-byte v4, p2, p3

    .line 98
    .line 99
    add-int/lit8 v4, p3, 0x2

    .line 100
    .line 101
    ushr-int/lit8 v5, v2, 0x6

    .line 102
    .line 103
    and-int/lit8 v5, v5, 0x3f

    .line 104
    .line 105
    or-int/2addr v5, v1

    .line 106
    int-to-byte v5, v5

    .line 107
    aput-byte v5, p2, v3

    .line 108
    .line 109
    add-int/lit8 p3, p3, 0x3

    .line 110
    .line 111
    and-int/lit8 v2, v2, 0x3f

    .line 112
    .line 113
    or-int/2addr v2, v1

    .line 114
    int-to-byte v2, v2

    .line 115
    aput-byte v2, p2, v4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v5, p4, -0x4

    .line 119
    .line 120
    if-gt p3, v5, :cond_8

    .line 121
    .line 122
    add-int/lit8 v3, v0, 0x1

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eq v3, v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/lit8 v2, p3, 0x1

    .line 145
    .line 146
    ushr-int/lit8 v4, v0, 0x12

    .line 147
    .line 148
    or-int/lit16 v4, v4, 0xf0

    .line 149
    .line 150
    int-to-byte v4, v4

    .line 151
    aput-byte v4, p2, p3

    .line 152
    .line 153
    add-int/lit8 v4, p3, 0x2

    .line 154
    .line 155
    ushr-int/lit8 v5, v0, 0xc

    .line 156
    .line 157
    and-int/lit8 v5, v5, 0x3f

    .line 158
    .line 159
    or-int/2addr v5, v1

    .line 160
    int-to-byte v5, v5

    .line 161
    aput-byte v5, p2, v2

    .line 162
    .line 163
    add-int/lit8 v2, p3, 0x3

    .line 164
    .line 165
    ushr-int/lit8 v5, v0, 0x6

    .line 166
    .line 167
    and-int/lit8 v5, v5, 0x3f

    .line 168
    .line 169
    or-int/2addr v5, v1

    .line 170
    int-to-byte v5, v5

    .line 171
    aput-byte v5, p2, v4

    .line 172
    .line 173
    add-int/lit8 p3, p3, 0x4

    .line 174
    .line 175
    and-int/lit8 v0, v0, 0x3f

    .line 176
    .line 177
    or-int/2addr v0, v1

    .line 178
    int-to-byte v0, v0

    .line 179
    aput-byte v0, p2, v2

    .line 180
    .line 181
    move v0, v3

    .line 182
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_6
    move v0, v3

    .line 187
    :cond_7
    new-instance p1, Lmh8;

    .line 188
    .line 189
    add-int/lit8 v0, v0, -0x1

    .line 190
    .line 191
    invoke-direct {p1, v0, p0}, Lmh8;-><init>(II)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_8
    if-gt v4, v2, :cond_a

    .line 196
    .line 197
    if-gt v2, v3, :cond_a

    .line 198
    .line 199
    add-int/lit8 p2, v0, 0x1

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result p4

    .line 205
    if-eq p2, p4, :cond_9

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_a

    .line 216
    .line 217
    :cond_9
    new-instance p1, Lmh8;

    .line 218
    .line 219
    invoke-direct {p1, v0, p0}, Lmh8;-><init>(II)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 224
    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string p2, "Failed writing "

    .line 228
    .line 229
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p2, " at index "

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p0

    .line 251
    :cond_b
    return p3
.end method
