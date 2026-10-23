.class public final Lou0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Lqu0;


# direct methods
.method public constructor <init>(Lqu0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lou0;->a:Lqu0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    .line 2
    .line 3
    sget-object v1, Lqu0;->q:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lqu0;->e:[Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "org.bouncycastle.jcajce.provider.symmetric."

    .line 11
    .line 12
    invoke-static {v1, v0}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lqu0;->f:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lqu0;->k:[La42;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    array-length v4, v0

    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    aget-object v4, v0, v3

    .line 28
    .line 29
    invoke-static {}, Le42;->a()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v4}, La42;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v1, v4}, Lqu0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lqu0;->n:[Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric."

    .line 45
    .line 46
    invoke-static {v1, v0}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lqu0;->p:[Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v0}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    .line 55
    .line 56
    sget-object v1, Lqu0;->r:[Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    .line 62
    .line 63
    sget-object v1, Lqu0;->t:[Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lqu0;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lvg0;->d:Lf1;

    .line 69
    .line 70
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lvg0;->e:Lf1;

    .line 74
    .line 75
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lvg0;->f:Lf1;

    .line 79
    .line 80
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lvg0;->g:Lf1;

    .line 84
    .line 85
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lvg0;->h:Lf1;

    .line 89
    .line 90
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lvg0;->i:Lf1;

    .line 94
    .line 95
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lvg0;->j:Lf1;

    .line 99
    .line 100
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lvg0;->k:Lf1;

    .line 104
    .line 105
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lvg0;->l:Lf1;

    .line 109
    .line 110
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lvg0;->m:Lf1;

    .line 114
    .line 115
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lvg0;->n:Lf1;

    .line 119
    .line 120
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lvg0;->o:Lf1;

    .line 124
    .line 125
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lvg0;->p:Lf1;

    .line 129
    .line 130
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lvg0;->q:Lf1;

    .line 134
    .line 135
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lvg0;->r:Lf1;

    .line 139
    .line 140
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 141
    .line 142
    .line 143
    sget-object v0, Lvg0;->s:Lf1;

    .line 144
    .line 145
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lvg0;->t:Lf1;

    .line 149
    .line 150
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lvg0;->u:Lf1;

    .line 154
    .line 155
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lvg0;->v:Lf1;

    .line 159
    .line 160
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Lvg0;->w:Lf1;

    .line 164
    .line 165
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lvg0;->x:Lf1;

    .line 169
    .line 170
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lvg0;->y:Lf1;

    .line 174
    .line 175
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 176
    .line 177
    .line 178
    sget-object v0, Lvg0;->z:Lf1;

    .line 179
    .line 180
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 181
    .line 182
    .line 183
    sget-object v0, Lvg0;->A:Lf1;

    .line 184
    .line 185
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lvg0;->B:Lf1;

    .line 189
    .line 190
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Lvg0;->C:Lf1;

    .line 194
    .line 195
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lvg0;->D:Lf1;

    .line 199
    .line 200
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 201
    .line 202
    .line 203
    sget-object v0, Lvg0;->E:Lf1;

    .line 204
    .line 205
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Lvg0;->F:Lf1;

    .line 209
    .line 210
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Lvg0;->G:Lf1;

    .line 214
    .line 215
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 216
    .line 217
    .line 218
    sget-object v0, Lvg0;->H:Lf1;

    .line 219
    .line 220
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 221
    .line 222
    .line 223
    sget-object v0, Lvg0;->I:Lf1;

    .line 224
    .line 225
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lvg0;->J:Lf1;

    .line 229
    .line 230
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lvg0;->K:Lf1;

    .line 234
    .line 235
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lvg0;->L:Lf1;

    .line 239
    .line 240
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Lvg0;->M:Lf1;

    .line 244
    .line 245
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 246
    .line 247
    .line 248
    sget-object v0, Lvg0;->N:Lf1;

    .line 249
    .line 250
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Lvg0;->Q:Lf1;

    .line 254
    .line 255
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 256
    .line 257
    .line 258
    sget-object v0, Lvg0;->S:Lf1;

    .line 259
    .line 260
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lvg0;->U:Lf1;

    .line 264
    .line 265
    new-instance v1, Lyv6;

    .line 266
    .line 267
    invoke-direct {v1}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Lf1;

    .line 274
    .line 275
    const-string v1, "1.3.9999.6.4.10"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Lf1;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 281
    .line 282
    .line 283
    sget-object v0, Lvg0;->V:Lf1;

    .line 284
    .line 285
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 286
    .line 287
    .line 288
    sget-object v0, Lvg0;->X:Lf1;

    .line 289
    .line 290
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lvg0;->Z:Lf1;

    .line 294
    .line 295
    invoke-static {v0}, Ldj7;->z(Lf1;)V

    .line 296
    .line 297
    .line 298
    sget-object v0, Lbw5;->a:Lf1;

    .line 299
    .line 300
    new-instance v1, Lry0;

    .line 301
    .line 302
    const/4 v3, 0x2

    .line 303
    invoke-direct {v1, v3}, Lry0;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lbw5;->b:Lf1;

    .line 310
    .line 311
    new-instance v1, Lnp4;

    .line 312
    .line 313
    const/4 v3, 0x1

    .line 314
    invoke-direct {v1, v3}, Lnp4;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lbw5;->c:Lf1;

    .line 321
    .line 322
    new-instance v1, Ldi0;

    .line 323
    .line 324
    invoke-direct {v1, v3}, Ldi0;-><init>(I)V

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lpg4;->a:Lf1;

    .line 331
    .line 332
    new-instance v1, Ldi0;

    .line 333
    .line 334
    invoke-direct {v1, v3}, Ldi0;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 338
    .line 339
    .line 340
    sget-object v0, Lbw5;->d:Lf1;

    .line 341
    .line 342
    new-instance v1, Lix8;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 348
    .line 349
    .line 350
    sget-object v0, Lpg4;->b:Lf1;

    .line 351
    .line 352
    new-instance v1, Lix8;

    .line 353
    .line 354
    invoke-direct {v1}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 358
    .line 359
    .line 360
    sget-object v0, Ltv5;->a:Lf1;

    .line 361
    .line 362
    new-instance v1, Lnp4;

    .line 363
    .line 364
    invoke-direct {v1, v2}, Lnp4;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 368
    .line 369
    .line 370
    sget-object v0, Lvg0;->c0:Lf1;

    .line 371
    .line 372
    new-instance v1, Lf06;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 378
    .line 379
    .line 380
    sget-object v0, Lpj5;->L:Lf1;

    .line 381
    .line 382
    new-instance v1, Lm45;

    .line 383
    .line 384
    invoke-direct {v1}, Lm45;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Lpj5;->M:Lf1;

    .line 391
    .line 392
    new-instance v1, Lm45;

    .line 393
    .line 394
    invoke-direct {v1}, Lm45;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lpj5;->N:Lf1;

    .line 401
    .line 402
    new-instance v1, Lm45;

    .line 403
    .line 404
    invoke-direct {v1}, Lm45;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 408
    .line 409
    .line 410
    sget-object v0, Lvg0;->p0:Lf1;

    .line 411
    .line 412
    new-instance v1, Lj33;

    .line 413
    .line 414
    invoke-direct {v1, v0}, Ltl0;-><init>(Lf1;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 418
    .line 419
    .line 420
    sget-object v0, Lvg0;->q0:Lf1;

    .line 421
    .line 422
    new-instance v1, Lj33;

    .line 423
    .line 424
    invoke-direct {v1, v0}, Ltl0;-><init>(Lf1;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 428
    .line 429
    .line 430
    sget-object v0, Lvg0;->r0:Lf1;

    .line 431
    .line 432
    new-instance v1, Lj33;

    .line 433
    .line 434
    invoke-direct {v1, v0}, Ltl0;-><init>(Lf1;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 438
    .line 439
    .line 440
    sget-object v0, Lvg0;->s0:Lf1;

    .line 441
    .line 442
    new-instance v1, Lj33;

    .line 443
    .line 444
    invoke-direct {v1, v0}, Ltl0;-><init>(Lf1;)V

    .line 445
    .line 446
    .line 447
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 448
    .line 449
    .line 450
    sget-object v0, Lvg0;->t0:Lf1;

    .line 451
    .line 452
    new-instance v1, Lnl2;

    .line 453
    .line 454
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 458
    .line 459
    .line 460
    sget-object v0, Lvg0;->u0:Lf1;

    .line 461
    .line 462
    new-instance v1, Lnl2;

    .line 463
    .line 464
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 468
    .line 469
    .line 470
    sget-object v0, Lvg0;->v0:Lf1;

    .line 471
    .line 472
    new-instance v1, Lnl2;

    .line 473
    .line 474
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 478
    .line 479
    .line 480
    sget-object v0, Lvg0;->w0:Lf1;

    .line 481
    .line 482
    new-instance v1, Lnl2;

    .line 483
    .line 484
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 488
    .line 489
    .line 490
    sget-object v0, Lvg0;->x0:Lf1;

    .line 491
    .line 492
    new-instance v1, Lnl2;

    .line 493
    .line 494
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 498
    .line 499
    .line 500
    sget-object v0, Lvg0;->y0:Lf1;

    .line 501
    .line 502
    new-instance v1, Lnl2;

    .line 503
    .line 504
    invoke-direct {v1}, Lnl2;-><init>()V

    .line 505
    .line 506
    .line 507
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 508
    .line 509
    .line 510
    sget-object v0, Lvg0;->I0:Lf1;

    .line 511
    .line 512
    new-instance v1, Lry0;

    .line 513
    .line 514
    invoke-direct {v1, v2}, Lry0;-><init>(I)V

    .line 515
    .line 516
    .line 517
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 518
    .line 519
    .line 520
    sget-object v0, Lvg0;->K0:Lf1;

    .line 521
    .line 522
    new-instance v1, Lry0;

    .line 523
    .line 524
    invoke-direct {v1, v2}, Lry0;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 528
    .line 529
    .line 530
    sget-object v0, Lvg0;->M0:Lf1;

    .line 531
    .line 532
    new-instance v1, Lry0;

    .line 533
    .line 534
    invoke-direct {v1, v2}, Lry0;-><init>(I)V

    .line 535
    .line 536
    .line 537
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 538
    .line 539
    .line 540
    sget-object v0, Lvg0;->O0:Lf1;

    .line 541
    .line 542
    new-instance v1, Lry0;

    .line 543
    .line 544
    invoke-direct {v1, v2}, Lry0;-><init>(I)V

    .line 545
    .line 546
    .line 547
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 548
    .line 549
    .line 550
    sget-object v0, Lvg0;->Q0:Lf1;

    .line 551
    .line 552
    new-instance v1, Lry0;

    .line 553
    .line 554
    invoke-direct {v1, v2}, Lry0;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 558
    .line 559
    .line 560
    sget-object v0, Lvg0;->R1:Lf1;

    .line 561
    .line 562
    new-instance v1, Ldi0;

    .line 563
    .line 564
    invoke-direct {v1, v2}, Ldi0;-><init>(I)V

    .line 565
    .line 566
    .line 567
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 568
    .line 569
    .line 570
    sget-object v0, Lvg0;->S1:Lf1;

    .line 571
    .line 572
    new-instance v1, Ldi0;

    .line 573
    .line 574
    invoke-direct {v1, v2}, Ldi0;-><init>(I)V

    .line 575
    .line 576
    .line 577
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 578
    .line 579
    .line 580
    sget-object v0, Lvg0;->T1:Lf1;

    .line 581
    .line 582
    new-instance v1, Ldi0;

    .line 583
    .line 584
    invoke-direct {v1, v2}, Ldi0;-><init>(I)V

    .line 585
    .line 586
    .line 587
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 588
    .line 589
    .line 590
    sget-object v0, Lvg0;->V1:Lf1;

    .line 591
    .line 592
    new-instance v1, Li24;

    .line 593
    .line 594
    invoke-direct {v1}, Li24;-><init>()V

    .line 595
    .line 596
    .line 597
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 598
    .line 599
    .line 600
    sget-object v0, Lvg0;->W1:Lf1;

    .line 601
    .line 602
    new-instance v1, Li24;

    .line 603
    .line 604
    invoke-direct {v1}, Li24;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 608
    .line 609
    .line 610
    sget-object v0, Lvg0;->X1:Lf1;

    .line 611
    .line 612
    new-instance v1, Li24;

    .line 613
    .line 614
    invoke-direct {v1}, Li24;-><init>()V

    .line 615
    .line 616
    .line 617
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 618
    .line 619
    .line 620
    sget-object v0, Lvg0;->z1:Lf1;

    .line 621
    .line 622
    new-instance v1, Lfp4;

    .line 623
    .line 624
    invoke-direct {v1}, Lfp4;-><init>()V

    .line 625
    .line 626
    .line 627
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 628
    .line 629
    .line 630
    sget-object v0, Lvg0;->A1:Lf1;

    .line 631
    .line 632
    new-instance v1, Lfp4;

    .line 633
    .line 634
    invoke-direct {v1}, Lfp4;-><init>()V

    .line 635
    .line 636
    .line 637
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 638
    .line 639
    .line 640
    sget-object v0, Lvg0;->B1:Lf1;

    .line 641
    .line 642
    new-instance v1, Lfp4;

    .line 643
    .line 644
    invoke-direct {v1}, Lfp4;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 648
    .line 649
    .line 650
    sget-object v0, Lvg0;->t1:Lf1;

    .line 651
    .line 652
    new-instance v1, Lry0;

    .line 653
    .line 654
    invoke-direct {v1, v3}, Lry0;-><init>(I)V

    .line 655
    .line 656
    .line 657
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 658
    .line 659
    .line 660
    sget-object v0, Lvg0;->u1:Lf1;

    .line 661
    .line 662
    new-instance v1, Lry0;

    .line 663
    .line 664
    invoke-direct {v1, v3}, Lry0;-><init>(I)V

    .line 665
    .line 666
    .line 667
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 668
    .line 669
    .line 670
    sget-object v0, Lvg0;->v1:Lf1;

    .line 671
    .line 672
    new-instance v1, Lry0;

    .line 673
    .line 674
    invoke-direct {v1, v3}, Lry0;-><init>(I)V

    .line 675
    .line 676
    .line 677
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 678
    .line 679
    .line 680
    sget-object v0, Lvg0;->w1:Lf1;

    .line 681
    .line 682
    new-instance v1, Lry0;

    .line 683
    .line 684
    invoke-direct {v1, v3}, Lry0;-><init>(I)V

    .line 685
    .line 686
    .line 687
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 688
    .line 689
    .line 690
    sget-object v0, Lvg0;->Z1:Lf1;

    .line 691
    .line 692
    new-instance v1, Ll95;

    .line 693
    .line 694
    invoke-direct {v1}, Ll95;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 698
    .line 699
    .line 700
    sget-object v0, Lvg0;->a2:Lf1;

    .line 701
    .line 702
    new-instance v1, Ll95;

    .line 703
    .line 704
    invoke-direct {v1}, Ll95;-><init>()V

    .line 705
    .line 706
    .line 707
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 708
    .line 709
    .line 710
    sget-object v0, Lvg0;->b2:Lf1;

    .line 711
    .line 712
    new-instance v1, Ll95;

    .line 713
    .line 714
    invoke-direct {v1}, Ll95;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 718
    .line 719
    .line 720
    sget-object v0, Lvg0;->c2:Lf1;

    .line 721
    .line 722
    new-instance v1, Ll95;

    .line 723
    .line 724
    invoke-direct {v1}, Ll95;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 728
    .line 729
    .line 730
    sget-object v0, Lvg0;->e2:Lf1;

    .line 731
    .line 732
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 733
    .line 734
    .line 735
    sget-object v0, Lvg0;->f2:Lf1;

    .line 736
    .line 737
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 738
    .line 739
    .line 740
    sget-object v0, Lvg0;->g2:Lf1;

    .line 741
    .line 742
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 743
    .line 744
    .line 745
    sget-object v0, Lvg0;->h2:Lf1;

    .line 746
    .line 747
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 748
    .line 749
    .line 750
    sget-object v0, Lvg0;->i2:Lf1;

    .line 751
    .line 752
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 753
    .line 754
    .line 755
    sget-object v0, Lvg0;->j2:Lf1;

    .line 756
    .line 757
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 758
    .line 759
    .line 760
    sget-object v0, Lvg0;->k2:Lf1;

    .line 761
    .line 762
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 763
    .line 764
    .line 765
    sget-object v0, Lvg0;->l2:Lf1;

    .line 766
    .line 767
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 768
    .line 769
    .line 770
    sget-object v0, Lvg0;->m2:Lf1;

    .line 771
    .line 772
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 773
    .line 774
    .line 775
    sget-object v0, Lvg0;->n2:Lf1;

    .line 776
    .line 777
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 778
    .line 779
    .line 780
    sget-object v0, Lvg0;->o2:Lf1;

    .line 781
    .line 782
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 783
    .line 784
    .line 785
    sget-object v0, Lvg0;->p2:Lf1;

    .line 786
    .line 787
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 788
    .line 789
    .line 790
    sget-object v0, Lvg0;->u2:Lf1;

    .line 791
    .line 792
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 793
    .line 794
    .line 795
    sget-object v0, Lvg0;->v2:Lf1;

    .line 796
    .line 797
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 798
    .line 799
    .line 800
    sget-object v0, Lvg0;->w2:Lf1;

    .line 801
    .line 802
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 803
    .line 804
    .line 805
    sget-object v0, Lvg0;->x2:Lf1;

    .line 806
    .line 807
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 808
    .line 809
    .line 810
    sget-object v0, Lvg0;->y2:Lf1;

    .line 811
    .line 812
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 813
    .line 814
    .line 815
    sget-object v0, Lvg0;->z2:Lf1;

    .line 816
    .line 817
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 818
    .line 819
    .line 820
    sget-object v0, Lvg0;->A2:Lf1;

    .line 821
    .line 822
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 823
    .line 824
    .line 825
    sget-object v0, Lvg0;->B2:Lf1;

    .line 826
    .line 827
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 828
    .line 829
    .line 830
    sget-object v0, Lvg0;->C2:Lf1;

    .line 831
    .line 832
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 833
    .line 834
    .line 835
    sget-object v0, Lvg0;->D2:Lf1;

    .line 836
    .line 837
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 838
    .line 839
    .line 840
    sget-object v0, Lvg0;->E2:Lf1;

    .line 841
    .line 842
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 843
    .line 844
    .line 845
    sget-object v0, Lvg0;->F2:Lf1;

    .line 846
    .line 847
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 848
    .line 849
    .line 850
    sget-object v0, Lvg0;->G2:Lf1;

    .line 851
    .line 852
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 853
    .line 854
    .line 855
    sget-object v0, Lvg0;->H2:Lf1;

    .line 856
    .line 857
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 858
    .line 859
    .line 860
    sget-object v0, Lvg0;->I2:Lf1;

    .line 861
    .line 862
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 863
    .line 864
    .line 865
    sget-object v0, Lvg0;->J2:Lf1;

    .line 866
    .line 867
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 868
    .line 869
    .line 870
    sget-object v0, Lvg0;->K2:Lf1;

    .line 871
    .line 872
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 873
    .line 874
    .line 875
    sget-object v0, Lvg0;->L2:Lf1;

    .line 876
    .line 877
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 878
    .line 879
    .line 880
    sget-object v0, Lvg0;->M2:Lf1;

    .line 881
    .line 882
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 883
    .line 884
    .line 885
    sget-object v0, Lvg0;->N2:Lf1;

    .line 886
    .line 887
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 888
    .line 889
    .line 890
    sget-object v0, Lvg0;->O2:Lf1;

    .line 891
    .line 892
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 893
    .line 894
    .line 895
    sget-object v0, Lvg0;->P2:Lf1;

    .line 896
    .line 897
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 898
    .line 899
    .line 900
    sget-object v0, Lvg0;->Q2:Lf1;

    .line 901
    .line 902
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 903
    .line 904
    .line 905
    sget-object v0, Lvg0;->R2:Lf1;

    .line 906
    .line 907
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 908
    .line 909
    .line 910
    sget-object v0, Lvg0;->S2:Lf1;

    .line 911
    .line 912
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 913
    .line 914
    .line 915
    sget-object v0, Lvg0;->T2:Lf1;

    .line 916
    .line 917
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 918
    .line 919
    .line 920
    sget-object v0, Lvg0;->U2:Lf1;

    .line 921
    .line 922
    invoke-static {v0}, Ldj7;->w(Lf1;)V

    .line 923
    .line 924
    .line 925
    sget-object v0, Lvg0;->V2:Lf1;

    .line 926
    .line 927
    new-instance v1, Lsi7;

    .line 928
    .line 929
    invoke-direct {v1}, Lsi7;-><init>()V

    .line 930
    .line 931
    .line 932
    invoke-static {v0, v1}, Lqu0;->d(Lf1;Lm60;)V

    .line 933
    .line 934
    .line 935
    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    .line 936
    .line 937
    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    .line 938
    .line 939
    iget-object p0, p0, Lou0;->a:Lqu0;

    .line 940
    .line 941
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    .line 945
    .line 946
    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    .line 947
    .line 948
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    const-string v0, "X509Store.CRL/COLLECTION"

    .line 952
    .line 953
    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    .line 954
    .line 955
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    .line 959
    .line 960
    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    .line 961
    .line 962
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    const-string v0, "X509Store.CERTIFICATE/LDAP"

    .line 966
    .line 967
    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    .line 968
    .line 969
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    const-string v0, "X509Store.CRL/LDAP"

    .line 973
    .line 974
    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    .line 975
    .line 976
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    .line 980
    .line 981
    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    .line 982
    .line 983
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    .line 987
    .line 988
    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    .line 989
    .line 990
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    const-string v0, "X509StreamParser.CERTIFICATE"

    .line 994
    .line 995
    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    .line 996
    .line 997
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    .line 1001
    .line 1002
    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    .line 1003
    .line 1004
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    const-string v0, "X509StreamParser.CRL"

    .line 1008
    .line 1009
    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    .line 1010
    .line 1011
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    .line 1015
    .line 1016
    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    .line 1017
    .line 1018
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    .line 1022
    .line 1023
    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    .line 1024
    .line 1025
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    .line 1029
    .line 1030
    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    .line 1031
    .line 1032
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    .line 1036
    .line 1037
    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    .line 1038
    .line 1039
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    sget-object v0, Lqu0;->d:Ljava/lang/Class;

    .line 1043
    .line 1044
    const-string v1, "CertPathBuilder.PKIX"

    .line 1045
    .line 1046
    const-string v2, "CertPathValidator.PKIX"

    .line 1047
    .line 1048
    const-string v3, "CertPathBuilder.RFC3280"

    .line 1049
    .line 1050
    const-string v4, "CertPathValidator.RFC3280"

    .line 1051
    .line 1052
    const-string v5, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    .line 1053
    .line 1054
    const-string v6, "CertPathBuilder.RFC3281"

    .line 1055
    .line 1056
    const-string v7, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    .line 1057
    .line 1058
    const-string v8, "CertPathValidator.RFC3281"

    .line 1059
    .line 1060
    invoke-virtual {p0, v8, v7}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {p0, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    if-eqz v0, :cond_1

    .line 1067
    .line 1068
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8"

    .line 1069
    .line 1070
    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8"

    .line 1074
    .line 1075
    :goto_1
    invoke-virtual {p0, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {p0, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {p0, v1, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    goto :goto_2

    .line 1085
    :cond_1
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    .line 1086
    .line 1087
    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    .line 1091
    .line 1092
    goto :goto_1

    .line 1093
    :goto_2
    const-string v0, "CertStore.Collection"

    .line 1094
    .line 1095
    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    .line 1096
    .line 1097
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    const-string v0, "CertStore.LDAP"

    .line 1101
    .line 1102
    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    .line 1103
    .line 1104
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    const-string v0, "CertStore.Multi"

    .line 1108
    .line 1109
    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    .line 1110
    .line 1111
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    .line 1115
    .line 1116
    const-string v1, "LDAP"

    .line 1117
    .line 1118
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    const/4 p0, 0x0

    .line 1122
    return-object p0
.end method
