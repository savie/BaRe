.class public final synthetic Lc7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc7;->a:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "editor"

    .line 7
    .line 8
    const v4, 0x7f1303e6

    .line 9
    .line 10
    .line 11
    const v5, 0x7f140160

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    sget-object v9, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    iget-object v0, v0, Lc7;->b:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/os/Bundle;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    sget v2, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;->P:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "="

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :pswitch_0
    check-cast v0, Llh6;

    .line 58
    .line 59
    move-object/from16 v1, p1

    .line 60
    .line 61
    check-cast v1, Lqy6;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-wide v2, v1, Lqy6;->a:J

    .line 67
    .line 68
    iget-wide v4, v1, Lqy6;->b:J

    .line 69
    .line 70
    iget-wide v6, v1, Lqy6;->c:J

    .line 71
    .line 72
    iget-wide v10, v1, Lqy6;->d:J

    .line 73
    .line 74
    iget-wide v12, v1, Lqy6;->e:J

    .line 75
    .line 76
    iget-wide v14, v1, Lqy6;->f:J

    .line 77
    .line 78
    move-object/from16 v16, v9

    .line 79
    .line 80
    iget-wide v8, v1, Lqy6;->g:J

    .line 81
    .line 82
    move-wide/from16 p0, v8

    .line 83
    .line 84
    iget-wide v8, v1, Lqy6;->h:J

    .line 85
    .line 86
    move-wide/from16 v17, v8

    .line 87
    .line 88
    iget-wide v8, v1, Lqy6;->i:J

    .line 89
    .line 90
    move-object/from16 v19, v0

    .line 91
    .line 92
    iget-wide v0, v1, Lqy6;->j:J

    .line 93
    .line 94
    move-wide/from16 v20, v0

    .line 95
    .line 96
    const-string v0, "native_file_size="

    .line 97
    .line 98
    const-string v1, " native_index_offset="

    .line 99
    .line 100
    invoke-static {v0, v1, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " native_index_size="

    .line 108
    .line 109
    const-string v2, " native_header_ms="

    .line 110
    .line 111
    invoke-static {v0, v1, v6, v7, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " native_payload_ms="

    .line 118
    .line 119
    const-string v2, " native_producer_ms="

    .line 120
    .line 121
    invoke-static {v0, v1, v12, v13, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, " native_encryption_ms="

    .line 128
    .line 129
    const-string v2, " native_index_footer_ms="

    .line 130
    .line 131
    move-wide/from16 v3, p0

    .line 132
    .line 133
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    move-wide/from16 v1, v17

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, " native_total_ms="

    .line 142
    .line 143
    const-string v2, " crypto_setup_ms="

    .line 144
    .line 145
    invoke-static {v0, v1, v8, v9, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move-wide/from16 v1, v20

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    move-object/from16 v1, v19

    .line 158
    .line 159
    iput-object v0, v1, Llh6;->a:Ljava/lang/Object;

    .line 160
    .line 161
    return-object v16

    .line 162
    :pswitch_1
    check-cast v0, Ld26;

    .line 163
    .line 164
    move-object/from16 v1, p1

    .line 165
    .line 166
    check-cast v1, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v3, v0, Ld26;->e:[Ljava/lang/String;

    .line 178
    .line 179
    aget-object v3, v3, v1

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, ": "

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ld26;->i(I)Lp77;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Lp77;->a()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :pswitch_2
    move-object/from16 v16, v9

    .line 206
    .line 207
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    check-cast v1, Ljava/lang/Boolean;

    .line 212
    .line 213
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->L:I

    .line 214
    .line 215
    new-instance v1, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->withActivity(Landroid/app/Activity;)V

    .line 221
    .line 222
    .line 223
    sget-object v2, Led1;->a:Lgv7;

    .line 224
    .line 225
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, [Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v2}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->withScopes(Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    new-instance v3, Lut5;

    .line 243
    .line 244
    invoke-direct {v3, v2}, Lut5;-><init>(Lvt5;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->withCallback(Lut5;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v0, v0, Lvt5;->e:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 255
    .line 256
    if-eqz v0, :cond_0

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->build()Lcom/microsoft/identity/client/SignInParameters;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->signIn(Lcom/microsoft/identity/client/SignInParameters;)V

    .line 263
    .line 264
    .line 265
    return-object v16

    .line 266
    :cond_0
    const-string v0, "clientApplication"

    .line 267
    .line 268
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v6

    .line 272
    :pswitch_3
    move-object/from16 v16, v9

    .line 273
    .line 274
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;

    .line 275
    .line 276
    move-object/from16 v1, p1

    .line 277
    .line 278
    check-cast v1, Ljava/lang/String;

    .line 279
    .line 280
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->M:I

    .line 281
    .line 282
    new-instance v2, Lhv1;

    .line 283
    .line 284
    invoke-direct {v2, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 285
    .line 286
    .line 287
    new-instance v3, Ls35;

    .line 288
    .line 289
    invoke-direct {v3, v0, v5, v2, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v3, Lva;->b:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v2, Lra;

    .line 295
    .line 296
    const v5, 0x7f13007f

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    iput-object v5, v2, Lra;->d:Ljava/lang/CharSequence;

    .line 304
    .line 305
    iput-object v1, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 306
    .line 307
    invoke-virtual {v3, v4, v6}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lhn5;

    .line 311
    .line 312
    invoke-direct {v1, v0}, Lhn5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;)V

    .line 313
    .line 314
    .line 315
    iput-object v1, v2, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 316
    .line 317
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 318
    .line 319
    .line 320
    return-object v16

    .line 321
    :pswitch_4
    move-object/from16 v16, v9

    .line 322
    .line 323
    check-cast v0, Lcf5;

    .line 324
    .line 325
    move-object/from16 v1, p1

    .line 326
    .line 327
    check-cast v1, Lxp1;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Lxp1;->getLevel()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 337
    .line 338
    if-eqz v2, :cond_1

    .line 339
    .line 340
    const-string v3, "compression_level_msgs"

    .line 341
    .line 342
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lcf5;->q()V

    .line 350
    .line 351
    .line 352
    return-object v16

    .line 353
    :cond_1
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v6

    .line 357
    :pswitch_5
    move-object/from16 v16, v9

    .line 358
    .line 359
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 360
    .line 361
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Lqv1$c;

    .line 364
    .line 365
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->h:Lgv7;

    .line 366
    .line 367
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lwg5$c;

    .line 372
    .line 373
    invoke-virtual {v2}, Lwg5$c;->getCancelled()Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_2

    .line 378
    .line 379
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->j:Lex6;

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :cond_2
    return-object v16

    .line 385
    :pswitch_6
    move-object/from16 v16, v9

    .line 386
    .line 387
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 388
    .line 389
    move-object/from16 v1, p1

    .line 390
    .line 391
    check-cast v1, Lfm7;

    .line 392
    .line 393
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 394
    .line 395
    const-string v3, "mAdapter"

    .line 396
    .line 397
    if-eqz v2, :cond_4

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v1, v8}, Lgm7;->w(Lfm7;Z)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 406
    .line 407
    if-eqz v0, :cond_3

    .line 408
    .line 409
    invoke-virtual {v0}, Lbe5;->y()V

    .line 410
    .line 411
    .line 412
    return-object v16

    .line 413
    :cond_3
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v6

    .line 417
    :cond_4
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v6

    .line 421
    :pswitch_7
    move-object/from16 v16, v9

    .line 422
    .line 423
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 424
    .line 425
    move-object/from16 v1, p1

    .line 426
    .line 427
    check-cast v1, Lis4;

    .line 428
    .line 429
    sget v1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 430
    .line 431
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 432
    .line 433
    .line 434
    return-object v16

    .line 435
    :pswitch_8
    move-object/from16 v16, v9

    .line 436
    .line 437
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    check-cast v1, Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 448
    .line 449
    if-eqz v1, :cond_5

    .line 450
    .line 451
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 455
    .line 456
    .line 457
    goto :goto_0

    .line 458
    :cond_5
    invoke-virtual {v0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 462
    .line 463
    .line 464
    :goto_0
    return-object v16

    .line 465
    :pswitch_9
    move-object/from16 v16, v9

    .line 466
    .line 467
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 468
    .line 469
    move-object/from16 v1, p1

    .line 470
    .line 471
    check-cast v1, Lhn3;

    .line 472
    .line 473
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    iget-object v2, v1, Lhn3;->c:Lq63;

    .line 479
    .line 480
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O:Lhn3;

    .line 481
    .line 482
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    if-eqz v3, :cond_6

    .line 487
    .line 488
    iget-object v4, v1, Lhn3;->d:Lbn3;

    .line 489
    .line 490
    iget-object v4, v4, Lbn3;->k:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual {v3, v4}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    iget-object v4, v1, Lhn3;->i:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {v3, v4}, Lnc8;->d0(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    :cond_6
    iget-object v3, v1, Lhn3;->a:Lzn7;

    .line 501
    .line 502
    invoke-virtual {v3}, Lzn7;->n()Lq63;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    xor-int/2addr v3, v7

    .line 511
    invoke-virtual {v0, v3}, Lil0;->A(Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->P(Lhn3;)V

    .line 515
    .line 516
    .line 517
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->M:Len3;

    .line 518
    .line 519
    new-instance v9, Lfm7;

    .line 520
    .line 521
    iget-object v10, v1, Lhn3;->h:Ljava/util/List;

    .line 522
    .line 523
    const/4 v13, 0x0

    .line 524
    const/16 v14, 0x1e

    .line 525
    .line 526
    const/4 v11, 0x0

    .line 527
    const/4 v12, 0x0

    .line 528
    invoke-direct/range {v9 .. v14}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3, v9, v8}, Lgm7;->w(Lfm7;Z)V

    .line 532
    .line 533
    .line 534
    iget-object v3, v1, Lhn3;->h:Ljava/util/List;

    .line 535
    .line 536
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-nez v3, :cond_7

    .line 541
    .line 542
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    iget-object v3, v3, Lym3;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 547
    .line 548
    new-instance v4, Lz22;

    .line 549
    .line 550
    const/4 v5, 0x6

    .line 551
    invoke-direct {v4, v5, v0, v1}, Lz22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 555
    .line 556
    .line 557
    :cond_7
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N:Lan3;

    .line 558
    .line 559
    new-instance v9, Lfm7;

    .line 560
    .line 561
    iget-object v10, v1, Lhn3;->g:Ljava/util/List;

    .line 562
    .line 563
    const/4 v13, 0x0

    .line 564
    const/16 v14, 0x1e

    .line 565
    .line 566
    const/4 v11, 0x0

    .line 567
    const/4 v12, 0x0

    .line 568
    invoke-direct/range {v9 .. v14}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3, v9, v8}, Lgm7;->w(Lfm7;Z)V

    .line 572
    .line 573
    .line 574
    :try_start_0
    sget v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 575
    .line 576
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    iget-object v3, v3, Lin3;->m:Ljava/util/LinkedHashMap;

    .line 581
    .line 582
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    check-cast v2, Landroid/os/Parcelable;

    .line 591
    .line 592
    if-eqz v2, :cond_8

    .line 593
    .line 594
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    iget-object v3, v3, Lym3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 599
    .line 600
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    if-eqz v3, :cond_9

    .line 605
    .line 606
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/a;->r0(Landroid/os/Parcelable;)V

    .line 607
    .line 608
    .line 609
    goto :goto_1

    .line 610
    :cond_8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    iget-object v2, v2, Lym3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 615
    .line 616
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .line 618
    .line 619
    :catch_0
    :cond_9
    :goto_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    iget-object v2, v2, Lym3;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 624
    .line 625
    iget-boolean v1, v1, Lhn3;->e:Z

    .line 626
    .line 627
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    if-eqz v1, :cond_a

    .line 632
    .line 633
    const/16 v4, 0x64

    .line 634
    .line 635
    goto :goto_2

    .line 636
    :cond_a
    const/16 v4, 0x32

    .line 637
    .line 638
    :goto_2
    invoke-static {v3, v4}, Lsz8;->U(II)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(I)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getIconTint()Landroid/content/res/ColorStateList;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    if-eqz v1, :cond_b

    .line 650
    .line 651
    const/16 v4, 0xff

    .line 652
    .line 653
    goto :goto_3

    .line 654
    :cond_b
    const/16 v4, 0x80

    .line 655
    .line 656
    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 661
    .line 662
    .line 663
    if-eqz v1, :cond_c

    .line 664
    .line 665
    new-instance v1, Lhs;

    .line 666
    .line 667
    const/4 v3, 0x5

    .line 668
    invoke-direct {v1, v0, v3}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    .line 673
    .line 674
    goto :goto_4

    .line 675
    :cond_c
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    :goto_4
    return-object v16

    .line 679
    :pswitch_a
    move-object/from16 v16, v9

    .line 680
    .line 681
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 682
    .line 683
    move-object/from16 v1, p1

    .line 684
    .line 685
    check-cast v1, Ljava/lang/String;

    .line 686
    .line 687
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 688
    .line 689
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->b0:Lgv7;

    .line 690
    .line 691
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 696
    .line 697
    if-eqz v1, :cond_e

    .line 698
    .line 699
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    if-nez v3, :cond_d

    .line 704
    .line 705
    goto :goto_5

    .line 706
    :cond_d
    move v3, v8

    .line 707
    goto :goto_6

    .line 708
    :cond_e
    :goto_5
    move v3, v7

    .line 709
    :goto_6
    xor-int/2addr v3, v7

    .line 710
    iget-object v4, v2, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 711
    .line 712
    iget-boolean v4, v4, Lyb4;->q:Z

    .line 713
    .line 714
    if-eq v4, v3, :cond_f

    .line 715
    .line 716
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    iget-object v3, v3, Lkm3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 721
    .line 722
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    new-array v4, v8, [Ljava/lang/Class;

    .line 726
    .line 727
    invoke-virtual {v0, v3, v4}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 728
    .line 729
    .line 730
    :cond_f
    if-eqz v1, :cond_10

    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    if-nez v0, :cond_11

    .line 737
    .line 738
    :cond_10
    move v8, v7

    .line 739
    :cond_11
    xor-int/lit8 v0, v8, 0x1

    .line 740
    .line 741
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 748
    .line 749
    .line 750
    return-object v16

    .line 751
    :pswitch_b
    check-cast v0, Ln92;

    .line 752
    .line 753
    move-object/from16 v1, p1

    .line 754
    .line 755
    check-cast v1, Ljava/lang/Exception;

    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    instance-of v2, v1, Lkq2;

    .line 761
    .line 762
    if-eqz v2, :cond_12

    .line 763
    .line 764
    move-object v2, v1

    .line 765
    check-cast v2, Lkq2;

    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_12
    move-object v2, v6

    .line 769
    :goto_7
    if-nez v2, :cond_14

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    instance-of v2, v1, Lkq2;

    .line 776
    .line 777
    if-eqz v2, :cond_13

    .line 778
    .line 779
    move-object v2, v1

    .line 780
    check-cast v2, Lkq2;

    .line 781
    .line 782
    goto :goto_8

    .line 783
    :cond_13
    move-object v2, v6

    .line 784
    :cond_14
    :goto_8
    if-eqz v2, :cond_15

    .line 785
    .line 786
    iget-object v6, v2, Lkq2;->c:Ljava/lang/Long;

    .line 787
    .line 788
    :cond_15
    invoke-virtual {v0, v6}, Lag8;->h(Ljava/lang/Long;)Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    return-object v0

    .line 797
    :pswitch_c
    move-object/from16 v16, v9

    .line 798
    .line 799
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 800
    .line 801
    move-object/from16 v1, p1

    .line 802
    .line 803
    check-cast v1, Ljava/lang/String;

    .line 804
    .line 805
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 806
    .line 807
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 808
    .line 809
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v8

    .line 813
    const-string v2, "Showing folder creation failed dialog (folder name = "

    .line 814
    .line 815
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v9

    .line 819
    const/4 v11, 0x4

    .line 820
    const/4 v12, 0x0

    .line 821
    const/4 v10, 0x0

    .line 822
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    new-instance v1, Lhv1;

    .line 826
    .line 827
    invoke-direct {v1, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 828
    .line 829
    .line 830
    new-instance v2, Ls35;

    .line 831
    .line 832
    invoke-direct {v2, v0, v5, v1, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 833
    .line 834
    .line 835
    const v0, 0x7f130167

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2, v0}, Lv75;->v(I)V

    .line 839
    .line 840
    .line 841
    const v0, 0x7f130166

    .line 842
    .line 843
    .line 844
    invoke-virtual {v2, v0}, Lv75;->n(I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v4, v6}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 851
    .line 852
    .line 853
    return-object v16

    .line 854
    :pswitch_d
    move-object/from16 v16, v9

    .line 855
    .line 856
    check-cast v0, Llr1;

    .line 857
    .line 858
    move-object/from16 v1, p1

    .line 859
    .line 860
    check-cast v1, Ljava/util/Set;

    .line 861
    .line 862
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    new-instance v2, Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .line 869
    .line 870
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    :cond_16
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_17

    .line 879
    .line 880
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Ljava/lang/String;

    .line 885
    .line 886
    sget-object v4, Lq05;->Companion:Lo05;

    .line 887
    .line 888
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    .line 890
    .line 891
    invoke-static {v3}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    if-eqz v3, :cond_16

    .line 896
    .line 897
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    goto :goto_9

    .line 901
    :cond_17
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-virtual {v1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    sget-object v3, Lq05;->CLOUD:Lq05;

    .line 914
    .line 915
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    if-eqz v3, :cond_18

    .line 920
    .line 921
    goto :goto_a

    .line 922
    :cond_18
    move-object v1, v6

    .line 923
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    if-nez v3, :cond_19

    .line 928
    .line 929
    move-object v7, v2

    .line 930
    goto :goto_b

    .line 931
    :cond_19
    move-object v7, v6

    .line 932
    :goto_b
    if-eqz v7, :cond_1a

    .line 933
    .line 934
    const/4 v11, 0x0

    .line 935
    const/16 v12, 0x3f

    .line 936
    .line 937
    const/4 v8, 0x0

    .line 938
    const/4 v9, 0x0

    .line 939
    const/4 v10, 0x0

    .line 940
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    move-object/from16 v22, v2

    .line 945
    .line 946
    goto :goto_c

    .line 947
    :cond_1a
    move-object/from16 v22, v6

    .line 948
    .line 949
    :goto_c
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 954
    .line 955
    .line 956
    move-result-object v17

    .line 957
    if-eqz v1, :cond_1b

    .line 958
    .line 959
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v6

    .line 963
    :cond_1b
    move-object/from16 v23, v6

    .line 964
    .line 965
    const v34, 0xffcf

    .line 966
    .line 967
    .line 968
    const/16 v35, 0x0

    .line 969
    .line 970
    const/16 v18, 0x0

    .line 971
    .line 972
    const/16 v19, 0x0

    .line 973
    .line 974
    const/16 v20, 0x0

    .line 975
    .line 976
    const/16 v21, 0x0

    .line 977
    .line 978
    const/16 v24, 0x0

    .line 979
    .line 980
    const/16 v25, 0x0

    .line 981
    .line 982
    const/16 v26, 0x0

    .line 983
    .line 984
    const/16 v27, 0x0

    .line 985
    .line 986
    const/16 v28, 0x0

    .line 987
    .line 988
    const/16 v29, 0x0

    .line 989
    .line 990
    const/16 v30, 0x0

    .line 991
    .line 992
    const/16 v31, 0x0

    .line 993
    .line 994
    const/16 v32, 0x0

    .line 995
    .line 996
    const/16 v33, 0x0

    .line 997
    .line 998
    invoke-static/range {v17 .. v35}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-virtual {v0, v1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 1007
    .line 1008
    .line 1009
    return-object v16

    .line 1010
    :pswitch_e
    move-object/from16 v16, v9

    .line 1011
    .line 1012
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 1013
    .line 1014
    move-object/from16 v1, p1

    .line 1015
    .line 1016
    check-cast v1, Ljava/lang/String;

    .line 1017
    .line 1018
    sget v2, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 1019
    .line 1020
    if-eqz v1, :cond_1c

    .line 1021
    .line 1022
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1023
    .line 1024
    .line 1025
    move-result v2

    .line 1026
    if-nez v2, :cond_1d

    .line 1027
    .line 1028
    :cond_1c
    move v8, v7

    .line 1029
    :cond_1d
    xor-int/lit8 v2, v8, 0x1

    .line 1030
    .line 1031
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    iget-object v0, v0, Lkq1;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1036
    .line 1037
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1044
    .line 1045
    .line 1046
    return-object v16

    .line 1047
    :pswitch_f
    check-cast v0, Ltb1;

    .line 1048
    .line 1049
    move-object/from16 v1, p1

    .line 1050
    .line 1051
    check-cast v1, Ljava/util/List;

    .line 1052
    .line 1053
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1054
    .line 1055
    .line 1056
    new-instance v2, Ljd1;

    .line 1057
    .line 1058
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1059
    .line 1060
    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v3}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-direct {v2, v1}, Ljd1;-><init>(Ljava/util/List;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v0, v2}, Ltb1;->b(Lzv1;)Lxh2;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Lxh2;->c()Ljq6;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    iget-object v0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 1079
    .line 1080
    check-cast v0, Ljava/lang/Exception;

    .line 1081
    .line 1082
    if-eqz v0, :cond_1e

    .line 1083
    .line 1084
    new-instance v1, Lof1;

    .line 1085
    .line 1086
    invoke-direct {v1, v0}, Lof1;-><init>(Ljava/lang/Exception;)V

    .line 1087
    .line 1088
    .line 1089
    goto :goto_d

    .line 1090
    :cond_1e
    sget-object v1, Lpf1;->h:Lpf1;

    .line 1091
    .line 1092
    :goto_d
    return-object v1

    .line 1093
    :pswitch_10
    move-object/from16 v16, v9

    .line 1094
    .line 1095
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 1096
    .line 1097
    move-object/from16 v1, p1

    .line 1098
    .line 1099
    check-cast v1, Ljava/lang/Boolean;

    .line 1100
    .line 1101
    sget v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 1102
    .line 1103
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->q()V

    .line 1108
    .line 1109
    .line 1110
    return-object v16

    .line 1111
    :pswitch_11
    move-object/from16 v16, v9

    .line 1112
    .line 1113
    check-cast v0, Lgg1;

    .line 1114
    .line 1115
    move-object/from16 v1, p1

    .line 1116
    .line 1117
    check-cast v1, Ljava/lang/Boolean;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Lgg1;->m()Lng1;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    iget-object v1, v1, Lng1;->f:Lex6;

    .line 1124
    .line 1125
    invoke-virtual {v0}, Lgg1;->m()Lng1;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    iget-object v0, v0, Lng1;->f:Lex6;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual {v1, v0}, Lex6;->l(Ljava/lang/Object;)V

    .line 1136
    .line 1137
    .line 1138
    return-object v16

    .line 1139
    :pswitch_12
    move-object/from16 v16, v9

    .line 1140
    .line 1141
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1142
    .line 1143
    move-object/from16 v1, p1

    .line 1144
    .line 1145
    check-cast v1, Ljava/lang/Boolean;

    .line 1146
    .line 1147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1152
    .line 1153
    if-eqz v1, :cond_1f

    .line 1154
    .line 1155
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P:Lgv7;

    .line 1156
    .line 1157
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    check-cast v1, Lac1;

    .line 1162
    .line 1163
    invoke-virtual {v1}, Lgm7;->l()Ljava/util/List;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-static {v1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1

    .line 1171
    check-cast v1, Lbc1;

    .line 1172
    .line 1173
    iget-object v1, v1, Lbc1;->a:Ldd1;

    .line 1174
    .line 1175
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P(Ldd1;)V

    .line 1176
    .line 1177
    .line 1178
    :cond_1f
    return-object v16

    .line 1179
    :pswitch_13
    move-object/from16 v16, v9

    .line 1180
    .line 1181
    check-cast v0, Lv11;

    .line 1182
    .line 1183
    move-object/from16 v1, p1

    .line 1184
    .line 1185
    check-cast v1, Lxp1;

    .line 1186
    .line 1187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v1}, Lxp1;->getLevel()I

    .line 1191
    .line 1192
    .line 1193
    move-result v1

    .line 1194
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1195
    .line 1196
    if-eqz v2, :cond_20

    .line 1197
    .line 1198
    const-string v3, "compression_level_calls"

    .line 1199
    .line 1200
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v0}, Lv11;->q()V

    .line 1208
    .line 1209
    .line 1210
    return-object v16

    .line 1211
    :cond_20
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    throw v6

    .line 1215
    :pswitch_14
    move-object/from16 v16, v9

    .line 1216
    .line 1217
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;

    .line 1218
    .line 1219
    move-object/from16 v1, p1

    .line 1220
    .line 1221
    check-cast v1, Ljava/lang/Boolean;

    .line 1222
    .line 1223
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->L:I

    .line 1224
    .line 1225
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v1

    .line 1229
    if-eqz v1, :cond_21

    .line 1230
    .line 1231
    goto :goto_e

    .line 1232
    :cond_21
    move v2, v8

    .line 1233
    :goto_e
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1237
    .line 1238
    .line 1239
    return-object v16

    .line 1240
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 1241
    .line 1242
    move-object/from16 v1, p1

    .line 1243
    .line 1244
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 1245
    .line 1246
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v1

    .line 1253
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    return-object v0

    .line 1266
    :pswitch_16
    move-object/from16 v16, v9

    .line 1267
    .line 1268
    check-cast v0, Lsj0;

    .line 1269
    .line 1270
    move-object/from16 v1, p1

    .line 1271
    .line 1272
    check-cast v1, Ljava/lang/Long;

    .line 1273
    .line 1274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1275
    .line 1276
    .line 1277
    iget-object v2, v0, Lag8;->c:Lgz7;

    .line 1278
    .line 1279
    invoke-virtual {v2}, Lgz7;->isRunning()Z

    .line 1280
    .line 1281
    .line 1282
    move-result v2

    .line 1283
    if-eqz v2, :cond_22

    .line 1284
    .line 1285
    invoke-static {v0, v1}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_22
    return-object v16

    .line 1289
    :pswitch_17
    move-object/from16 v16, v9

    .line 1290
    .line 1291
    move-object v3, v0

    .line 1292
    check-cast v3, Ly30;

    .line 1293
    .line 1294
    move-object/from16 v4, p1

    .line 1295
    .line 1296
    check-cast v4, Ljava/util/List;

    .line 1297
    .line 1298
    if-eqz v4, :cond_23

    .line 1299
    .line 1300
    iget-object v0, v3, Lrl0;->b:Ljk8;

    .line 1301
    .line 1302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    .line 1304
    .line 1305
    check-cast v0, Lz30;

    .line 1306
    .line 1307
    iget-object v5, v0, Lz30;->d:Lxc6;

    .line 1308
    .line 1309
    const/4 v9, 0x0

    .line 1310
    const/16 v10, 0x40

    .line 1311
    .line 1312
    const v6, 0x7f1303f2

    .line 1313
    .line 1314
    .line 1315
    const v7, 0x7f0800bf

    .line 1316
    .line 1317
    .line 1318
    const/4 v8, 0x0

    .line 1319
    invoke-static/range {v3 .. v10}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 1320
    .line 1321
    .line 1322
    :cond_23
    return-object v16

    .line 1323
    :pswitch_18
    move-object/from16 v16, v9

    .line 1324
    .line 1325
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1326
    .line 1327
    move-object/from16 v1, p1

    .line 1328
    .line 1329
    check-cast v1, Lrw6;

    .line 1330
    .line 1331
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 1332
    .line 1333
    sget-object v2, Lhy7;->a:Lhy7;

    .line 1334
    .line 1335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    invoke-static {v1}, Lhy7;->b(Ljava/util/List;)Z

    .line 1343
    .line 1344
    .line 1345
    invoke-static {v0, v6}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1349
    .line 1350
    .line 1351
    return-object v16

    .line 1352
    :pswitch_19
    move-object/from16 v16, v9

    .line 1353
    .line 1354
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 1355
    .line 1356
    move-object/from16 v1, p1

    .line 1357
    .line 1358
    check-cast v1, Lqt;

    .line 1359
    .line 1360
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 1361
    .line 1362
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v2

    .line 1369
    iget-object v2, v2, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 1370
    .line 1371
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    iget-object v3, v3, Lzx2;->d:Landroid/widget/ImageView;

    .line 1376
    .line 1377
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v4

    .line 1381
    iget-object v4, v4, Lzx2;->e:Landroid/widget/TextView;

    .line 1382
    .line 1383
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v5

    .line 1387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v9

    .line 1391
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v9

    .line 1395
    const-string v10, "updateViews: AppListState="

    .line 1396
    .line 1397
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v9

    .line 1401
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .line 1403
    .line 1404
    instance-of v5, v1, Lnt;

    .line 1405
    .line 1406
    const/4 v9, 0x3

    .line 1407
    const/4 v10, 0x2

    .line 1408
    if-eqz v5, :cond_24

    .line 1409
    .line 1410
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v1

    .line 1414
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v2

    .line 1418
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    iget-object v3, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1423
    .line 1424
    new-array v4, v9, [Landroid/view/View;

    .line 1425
    .line 1426
    aput-object v1, v4, v8

    .line 1427
    .line 1428
    aput-object v2, v4, v7

    .line 1429
    .line 1430
    aput-object v3, v4, v10

    .line 1431
    .line 1432
    invoke-virtual {v0, v4}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v1

    .line 1439
    new-array v2, v7, [Landroid/view/View;

    .line 1440
    .line 1441
    aput-object v1, v2, v8

    .line 1442
    .line 1443
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1444
    .line 1445
    .line 1446
    goto/16 :goto_f

    .line 1447
    .line 1448
    :cond_24
    instance-of v5, v1, Lpt;

    .line 1449
    .line 1450
    if-eqz v5, :cond_25

    .line 1451
    .line 1452
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v2

    .line 1460
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1461
    .line 1462
    new-array v3, v10, [Landroid/view/View;

    .line 1463
    .line 1464
    aput-object v1, v3, v8

    .line 1465
    .line 1466
    aput-object v2, v3, v7

    .line 1467
    .line 1468
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v1

    .line 1475
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v2

    .line 1479
    new-array v3, v10, [Landroid/view/View;

    .line 1480
    .line 1481
    aput-object v1, v3, v8

    .line 1482
    .line 1483
    aput-object v2, v3, v7

    .line 1484
    .line 1485
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1486
    .line 1487
    .line 1488
    goto/16 :goto_f

    .line 1489
    .line 1490
    :cond_25
    instance-of v5, v1, Lkt;

    .line 1491
    .line 1492
    const v11, 0x7f13023f

    .line 1493
    .line 1494
    .line 1495
    const v12, 0x7f080150

    .line 1496
    .line 1497
    .line 1498
    const v13, 0x7f080114

    .line 1499
    .line 1500
    .line 1501
    const/16 v14, 0x8

    .line 1502
    .line 1503
    if-eqz v5, :cond_28

    .line 1504
    .line 1505
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v1

    .line 1509
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v5

    .line 1513
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v6

    .line 1517
    new-array v9, v9, [Landroid/view/View;

    .line 1518
    .line 1519
    aput-object v1, v9, v8

    .line 1520
    .line 1521
    aput-object v5, v9, v7

    .line 1522
    .line 1523
    aput-object v6, v9, v10

    .line 1524
    .line 1525
    invoke-virtual {v0, v9}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v1

    .line 1532
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1533
    .line 1534
    new-array v5, v7, [Landroid/view/View;

    .line 1535
    .line 1536
    aput-object v1, v5, v8

    .line 1537
    .line 1538
    invoke-virtual {v0, v5}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v0}, Ldt;->b0()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v1

    .line 1545
    if-eqz v1, :cond_26

    .line 1546
    .line 1547
    move v12, v13

    .line 1548
    :cond_26
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v0}, Ldt;->b0()Z

    .line 1552
    .line 1553
    .line 1554
    move-result v1

    .line 1555
    if-eqz v1, :cond_27

    .line 1556
    .line 1557
    const v11, 0x7f1303bf

    .line 1558
    .line 1559
    .line 1560
    :cond_27
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    .line 1565
    .line 1566
    goto/16 :goto_f

    .line 1567
    .line 1568
    :cond_28
    instance-of v5, v1, Llt;

    .line 1569
    .line 1570
    if-eqz v5, :cond_29

    .line 1571
    .line 1572
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v1

    .line 1576
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v5

    .line 1580
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v6

    .line 1584
    new-array v9, v9, [Landroid/view/View;

    .line 1585
    .line 1586
    aput-object v1, v9, v8

    .line 1587
    .line 1588
    aput-object v5, v9, v7

    .line 1589
    .line 1590
    aput-object v6, v9, v10

    .line 1591
    .line 1592
    invoke-virtual {v0, v9}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v1

    .line 1599
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1600
    .line 1601
    new-array v5, v7, [Landroid/view/View;

    .line 1602
    .line 1603
    aput-object v1, v5, v8

    .line 1604
    .line 1605
    invoke-virtual {v0, v5}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    .line 1616
    .line 1617
    const v1, 0x7f130455

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1621
    .line 1622
    .line 1623
    new-instance v1, Lhs;

    .line 1624
    .line 1625
    invoke-direct {v1, v0, v8}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    .line 1630
    .line 1631
    goto/16 :goto_f

    .line 1632
    .line 1633
    :cond_29
    instance-of v5, v1, Lmt;

    .line 1634
    .line 1635
    if-eqz v5, :cond_2a

    .line 1636
    .line 1637
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v1

    .line 1641
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v5

    .line 1645
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v6

    .line 1649
    new-array v9, v9, [Landroid/view/View;

    .line 1650
    .line 1651
    aput-object v1, v9, v8

    .line 1652
    .line 1653
    aput-object v5, v9, v7

    .line 1654
    .line 1655
    aput-object v6, v9, v10

    .line 1656
    .line 1657
    invoke-virtual {v0, v9}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v1

    .line 1664
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1665
    .line 1666
    new-array v5, v7, [Landroid/view/View;

    .line 1667
    .line 1668
    aput-object v1, v5, v8

    .line 1669
    .line 1670
    invoke-virtual {v0, v5}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1671
    .line 1672
    .line 1673
    const v1, 0x7f0801b4

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1677
    .line 1678
    .line 1679
    const v1, 0x7f1303c9

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    .line 1687
    .line 1688
    goto/16 :goto_f

    .line 1689
    .line 1690
    :cond_2a
    instance-of v5, v1, Lot;

    .line 1691
    .line 1692
    if-eqz v5, :cond_2b

    .line 1693
    .line 1694
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v1

    .line 1698
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v5

    .line 1702
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v6

    .line 1706
    new-array v9, v9, [Landroid/view/View;

    .line 1707
    .line 1708
    aput-object v1, v9, v8

    .line 1709
    .line 1710
    aput-object v5, v9, v7

    .line 1711
    .line 1712
    aput-object v6, v9, v10

    .line 1713
    .line 1714
    invoke-virtual {v0, v9}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v1

    .line 1721
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1722
    .line 1723
    new-array v5, v7, [Landroid/view/View;

    .line 1724
    .line 1725
    aput-object v1, v5, v8

    .line 1726
    .line 1727
    invoke-virtual {v0, v5}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1728
    .line 1729
    .line 1730
    const v1, 0x7f080213

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1734
    .line 1735
    .line 1736
    const v1, 0x7f1303c8

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    .line 1744
    .line 1745
    const v1, 0x7f13049a

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1749
    .line 1750
    .line 1751
    new-instance v1, Lxr;

    .line 1752
    .line 1753
    invoke-direct {v1, v0, v7}, Lxr;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;I)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    .line 1758
    .line 1759
    goto :goto_f

    .line 1760
    :cond_2b
    sget-object v5, Ljt;->a:Ljt;

    .line 1761
    .line 1762
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v1

    .line 1766
    if-eqz v1, :cond_2c

    .line 1767
    .line 1768
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v1

    .line 1772
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->i0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v5

    .line 1776
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v6

    .line 1780
    new-array v9, v9, [Landroid/view/View;

    .line 1781
    .line 1782
    aput-object v1, v9, v8

    .line 1783
    .line 1784
    aput-object v5, v9, v7

    .line 1785
    .line 1786
    aput-object v6, v9, v10

    .line 1787
    .line 1788
    invoke-virtual {v0, v9}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->r0([Landroid/view/View;)V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->k0()Lzx2;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v1

    .line 1795
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1796
    .line 1797
    new-array v5, v7, [Landroid/view/View;

    .line 1798
    .line 1799
    aput-object v1, v5, v8

    .line 1800
    .line 1801
    invoke-virtual {v0, v5}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->t0([Landroid/view/View;)V

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1805
    .line 1806
    .line 1807
    const v1, 0x7f130225

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    .line 1815
    .line 1816
    :goto_f
    invoke-virtual {v0}, Lzm;->invalidateOptionsMenu()V

    .line 1817
    .line 1818
    .line 1819
    move-object/from16 v6, v16

    .line 1820
    .line 1821
    goto :goto_10

    .line 1822
    :cond_2c
    invoke-static {}, Lq;->j()V

    .line 1823
    .line 1824
    .line 1825
    :goto_10
    return-object v6

    .line 1826
    :pswitch_1a
    move-object/from16 v16, v9

    .line 1827
    .line 1828
    check-cast v0, Lo7;

    .line 1829
    .line 1830
    move-object/from16 v1, p1

    .line 1831
    .line 1832
    check-cast v1, Ljava/lang/Boolean;

    .line 1833
    .line 1834
    if-eqz v1, :cond_30

    .line 1835
    .line 1836
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    iget-object v2, v0, Lrl0;->b:Ljk8;

    .line 1841
    .line 1842
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1843
    .line 1844
    .line 1845
    check-cast v2, Lp7;

    .line 1846
    .line 1847
    iget-object v2, v2, Lp7;->b:Lj75;

    .line 1848
    .line 1849
    iget-object v2, v2, Lj75;->c:Ljava/lang/Object;

    .line 1850
    .line 1851
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 1852
    .line 1853
    if-eqz v1, :cond_2d

    .line 1854
    .line 1855
    invoke-virtual {v0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v3

    .line 1859
    const v4, 0x7f04011f

    .line 1860
    .line 1861
    .line 1862
    invoke-static {v3, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1863
    .line 1864
    .line 1865
    move-result v4

    .line 1866
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 1867
    .line 1868
    .line 1869
    move-result v3

    .line 1870
    goto :goto_11

    .line 1871
    :cond_2d
    invoke-virtual {v0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v3

    .line 1875
    const v4, 0x7f0604a5

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 1879
    .line 1880
    .line 1881
    move-result v4

    .line 1882
    invoke-static {v3, v4}, Lio4;->c(Landroid/content/Context;I)I

    .line 1883
    .line 1884
    .line 1885
    move-result v3

    .line 1886
    :goto_11
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v3

    .line 1890
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1891
    .line 1892
    .line 1893
    if-eqz v1, :cond_2e

    .line 1894
    .line 1895
    invoke-virtual {v0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v3

    .line 1899
    const v4, 0x7f04014a

    .line 1900
    .line 1901
    .line 1902
    invoke-static {v3, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1903
    .line 1904
    .line 1905
    move-result v4

    .line 1906
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 1907
    .line 1908
    .line 1909
    move-result v3

    .line 1910
    goto :goto_12

    .line 1911
    :cond_2e
    invoke-virtual {v0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v3

    .line 1915
    const v4, 0x7f0604dd

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 1919
    .line 1920
    .line 1921
    move-result v4

    .line 1922
    invoke-static {v3, v4}, Lio4;->c(Landroid/content/Context;I)I

    .line 1923
    .line 1924
    .line 1925
    move-result v3

    .line 1926
    :goto_12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1927
    .line 1928
    .line 1929
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v3

    .line 1933
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 1934
    .line 1935
    .line 1936
    if-eqz v1, :cond_2f

    .line 1937
    .line 1938
    const v1, 0x7f130424

    .line 1939
    .line 1940
    .line 1941
    goto :goto_13

    .line 1942
    :cond_2f
    const v1, 0x7f130292

    .line 1943
    .line 1944
    .line 1945
    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1946
    .line 1947
    .line 1948
    new-instance v1, Lh7;

    .line 1949
    .line 1950
    invoke-direct {v1, v0, v8}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 1951
    .line 1952
    .line 1953
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1954
    .line 1955
    .line 1956
    :cond_30
    return-object v16

    .line 1957
    :pswitch_data_0
    .packed-switch 0x0
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
