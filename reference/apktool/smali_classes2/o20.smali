.class public final synthetic Lo20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo20;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo20;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lo20;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Lo20;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lo20;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 15
    .line 16
    check-cast v4, Ljava/util/List;

    .line 17
    .line 18
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lzn4;->a:Lzn4;

    .line 25
    .line 26
    new-instance v0, Lgh4;

    .line 27
    .line 28
    invoke-direct {v0, p0, v4, v2}, Lgh4;-><init>(Ltp8;Ljava/util/List;Ljv1;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 36
    .line 37
    check-cast v4, Laz7;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object v0, Lzn4;->a:Lzn4;

    .line 44
    .line 45
    new-instance v0, Lz72;

    .line 46
    .line 47
    invoke-direct {v0, v4, p0, v2}, Lz72;-><init>(Laz7;Lpp8;Ljv1;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 55
    .line 56
    check-cast v4, Landroid/content/Intent;

    .line 57
    .line 58
    sget-object v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    return-object v3

    .line 68
    :pswitch_2
    check-cast p0, Lnp3;

    .line 69
    .line 70
    check-cast v4, Lik6;

    .line 71
    .line 72
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v5, "onRepoResult: "

    .line 77
    .line 78
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lnp3;->g:Lex6;

    .line 92
    .line 93
    iget-object v1, v4, Lik6;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lhk6;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lhk6;->Success:Lhk6;

    .line 101
    .line 102
    const/16 v5, 0xe

    .line 103
    .line 104
    if-ne v1, v0, :cond_1

    .line 105
    .line 106
    iget-object v0, v4, Lik6;->c:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Ljava/util/List;

    .line 109
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/16 v4, 0xa

    .line 113
    .line 114
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_0

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v6, Lzk3;

    .line 141
    .line 142
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getLatestBackupDate()J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    invoke-direct {v6, v7, v8, v9, v2}, Lzk3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;JLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ly2;

    .line 158
    .line 159
    invoke-direct {v0, v5, p0, v1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_1
    new-instance v0, Ly2;

    .line 167
    .line 168
    sget-object v1, Lov2;->a:Lov2;

    .line 169
    .line 170
    invoke-direct {v0, v5, p0, v1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-object v3

    .line 177
    :pswitch_3
    check-cast p0, Lin3;

    .line 178
    .line 179
    check-cast v4, Lfn3;

    .line 180
    .line 181
    invoke-virtual {p0}, Lin3;->k()Lhn3;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Lhn3;->c:Lq63;

    .line 186
    .line 187
    iget-object v1, v4, Lfn3;->a:Lq63;

    .line 188
    .line 189
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_2
    new-instance v0, Lyq;

    .line 197
    .line 198
    const/4 v2, 0x5

    .line 199
    invoke-direct {v0, v2, p0, v1}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v1, v0}, Lin3;->m(Lq63;Lbt3;)V

    .line 203
    .line 204
    .line 205
    :goto_2
    return-object v3

    .line 206
    :pswitch_4
    check-cast p0, Lin3;

    .line 207
    .line 208
    check-cast v4, Lq63;

    .line 209
    .line 210
    iget-boolean v0, p0, Lin3;->e:Z

    .line 211
    .line 212
    if-eqz v0, :cond_3

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_3
    iput-boolean v1, p0, Lin3;->e:Z

    .line 216
    .line 217
    new-instance v0, Lxq;

    .line 218
    .line 219
    const/4 v1, 0x7

    .line 220
    invoke-direct {v0, v1, v4, p0}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v2, v0}, Lin3;->m(Lq63;Lbt3;)V

    .line 224
    .line 225
    .line 226
    :goto_3
    return-object v3

    .line 227
    :pswitch_5
    check-cast p0, Ldm3;

    .line 228
    .line 229
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 230
    .line 231
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v2, p0, Ldm3;->i:Lex6;

    .line 234
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v6, "start(): "

    .line 238
    .line 239
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 253
    .line 254
    if-eqz v0, :cond_4

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_4
    const/4 v1, 0x0

    .line 258
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iput-object v4, p0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 262
    .line 263
    iget-object v0, p0, Ldm3;->f:Lex6;

    .line 264
    .line 265
    invoke-virtual {v0, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Lql3;->a:Lql3;

    .line 269
    .line 270
    if-nez v1, :cond_5

    .line 271
    .line 272
    iget-object v4, p0, Ldm3;->h:Lex6;

    .line 273
    .line 274
    sget-object v5, Lvl3;->a:Lvl3;

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object v4, p0, Ldm3;->g:Lex6;

    .line 280
    .line 281
    sget-object v5, Lzl3;->a:Lzl3;

    .line 282
    .line 283
    invoke-virtual {v4, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_5
    new-instance v4, Lek;

    .line 290
    .line 291
    const/16 v5, 0x1b

    .line 292
    .line 293
    invoke-direct {v4, p0, v5}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    invoke-static {v4}, Lzn4;->c(Lbt3;)V

    .line 297
    .line 298
    .line 299
    new-instance v4, Lej;

    .line 300
    .line 301
    const/16 v5, 0x15

    .line 302
    .line 303
    invoke-direct {v4, p0, v5}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 304
    .line 305
    .line 306
    invoke-static {v4}, Lzn4;->c(Lbt3;)V

    .line 307
    .line 308
    .line 309
    if-nez v1, :cond_6

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_6
    new-instance v0, Lej;

    .line 315
    .line 316
    invoke-direct {v0, p0, v5}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Lfj;

    .line 323
    .line 324
    const/16 v1, 0x19

    .line 325
    .line 326
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 330
    .line 331
    .line 332
    sget-object v0, Lhx0;->b:Lhx0;

    .line 333
    .line 334
    invoke-virtual {v0, p0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-object v3

    .line 338
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 339
    .line 340
    check-cast v4, Lcd;

    .line 341
    .line 342
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 343
    .line 344
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    iget-object v0, v4, Lcd;->b:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Liu;

    .line 351
    .line 352
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v1, v4, Lcd;->c:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v1, Lhk;

    .line 359
    .line 360
    invoke-virtual {p0, v0, v1}, Lmk2;->m(Ljava/util/List;Lhk;)V

    .line 361
    .line 362
    .line 363
    return-object v3

    .line 364
    :pswitch_7
    check-cast p0, Ljava/util/List;

    .line 365
    .line 366
    check-cast v4, Lm62;

    .line 367
    .line 368
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_7

    .line 373
    .line 374
    iget-object v0, v4, Lm62;->t:Lex6;

    .line 375
    .line 376
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_7
    iget-object p0, v4, Lm62;->u:Lex6;

    .line 380
    .line 381
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    return-object v3

    .line 387
    :pswitch_8
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 388
    .line 389
    check-cast v4, Lt22;

    .line 390
    .line 391
    invoke-static {p0, v4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$VsxIaY9CMEklHrOXk5cdkiRsqcE(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0

    .line 396
    :pswitch_9
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 397
    .line 398
    check-cast v4, Lwv3;

    .line 399
    .line 400
    invoke-static {p0, v4}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$bXb9Ndeg5lBtq-ddAQf_UODs8ts(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lwv3;)Lbe8;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    return-object p0

    .line 405
    :pswitch_a
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 406
    .line 407
    check-cast v4, Lorg/json/JSONException;

    .line 408
    .line 409
    invoke-static {p0, v4}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$zIoiRx81t3DKhQPivKDCKHlmFUk(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lorg/json/JSONException;)Lbe8;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    return-object p0

    .line 414
    :pswitch_b
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 415
    .line 416
    check-cast v4, Lcw3;

    .line 417
    .line 418
    invoke-static {p0, v4}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$waf9J2Q2iu-Jv6ng6bWVjqCO3M4(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lcw3;)Lbe8;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    return-object p0

    .line 423
    :pswitch_c
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 424
    .line 425
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 426
    .line 427
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {v0}, Lmq8;->a(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    return-object p0

    .line 443
    :pswitch_d
    check-cast p0, Ljava/util/ArrayList;

    .line 444
    .line 445
    check-cast v4, Lty7;

    .line 446
    .line 447
    new-instance v0, Lc40;

    .line 448
    .line 449
    new-instance v1, Lb40;

    .line 450
    .line 451
    invoke-direct {v1}, Lb40;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-direct {v0, p0, v4, v1}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 455
    .line 456
    .line 457
    return-object v0

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
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
