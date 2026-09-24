.class public final Lcom/google/android/recaptcha/internal/zzht;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzht;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzht;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzht;->zza:Lcom/google/android/recaptcha/internal/zzht;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzgd;[Lcom/google/android/recaptcha/internal/zzue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    if-ne v0, v1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v1, p3, v1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v4, v1, :cond_0

    .line 24
    .line 25
    move-object v0, v3

    .line 26
    :cond_0
    const/4 v1, 0x5

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    aget-object p3, p3, v4

    .line 34
    .line 35
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v4, v5, :cond_1

    .line 44
    .line 45
    move-object p3, v3

    .line 46
    :cond_1
    if-eqz p3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, v0, p3}, Lcom/google/android/recaptcha/internal/zzht;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {v2, v1, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    invoke-static {v2, v1, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    const/4 p0, 0x3

    .line 69
    invoke-static {v2, p0, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Byte;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p2, Ljava/lang/Byte;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    xor-int/2addr p0, p1

    .line 22
    int-to-byte p0, p0

    .line 23
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    instance-of v2, p2, Ljava/lang/Short;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    check-cast p2, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    xor-int/2addr p0, p1

    .line 49
    int-to-short p0, p0

    .line 50
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    instance-of v3, p2, Ljava/lang/Integer;

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    check-cast p1, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    check-cast p2, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    xor-int/2addr p0, p1

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    instance-of v3, p1, Ljava/lang/Long;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    instance-of v4, p2, Ljava/lang/Long;

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    check-cast p2, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    xor-long/2addr p0, v0

    .line 102
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_3
    instance-of v4, p1, Ljava/lang/String;

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    instance-of v4, p2, Ljava/lang/Byte;

    .line 113
    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    sget-object p0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    array-length v0, p0

    .line 127
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    if-ge v5, v0, :cond_4

    .line 131
    .line 132
    aget-byte v1, p0, v5

    .line 133
    .line 134
    move-object v2, p2

    .line 135
    check-cast v2, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    xor-int/2addr v1, v2

    .line 142
    int-to-byte v1, v1

    .line 143
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-static {p1}, Lel1;->s1(Ljava/util/List;)[B

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_5
    instance-of v4, p2, Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v4, :cond_7

    .line 161
    .line 162
    check-cast p1, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    .line 169
    .line 170
    array-length v0, p0

    .line 171
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    :goto_1
    if-ge v5, v0, :cond_6

    .line 175
    .line 176
    aget-char v1, p0, v5

    .line 177
    .line 178
    move-object v2, p2

    .line 179
    check-cast v2, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    xor-int/2addr v1, v2

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v5, v5, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_6
    invoke-static {p1}, Lel1;->u1(Ljava/util/ArrayList;)[I

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :cond_7
    if-eqz v0, :cond_9

    .line 202
    .line 203
    instance-of v0, p2, [B

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    check-cast p2, [B

    .line 208
    .line 209
    array-length p0, p2

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .line 214
    .line 215
    move v1, v5

    .line 216
    :goto_2
    if-ge v1, p0, :cond_8

    .line 217
    .line 218
    aget-byte v2, p2, v1

    .line 219
    .line 220
    move-object v3, p1

    .line 221
    check-cast v3, Ljava/lang/Number;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    xor-int/2addr v2, v3

    .line 228
    int-to-byte v2, v2

    .line 229
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    add-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_8
    new-array p0, v5, [Ljava/lang/Byte;

    .line 240
    .line 241
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :cond_9
    if-eqz v1, :cond_b

    .line 247
    .line 248
    instance-of v0, p2, [S

    .line 249
    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    check-cast p2, [S

    .line 253
    .line 254
    array-length p0, p2

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    move v1, v5

    .line 261
    :goto_3
    if-ge v1, p0, :cond_a

    .line 262
    .line 263
    aget-short v2, p2, v1

    .line 264
    .line 265
    move-object v3, p1

    .line 266
    check-cast v3, Ljava/lang/Number;

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    xor-int/2addr v2, v3

    .line 273
    int-to-short v2, v2

    .line 274
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_a
    new-array p0, v5, [Ljava/lang/Short;

    .line 285
    .line 286
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :cond_b
    if-eqz v2, :cond_d

    .line 292
    .line 293
    instance-of v0, p2, [I

    .line 294
    .line 295
    if-eqz v0, :cond_d

    .line 296
    .line 297
    check-cast p2, [I

    .line 298
    .line 299
    array-length p0, p2

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .line 304
    .line 305
    move v1, v5

    .line 306
    :goto_4
    if-ge v1, p0, :cond_c

    .line 307
    .line 308
    aget v2, p2, v1

    .line 309
    .line 310
    move-object v3, p1

    .line 311
    check-cast v3, Ljava/lang/Number;

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    xor-int/2addr v2, v3

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_c
    new-array p0, v5, [Ljava/lang/Integer;

    .line 329
    .line 330
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    return-object p0

    .line 335
    :cond_d
    if-eqz v3, :cond_f

    .line 336
    .line 337
    instance-of v0, p2, [J

    .line 338
    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    check-cast p2, [J

    .line 342
    .line 343
    array-length p0, p2

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .line 348
    .line 349
    move v1, v5

    .line 350
    :goto_5
    if-ge v1, p0, :cond_e

    .line 351
    .line 352
    aget-wide v2, p2, v1

    .line 353
    .line 354
    move-object v4, p1

    .line 355
    check-cast v4, Ljava/lang/Number;

    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    xor-long/2addr v2, v6

    .line 362
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    add-int/lit8 v1, v1, 0x1

    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_e
    new-array p0, v5, [Ljava/lang/Long;

    .line 373
    .line 374
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    return-object p0

    .line 379
    :cond_f
    instance-of v0, p1, [B

    .line 380
    .line 381
    if-eqz v0, :cond_11

    .line 382
    .line 383
    instance-of v1, p2, Ljava/lang/Byte;

    .line 384
    .line 385
    if-eqz v1, :cond_11

    .line 386
    .line 387
    check-cast p1, [B

    .line 388
    .line 389
    array-length p0, p1

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .line 394
    .line 395
    move v1, v5

    .line 396
    :goto_6
    if-ge v1, p0, :cond_10

    .line 397
    .line 398
    aget-byte v2, p1, v1

    .line 399
    .line 400
    move-object v3, p2

    .line 401
    check-cast v3, Ljava/lang/Number;

    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    xor-int/2addr v2, v3

    .line 408
    int-to-byte v2, v2

    .line 409
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    add-int/lit8 v1, v1, 0x1

    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_10
    new-array p0, v5, [Ljava/lang/Byte;

    .line 420
    .line 421
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    return-object p0

    .line 426
    :cond_11
    instance-of v1, p1, [S

    .line 427
    .line 428
    if-eqz v1, :cond_13

    .line 429
    .line 430
    instance-of v2, p2, Ljava/lang/Short;

    .line 431
    .line 432
    if-eqz v2, :cond_13

    .line 433
    .line 434
    check-cast p1, [S

    .line 435
    .line 436
    array-length p0, p1

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .line 441
    .line 442
    move v1, v5

    .line 443
    :goto_7
    if-ge v1, p0, :cond_12

    .line 444
    .line 445
    aget-short v2, p1, v1

    .line 446
    .line 447
    move-object v3, p2

    .line 448
    check-cast v3, Ljava/lang/Number;

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    xor-int/2addr v2, v3

    .line 455
    int-to-short v2, v2

    .line 456
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_12
    new-array p0, v5, [Ljava/lang/Short;

    .line 467
    .line 468
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    return-object p0

    .line 473
    :cond_13
    instance-of v2, p1, [I

    .line 474
    .line 475
    if-eqz v2, :cond_15

    .line 476
    .line 477
    instance-of v3, p2, Ljava/lang/Integer;

    .line 478
    .line 479
    if-eqz v3, :cond_15

    .line 480
    .line 481
    check-cast p1, [I

    .line 482
    .line 483
    array-length p0, p1

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 487
    .line 488
    .line 489
    move v1, v5

    .line 490
    :goto_8
    if-ge v1, p0, :cond_14

    .line 491
    .line 492
    aget v2, p1, v1

    .line 493
    .line 494
    move-object v3, p2

    .line 495
    check-cast v3, Ljava/lang/Number;

    .line 496
    .line 497
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    xor-int/2addr v2, v3

    .line 502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    add-int/lit8 v1, v1, 0x1

    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_14
    new-array p0, v5, [Ljava/lang/Integer;

    .line 513
    .line 514
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    return-object p0

    .line 519
    :cond_15
    instance-of v3, p1, [J

    .line 520
    .line 521
    if-eqz v3, :cond_17

    .line 522
    .line 523
    instance-of v4, p2, Ljava/lang/Long;

    .line 524
    .line 525
    if-eqz v4, :cond_17

    .line 526
    .line 527
    check-cast p1, [J

    .line 528
    .line 529
    array-length p0, p1

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    .line 534
    .line 535
    move v1, v5

    .line 536
    :goto_9
    if-ge v1, p0, :cond_16

    .line 537
    .line 538
    aget-wide v2, p1, v1

    .line 539
    .line 540
    move-object v4, p2

    .line 541
    check-cast v4, Ljava/lang/Number;

    .line 542
    .line 543
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 544
    .line 545
    .line 546
    move-result-wide v6

    .line 547
    xor-long/2addr v2, v6

    .line 548
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    add-int/lit8 v1, v1, 0x1

    .line 556
    .line 557
    goto :goto_9

    .line 558
    :cond_16
    new-array p0, v5, [Ljava/lang/Long;

    .line 559
    .line 560
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    return-object p0

    .line 565
    :cond_17
    const/16 v4, 0xa

    .line 566
    .line 567
    if-eqz v0, :cond_19

    .line 568
    .line 569
    instance-of v0, p2, [B

    .line 570
    .line 571
    if-eqz v0, :cond_19

    .line 572
    .line 573
    check-cast p1, [B

    .line 574
    .line 575
    array-length v0, p1

    .line 576
    check-cast p2, [B

    .line 577
    .line 578
    array-length v1, p2

    .line 579
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 580
    .line 581
    .line 582
    invoke-static {v5, v0}, Ll73;->F(II)Lnd4;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-static {p0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 596
    .line 597
    .line 598
    move-result-object p0

    .line 599
    :goto_a
    move-object v1, p0

    .line 600
    check-cast v1, Lmd4;

    .line 601
    .line 602
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 603
    .line 604
    if-eqz v2, :cond_18

    .line 605
    .line 606
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    aget-byte v2, p1, v1

    .line 611
    .line 612
    aget-byte v1, p2, v1

    .line 613
    .line 614
    xor-int/2addr v1, v2

    .line 615
    int-to-byte v1, v1

    .line 616
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    goto :goto_a

    .line 624
    :cond_18
    new-array p0, v5, [Ljava/lang/Byte;

    .line 625
    .line 626
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object p0

    .line 630
    return-object p0

    .line 631
    :cond_19
    if-eqz v1, :cond_1b

    .line 632
    .line 633
    instance-of v0, p2, [S

    .line 634
    .line 635
    if-eqz v0, :cond_1b

    .line 636
    .line 637
    check-cast p1, [S

    .line 638
    .line 639
    array-length v0, p1

    .line 640
    check-cast p2, [S

    .line 641
    .line 642
    array-length v1, p2

    .line 643
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 644
    .line 645
    .line 646
    invoke-static {v5, v0}, Ll73;->F(II)Lnd4;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-static {p0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object p0

    .line 663
    :goto_b
    move-object v1, p0

    .line 664
    check-cast v1, Lmd4;

    .line 665
    .line 666
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 667
    .line 668
    if-eqz v2, :cond_1a

    .line 669
    .line 670
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    aget-short v2, p1, v1

    .line 675
    .line 676
    aget-short v1, p2, v1

    .line 677
    .line 678
    xor-int/2addr v1, v2

    .line 679
    int-to-short v1, v1

    .line 680
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    goto :goto_b

    .line 688
    :cond_1a
    new-array p0, v5, [Ljava/lang/Short;

    .line 689
    .line 690
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object p0

    .line 694
    return-object p0

    .line 695
    :cond_1b
    if-eqz v2, :cond_1d

    .line 696
    .line 697
    instance-of v0, p2, [I

    .line 698
    .line 699
    if-eqz v0, :cond_1d

    .line 700
    .line 701
    check-cast p1, [I

    .line 702
    .line 703
    array-length v0, p1

    .line 704
    check-cast p2, [I

    .line 705
    .line 706
    array-length v1, p2

    .line 707
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 708
    .line 709
    .line 710
    invoke-static {v5, v0}, Ll73;->F(II)Lnd4;

    .line 711
    .line 712
    .line 713
    move-result-object p0

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-static {p0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 724
    .line 725
    .line 726
    move-result-object p0

    .line 727
    :goto_c
    move-object v1, p0

    .line 728
    check-cast v1, Lmd4;

    .line 729
    .line 730
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 731
    .line 732
    if-eqz v2, :cond_1c

    .line 733
    .line 734
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    aget v2, p1, v1

    .line 739
    .line 740
    aget v1, p2, v1

    .line 741
    .line 742
    xor-int/2addr v1, v2

    .line 743
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    goto :goto_c

    .line 751
    :cond_1c
    new-array p0, v5, [Ljava/lang/Integer;

    .line 752
    .line 753
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object p0

    .line 757
    return-object p0

    .line 758
    :cond_1d
    if-eqz v3, :cond_1f

    .line 759
    .line 760
    instance-of v0, p2, [J

    .line 761
    .line 762
    if-eqz v0, :cond_1f

    .line 763
    .line 764
    check-cast p1, [J

    .line 765
    .line 766
    array-length v0, p1

    .line 767
    check-cast p2, [J

    .line 768
    .line 769
    array-length v1, p2

    .line 770
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 771
    .line 772
    .line 773
    invoke-static {v5, v0}, Ll73;->F(II)Lnd4;

    .line 774
    .line 775
    .line 776
    move-result-object p0

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-static {p0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    :goto_d
    move-object v1, p0

    .line 791
    check-cast v1, Lmd4;

    .line 792
    .line 793
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 794
    .line 795
    if-eqz v2, :cond_1e

    .line 796
    .line 797
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    aget-wide v2, p1, v1

    .line 802
    .line 803
    aget-wide v6, p2, v1

    .line 804
    .line 805
    xor-long v1, v2, v6

    .line 806
    .line 807
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    goto :goto_d

    .line 815
    :cond_1e
    new-array p0, v5, [Ljava/lang/Long;

    .line 816
    .line 817
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object p0

    .line 821
    return-object p0

    .line 822
    :cond_1f
    const/4 p0, 0x4

    .line 823
    const/4 p1, 0x5

    .line 824
    const/4 p2, 0x0

    .line 825
    invoke-static {p0, p1, p2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 826
    .line 827
    .line 828
    return-object p2
.end method
