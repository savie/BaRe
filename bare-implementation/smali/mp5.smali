.class public final Lmp5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ll80;


# static fields
.field public static final g:Ll15;

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public a:Lfp5;

.field public b:Llv1;

.field public c:[B

.field public d:[B

.field public e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lmp5;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmp5;->g:Ll15;

    .line 8
    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    const-string v1, "session key to client-to-server signing key magic constant\u0000"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lmp5;->h:[B

    .line 18
    .line 19
    const-string v1, "session key to client-to-server sealing key magic constant\u0000"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmp5;->i:[B

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lh80;[BLxr1;)Lkc;
    .locals 12

    .line 1
    iget-object v0, p0, Lmp5;->a:Lfp5;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lfp5;->a(Lh80;[BLxr1;)Lkc;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-object p2

    .line 11
    :cond_0
    iget-object p3, p1, Lkc;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p3, [B

    .line 14
    .line 15
    iget-object v0, p1, Lkc;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/AbstractSet;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    sget-object v2, Lmp5;->g:Ll15;

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz p3, :cond_8

    .line 26
    .line 27
    const-string v5, "Calculating signing and sealing keys for NTLM Extended Session Security"

    .line 28
    .line 29
    invoke-interface {v2, v5}, Ll15;->k(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v5, Llp5;->k:Llp5;

    .line 33
    .line 34
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-object p2, p0, Lmp5;->b:Llv1;

    .line 41
    .line 42
    sget-object v6, Lmp5;->h:[B

    .line 43
    .line 44
    filled-new-array {p3, v6}, [[B

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {p2, v6}, Lip5;->b(Llv1;[[B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    :cond_1
    iput-object p2, p0, Lmp5;->c:[B

    .line 53
    .line 54
    iget-object p2, p1, Lkc;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lbw8;

    .line 57
    .line 58
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    sget-object v6, Llp5;->b:Llp5;

    .line 63
    .line 64
    const/4 v7, 0x7

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    sget-object p2, Llp5;->d:Llp5;

    .line 68
    .line 69
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    invoke-static {p3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    :goto_0
    iget-object p2, p0, Lmp5;->b:Llv1;

    .line 92
    .line 93
    sget-object v5, Lmp5;->i:[B

    .line 94
    .line 95
    filled-new-array {p3, v5}, [[B

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p2, p3}, Lip5;->b(Llv1;[[B)[B

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    sget-object v5, Llp5;->x:Llp5;

    .line 105
    .line 106
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_6

    .line 111
    .line 112
    sget-object v5, Llp5;->y:Llp5;

    .line 113
    .line 114
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    iget-object p2, p2, Lbw8;->d:Lyv8;

    .line 121
    .line 122
    iget-wide v8, p2, Lyv8;->a:J

    .line 123
    .line 124
    sget-object p2, Lyv8;->b:Lyv8;

    .line 125
    .line 126
    iget-wide v10, p2, Lyv8;->a:J

    .line 127
    .line 128
    cmp-long p2, v8, v10

    .line 129
    .line 130
    if-ltz p2, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    array-length p2, p3

    .line 134
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    :goto_1
    new-array p2, v3, [B

    .line 140
    .line 141
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    invoke-static {p3, v4, p2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    .line 149
    .line 150
    const/16 p3, -0x60

    .line 151
    .line 152
    aput-byte p3, p2, v7

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    invoke-static {p3, v4, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .line 157
    .line 158
    const/16 p3, -0x1b

    .line 159
    .line 160
    aput-byte p3, p2, v1

    .line 161
    .line 162
    const/4 p3, 0x6

    .line 163
    const/16 v5, 0x38

    .line 164
    .line 165
    aput-byte v5, p2, p3

    .line 166
    .line 167
    const/16 p3, -0x50

    .line 168
    .line 169
    aput-byte p3, p2, v7

    .line 170
    .line 171
    :goto_2
    iput-object p2, p0, Lmp5;->d:[B

    .line 172
    .line 173
    :cond_8
    iget-object p2, p1, Lkc;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p2, Ls51;

    .line 176
    .line 177
    instance-of p3, p2, Lzl5;

    .line 178
    .line 179
    if-eqz p3, :cond_9

    .line 180
    .line 181
    move-object p3, p2

    .line 182
    check-cast p3, Lzl5;

    .line 183
    .line 184
    iget-object p3, p3, Lzl5;->d:Ljava/util/ArrayList;

    .line 185
    .line 186
    iput-object p3, p0, Lmp5;->f:Ljava/util/ArrayList;

    .line 187
    .line 188
    :cond_9
    iget-object p3, p0, Lmp5;->c:[B

    .line 189
    .line 190
    if-eqz p3, :cond_b

    .line 191
    .line 192
    instance-of p3, p2, Lam5;

    .line 193
    .line 194
    if-eqz p3, :cond_b

    .line 195
    .line 196
    check-cast p2, Lam5;

    .line 197
    .line 198
    const-string p3, "Signing with NTLM Extended Session Security"

    .line 199
    .line 200
    invoke-interface {v2, p3}, Ll15;->k(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object p3, p0, Lmp5;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    iget-object v2, p0, Lmp5;->c:[B

    .line 210
    .line 211
    and-int/lit16 v5, p3, 0xff

    .line 212
    .line 213
    int-to-byte v5, v5

    .line 214
    shr-int/lit8 v6, p3, 0x8

    .line 215
    .line 216
    and-int/lit16 v6, v6, 0xff

    .line 217
    .line 218
    int-to-byte v6, v6

    .line 219
    shr-int/lit8 v7, p3, 0x10

    .line 220
    .line 221
    and-int/lit16 v7, v7, 0xff

    .line 222
    .line 223
    int-to-byte v7, v7

    .line 224
    shr-int/lit8 v8, p3, 0x18

    .line 225
    .line 226
    and-int/lit16 v8, v8, 0xff

    .line 227
    .line 228
    int-to-byte v8, v8

    .line 229
    const/4 v9, 0x4

    .line 230
    new-array v9, v9, [B

    .line 231
    .line 232
    aput-byte v5, v9, v4

    .line 233
    .line 234
    const/4 v5, 0x1

    .line 235
    aput-byte v6, v9, v5

    .line 236
    .line 237
    const/4 v5, 0x2

    .line 238
    aput-byte v7, v9, v5

    .line 239
    .line 240
    const/4 v5, 0x3

    .line 241
    aput-byte v8, v9, v5

    .line 242
    .line 243
    iget-object v5, p0, Lmp5;->f:Ljava/util/ArrayList;

    .line 244
    .line 245
    new-instance v6, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    .line 249
    .line 250
    new-instance v5, Lw1;

    .line 251
    .line 252
    invoke-direct {v5, v6}, Lw1;-><init>(Ljava/util/ArrayList;)V

    .line 253
    .line 254
    .line 255
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 256
    .line 257
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v7, Ln1;

    .line 261
    .line 262
    new-instance v8, Lnh4;

    .line 263
    .line 264
    invoke-direct {v8, v1}, Lnh4;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v7, v8, v6}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 268
    .line 269
    .line 270
    :try_start_0
    invoke-virtual {v7, v5}, Ln1;->a(Lz0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v5, p0, Lmp5;->b:Llv1;

    .line 281
    .line 282
    filled-new-array {v9, v1}, [[B

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v5, v2, v1}, Lip5;->a(Llv1;[B[[B)[B

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    new-array v2, v3, [B

    .line 291
    .line 292
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    sget-object v1, Llp5;->c:Llp5;

    .line 296
    .line 297
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_a

    .line 302
    .line 303
    iget-object v0, p0, Lmp5;->b:Llv1;

    .line 304
    .line 305
    iget-object p0, p0, Lmp5;->d:[B

    .line 306
    .line 307
    invoke-static {v0, p0, v2}, Lip5;->c(Llv1;[B[B)[B

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    :cond_a
    new-instance p0, Lzu6;

    .line 312
    .line 313
    invoke-direct {p0}, Low0;-><init>()V

    .line 314
    .line 315
    .line 316
    const-wide/16 v0, 0x1

    .line 317
    .line 318
    invoke-virtual {p0, v0, v1}, Low0;->l(J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v2, v3}, Low0;->i([BI)Low0;

    .line 322
    .line 323
    .line 324
    int-to-long v0, p3

    .line 325
    invoke-virtual {p0, v0, v1}, Low0;->l(J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Low0;->c()[B

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    iput-object p0, p2, Lam5;->g:[B

    .line 333
    .line 334
    return-object p1

    .line 335
    :catchall_0
    move-exception p0

    .line 336
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :catchall_1
    move-exception p1

    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    :goto_3
    throw p0

    .line 345
    :cond_b
    return-object p1
.end method

.method public final b(Lh80;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmp5;->a:Lfp5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfp5;->b(Lh80;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(Ldi7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmp5;->a:Lfp5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lfp5;->c(Ldi7;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Ldi7;->h:Llv1;

    .line 7
    .line 8
    iput-object p1, p0, Lmp5;->b:Llv1;

    .line 9
    .line 10
    return-void
.end method
