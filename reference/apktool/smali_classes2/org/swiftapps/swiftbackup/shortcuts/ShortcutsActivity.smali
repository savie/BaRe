.class public final Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic P:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v9, Lc7;

    .line 30
    .line 31
    const/16 v6, 0x1b

    .line 32
    .line 33
    invoke-direct {v9, v1, v6}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    const/16 v10, 0x1f

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v1, v2

    .line 47
    :goto_0
    const-string v5, "intent extras="

    .line 48
    .line 49
    invoke-static {v5, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v7, 0x4

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/16 v3, 0x12e

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lhy7;->a:Lhy7;

    .line 69
    .line 70
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 71
    .line 72
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 73
    .line 74
    invoke-virtual {v1}, Lgz7;->isRunning()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/4 v3, 0x0

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    new-instance v1, Lhv1;

    .line 82
    .line 83
    const v4, 0x7f140160

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Ls35;

    .line 90
    .line 91
    invoke-direct {v5, v0, v4, v1, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v5, Lva;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lra;

    .line 97
    .line 98
    const v2, 0x7f130550

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v1, Lra;->d:Ljava/lang/CharSequence;

    .line 106
    .line 107
    iput-boolean v3, v1, Lra;->m:Z

    .line 108
    .line 109
    const v2, 0x7f13056a

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, v1, Lra;->f:Ljava/lang/CharSequence;

    .line 117
    .line 118
    new-instance v1, Lf21;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-direct {v1, v0, v2}, Lf21;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    const v0, 0x7f1303e6

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_2
    sget-object v1, Ldz5;->a:Ldz5;

    .line 135
    .line 136
    invoke-static {}, Ldz5;->n()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Ldz5;->q(Lsa1;Ljava/util/Set;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 151
    .line 152
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_4

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string v5, "extra_id"

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-eqz v4, :cond_a

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    const v6, -0x69db2755

    .line 179
    .line 180
    .line 181
    if-eq v5, v6, :cond_9

    .line 182
    .line 183
    const v6, 0x38b0e571

    .line 184
    .line 185
    .line 186
    if-eq v5, v6, :cond_5

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    const-string v5, "configs"

    .line 190
    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-nez v4, :cond_6

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    sget-object v2, Lmp6;->a:Lmp6;

    .line 199
    .line 200
    invoke-static {}, Lmp6;->f()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_7

    .line 205
    .line 206
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_7
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_8

    .line 215
    .line 216
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    const-class v1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 221
    .line 222
    invoke-static {v0, v1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .line 224
    .line 225
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_9
    const-string v1, "quick_actions"

    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    new-instance v1, Landroid/content/Intent;

    .line 238
    .line 239
    const-class v2, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;

    .line 240
    .line 241
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :cond_a
    :goto_2
    invoke-static {}, Ldz5;->n()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_b

    .line 256
    .line 257
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 258
    .line 259
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const/4 v8, 0x4

    .line 264
    const/4 v9, 0x0

    .line 265
    const-string v6, "Storage permission not available, finishing activity"

    .line 266
    .line 267
    const/4 v7, 0x0

    .line 268
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lil0;->H()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_b
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 279
    .line 280
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    const/4 v14, 0x4

    .line 285
    const/4 v15, 0x0

    .line 286
    const-string v12, "Starting shortcut task"

    .line 287
    .line 288
    const/4 v13, 0x0

    .line 289
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    new-instance v1, Llh6;

    .line 293
    .line 294
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 295
    .line 296
    .line 297
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 298
    .line 299
    iput-object v4, v1, Llh6;->a:Ljava/lang/Object;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const-string v5, "cmd"

    .line 306
    .line 307
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    if-eqz v4, :cond_c

    .line 312
    .line 313
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v4, :cond_c

    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-lez v5, :cond_c

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_c
    move-object v4, v2

    .line 331
    :goto_3
    if-eqz v4, :cond_1c

    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-nez v5, :cond_d

    .line 338
    .line 339
    goto/16 :goto_a

    .line 340
    .line 341
    :cond_d
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    const-string v5, "cmd="

    .line 346
    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    const/4 v14, 0x4

    .line 352
    const/4 v15, 0x0

    .line 353
    const/4 v13, 0x0

    .line 354
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    sget-object v5, Lov2;->a:Lov2;

    .line 366
    .line 367
    const-string v6, "-s "

    .line 368
    .line 369
    invoke-static {v4, v6, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    const-string v7, "s "

    .line 374
    .line 375
    if-nez v6, :cond_e

    .line 376
    .line 377
    invoke-static {v4, v7, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_18

    .line 382
    .line 383
    :cond_e
    invoke-static {v4, v7, v4}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    const/4 v6, 0x1

    .line 396
    new-array v7, v6, [C

    .line 397
    .line 398
    const/16 v8, 0x20

    .line 399
    .line 400
    aput-char v8, v7, v3

    .line 401
    .line 402
    const/4 v3, 0x6

    .line 403
    invoke-static {v4, v7, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-eqz v7, :cond_11

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    check-cast v7, Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v7}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-lez v8, :cond_10

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_10
    move-object v7, v2

    .line 444
    :goto_5
    if-eqz v7, :cond_f

    .line 445
    .line 446
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_11
    invoke-static {v4}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    if-eqz v4, :cond_12

    .line 459
    .line 460
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 461
    .line 462
    const/4 v11, 0x4

    .line 463
    const/4 v12, 0x0

    .line 464
    const-string v8, "ScheduleCommandHandler"

    .line 465
    .line 466
    const-string v9, "No ids found!"

    .line 467
    .line 468
    const/4 v10, 0x0

    .line 469
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_8

    .line 473
    .line 474
    :cond_12
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 475
    .line 476
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v7, "Searching "

    .line 483
    .line 484
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v4, " ids="

    .line 491
    .line 492
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    const/16 v17, 0x4

    .line 503
    .line 504
    const/16 v18, 0x0

    .line 505
    .line 506
    const-string v14, "ScheduleCommandHandler"

    .line 507
    .line 508
    const/16 v16, 0x0

    .line 509
    .line 510
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    sget-object v5, Lc47;->a:Lc47;

    .line 514
    .line 515
    invoke-virtual {v5}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    new-instance v7, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    :cond_13
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v8

    .line 536
    if-eqz v8, :cond_16

    .line 537
    .line 538
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    move-object v9, v8

    .line 543
    check-cast v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 544
    .line 545
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    if-eqz v10, :cond_14

    .line 550
    .line 551
    goto :goto_6

    .line 552
    :cond_14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    :cond_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 557
    .line 558
    .line 559
    move-result v11

    .line 560
    if-eqz v11, :cond_13

    .line 561
    .line 562
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    check-cast v11, Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v12

    .line 572
    invoke-static {v11, v12, v6}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    if-eqz v11, :cond_15

    .line 577
    .line 578
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    goto :goto_6

    .line 582
    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    new-instance v11, Lnu;

    .line 587
    .line 588
    const/16 v6, 0xa

    .line 589
    .line 590
    invoke-direct {v11, v6}, Lnu;-><init>(I)V

    .line 591
    .line 592
    .line 593
    const/16 v12, 0x1f

    .line 594
    .line 595
    const/4 v8, 0x0

    .line 596
    const/4 v9, 0x0

    .line 597
    const/4 v10, 0x0

    .line 598
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    const-string v8, "Found "

    .line 603
    .line 604
    invoke-static {v5, v8, v4, v6}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v11

    .line 608
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    if-ge v3, v4, :cond_17

    .line 617
    .line 618
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 619
    .line 620
    const/4 v13, 0x4

    .line 621
    const/4 v14, 0x0

    .line 622
    const-string v10, "ScheduleCommandHandler"

    .line 623
    .line 624
    const/4 v12, 0x0

    .line 625
    invoke-static/range {v9 .. v14}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    goto :goto_7

    .line 629
    :cond_17
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 630
    .line 631
    const/4 v13, 0x4

    .line 632
    const/4 v14, 0x0

    .line 633
    const-string v10, "ScheduleCommandHandler"

    .line 634
    .line 635
    const/4 v12, 0x0

    .line 636
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    :goto_7
    move-object v5, v7

    .line 640
    :cond_18
    :goto_8
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-nez v3, :cond_19

    .line 645
    .line 646
    move-object v2, v5

    .line 647
    :cond_19
    if-eqz v2, :cond_1b

    .line 648
    .line 649
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-eqz v3, :cond_1a

    .line 654
    .line 655
    goto :goto_9

    .line 656
    :cond_1a
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    .line 657
    .line 658
    invoke-direct {v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;-><init>(Ljava/util/List;)V

    .line 659
    .line 660
    .line 661
    iput-object v3, v1, Llh6;->a:Ljava/lang/Object;

    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_1b
    :goto_9
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 665
    .line 666
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    const/4 v8, 0x4

    .line 671
    const/4 v9, 0x0

    .line 672
    const-string v6, "No schedules found! Exiting."

    .line 673
    .line 674
    const/4 v7, 0x0

    .line 675
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :cond_1c
    :goto_a
    const v2, 0x7f13042d

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v2}, Lil0;->M(I)V

    .line 686
    .line 687
    .line 688
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 689
    .line 690
    new-instance v2, Leh2;

    .line 691
    .line 692
    const/4 v3, 0x5

    .line 693
    invoke-direct {v2, v3, v0, v1}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    invoke-static {v2}, Lqy5;->a(Lmt3;)V

    .line 697
    .line 698
    .line 699
    return-void
.end method
