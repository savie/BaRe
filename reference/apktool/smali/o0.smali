.class public final Lo0;
.super Ljava/io/FilterInputStream;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;IZ)V
    .locals 1

    const/16 v0, 0xb

    .line 13
    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lo0;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lo0;->a:I

    iput-boolean p3, p0, Lo0;->b:Z

    iput-object p4, p0, Lo0;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    array-length p1, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, p1, v1}, Lo0;-><init>(Ljava/io/ByteArrayInputStream;IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b(ILmg2;[[B)Lq1;
    .locals 4

    .line 1
    const-string v0, "unsupported tag "

    .line 2
    .line 3
    const-string v1, "unknown tag "

    .line 4
    .line 5
    const-string v2, " encountered"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_1
    invoke-static {p1}, Lo0;->g(Lmg2;)[C

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Le82;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Le82;-><init>([C)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_2
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p1, Ly82;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Ly82;-><init>([B)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Lj82;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lj82;-><init>([B)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance p1, La92;

    .line 67
    .line 68
    invoke-direct {p1, p0}, La92;-><init>([B)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_5
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ll82;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ll82;-><init>([B)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :pswitch_6
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Lj0;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lj0;-><init>([B)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :pswitch_7
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p1, Ls2;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Ls2;-><init>([B)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :pswitch_8
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p1, Lm82;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lm82;-><init>([B)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :pswitch_9
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    new-instance p1, Lz82;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lz82;-><init>([B)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_a
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance p1, Lv82;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Lv82;-><init>([B)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :pswitch_b
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance p1, Ls82;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Ls82;-><init>([B)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :pswitch_c
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p1, Lo82;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lo82;-><init>([B)V

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :pswitch_d
    new-instance p1, Ljava/io/IOException;

    .line 153
    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :pswitch_e
    iget p0, p1, Lmg2;->d:I

    .line 174
    .line 175
    sget-object v0, Ls1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    .line 177
    const/16 v0, 0x1000

    .line 178
    .line 179
    if-gt p0, v0, :cond_0

    .line 180
    .line 181
    invoke-static {p1, p2}, Lo0;->h(Lmg2;[[B)[B

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {p0, v3}, Ls1;->x([BZ)Ls1;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    const-string p1, "exceeded relative OID contents length limit"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :pswitch_f
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    new-instance p1, Lx82;

    .line 203
    .line 204
    invoke-direct {p1, p0}, Lx82;-><init>([B)V

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :pswitch_10
    invoke-static {p1, p2}, Lo0;->h(Lmg2;[[B)[B

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p0, v3}, Lg0;->x([BZ)Lg0;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :pswitch_11
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    new-instance p1, La1;

    .line 222
    .line 223
    new-instance p2, Ll82;

    .line 224
    .line 225
    invoke-direct {p2, p0}, Ll82;-><init>([B)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p1, p2}, La1;-><init>(Ll82;)V

    .line 229
    .line 230
    .line 231
    return-object p1

    .line 232
    :pswitch_12
    iget p0, p1, Lmg2;->d:I

    .line 233
    .line 234
    invoke-static {p0}, Lf1;->y(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1, p2}, Lo0;->h(Lmg2;[[B)[B

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p0, v3}, Lf1;->B([BZ)Lf1;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_13
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    array-length p0, p0

    .line 251
    if-nez p0, :cond_1

    .line 252
    .line 253
    sget-object p0, Ln82;->a:Ln82;

    .line 254
    .line 255
    return-object p0

    .line 256
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string p1, "malformed NULL encoding encountered"

    .line 259
    .line 260
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :pswitch_14
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    new-instance p1, Lp82;

    .line 269
    .line 270
    invoke-direct {p1, p0}, Lj1;-><init>([B)V

    .line 271
    .line 272
    .line 273
    return-object p1

    .line 274
    :pswitch_15
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-static {p0}, Lu;->x([B)Lu;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_16
    invoke-virtual {p1}, Lmg2;->b()[B

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    new-instance p1, Lt0;

    .line 288
    .line 289
    invoke-direct {p1, p0}, Lt0;-><init>([B)V

    .line 290
    .line 291
    .line 292
    return-object p1

    .line 293
    :pswitch_17
    invoke-static {p1, p2}, Lo0;->h(Lmg2;[[B)[B

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-static {p0}, Lz;->x([B)Lz;

    .line 298
    .line 299
    .line 300
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-object p0

    .line 302
    :catch_0
    move-exception p0

    .line 303
    new-instance p1, Li0;

    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-direct {p1, p0, p2}, Li0;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :catch_1
    move-exception p0

    .line 314
    new-instance p1, Li0;

    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-direct {p1, p0, p2}, Li0;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p1

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static g(Lmg2;)[C
    .locals 12

    .line 1
    iget v0, p0, Lmg2;->d:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_6

    .line 7
    .line 8
    div-int/lit8 v1, v0, 0x2

    .line 9
    .line 10
    new-array v3, v1, [C

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    new-array v5, v4, [B

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move v7, v6

    .line 18
    :goto_0
    const-string v8, "EOF encountered in middle of BMPString"

    .line 19
    .line 20
    const/4 v9, 0x2

    .line 21
    if-lt v0, v4, :cond_1

    .line 22
    .line 23
    invoke-static {p0, v5, v4}, Liz1;->w(Ljava/io/InputStream;[BI)I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    if-ne v10, v4, :cond_0

    .line 28
    .line 29
    aget-byte v8, v5, v6

    .line 30
    .line 31
    shl-int/2addr v8, v4

    .line 32
    const/4 v10, 0x1

    .line 33
    aget-byte v10, v5, v10

    .line 34
    .line 35
    and-int/lit16 v10, v10, 0xff

    .line 36
    .line 37
    or-int/2addr v8, v10

    .line 38
    int-to-char v8, v8

    .line 39
    aput-char v8, v3, v7

    .line 40
    .line 41
    add-int/lit8 v8, v7, 0x1

    .line 42
    .line 43
    aget-byte v9, v5, v9

    .line 44
    .line 45
    shl-int/2addr v9, v4

    .line 46
    const/4 v10, 0x3

    .line 47
    aget-byte v10, v5, v10

    .line 48
    .line 49
    and-int/lit16 v10, v10, 0xff

    .line 50
    .line 51
    or-int/2addr v9, v10

    .line 52
    int-to-char v9, v9

    .line 53
    aput-char v9, v3, v8

    .line 54
    .line 55
    add-int/lit8 v8, v7, 0x2

    .line 56
    .line 57
    const/4 v9, 0x4

    .line 58
    aget-byte v9, v5, v9

    .line 59
    .line 60
    shl-int/2addr v9, v4

    .line 61
    const/4 v10, 0x5

    .line 62
    aget-byte v10, v5, v10

    .line 63
    .line 64
    and-int/lit16 v10, v10, 0xff

    .line 65
    .line 66
    or-int/2addr v9, v10

    .line 67
    int-to-char v9, v9

    .line 68
    aput-char v9, v3, v8

    .line 69
    .line 70
    add-int/lit8 v8, v7, 0x3

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    aget-byte v9, v5, v9

    .line 74
    .line 75
    shl-int/2addr v9, v4

    .line 76
    const/4 v10, 0x7

    .line 77
    aget-byte v10, v5, v10

    .line 78
    .line 79
    and-int/lit16 v10, v10, 0xff

    .line 80
    .line 81
    or-int/2addr v9, v10

    .line 82
    int-to-char v9, v9

    .line 83
    aput-char v9, v3, v8

    .line 84
    .line 85
    add-int/lit8 v7, v7, 0x4

    .line 86
    .line 87
    add-int/lit8 v0, v0, -0x8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 91
    .line 92
    invoke-direct {p0, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_1
    if-lez v0, :cond_4

    .line 97
    .line 98
    invoke-static {p0, v5, v0}, Liz1;->w(Ljava/io/InputStream;[BI)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-ne v10, v0, :cond_3

    .line 103
    .line 104
    :cond_2
    add-int/lit8 v8, v6, 0x1

    .line 105
    .line 106
    aget-byte v10, v5, v6

    .line 107
    .line 108
    shl-int/2addr v10, v4

    .line 109
    add-int/2addr v6, v9

    .line 110
    aget-byte v8, v5, v8

    .line 111
    .line 112
    and-int/lit16 v8, v8, 0xff

    .line 113
    .line 114
    add-int/lit8 v11, v7, 0x1

    .line 115
    .line 116
    or-int/2addr v8, v10

    .line 117
    int-to-char v8, v8

    .line 118
    aput-char v8, v3, v7

    .line 119
    .line 120
    move v7, v11

    .line 121
    if-lt v6, v0, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    .line 125
    .line 126
    invoke-direct {p0, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_4
    :goto_1
    iget p0, p0, Lmg2;->d:I

    .line 131
    .line 132
    if-nez p0, :cond_5

    .line 133
    .line 134
    if-ne v1, v7, :cond_5

    .line 135
    .line 136
    return-object v3

    .line 137
    :cond_5
    invoke-static {}, Lg84;->c()V

    .line 138
    .line 139
    .line 140
    return-object v2

    .line 141
    :cond_6
    const-string p0, "malformed BMPString encoding encountered"

    .line 142
    .line 143
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v2
.end method

.method public static h(Lmg2;[[B)[B
    .locals 4

    .line 1
    iget v0, p0, Lmg2;->d:I

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lmg2;->b()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    aget-object v1, p1, v0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    aput-object v1, p1, v0

    .line 18
    .line 19
    :cond_1
    array-length p1, v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, p1, :cond_5

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_2
    iget p1, p0, Lou4;->b:I

    .line 27
    .line 28
    if-ge v0, p1, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lou4;->a:Ljava/io/InputStream;

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    invoke-static {p1, v1, v3}, Liz1;->w(Ljava/io/InputStream;[BI)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-int/2addr v0, p1

    .line 38
    iput v0, p0, Lmg2;->d:I

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lou4;->a()V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_3
    iget p1, p0, Lmg2;->c:I

    .line 47
    .line 48
    iget p0, p0, Lmg2;->d:I

    .line 49
    .line 50
    invoke-static {p1, p0}, Lm0;->e(II)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 55
    .line 56
    iget p0, p0, Lmg2;->d:I

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "corrupted stream - out of bounds length found: "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p0, " >= "

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_5
    const-string p0, "buffer length not right for data"

    .line 85
    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v2
.end method

.method public static j(Ljava/io/InputStream;IZ)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x7

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/16 v1, 0x80

    .line 11
    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_1
    if-ltz v0, :cond_8

    .line 17
    .line 18
    const/16 v1, 0xff

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq v1, v0, :cond_7

    .line 22
    .line 23
    and-int/lit8 v0, v0, 0x7f

    .line 24
    .line 25
    move v1, v2

    .line 26
    move v3, v1

    .line 27
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ltz v4, :cond_6

    .line 32
    .line 33
    ushr-int/lit8 v5, v1, 0x17

    .line 34
    .line 35
    if-nez v5, :cond_5

    .line 36
    .line 37
    shl-int/lit8 v1, v1, 0x8

    .line 38
    .line 39
    add-int/2addr v1, v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    if-lt v3, v0, :cond_2

    .line 43
    .line 44
    if-lt v1, p1, :cond_4

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const-string p0, "corrupted stream - out of bounds length found: "

    .line 50
    .line 51
    const-string p2, " >= "

    .line 52
    .line 53
    invoke-static {p0, v1, p1, p2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_4
    :goto_1
    return v1

    .line 62
    :cond_5
    const-string p0, "long form definite-length more than 31 bits"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_6
    new-instance p0, Ljava/io/EOFException;

    .line 66
    .line 67
    const-string p1, "EOF found reading length"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_7
    const-string p0, "invalid long form definite-length 0xFF"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    .line 77
    .line 78
    const-string p1, "EOF found when length expected"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static n(Ljava/io/InputStream;I)I
    .locals 5

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-ne p1, v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "EOF found inside tag value."

    .line 12
    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    const-string p0, "corrupted stream - high tag number < 31 found"

    .line 18
    .line 19
    :goto_0
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 24
    .line 25
    invoke-direct {p0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    and-int/lit8 v0, p1, 0x7f

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    :goto_1
    and-int/lit16 p1, p1, 0x80

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    ushr-int/lit8 p1, v0, 0x18

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    shl-int/lit8 p1, v0, 0x7

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ltz v0, :cond_2

    .line 48
    .line 49
    and-int/lit8 v3, v0, 0x7f

    .line 50
    .line 51
    or-int/2addr p1, v3

    .line 52
    move v4, v0

    .line 53
    move v0, p1

    .line 54
    move p1, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 57
    .line 58
    invoke-direct {p0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    const-string p0, "Tag number more than 31 bits"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return v0

    .line 66
    :cond_5
    const-string p0, "corrupted stream - invalid high tag number found"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    return p1
.end method


# virtual methods
.method public final a(III)Lq1;
    .locals 6

    .line 1
    new-instance v0, Lmg2;

    .line 2
    .line 3
    iget v1, p0, Lo0;->a:I

    .line 4
    .line 5
    invoke-direct {v0, p0, p3, v1}, Lmg2;-><init>(Ljava/io/InputStream;II)V

    .line 6
    .line 7
    .line 8
    and-int/lit16 p3, p1, 0xe0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lo0;->c:[[B

    .line 13
    .line 14
    invoke-static {p2, v0, p0}, Lo0;->b(ILmg2;[[B)Lq1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    and-int/lit16 v2, p1, 0xc0

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    move p3, v1

    .line 23
    const/4 v1, 0x4

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    and-int/lit8 p1, p1, 0x20

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget p1, p0, Lc0;->b:I

    .line 37
    .line 38
    if-ne p1, v4, :cond_1

    .line 39
    .line 40
    new-instance v0, Lbi0;

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Lc0;->b(I)Lb0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x1

    .line 47
    move v3, p2

    .line 48
    move v1, p3

    .line 49
    invoke-direct/range {v0 .. v5}, Lbi0;-><init>(IIILb0;I)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    move v3, p2

    .line 54
    new-instance v0, Lbi0;

    .line 55
    .line 56
    invoke-static {p0}, Lf92;->a(Lc0;)Lh92;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x1

    .line 61
    invoke-direct/range {v0 .. v5}, Lbi0;-><init>(IIILb0;I)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    move v3, p2

    .line 66
    invoke-virtual {v0}, Lmg2;->b()[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lbi0;

    .line 71
    .line 72
    new-instance v4, Lp82;

    .line 73
    .line 74
    invoke-direct {v4, p0}, Lj1;-><init>([B)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    invoke-direct/range {v0 .. v5}, Lbi0;-><init>(IIILb0;I)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    move p1, p2

    .line 83
    const/4 p2, 0x0

    .line 84
    if-eq p1, p3, :cond_c

    .line 85
    .line 86
    if-eq p1, v1, :cond_9

    .line 87
    .line 88
    const/16 p3, 0x8

    .line 89
    .line 90
    if-eq p1, p3, :cond_8

    .line 91
    .line 92
    const/16 p3, 0x10

    .line 93
    .line 94
    if-eq p1, p3, :cond_5

    .line 95
    .line 96
    const/16 p3, 0x11

    .line 97
    .line 98
    if-ne p1, p3, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lf92;->b(Lc0;)Li92;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_4
    const-string p0, "unknown tag "

    .line 110
    .line 111
    const-string p3, " encountered"

    .line 112
    .line 113
    invoke-static {p1, p0, p3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object p2

    .line 121
    :cond_5
    iget p1, v0, Lmg2;->d:I

    .line 122
    .line 123
    if-ge p1, v4, :cond_6

    .line 124
    .line 125
    sget-object p0, Lf92;->a:Lh92;

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_6
    iget-boolean p1, p0, Lo0;->b:Z

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    new-instance p0, Lss4;

    .line 133
    .line 134
    invoke-virtual {v0}, Lmg2;->b()[B

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p0}, Lv1;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Lss4;->c:[B

    .line 142
    .line 143
    return-object p0

    .line 144
    :cond_7
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p0}, Lf92;->a(Lc0;)Lh92;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_8
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lf92;->a(Lc0;)Lh92;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance p1, Lh82;

    .line 165
    .line 166
    invoke-direct {p1, p0}, Lh82;-><init>(Lv1;)V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_9
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    iget p1, p0, Lc0;->b:I

    .line 175
    .line 176
    new-array p3, p1, [Lj1;

    .line 177
    .line 178
    :goto_0
    if-eq v3, p1, :cond_b

    .line 179
    .line 180
    invoke-virtual {p0, v3}, Lc0;->b(I)Lb0;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    instance-of v1, v0, Lj1;

    .line 185
    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    check-cast v0, Lj1;

    .line 189
    .line 190
    aput-object v0, p3, v3

    .line 191
    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_a
    const-string p0, "unknown object encountered in constructed OCTET STRING: "

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1, p0}, Ll0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-object p2

    .line 205
    :cond_b
    new-instance p0, Lvh0;

    .line 206
    .line 207
    invoke-static {p3}, Lvh0;->y([Lj1;)[B

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1, p3}, Lvh0;-><init>([B[Lj1;)V

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_c
    invoke-virtual {p0, v0}, Lo0;->q(Lmg2;)Lc0;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    iget p1, p0, Lc0;->b:I

    .line 220
    .line 221
    new-array p3, p1, [Lu;

    .line 222
    .line 223
    :goto_1
    if-eq v3, p1, :cond_e

    .line 224
    .line 225
    invoke-virtual {p0, v3}, Lc0;->b(I)Lb0;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    instance-of v1, v0, Lu;

    .line 230
    .line 231
    if-eqz v1, :cond_d

    .line 232
    .line 233
    check-cast v0, Lu;

    .line 234
    .line 235
    aput-object v0, p3, v3

    .line 236
    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_d
    const-string p0, "unknown object encountered in constructed BIT STRING: "

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1, p0}, Ll0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-object p2

    .line 250
    :cond_e
    new-instance p0, Lsh0;

    .line 251
    .line 252
    invoke-direct {p0, p3}, Lsh0;-><init>([Lu;)V

    .line 253
    .line 254
    .line 255
    return-object p0
.end method

.method public final m()Lq1;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const-string p0, "unexpected end-of-contents marker"

    .line 12
    .line 13
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    invoke-static {p0, v0}, Lo0;->n(Ljava/io/InputStream;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lo0;->a:I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {p0, v3, v4}, Lo0;->j(Ljava/io/InputStream;IZ)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ltz v5, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0, v0, v2, v5}, Lo0;->a(III)Lq1;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Li0;

    .line 37
    .line 38
    const-string v1, "corrupted stream detected"

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Li0;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    and-int/lit8 v5, v0, 0x20

    .line 45
    .line 46
    if-eqz v5, :cond_9

    .line 47
    .line 48
    new-instance v5, Lhb4;

    .line 49
    .line 50
    invoke-direct {v5, p0, v3}, Lhb4;-><init>(Ljava/io/InputStream;I)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Lz1;

    .line 54
    .line 55
    iget-object p0, p0, Lo0;->c:[[B

    .line 56
    .line 57
    invoke-direct {v6, v5, v3, v4, p0}, Lz1;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    and-int/lit16 p0, v0, 0xc0

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v6, p0, v2}, Lz1;->b(II)Lbi0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    const/4 p0, 0x3

    .line 70
    if-eq v2, p0, :cond_8

    .line 71
    .line 72
    const/4 p0, 0x4

    .line 73
    if-eq v2, p0, :cond_7

    .line 74
    .line 75
    const/16 p0, 0x8

    .line 76
    .line 77
    if-eq v2, p0, :cond_6

    .line 78
    .line 79
    const/16 p0, 0x10

    .line 80
    .line 81
    if-eq v2, p0, :cond_5

    .line 82
    .line 83
    const/16 p0, 0x11

    .line 84
    .line 85
    if-ne v2, p0, :cond_4

    .line 86
    .line 87
    new-instance p0, Lzh0;

    .line 88
    .line 89
    invoke-virtual {v6}, Lz1;->c()Lc0;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lx1;-><init>(Lc0;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    const-string p0, "unknown BER object encountered"

    .line 98
    .line 99
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_5
    new-instance p0, Lxh0;

    .line 104
    .line 105
    invoke-virtual {v6}, Lz1;->c()Lc0;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_6
    invoke-static {v6}, Li82;->a(Lz1;)Lh82;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_7
    invoke-static {v6}, Lwh0;->a(Lz1;)Lvh0;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_8
    invoke-static {v6}, Lth0;->a(Lz1;)Lsh0;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_9
    const-string p0, "indefinite-length primitive encoding encountered"

    .line 129
    .line 130
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v1
.end method

.method public final q(Lmg2;)Lc0;
    .locals 4

    .line 1
    iget v0, p1, Lmg2;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Lc0;

    .line 8
    .line 9
    invoke-direct {p0, v2}, Lc0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v1, Lo0;

    .line 14
    .line 15
    iget-boolean v3, p0, Lo0;->b:Z

    .line 16
    .line 17
    iget-object p0, p0, Lo0;->c:[[B

    .line 18
    .line 19
    invoke-direct {v1, p1, v0, v3, p0}, Lo0;-><init>(Ljava/io/InputStream;IZ[[B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lo0;->m()Lq1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    new-instance p0, Lc0;

    .line 29
    .line 30
    invoke-direct {p0, v2}, Lc0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance p1, Lc0;

    .line 35
    .line 36
    invoke-direct {p1}, Lc0;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p0}, Lc0;->a(Lb0;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lo0;->m()Lq1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    return-object p1
.end method
