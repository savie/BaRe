.class public final Lgg2;
.super Ljava/lang/Object;


# static fields
.field public static final c:Ljava/util/Map;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v5, 0x14

    .line 7
    .line 8
    const/4 v6, 0x2

    .line 9
    const-string v1, "SHA-256"

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    const/16 v4, 0x43

    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const-string v3, "XMSSMT_SHA2_20/2_256"

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v8, 0x14

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    const-string v4, "SHA-256"

    .line 31
    .line 32
    const/16 v5, 0x20

    .line 33
    .line 34
    const/16 v6, 0x10

    .line 35
    .line 36
    const/16 v7, 0x43

    .line 37
    .line 38
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    const-string v3, "XMSSMT_SHA2_20/4_256"

    .line 44
    .line 45
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v8, 0x28

    .line 49
    .line 50
    const/4 v9, 0x2

    .line 51
    const-string v4, "SHA-256"

    .line 52
    .line 53
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x3

    .line 58
    const-string v3, "XMSSMT_SHA2_40/2_256"

    .line 59
    .line 60
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x4

    .line 64
    const-string v4, "SHA-256"

    .line 65
    .line 66
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x4

    .line 71
    const-string v3, "XMSSMT_SHA2_40/4_256"

    .line 72
    .line 73
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v9, 0x8

    .line 77
    .line 78
    const-string v4, "SHA-256"

    .line 79
    .line 80
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x5

    .line 85
    const-string v3, "XMSSMT_SHA2_40/8_256"

    .line 86
    .line 87
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/16 v8, 0x3c

    .line 91
    .line 92
    const/4 v9, 0x3

    .line 93
    const-string v4, "SHA-256"

    .line 94
    .line 95
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x6

    .line 100
    const-string v3, "XMSSMT_SHA2_60/3_256"

    .line 101
    .line 102
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v9, 0x6

    .line 106
    const-string v4, "SHA-256"

    .line 107
    .line 108
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x7

    .line 113
    const-string v3, "XMSSMT_SHA2_60/6_256"

    .line 114
    .line 115
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v9, 0xc

    .line 119
    .line 120
    const-string v4, "SHA-256"

    .line 121
    .line 122
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    const-string v3, "XMSSMT_SHA2_60/12_256"

    .line 129
    .line 130
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/16 v8, 0x14

    .line 134
    .line 135
    const/4 v9, 0x2

    .line 136
    const-string v4, "SHA-512"

    .line 137
    .line 138
    const/16 v5, 0x40

    .line 139
    .line 140
    const/16 v7, 0x83

    .line 141
    .line 142
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/16 v2, 0x9

    .line 147
    .line 148
    const-string v3, "XMSSMT_SHA2_20/2_512"

    .line 149
    .line 150
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v9, 0x4

    .line 154
    const-string v4, "SHA-512"

    .line 155
    .line 156
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const/16 v2, 0xa

    .line 161
    .line 162
    const-string v3, "XMSSMT_SHA2_20/4_512"

    .line 163
    .line 164
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v8, 0x28

    .line 168
    .line 169
    const/4 v9, 0x2

    .line 170
    const-string v4, "SHA-512"

    .line 171
    .line 172
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const/16 v2, 0xb

    .line 177
    .line 178
    const-string v3, "XMSSMT_SHA2_40/2_512"

    .line 179
    .line 180
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 v9, 0x4

    .line 184
    const-string v4, "SHA-512"

    .line 185
    .line 186
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const/16 v2, 0xc

    .line 191
    .line 192
    const-string v3, "XMSSMT_SHA2_40/4_512"

    .line 193
    .line 194
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/16 v9, 0x8

    .line 198
    .line 199
    const-string v4, "SHA-512"

    .line 200
    .line 201
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/16 v2, 0xd

    .line 206
    .line 207
    const-string v3, "XMSSMT_SHA2_40/8_512"

    .line 208
    .line 209
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/16 v8, 0x3c

    .line 213
    .line 214
    const/4 v9, 0x3

    .line 215
    const-string v4, "SHA-512"

    .line 216
    .line 217
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const/16 v2, 0xe

    .line 222
    .line 223
    const-string v3, "XMSSMT_SHA2_60/3_512"

    .line 224
    .line 225
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const/4 v9, 0x6

    .line 229
    const-string v4, "SHA-512"

    .line 230
    .line 231
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const/16 v2, 0xf

    .line 236
    .line 237
    const-string v3, "XMSSMT_SHA2_60/6_512"

    .line 238
    .line 239
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const/16 v9, 0xc

    .line 243
    .line 244
    const-string v4, "SHA-512"

    .line 245
    .line 246
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const/16 v2, 0x10

    .line 251
    .line 252
    const-string v3, "XMSSMT_SHA2_60/12_512"

    .line 253
    .line 254
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/16 v8, 0x14

    .line 258
    .line 259
    const/4 v9, 0x2

    .line 260
    const-string v4, "SHAKE128"

    .line 261
    .line 262
    const/16 v5, 0x20

    .line 263
    .line 264
    const/16 v7, 0x43

    .line 265
    .line 266
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const/16 v2, 0x11

    .line 271
    .line 272
    const-string v3, "XMSSMT_SHAKE_20/2_256"

    .line 273
    .line 274
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const/4 v9, 0x4

    .line 278
    const-string v4, "SHAKE128"

    .line 279
    .line 280
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const/16 v2, 0x12

    .line 285
    .line 286
    const-string v3, "XMSSMT_SHAKE_20/4_256"

    .line 287
    .line 288
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/16 v8, 0x28

    .line 292
    .line 293
    const/4 v9, 0x2

    .line 294
    const-string v4, "SHAKE128"

    .line 295
    .line 296
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const/16 v2, 0x13

    .line 301
    .line 302
    const-string v3, "XMSSMT_SHAKE_40/2_256"

    .line 303
    .line 304
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const/4 v9, 0x4

    .line 308
    const-string v4, "SHAKE128"

    .line 309
    .line 310
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const/16 v2, 0x14

    .line 315
    .line 316
    const-string v3, "XMSSMT_SHAKE_40/4_256"

    .line 317
    .line 318
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/16 v9, 0x8

    .line 322
    .line 323
    const-string v4, "SHAKE128"

    .line 324
    .line 325
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const/16 v2, 0x15

    .line 330
    .line 331
    const-string v3, "XMSSMT_SHAKE_40/8_256"

    .line 332
    .line 333
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const/16 v8, 0x3c

    .line 337
    .line 338
    const/4 v9, 0x3

    .line 339
    const-string v4, "SHAKE128"

    .line 340
    .line 341
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const/16 v2, 0x16

    .line 346
    .line 347
    const-string v3, "XMSSMT_SHAKE_60/3_256"

    .line 348
    .line 349
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const/4 v9, 0x6

    .line 353
    const-string v4, "SHAKE128"

    .line 354
    .line 355
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const/16 v2, 0x17

    .line 360
    .line 361
    const-string v3, "XMSSMT_SHAKE_60/6_256"

    .line 362
    .line 363
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const/16 v9, 0xc

    .line 367
    .line 368
    const-string v4, "SHAKE128"

    .line 369
    .line 370
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const/16 v2, 0x18

    .line 375
    .line 376
    const-string v3, "XMSSMT_SHAKE_60/12_256"

    .line 377
    .line 378
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const/16 v8, 0x14

    .line 382
    .line 383
    const/4 v9, 0x2

    .line 384
    const-string v4, "SHAKE256"

    .line 385
    .line 386
    const/16 v5, 0x40

    .line 387
    .line 388
    const/16 v7, 0x83

    .line 389
    .line 390
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const/16 v2, 0x19

    .line 395
    .line 396
    const-string v3, "XMSSMT_SHAKE_20/2_512"

    .line 397
    .line 398
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const/4 v9, 0x4

    .line 402
    const-string v4, "SHAKE256"

    .line 403
    .line 404
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const/16 v2, 0x1a

    .line 409
    .line 410
    const-string v3, "XMSSMT_SHAKE_20/4_512"

    .line 411
    .line 412
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const/16 v8, 0x28

    .line 416
    .line 417
    const/4 v9, 0x2

    .line 418
    const-string v4, "SHAKE256"

    .line 419
    .line 420
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    const/16 v2, 0x1b

    .line 425
    .line 426
    const-string v3, "XMSSMT_SHAKE_40/2_512"

    .line 427
    .line 428
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/4 v9, 0x4

    .line 432
    const-string v4, "SHAKE256"

    .line 433
    .line 434
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    const/16 v2, 0x1c

    .line 439
    .line 440
    const-string v3, "XMSSMT_SHAKE_40/4_512"

    .line 441
    .line 442
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const/16 v9, 0x8

    .line 446
    .line 447
    const-string v4, "SHAKE256"

    .line 448
    .line 449
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    const/16 v2, 0x1d

    .line 454
    .line 455
    const-string v3, "XMSSMT_SHAKE_40/8_512"

    .line 456
    .line 457
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const/16 v8, 0x3c

    .line 461
    .line 462
    const/4 v9, 0x3

    .line 463
    const-string v4, "SHAKE256"

    .line 464
    .line 465
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const/16 v2, 0x1e

    .line 470
    .line 471
    const-string v3, "XMSSMT_SHAKE_60/3_512"

    .line 472
    .line 473
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const/4 v9, 0x6

    .line 477
    const-string v4, "SHAKE256"

    .line 478
    .line 479
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const/16 v2, 0x1f

    .line 484
    .line 485
    const-string v3, "XMSSMT_SHAKE_60/6_512"

    .line 486
    .line 487
    invoke-static {v2, v3, v0, v1}, Lxs1;->p(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    const/16 v9, 0xc

    .line 491
    .line 492
    const-string v4, "SHAKE256"

    .line 493
    .line 494
    invoke-static/range {v4 .. v9}, Lgg2;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    new-instance v2, Lgg2;

    .line 499
    .line 500
    const/16 v3, 0x20

    .line 501
    .line 502
    const-string v4, "XMSSMT_SHAKE_60/12_512"

    .line 503
    .line 504
    invoke-direct {v2, v3, v4}, Lgg2;-><init>(ILjava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    sput-object v0, Lgg2;->c:Ljava/util/Map;

    .line 515
    .line 516
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lgg2;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lgg2;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, "-"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    const-string p0, "algorithmName == null"

    .line 49
    .line 50
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgg2;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
