.class public final Ljt6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ll15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljt6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljt6;->a:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lev6;Lst6;)Lrt6;
    .locals 14

    .line 1
    iget-object v0, p1, Lev6;->a:Ldv6;

    .line 2
    .line 3
    iget-object p1, p1, Lev6;->b:Lzu6;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lut6;

    .line 7
    .line 8
    iget-object v1, v1, Lut6;->e:Lit6;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, "Unknown SMB2 Message Command type: "

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Ljt6;->a:Ll15;

    .line 34
    .line 35
    invoke-interface {v0, p0}, Ll15;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lgv6;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :pswitch_0
    new-instance v1, Liu6;

    .line 57
    .line 58
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_1
    new-instance v1, Lbu6;

    .line 64
    .line 65
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_2
    new-instance v1, Ljs6;

    .line 71
    .line 72
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_3
    new-instance v1, Lzt6;

    .line 83
    .line 84
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_4
    new-instance v1, Lvs6;

    .line 89
    .line 90
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_5
    new-instance v1, Lis6;

    .line 95
    .line 96
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_6
    new-instance v1, Let6;

    .line 101
    .line 102
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_7
    new-instance v1, Lgt6;

    .line 107
    .line 108
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_8
    new-instance v1, Lru6;

    .line 113
    .line 114
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_9
    new-instance v1, Ldu6;

    .line 119
    .line 120
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_a
    new-instance v1, Lat6;

    .line 125
    .line 126
    invoke-direct {v1, v3}, Lat6;-><init>(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_b
    new-instance v1, Lks6;

    .line 131
    .line 132
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_c
    new-instance v1, Lrs6;

    .line 137
    .line 138
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_d
    new-instance v1, Lat6;

    .line 143
    .line 144
    invoke-direct {v1, v4}, Lat6;-><init>(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_e
    new-instance v1, Lpu6;

    .line 149
    .line 150
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_f
    new-instance v1, Lht6;

    .line 155
    .line 156
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_10
    new-instance v1, Lgu6;

    .line 161
    .line 162
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_11
    new-instance v1, Lpt6;

    .line 167
    .line 168
    invoke-direct {v1}, Lrt6;-><init>()V

    .line 169
    .line 170
    .line 171
    const-class v2, Lbt6;

    .line 172
    .line 173
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iput-object v2, v1, Lpt6;->h:Ljava/util/EnumSet;

    .line 178
    .line 179
    :goto_0
    move-object v2, v0

    .line 180
    check-cast v2, Lut6;

    .line 181
    .line 182
    iget-wide v5, v2, Lut6;->j:J

    .line 183
    .line 184
    invoke-static {v5, v6}, Lbp5;->a(J)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_0

    .line 189
    .line 190
    const-wide/16 v7, 0x103

    .line 191
    .line 192
    cmp-long v5, v5, v7

    .line 193
    .line 194
    if-eqz v5, :cond_0

    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_0
    iget-object v5, v2, Lut6;->e:Lit6;

    .line 199
    .line 200
    iget-wide v6, v2, Lut6;->j:J

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eq v2, v4, :cond_7

    .line 207
    .line 208
    const/16 v5, 0x8

    .line 209
    .line 210
    const-wide v8, 0x80000005L

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    if-eq v2, v5, :cond_6

    .line 216
    .line 217
    const/16 v5, 0xb

    .line 218
    .line 219
    if-eq v2, v5, :cond_2

    .line 220
    .line 221
    const/16 p0, 0xf

    .line 222
    .line 223
    if-eq v2, p0, :cond_1

    .line 224
    .line 225
    const/16 p0, 0x10

    .line 226
    .line 227
    if-eq v2, p0, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_1
    const-wide/16 v8, 0x10c

    .line 231
    .line 232
    cmp-long p0, v6, v8

    .line 233
    .line 234
    if-nez p0, :cond_8

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_2
    check-cast p0, Ldt6;

    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const-wide/32 v10, 0x11400c

    .line 243
    .line 244
    .line 245
    const-wide/16 v12, 0x0

    .line 246
    .line 247
    cmp-long p0, v12, v10

    .line 248
    .line 249
    if-eqz p0, :cond_5

    .line 250
    .line 251
    const-wide/32 v10, 0x11c017

    .line 252
    .line 253
    .line 254
    cmp-long p0, v12, v10

    .line 255
    .line 256
    if-eqz p0, :cond_5

    .line 257
    .line 258
    const-wide/32 v10, 0x60194

    .line 259
    .line 260
    .line 261
    cmp-long p0, v12, v10

    .line 262
    .line 263
    if-nez p0, :cond_3

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_3
    const-wide/32 v8, 0x1440f2

    .line 267
    .line 268
    .line 269
    cmp-long p0, v12, v8

    .line 270
    .line 271
    if-eqz p0, :cond_4

    .line 272
    .line 273
    const-wide/32 v8, 0x1480f2

    .line 274
    .line 275
    .line 276
    cmp-long p0, v12, v8

    .line 277
    .line 278
    if-nez p0, :cond_8

    .line 279
    .line 280
    :cond_4
    const-wide v8, 0xc000000dL

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    cmp-long p0, v6, v8

    .line 286
    .line 287
    if-nez p0, :cond_8

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_5
    :goto_1
    cmp-long p0, v6, v8

    .line 291
    .line 292
    if-nez p0, :cond_8

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_6
    cmp-long p0, v6, v8

    .line 296
    .line 297
    if-nez p0, :cond_8

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_7
    const-wide v8, 0xc0000016L

    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    cmp-long p0, v6, v8

    .line 306
    .line 307
    if-nez p0, :cond_8

    .line 308
    .line 309
    :goto_2
    iput-object p1, v1, Lev6;->b:Lzu6;

    .line 310
    .line 311
    iput-object v0, v1, Lev6;->a:Ldv6;

    .line 312
    .line 313
    invoke-virtual {v1, p1}, Lrt6;->f(Lzu6;)V

    .line 314
    .line 315
    .line 316
    iget-object p0, v1, Lev6;->b:Lzu6;

    .line 317
    .line 318
    iget-object p1, v1, Lev6;->a:Ldv6;

    .line 319
    .line 320
    check-cast p1, Lut6;

    .line 321
    .line 322
    iget p1, p1, Lut6;->o:I

    .line 323
    .line 324
    iput p1, p0, Low0;->c:I

    .line 325
    .line 326
    return-object v1

    .line 327
    :cond_8
    :goto_3
    iput-object p1, v1, Lev6;->b:Lzu6;

    .line 328
    .line 329
    iput-object v0, v1, Lev6;->a:Ldv6;

    .line 330
    .line 331
    new-instance p0, Ls40;

    .line 332
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    .line 335
    .line 336
    new-instance p1, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-object p1, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 342
    .line 343
    iget-object p1, v1, Lev6;->a:Ldv6;

    .line 344
    .line 345
    check-cast p1, Lut6;

    .line 346
    .line 347
    iget-object v0, v1, Lev6;->b:Lzu6;

    .line 348
    .line 349
    const/4 v2, 0x2

    .line 350
    invoke-virtual {v0, v2}, Low0;->t(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Low0;->n()B

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {v0, v4}, Low0;->t(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Low0;->s()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    if-lez v2, :cond_9

    .line 365
    .line 366
    :goto_4
    if-ge v3, v2, :cond_b

    .line 367
    .line 368
    invoke-virtual {v0}, Low0;->s()I

    .line 369
    .line 370
    .line 371
    const/4 v4, 0x4

    .line 372
    invoke-virtual {v0, v4}, Low0;->t(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1, v0}, Ls40;->d(Lut6;Lzu6;)V

    .line 376
    .line 377
    .line 378
    add-int/lit8 v3, v3, 0x1

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_9
    if-lez v5, :cond_a

    .line 382
    .line 383
    invoke-virtual {p0, p1, v0}, Ls40;->d(Lut6;Lzu6;)V

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_a
    if-nez v5, :cond_b

    .line 388
    .line 389
    invoke-virtual {v0}, Low0;->a()I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-lez p1, :cond_b

    .line 394
    .line 395
    invoke-virtual {v0, v4}, Low0;->t(I)V

    .line 396
    .line 397
    .line 398
    :cond_b
    :goto_5
    iput-object p0, v1, Lrt6;->d:Ls40;

    .line 399
    .line 400
    iget-object p0, v1, Lev6;->b:Lzu6;

    .line 401
    .line 402
    iget-object p1, v1, Lev6;->a:Ldv6;

    .line 403
    .line 404
    check-cast p1, Lut6;

    .line 405
    .line 406
    iget p1, p1, Lut6;->o:I

    .line 407
    .line 408
    iput p1, p0, Low0;->c:I

    .line 409
    .line 410
    return-object v1

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
