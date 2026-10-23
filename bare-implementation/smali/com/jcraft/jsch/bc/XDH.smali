.class public Lcom/jcraft/jsch/bc/XDH;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/XDH;


# instance fields
.field public a:[B

.field public b:Ln60;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getQ()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/XDH;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecret([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/bc/XDH;->c:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/bc/XDH;->d:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "X25519"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Lzw8;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lzw8;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/jcraft/jsch/bc/XDH;->b:Ln60;

    .line 21
    .line 22
    check-cast p0, Lyw8;

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lyw8;->a(Lzw8;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :catch_1
    move-exception p0

    .line 36
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_0
    :try_start_2
    new-instance v1, Lbx8;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Lbx8;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/jcraft/jsch/bc/XDH;->b:Ln60;

    .line 48
    .line 49
    check-cast p0, Lax8;

    .line 50
    .line 51
    :try_start_3
    invoke-virtual {p0, v1, v0}, Lax8;->a(Lbx8;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :catch_2
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catch_3
    move-exception p0

    .line 63
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final init(Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "X25519"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const-string v1, "X448"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 19
    .line 20
    const-string p2, "invalid curve "

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    iput p2, p0, Lcom/jcraft/jsch/bc/XDH;->c:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/jcraft/jsch/bc/XDH;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 p2, 0x10

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    new-instance p1, Lyw8;

    .line 44
    .line 45
    new-instance v1, Ljava/security/SecureRandom;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Lyw8;-><init>(Ljava/security/SecureRandom;)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x20

    .line 54
    .line 55
    new-array v2, v1, [B

    .line 56
    .line 57
    const/16 v3, 0xa

    .line 58
    .line 59
    new-array v4, v3, [I

    .line 60
    .line 61
    new-array v5, v3, [I

    .line 62
    .line 63
    new-array v6, v1, [B

    .line 64
    .line 65
    iget-object v7, p1, Lyw8;->b:[B

    .line 66
    .line 67
    invoke-static {v7, v6}, Ljb9;->T([B[B)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Las2;

    .line 71
    .line 72
    invoke-direct {v7}, Las2;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v7}, Ljb9;->b0([BLas2;)V

    .line 76
    .line 77
    .line 78
    new-array v6, v3, [I

    .line 79
    .line 80
    new-array v8, v3, [I

    .line 81
    .line 82
    new-array v9, v3, [I

    .line 83
    .line 84
    new-array v3, v3, [I

    .line 85
    .line 86
    iget-object v10, v7, Las2;->a:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v10, [I

    .line 89
    .line 90
    invoke-static {v10, v8}, Lnc8;->i0([I[I)V

    .line 91
    .line 92
    .line 93
    iget-object v10, v7, Las2;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, [I

    .line 96
    .line 97
    invoke-static {v10, v9}, Lnc8;->i0([I[I)V

    .line 98
    .line 99
    .line 100
    iget-object v10, v7, Las2;->c:Ljava/io/Serializable;

    .line 101
    .line 102
    check-cast v10, [I

    .line 103
    .line 104
    invoke-static {v10, v3}, Lnc8;->i0([I[I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v8, v9, v6}, Lnc8;->K([I[I[I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v8, v9, v8}, Lnc8;->l0([I[I[I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v8, v3, v8}, Lnc8;->K([I[I[I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v3}, Lnc8;->i0([I[I)V

    .line 117
    .line 118
    .line 119
    sget-object v10, Ljb9;->q:[I

    .line 120
    .line 121
    invoke-static {v6, v10, v6}, Lnc8;->K([I[I[I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v6, v3, v6}, Lnc8;->b([I[I[I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6, v8, v6}, Lnc8;->b([I[I[I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v6}, Lnc8;->M([I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v9}, Lnc8;->M([I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3}, Lnc8;->M([I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Lnc8;->H([I)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-static {v9}, Lnc8;->H([I)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    not-int v8, v8

    .line 148
    and-int/2addr v6, v8

    .line 149
    invoke-static {v3}, Lnc8;->H([I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    not-int v3, v3

    .line 154
    and-int/2addr v3, v6

    .line 155
    if-eqz v3, :cond_2

    .line 156
    .line 157
    iget-object v3, v7, Las2;->b:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, [I

    .line 160
    .line 161
    invoke-static {v0, v0, v3, v4}, Lnc8;->n(II[I[I)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v7, Las2;->c:Ljava/io/Serializable;

    .line 165
    .line 166
    check-cast v3, [I

    .line 167
    .line 168
    invoke-static {v0, v0, v3, v5}, Lnc8;->n(II[I[I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v5, v4, v4, v5}, Lnc8;->c([I[I[I[I)V

    .line 172
    .line 173
    .line 174
    invoke-static {v5, v5}, Lnc8;->E([I[I)V

    .line 175
    .line 176
    .line 177
    invoke-static {v4, v5, v4}, Lnc8;->K([I[I[I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Lnc8;->M([I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v0, v2, v4}, Lnc8;->x(II[B[I)V

    .line 184
    .line 185
    .line 186
    const/4 v3, 0x5

    .line 187
    invoke-static {v3, p2, v2, v4}, Lnc8;->x(II[B[I)V

    .line 188
    .line 189
    .line 190
    new-array p2, v1, [B

    .line 191
    .line 192
    invoke-static {v2, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    invoke-static {p2}, Lms8;->k([B)[B

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    iput-object p2, p0, Lcom/jcraft/jsch/bc/XDH;->a:[B

    .line 200
    .line 201
    iput-object p1, p0, Lcom/jcraft/jsch/bc/XDH;->b:Ln60;

    .line 202
    .line 203
    return-void

    .line 204
    :cond_2
    invoke-static {}, Lg84;->c()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_3
    new-instance p1, Lax8;

    .line 209
    .line 210
    new-instance v1, Ljava/security/SecureRandom;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-direct {p1, v1}, Lax8;-><init>(Ljava/security/SecureRandom;)V

    .line 216
    .line 217
    .line 218
    const/16 v1, 0x38

    .line 219
    .line 220
    new-array v2, v1, [B

    .line 221
    .line 222
    new-array v3, p2, [I

    .line 223
    .line 224
    new-array v4, p2, [I

    .line 225
    .line 226
    const/16 v5, 0x39

    .line 227
    .line 228
    new-array v5, v5, [B

    .line 229
    .line 230
    iget-object v6, p1, Lax8;->b:[B

    .line 231
    .line 232
    invoke-static {v6, v5}, Lyc9;->V([B[B)V

    .line 233
    .line 234
    .line 235
    new-instance v6, Lbp0;

    .line 236
    .line 237
    invoke-direct {v6}, Lbp0;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-static {v5, v6}, Lyc9;->d0([BLbp0;)V

    .line 241
    .line 242
    .line 243
    new-array v5, p2, [I

    .line 244
    .line 245
    new-array v7, p2, [I

    .line 246
    .line 247
    new-array v8, p2, [I

    .line 248
    .line 249
    new-array p2, p2, [I

    .line 250
    .line 251
    iget-object v9, v6, Lbp0;->a:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v9, [I

    .line 254
    .line 255
    invoke-static {v9, v7}, Lzh8;->L([I[I)V

    .line 256
    .line 257
    .line 258
    iget-object v9, v6, Lbp0;->b:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v9, [I

    .line 261
    .line 262
    invoke-static {v9, v8}, Lzh8;->L([I[I)V

    .line 263
    .line 264
    .line 265
    iget-object v9, v6, Lbp0;->c:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v9, [I

    .line 268
    .line 269
    invoke-static {v9, p2}, Lzh8;->L([I[I)V

    .line 270
    .line 271
    .line 272
    invoke-static {v7, v8, v5}, Lzh8;->z([I[I[I)V

    .line 273
    .line 274
    .line 275
    invoke-static {v7, v8, v7}, Lzh8;->b([I[I[I)V

    .line 276
    .line 277
    .line 278
    invoke-static {v7, p2, v7}, Lzh8;->z([I[I[I)V

    .line 279
    .line 280
    .line 281
    invoke-static {p2, p2}, Lzh8;->L([I[I)V

    .line 282
    .line 283
    .line 284
    const v9, 0x98a9

    .line 285
    .line 286
    .line 287
    invoke-static {v9, v5, v5}, Lzh8;->y(I[I[I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v5, p2, v5}, Lzh8;->M([I[I[I)V

    .line 291
    .line 292
    .line 293
    invoke-static {v5, v7, v5}, Lzh8;->b([I[I[I)V

    .line 294
    .line 295
    .line 296
    const/4 v7, 0x1

    .line 297
    invoke-static {v5, v7}, Lzh8;->E([II)V

    .line 298
    .line 299
    .line 300
    const/4 v9, -0x1

    .line 301
    invoke-static {v5, v9}, Lzh8;->E([II)V

    .line 302
    .line 303
    .line 304
    invoke-static {v8, v7}, Lzh8;->E([II)V

    .line 305
    .line 306
    .line 307
    invoke-static {v8, v9}, Lzh8;->E([II)V

    .line 308
    .line 309
    .line 310
    invoke-static {p2, v7}, Lzh8;->E([II)V

    .line 311
    .line 312
    .line 313
    invoke-static {p2, v9}, Lzh8;->E([II)V

    .line 314
    .line 315
    .line 316
    invoke-static {v5}, Lzh8;->w([I)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-static {v8}, Lzh8;->w([I)I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    not-int v8, v8

    .line 325
    and-int/2addr v5, v8

    .line 326
    invoke-static {p2}, Lzh8;->w([I)I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    not-int p2, p2

    .line 331
    and-int/2addr p2, v5

    .line 332
    if-eqz p2, :cond_4

    .line 333
    .line 334
    iget-object p2, v6, Lbp0;->a:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p2, [I

    .line 337
    .line 338
    invoke-static {v0, v0, p2, v3}, Lzh8;->g(II[I[I)V

    .line 339
    .line 340
    .line 341
    iget-object p2, v6, Lbp0;->b:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p2, [I

    .line 344
    .line 345
    invoke-static {v0, v0, p2, v4}, Lzh8;->g(II[I[I)V

    .line 346
    .line 347
    .line 348
    invoke-static {v3, v3}, Lzh8;->u([I[I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v3, v4, v3}, Lzh8;->z([I[I[I)V

    .line 352
    .line 353
    .line 354
    invoke-static {v3, v3}, Lzh8;->L([I[I)V

    .line 355
    .line 356
    .line 357
    invoke-static {v3, v7}, Lzh8;->E([II)V

    .line 358
    .line 359
    .line 360
    invoke-static {v3, v9}, Lzh8;->E([II)V

    .line 361
    .line 362
    .line 363
    invoke-static {v2, v3}, Lzh8;->l([B[I)V

    .line 364
    .line 365
    .line 366
    new-array p2, v1, [B

    .line 367
    .line 368
    invoke-static {v2, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    .line 370
    .line 371
    invoke-static {p2}, Lms8;->k([B)[B

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    iput-object p2, p0, Lcom/jcraft/jsch/bc/XDH;->a:[B

    .line 376
    .line 377
    iput-object p1, p0, Lcom/jcraft/jsch/bc/XDH;->b:Ln60;

    .line 378
    .line 379
    return-void

    .line 380
    :cond_4
    invoke-static {}, Lg84;->c()V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method public final validate([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length p1, p1

    .line 2
    iget p0, p0, Lcom/jcraft/jsch/bc/XDH;->c:I

    .line 3
    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method
