.class public final Lww8;
.super Lwv5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Lnz8;


# instance fields
.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lww8;->e:Lnz8;

    .line 9
    .line 10
    return-void
.end method

.method public static i(Ljava/lang/String;III)V
    .locals 4

    .line 1
    add-int v0, p2, p1

    .line 2
    .line 3
    if-gt v0, p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    .line 7
    .line 8
    const-string v1, " "

    .line 9
    .line 10
    const-string v2, " doesn\'t fit into "

    .line 11
    .line 12
    const-string v3, "Invalid X0017_StrongEncryptionHeader: "

    .line 13
    .line 14
    invoke-static {v3, p0, v1, p1, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " bytes of data at position "

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public final c([BII)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Lwv5;->c([BII)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0, p3}, Lwv5;->g(II)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {p1, p2, v1}, Lwx3;->j([BII)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    long-to-int v2, v2

    .line 14
    const-string v3, "ivSize"

    .line 15
    .line 16
    invoke-static {v3, v2, v0, p3}, Lww8;->i(Ljava/lang/String;III)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v3, p2, 0x4

    .line 20
    .line 21
    invoke-virtual {p0, v3, v2}, Lwv5;->g(II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, v2, 0x10

    .line 28
    .line 29
    invoke-virtual {p0, v3, p3}, Lwv5;->g(II)V

    .line 30
    .line 31
    .line 32
    add-int/2addr p2, v2

    .line 33
    add-int/lit8 v4, p2, 0x6

    .line 34
    .line 35
    invoke-static {p1, v4, v1}, Lwx3;->j([BII)J

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, p2, 0x8

    .line 39
    .line 40
    invoke-static {p1, v4, v1}, Lwx3;->j([BII)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    long-to-int v4, v4

    .line 45
    sget-object v5, Luv5;->b:Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Luv5;

    .line 56
    .line 57
    add-int/lit8 v4, p2, 0xa

    .line 58
    .line 59
    invoke-static {p1, v4, v1}, Lwx3;->j([BII)J

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, p2, 0xc

    .line 63
    .line 64
    invoke-static {p1, v4, v1}, Lwx3;->j([BII)J

    .line 65
    .line 66
    .line 67
    add-int/lit8 v4, p2, 0xe

    .line 68
    .line 69
    invoke-static {p1, v4, v1}, Lwx3;->j([BII)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    long-to-int v4, v4

    .line 74
    const-string v5, "erdSize"

    .line 75
    .line 76
    invoke-static {v5, v4, v3, p3}, Lww8;->i(Ljava/lang/String;III)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, p2, 0x10

    .line 80
    .line 81
    invoke-virtual {p0, v3, v4}, Lwv5;->g(II)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 85
    .line 86
    .line 87
    add-int/lit8 v5, v2, 0x14

    .line 88
    .line 89
    add-int/2addr v5, v4

    .line 90
    invoke-virtual {p0, v5, p3}, Lwv5;->g(II)V

    .line 91
    .line 92
    .line 93
    add-int/2addr v3, v4

    .line 94
    invoke-static {p1, v3, v0}, Lwx3;->j([BII)J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    const-wide/16 v8, 0x0

    .line 99
    .line 100
    cmp-long v3, v6, v8

    .line 101
    .line 102
    const-string v6, " is too small to hold CRC"

    .line 103
    .line 104
    const-string v7, "Invalid X0017_StrongEncryptionHeader: vSize "

    .line 105
    .line 106
    const-string v8, "vSize"

    .line 107
    .line 108
    if-nez v3, :cond_1

    .line 109
    .line 110
    add-int/2addr v5, v1

    .line 111
    invoke-virtual {p0, v5, p3}, Lwv5;->g(II)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v3, p2, 0x14

    .line 115
    .line 116
    add-int/2addr v3, v4

    .line 117
    invoke-static {p1, v3, v1}, Lwx3;->j([BII)J

    .line 118
    .line 119
    .line 120
    move-result-wide v9

    .line 121
    long-to-int v1, v9

    .line 122
    add-int/lit8 v2, v2, 0x16

    .line 123
    .line 124
    add-int/2addr v2, v4

    .line 125
    invoke-static {v8, v1, v2, p3}, Lww8;->i(Ljava/lang/String;III)V

    .line 126
    .line 127
    .line 128
    if-lt v1, v0, :cond_0

    .line 129
    .line 130
    add-int/lit8 p2, p2, 0x16

    .line 131
    .line 132
    add-int/2addr p2, v4

    .line 133
    add-int/lit8 p3, v1, -0x4

    .line 134
    .line 135
    invoke-virtual {p0, p2, p3}, Lwv5;->g(II)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 139
    .line 140
    .line 141
    add-int/2addr p2, v1

    .line 142
    sub-int/2addr p2, v0

    .line 143
    invoke-virtual {p0, p2, v0}, Lwv5;->g(II)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    .line 151
    .line 152
    invoke-static {v1, v7, v6}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_1
    add-int/lit8 v5, v5, 0x6

    .line 161
    .line 162
    invoke-virtual {p0, v5, p3}, Lwv5;->g(II)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, p2, 0x14

    .line 166
    .line 167
    add-int/2addr v3, v4

    .line 168
    invoke-static {p1, v3, v1}, Lwx3;->j([BII)J

    .line 169
    .line 170
    .line 171
    move-result-wide v9

    .line 172
    long-to-int v3, v9

    .line 173
    sget-object v5, Lvv5;->b:Ljava/util/Map;

    .line 174
    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lvv5;

    .line 184
    .line 185
    add-int/lit8 v3, p2, 0x16

    .line 186
    .line 187
    add-int/2addr v3, v4

    .line 188
    invoke-static {p1, v3, v1}, Lwx3;->j([BII)J

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    long-to-int v5, v9

    .line 193
    iput v5, p0, Lww8;->d:I

    .line 194
    .line 195
    add-int/lit8 v5, p2, 0x18

    .line 196
    .line 197
    add-int/2addr v5, v4

    .line 198
    invoke-static {p1, v5, v1}, Lwx3;->j([BII)J

    .line 199
    .line 200
    .line 201
    move-result-wide v9

    .line 202
    long-to-int v9, v9

    .line 203
    iget v10, p0, Lww8;->d:I

    .line 204
    .line 205
    if-lt v9, v10, :cond_3

    .line 206
    .line 207
    add-int/lit8 v10, v2, 0x18

    .line 208
    .line 209
    add-int/2addr v10, v4

    .line 210
    const-string v11, "resize"

    .line 211
    .line 212
    invoke-static {v11, v9, v10, p3}, Lww8;->i(Ljava/lang/String;III)V

    .line 213
    .line 214
    .line 215
    iget v10, p0, Lww8;->d:I

    .line 216
    .line 217
    invoke-static {p1, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 218
    .line 219
    .line 220
    iget v10, p0, Lww8;->d:I

    .line 221
    .line 222
    add-int/2addr v5, v10

    .line 223
    sub-int v10, v9, v10

    .line 224
    .line 225
    invoke-static {p1, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 226
    .line 227
    .line 228
    add-int/lit8 v5, v2, 0x1a

    .line 229
    .line 230
    add-int/2addr v5, v4

    .line 231
    add-int/2addr v5, v9

    .line 232
    add-int/2addr v5, v1

    .line 233
    invoke-virtual {p0, v5, p3}, Lwv5;->g(II)V

    .line 234
    .line 235
    .line 236
    add-int/lit8 p2, p2, 0x1a

    .line 237
    .line 238
    add-int/2addr p2, v4

    .line 239
    add-int/2addr p2, v9

    .line 240
    invoke-static {p1, p2, v1}, Lwx3;->j([BII)J

    .line 241
    .line 242
    .line 243
    move-result-wide v10

    .line 244
    long-to-int p0, v10

    .line 245
    if-lt p0, v0, :cond_2

    .line 246
    .line 247
    add-int/lit8 v2, v2, 0x16

    .line 248
    .line 249
    add-int/2addr v2, v4

    .line 250
    add-int/2addr v2, v9

    .line 251
    invoke-static {v8, p0, v2, p3}, Lww8;->i(Ljava/lang/String;III)V

    .line 252
    .line 253
    .line 254
    add-int/2addr v3, v9

    .line 255
    add-int/lit8 p2, p0, -0x4

    .line 256
    .line 257
    invoke-static {p1, v3, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 258
    .line 259
    .line 260
    add-int/2addr v3, p0

    .line 261
    sub-int/2addr v3, v0

    .line 262
    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    .line 267
    .line 268
    invoke-static {p0, v7, v6}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    .line 277
    .line 278
    const-string p2, "Invalid X0017_StrongEncryptionHeader: resize "

    .line 279
    .line 280
    const-string p3, " is too small to hold hashSize"

    .line 281
    .line 282
    invoke-static {v9, p2, p3}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    iget p0, p0, Lww8;->d:I

    .line 287
    .line 288
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method public final h([BII)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lwv5;->h([BII)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    invoke-virtual {p0, v0, p3}, Lwv5;->g(II)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-static {p1, p2, v0}, Lwx3;->j([BII)J

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x2

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Lwx3;->j([BII)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    long-to-int v1, v1

    .line 20
    sget-object v2, Luv5;->b:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Luv5;

    .line 31
    .line 32
    add-int/lit8 v1, p2, 0x4

    .line 33
    .line 34
    invoke-static {p1, v1, v0}, Lwx3;->j([BII)J

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, p2, 0x6

    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lwx3;->j([BII)J

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, p2, 0x8

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-static {p1, v1, v2}, Lwx3;->j([BII)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    cmp-long v1, v1, v3

    .line 52
    .line 53
    if-lez v1, :cond_0

    .line 54
    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    invoke-virtual {p0, v1, p3}, Lwv5;->g(II)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 p3, p2, 0xc

    .line 61
    .line 62
    invoke-static {p1, p3, v0}, Lwx3;->j([BII)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    long-to-int p3, v1

    .line 67
    sget-object v1, Lvv5;->b:Ljava/util/Map;

    .line 68
    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lvv5;

    .line 78
    .line 79
    add-int/lit8 p2, p2, 0xe

    .line 80
    .line 81
    invoke-static {p1, p2, v0}, Lwx3;->j([BII)J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    long-to-int p1, p1

    .line 86
    iput p1, p0, Lww8;->d:I

    .line 87
    .line 88
    :cond_0
    return-void
.end method
