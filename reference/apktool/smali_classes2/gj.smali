.class public final synthetic Lgj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lgj;->a:I

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
    iget-object p0, p0, Lgj;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 14
    .line 15
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lni7;->a(Landroid/view/LayoutInflater;)Lni7;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 27
    .line 28
    new-instance v0, Lom;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lom;-><init>(Leo6;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 35
    .line 36
    sget v0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->P:I

    .line 37
    .line 38
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->L:Lgv7;

    .line 39
    .line 40
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Le05;

    .line 45
    .line 46
    iget-object p0, p0, Le05;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 50
    .line 51
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Lrr4;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 61
    .line 62
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->l(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 72
    .line 73
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 74
    .line 75
    new-instance v0, Lwq4;

    .line 76
    .line 77
    invoke-virtual {p0}, Lk28;->v()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v2, v2, Lyq4;->k:Lvq;

    .line 86
    .line 87
    new-instance v3, Lu14;

    .line 88
    .line 89
    const/4 v4, 0x2

    .line 90
    invoke-direct {v3, p0, v4}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3}, Lwq4;-><init>(ZLvq;Lu14;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :pswitch_5
    check-cast p0, Lwq4;

    .line 98
    .line 99
    iget-object p0, p0, Lwq4;->a:Lu14;

    .line 100
    .line 101
    invoke-virtual {p0}, Lu14;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 106
    .line 107
    sget-object v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 108
    .line 109
    const v0, 0x7f01002c

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_7
    check-cast p0, Lji;

    .line 118
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v2, Lq63;

    .line 125
    .line 126
    invoke-virtual {p0}, Lji;->getDataDir()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "databases"

    .line 131
    .line 132
    const/4 v6, 0x4

    .line 133
    invoke-direct {v2, v4, v5, v6}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lq63;->j()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_0

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    move-object v2, v3

    .line 144
    :goto_0
    if-eqz v2, :cond_3

    .line 145
    .line 146
    invoke-virtual {v2}, Lq63;->B()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    new-instance v4, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_2

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    move-object v7, v5

    .line 172
    check-cast v7, Lq63;

    .line 173
    .line 174
    invoke-virtual {v7}, Lq63;->p()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const-string v8, "com.google.android.datatransport"

    .line 179
    .line 180
    invoke-static {v7, v8, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_1

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    .line 192
    .line 193
    :cond_3
    new-instance v2, Lq63;

    .line 194
    .line 195
    invoke-virtual {p0}, Lji;->getDataDir()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-string v5, "shared_prefs"

    .line 200
    .line 201
    invoke-direct {v2, v4, v5, v6}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Lq63;->j()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_4

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_4
    move-object v2, v3

    .line 212
    :goto_2
    const-string v4, "com.google.android.gms"

    .line 213
    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    invoke-virtual {v2}, Lq63;->B()Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-eqz v2, :cond_8

    .line 221
    .line 222
    new-instance v5, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eqz v7, :cond_7

    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    move-object v8, v7

    .line 242
    check-cast v8, Lq63;

    .line 243
    .line 244
    invoke-virtual {v8}, Lq63;->p()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-static {v9, v4, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-nez v9, :cond_6

    .line 253
    .line 254
    invoke-virtual {v8}, Lq63;->p()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    const-string v9, "FirebaseAppHeartBeat.xml"

    .line 259
    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_5

    .line 265
    .line 266
    :cond_6
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    .line 272
    .line 273
    :cond_8
    new-instance v2, Lq63;

    .line 274
    .line 275
    invoke-virtual {p0}, Lji;->getDataDir()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    const-string v5, "no_backup"

    .line 280
    .line 281
    invoke-direct {v2, p0, v5, v6}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Lq63;->j()Z

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    if-eqz p0, :cond_9

    .line 289
    .line 290
    move-object v3, v2

    .line 291
    :cond_9
    if-eqz v3, :cond_c

    .line 292
    .line 293
    invoke-virtual {v3}, Lq63;->B()Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    if-eqz p0, :cond_c

    .line 298
    .line 299
    new-instance v2, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_b

    .line 313
    .line 314
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    move-object v5, v3

    .line 319
    check-cast v5, Lq63;

    .line 320
    .line 321
    invoke-virtual {v5}, Lq63;->p()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v5, v4, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_a

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    .line 337
    .line 338
    :cond_c
    return-object v0

    .line 339
    :pswitch_8
    check-cast p0, Lih6;

    .line 340
    .line 341
    iput-boolean v2, p0, Lih6;->a:Z

    .line 342
    .line 343
    return-object v4

    .line 344
    :pswitch_9
    check-cast p0, Lkp3;

    .line 345
    .line 346
    invoke-virtual {p0}, Lkp3;->m()Lnp3;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {p0, v2, v2}, Lnp3;->j(ZZ)V

    .line 351
    .line 352
    .line 353
    return-object v4

    .line 354
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 355
    .line 356
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 357
    .line 358
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    iget-object p0, p0, Lkm3;->k:Lcom/google/android/material/textfield/TextInputLayout;

    .line 363
    .line 364
    return-object p0

    .line 365
    :pswitch_b
    check-cast p0, Ljava/io/File;

    .line 366
    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    :goto_5
    if-eqz p0, :cond_d

    .line 375
    .line 376
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_d

    .line 381
    .line 382
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    goto :goto_5

    .line 387
    :cond_d
    return-object p0

    .line 388
    :pswitch_c
    check-cast p0, Lmk2;

    .line 389
    .line 390
    sget-object v0, Lg00;->a:Lg00;

    .line 391
    .line 392
    iget-object v0, p0, Lmk2;->e:Lji;

    .line 393
    .line 394
    const-string v1, "app"

    .line 395
    .line 396
    if-eqz v0, :cond_10

    .line 397
    .line 398
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget-object v2, p0, Lmk2;->e:Lji;

    .line 403
    .line 404
    if-eqz v2, :cond_f

    .line 405
    .line 406
    invoke-virtual {v2}, Lji;->getName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    iget-object p0, p0, Lmk2;->e:Lji;

    .line 411
    .line 412
    if-eqz p0, :cond_e

    .line 413
    .line 414
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    invoke-static {v0, v2, p0}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    .line 420
    .line 421
    return-object v4

    .line 422
    :cond_e
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw v3

    .line 426
    :cond_f
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v3

    .line 430
    :cond_10
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v3

    .line 434
    :pswitch_d
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 435
    .line 436
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$a_6C8FvoS0-mJrJ_QxqiYGSfhnQ(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lbe8;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    return-object p0

    .line 441
    :pswitch_e
    check-cast p0, Leb2;

    .line 442
    .line 443
    sget-object v0, Lsf1;->g:Lsf1;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    const-class v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 449
    .line 450
    invoke-virtual {p0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 455
    .line 456
    if-eqz p0, :cond_11

    .line 457
    .line 458
    iget-object v1, v0, Ldv;->a:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v5, "onChildRemoved = "

    .line 467
    .line 468
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, p0}, Ldv;->n(Ljl0;)V

    .line 482
    .line 483
    .line 484
    :cond_11
    return-object v4

    .line 485
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 486
    .line 487
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 488
    .line 489
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    const v0, 0x7f0d004f

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    const v0, 0x7f0a00a9

    .line 501
    .line 502
    .line 503
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    if-eqz v1, :cond_13

    .line 508
    .line 509
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const v1, 0x7f0a03ee

    .line 514
    .line 515
    .line 516
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 521
    .line 522
    if-eqz v2, :cond_12

    .line 523
    .line 524
    new-instance v3, Lxb1;

    .line 525
    .line 526
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 527
    .line 528
    invoke-direct {v3, p0, v0, v2}, Lxb1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_12
    move v0, v1

    .line 533
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    const-string v0, "Missing required view with ID: "

    .line 542
    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :goto_6
    return-object v3

    .line 551
    :pswitch_10
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 552
    .line 553
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 554
    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    invoke-static {p0}, Lli7;->a(Landroid/view/LayoutInflater;)Lli7;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    return-object p0

    .line 564
    :pswitch_11
    check-cast p0, Lqk0;

    .line 565
    .line 566
    iget-object p0, p0, Lqk0;->h:Lji;

    .line 567
    .line 568
    invoke-virtual {p0}, Lji;->hasMedia()Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_14

    .line 573
    .line 574
    invoke-virtual {p0}, Lji;->getSizeInfo()Lqx;

    .line 575
    .line 576
    .line 577
    move-result-object p0

    .line 578
    if-eqz p0, :cond_14

    .line 579
    .line 580
    invoke-virtual {p0}, Lqx;->getHasMedia()Z

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    if-ne p0, v2, :cond_14

    .line 585
    .line 586
    move v1, v2

    .line 587
    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    return-object p0

    .line 592
    :pswitch_12
    check-cast p0, Lpi0;

    .line 593
    .line 594
    invoke-virtual {p0}, Lpi0;->invoke()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    return-object v4

    .line 598
    :pswitch_13
    check-cast p0, Lq63;

    .line 599
    .line 600
    invoke-virtual {p0}, Lq63;->h()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-nez v0, :cond_15

    .line 605
    .line 606
    sget-boolean v0, Lq63;->d:Z

    .line 607
    .line 608
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    const-string v0, "Unable to fully delete trash entry at "

    .line 613
    .line 614
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    sget-object v0, Lcy0;->b:Lrt3;

    .line 619
    .line 620
    const-string v1, "AtomicFileDelete"

    .line 621
    .line 622
    invoke-interface {v0, v1, p0, v3}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    :cond_15
    return-object v4

    .line 626
    :pswitch_14
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 627
    .line 628
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->r0:Lkm5;

    .line 629
    .line 630
    sget-object v0, Lsy7;->f:Lsy7;

    .line 631
    .line 632
    invoke-virtual {p0, v0}, Lkm5;->a(Lty7;)V

    .line 633
    .line 634
    .line 635
    return-object v4

    .line 636
    :pswitch_15
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 637
    .line 638
    const-string v0, "compression_level_app_data"

    .line 639
    .line 640
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    return-object p0

    .line 648
    :pswitch_16
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 649
    .line 650
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 651
    .line 652
    new-instance v0, Landroid/content/Intent;

    .line 653
    .line 654
    const-class v1, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;

    .line 655
    .line 656
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 660
    .line 661
    .line 662
    return-object v4

    .line 663
    :pswitch_17
    check-cast p0, Ldm;

    .line 664
    .line 665
    iget-object p0, p0, Ldm;->b:Ljava/util/List;

    .line 666
    .line 667
    if-eqz p0, :cond_19

    .line 668
    .line 669
    new-instance v0, Ljava/util/ArrayList;

    .line 670
    .line 671
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .line 673
    .line 674
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    :cond_16
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_18

    .line 683
    .line 684
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Ljava/lang/String;

    .line 689
    .line 690
    new-instance v4, Lq63;

    .line 691
    .line 692
    invoke-direct {v4, v1, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v4}, Lq63;->j()Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-eqz v1, :cond_17

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :cond_17
    move-object v4, v3

    .line 703
    :goto_8
    if-eqz v4, :cond_16

    .line 704
    .line 705
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    goto :goto_7

    .line 709
    :cond_18
    move-object v3, v0

    .line 710
    :cond_19
    if-nez v3, :cond_1a

    .line 711
    .line 712
    sget-object v3, Lov2;->a:Lov2;

    .line 713
    .line 714
    :cond_1a
    return-object v3

    .line 715
    :pswitch_18
    check-cast p0, Lem;

    .line 716
    .line 717
    invoke-virtual {p0}, Lem;->b()J

    .line 718
    .line 719
    .line 720
    move-result-wide v0

    .line 721
    invoke-virtual {p0}, Lem;->a()Ljava/util/List;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 726
    .line 727
    .line 728
    move-result p0

    .line 729
    int-to-long v2, p0

    .line 730
    mul-long/2addr v0, v2

    .line 731
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 732
    .line 733
    .line 734
    move-result-object p0

    .line 735
    return-object p0

    .line 736
    :pswitch_19
    check-cast p0, Lgl;

    .line 737
    .line 738
    iget-object p0, p0, Lgl;->k:Lgv7;

    .line 739
    .line 740
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object p0

    .line 744
    check-cast p0, Ljava/lang/Boolean;

    .line 745
    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    return-object p0

    .line 750
    :pswitch_1a
    check-cast p0, Ljl;

    .line 751
    .line 752
    new-instance v0, Lil;

    .line 753
    .line 754
    iget-object v1, p0, Ljl;->a:Lc40;

    .line 755
    .line 756
    iget-object p0, p0, Ljl;->b:Lky7;

    .line 757
    .line 758
    invoke-direct {v0, v1, p0}, Lil;-><init>(Lc40;Lky7;)V

    .line 759
    .line 760
    .line 761
    return-object v0

    .line 762
    :pswitch_1b
    check-cast p0, Lhk;

    .line 763
    .line 764
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 765
    .line 766
    iget-object v0, p0, Lhk;->b:Ljava/lang/String;

    .line 767
    .line 768
    iget-boolean v1, p0, Lhk;->c:Z

    .line 769
    .line 770
    invoke-static {v0, v1}, Lfk;->c(Ljava/lang/String;Z)Lq63;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    iget-object p0, p0, Lhk;->a:Ljava/lang/String;

    .line 775
    .line 776
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    return-object p0

    .line 781
    :pswitch_1c
    check-cast p0, Lrj;

    .line 782
    .line 783
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v0, Lho;

    .line 786
    .line 787
    if-eqz v0, :cond_1b

    .line 788
    .line 789
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-ne v0, v2, :cond_1b

    .line 794
    .line 795
    invoke-virtual {p0, v2}, Lrj;->K(Z)V

    .line 796
    .line 797
    .line 798
    :cond_1b
    return-object v4

    .line 799
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
