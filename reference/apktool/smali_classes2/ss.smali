.class public final synthetic Lss;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lss;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lss;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lss;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object p0, p0, Lss;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lmt3;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v4

    .line 31
    :pswitch_0
    check-cast p0, Lnd6;

    .line 32
    .line 33
    check-cast p1, Lzc6;

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lsa1;

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_1
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    .line 55
    iget-object v0, p1, Lzc6;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Lyc6;->i(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x3

    .line 62
    const-string v7, "request_code"

    .line 63
    .line 64
    const-class v8, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    sget-object v5, Ldz5;->a:Ldz5;

    .line 69
    .line 70
    invoke-static {}, Ldz5;->g()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    sget p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 77
    .line 78
    new-instance p0, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {p0, p2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p0, v6}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_2
    invoke-static {v0}, Lyc6;->j(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    sget-object v5, Ldz5;->a:Ldz5;

    .line 102
    .line 103
    invoke-static {}, Ldz5;->m()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_3

    .line 108
    .line 109
    sget p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 110
    .line 111
    new-instance p0, Landroid/content/Intent;

    .line 112
    .line 113
    invoke-direct {p0, p2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-virtual {p0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p0, p1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-ne p2, v2, :cond_4

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Lsa1;

    .line 148
    .line 149
    if-nez p2, :cond_5

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_5
    iget-boolean v5, p1, Lzc6;->e:Z

    .line 154
    .line 155
    iget-boolean v7, p1, Lzc6;->q:Z

    .line 156
    .line 157
    invoke-static {v0}, Lyc6;->h(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_9

    .line 162
    .line 163
    iget-boolean v0, p1, Lzc6;->f:Z

    .line 164
    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    sget-object v0, Lmp6;->a:Lmp6;

    .line 168
    .line 169
    invoke-static {}, Lmp6;->f()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->O()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    if-eqz v7, :cond_7

    .line 181
    .line 182
    new-instance v0, Lgn3;

    .line 183
    .line 184
    invoke-direct {v0, v2, p0, p1, p2}, Lgn3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p2, v3, v0, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_7
    invoke-virtual {p1}, Lzc6;->c()Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_8

    .line 197
    .line 198
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 199
    .line 200
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_8

    .line 205
    .line 206
    sget p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 207
    .line 208
    invoke-static {p2}, Lrs9;->u(Lk28;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_8
    invoke-virtual {p2}, Lil0;->G()Lqo0;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0, p1}, Lqo0;->g(Lzc6;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_9
    invoke-static {v0}, Lyc6;->j(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_c

    .line 227
    .line 228
    if-eqz v5, :cond_b

    .line 229
    .line 230
    if-eqz v7, :cond_a

    .line 231
    .line 232
    new-instance p1, Lyi5;

    .line 233
    .line 234
    const/4 v0, 0x4

    .line 235
    invoke-direct {p1, p0, v0}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-static {p2, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_a
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    sget-object p1, Lzn4;->a:Lzn4;

    .line 248
    .line 249
    new-instance p1, Lmj;

    .line 250
    .line 251
    invoke-direct {p1, p0, v3, v6}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 252
    .line 253
    .line 254
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_b
    const-class p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 259
    .line 260
    invoke-static {p2, p0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_c
    invoke-static {v0}, Lyc6;->i(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_f

    .line 269
    .line 270
    if-eqz v5, :cond_e

    .line 271
    .line 272
    const/4 p1, 0x5

    .line 273
    if-eqz v7, :cond_d

    .line 274
    .line 275
    new-instance v0, Lto5;

    .line 276
    .line 277
    invoke-direct {v0, p0, p1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 278
    .line 279
    .line 280
    invoke-static {p2, v3, v0, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_d
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    new-instance p2, Lyi5;

    .line 289
    .line 290
    invoke-direct {p2, p0, p1}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 291
    .line 292
    .line 293
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 294
    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_e
    const-class p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 298
    .line 299
    invoke-static {p2, p0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_f
    if-eqz v0, :cond_13

    .line 304
    .line 305
    const-string p2, "FOLDERS"

    .line 306
    .line 307
    invoke-static {v0, p2, v1}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-ne p2, v2, :cond_13

    .line 312
    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Lsa1;

    .line 318
    .line 319
    if-nez p2, :cond_10

    .line 320
    .line 321
    goto :goto_0

    .line 322
    :cond_10
    if-eqz v5, :cond_11

    .line 323
    .line 324
    if-eqz v7, :cond_11

    .line 325
    .line 326
    move v1, v2

    .line 327
    :cond_11
    new-instance v0, Lkg;

    .line 328
    .line 329
    const/16 v5, 0xd

    .line 330
    .line 331
    invoke-direct {v0, v5, p1, p0}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    if-eqz v1, :cond_12

    .line 335
    .line 336
    new-instance p1, Ll30;

    .line 337
    .line 338
    const/16 v1, 0xb

    .line 339
    .line 340
    invoke-direct {p1, v1, p0, v0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-static {p2, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_0

    .line 347
    :cond_12
    invoke-virtual {v0}, Lkg;->invoke()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    :goto_0
    move-object v3, v4

    .line 351
    goto :goto_1

    .line 352
    :cond_13
    iget-object p0, p0, Lrl0;->a:Ljava/lang/String;

    .line 353
    .line 354
    const-string p1, ".performQuickAction not handling "

    .line 355
    .line 356
    invoke-static {p0, p1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_1
    return-object v3

    .line 364
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 365
    .line 366
    check-cast p1, Lvd5;

    .line 367
    .line 368
    check-cast p2, Ljava/lang/Integer;

    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    sget p2, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, p1}, Lje5;->V(Lvd5;)V

    .line 379
    .line 380
    .line 381
    return-object v4

    .line 382
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 383
    .line 384
    check-cast p1, Ls54;

    .line 385
    .line 386
    check-cast p2, Ljava/lang/Integer;

    .line 387
    .line 388
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    sget-object p2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Z(Ls54;)V

    .line 397
    .line 398
    .line 399
    return-object v4

    .line 400
    :pswitch_3
    check-cast p0, Lws;

    .line 401
    .line 402
    iget-object v0, p0, Lws;->l:Lil0;

    .line 403
    .line 404
    check-cast p1, Loy;

    .line 405
    .line 406
    check-cast p2, Lji;

    .line 407
    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    sget-object v5, Lts;->a:[I

    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    aget p1, v5, p1

    .line 421
    .line 422
    packed-switch p1, :pswitch_data_1

    .line 423
    .line 424
    .line 425
    invoke-static {}, Lq;->j()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :pswitch_4
    new-instance p0, Lnh;

    .line 431
    .line 432
    invoke-direct {p0, v0}, Lnh;-><init>(Lzm;)V

    .line 433
    .line 434
    .line 435
    new-instance p1, Lxh;

    .line 436
    .line 437
    invoke-direct {p1, p2}, Lxh;-><init>(Lji;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p1}, Lnh;->n(Lk55;)V

    .line 441
    .line 442
    .line 443
    goto :goto_2

    .line 444
    :pswitch_5
    sget-object p0, Lg00;->a:Lg00;

    .line 445
    .line 446
    invoke-static {v0, p2}, Lg00;->D(Lzm;Lji;)V

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :pswitch_6
    new-instance p0, Lii;

    .line 451
    .line 452
    invoke-direct {p0, p2, v2}, Lii;-><init>(Lji;I)V

    .line 453
    .line 454
    .line 455
    const p1, 0x7f1300ff

    .line 456
    .line 457
    .line 458
    invoke-static {v0, p1, p0}, Lorg/swiftapps/swiftbackup/common/Const;->J(Lio1;ILbt3;)V

    .line 459
    .line 460
    .line 461
    goto :goto_2

    .line 462
    :pswitch_7
    invoke-virtual {p2}, Lji;->getPackageName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    invoke-static {v0, p0}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_2

    .line 470
    :pswitch_8
    sget-object p0, Lzn4;->a:Lzn4;

    .line 471
    .line 472
    new-instance p0, Lvs;

    .line 473
    .line 474
    invoke-direct {p0, p2, v3, v1}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 475
    .line 476
    .line 477
    invoke-static {v3, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :pswitch_9
    invoke-virtual {p2}, Lji;->getPackageName()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    new-instance p1, Landroid/content/Intent;

    .line 492
    .line 493
    const-string p2, "android.intent.action.DELETE"

    .line 494
    .line 495
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string p2, "package:"

    .line 499
    .line 500
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 509
    .line 510
    .line 511
    new-instance p0, Ld11;

    .line 512
    .line 513
    const/16 p2, 0xe

    .line 514
    .line 515
    invoke-direct {p0, p2, v0, p1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    const/16 p1, 0xa

    .line 519
    .line 520
    const-string p2, "Util"

    .line 521
    .line 522
    invoke-static {p2, v3, v2, p0, p1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    goto :goto_2

    .line 526
    :pswitch_a
    sget-object p1, Lzn4;->a:Lzn4;

    .line 527
    .line 528
    new-instance p1, Lus;

    .line 529
    .line 530
    invoke-direct {p1, p2, p0, v3, v1}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 531
    .line 532
    .line 533
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 534
    .line 535
    .line 536
    goto :goto_2

    .line 537
    :pswitch_b
    sget-object p0, Lg00;->a:Lg00;

    .line 538
    .line 539
    invoke-static {v0, p2}, Lg00;->B(Lzm;Lji;)V

    .line 540
    .line 541
    .line 542
    :goto_2
    move-object v3, v4

    .line 543
    :goto_3
    return-object v3

    .line 544
    nop

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
