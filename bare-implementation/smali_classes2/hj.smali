.class public final synthetic Lhj;
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

    .line 10
    iput p2, p0, Lhj;->a:I

    iput-object p1, p0, Lhj;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 0

    .line 1
    const/4 p2, 0x7

    .line 2
    iput p2, p0, Lhj;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lhj;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lhj;->a:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const-string v6, "EXTRA_BACKUP_FILE_PATH"

    .line 13
    .line 14
    const-string v7, "Feature not supported on this device"

    .line 15
    .line 16
    const-string v8, "android.hardware.telephony"

    .line 17
    .line 18
    const v9, 0x7f13007f

    .line 19
    .line 20
    .line 21
    const/4 v10, 0x2

    .line 22
    const v11, 0x7f1303e6

    .line 23
    .line 24
    .line 25
    const v12, 0x7f140160

    .line 26
    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    const/4 v15, 0x1

    .line 31
    sget-object v16, Lbe8;->a:Lbe8;

    .line 32
    .line 33
    iget-object v0, v0, Lhj;->b:Ljava/lang/Object;

    .line 34
    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    check-cast v0, Lh08;

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lokhttp3/Request$Builder;

    .line 48
    .line 49
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v0, "/openapi/api/quota"

    .line 64
    .line 65
    invoke-static {v3, v0, v1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 70
    .line 71
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lokhttp3/Request;

    .line 75
    .line 76
    invoke-direct {v0, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 81
    .line 82
    move-object/from16 v2, p1

    .line 83
    .line 84
    check-cast v2, Ljava/util/List;

    .line 85
    .line 86
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->U:Lgv7;

    .line 92
    .line 93
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 98
    .line 99
    invoke-virtual {v1, v15}, Landroid/view/View;->canScrollVertically(I)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 104
    .line 105
    const/16 v6, 0xe

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-static/range {v1 .. v7}, Lvr6;->filterLogs$default(Lvr6;Ljava/util/List;ZZZILjava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v18

    .line 115
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->V:Lgv7;

    .line 116
    .line 117
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lbs6;

    .line 122
    .line 123
    new-instance v17, Lfm7;

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x1e

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    invoke-direct/range {v17 .. v22}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v1, v17

    .line 137
    .line 138
    invoke-virtual {v0, v1, v15}, Lgm7;->w(Lfm7;Z)V

    .line 139
    .line 140
    .line 141
    if-nez v9, :cond_0

    .line 142
    .line 143
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 148
    .line 149
    invoke-static/range {v18 .. v18}, Lfl1;->z0(Ljava/util/List;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 154
    .line 155
    .line 156
    :cond_0
    return-object v16

    .line 157
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 158
    .line 159
    move-object/from16 v1, p1

    .line 160
    .line 161
    check-cast v1, Ltn2;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v2, Lzn4;->a:Lzn4;

    .line 167
    .line 168
    new-instance v2, Lct7;

    .line 169
    .line 170
    invoke-direct {v2, v1, v0, v14}, Lct7;-><init>(Ltn2;Lorg/swiftapps/swiftbackup/settings/SettingsActivity;Ljv1;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v14, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 174
    .line 175
    .line 176
    return-object v16

    .line 177
    :pswitch_2
    check-cast v0, Lpa7;

    .line 178
    .line 179
    move-object/from16 v1, p1

    .line 180
    .line 181
    check-cast v1, Lh28;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    iget-object v0, v0, Lpa7;->q:Lgv7;

    .line 187
    .line 188
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroidx/preference/Preference;

    .line 193
    .line 194
    invoke-virtual {v1}, Lh28;->asString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    return-object v16

    .line 202
    :pswitch_3
    check-cast v0, Lm37;

    .line 203
    .line 204
    move-object/from16 v1, p1

    .line 205
    .line 206
    check-cast v1, Lx27;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sget-object v2, Lzn4;->a:Lzn4;

    .line 216
    .line 217
    new-instance v2, Ll30;

    .line 218
    .line 219
    const/16 v3, 0xd

    .line 220
    .line 221
    invoke-direct {v2, v3, v1, v0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 225
    .line 226
    .line 227
    return-object v16

    .line 228
    :pswitch_4
    check-cast v0, Lmt3;

    .line 229
    .line 230
    move-object/from16 v1, p1

    .line 231
    .line 232
    check-cast v1, Lly6;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    new-instance v2, Ldz6;

    .line 238
    .line 239
    iget-wide v3, v1, Lly6;->a:J

    .line 240
    .line 241
    iget-object v5, v1, Lly6;->b:Ljava/lang/Long;

    .line 242
    .line 243
    iget-wide v6, v1, Lly6;->c:J

    .line 244
    .line 245
    iget-boolean v8, v1, Lly6;->d:Z

    .line 246
    .line 247
    invoke-direct/range {v2 .. v8}, Ldz6;-><init>(JLjava/lang/Long;JZ)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    return-object v16

    .line 254
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 255
    .line 256
    move-object/from16 v1, p1

    .line 257
    .line 258
    check-cast v1, Ljava/lang/Boolean;

    .line 259
    .line 260
    sget v1, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->O:I

    .line 261
    .line 262
    new-instance v1, Landroid/content/Intent;

    .line 263
    .line 264
    const-class v2, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 265
    .line 266
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .line 268
    .line 269
    const-string v2, "extra_is_restoring"

    .line 270
    .line 271
    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    const v2, 0x1e3d73

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    .line 283
    .line 284
    return-object v16

    .line 285
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 286
    .line 287
    move-object/from16 v1, p1

    .line 288
    .line 289
    check-cast v1, Ljava/lang/String;

    .line 290
    .line 291
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->M:I

    .line 292
    .line 293
    new-instance v2, Lhv1;

    .line 294
    .line 295
    invoke-direct {v2, v0, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 296
    .line 297
    .line 298
    new-instance v3, Ls35;

    .line 299
    .line 300
    invoke-direct {v3, v0, v12, v2, v14}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v3, Lva;->b:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v2, Lra;

    .line 306
    .line 307
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iput-object v4, v2, Lra;->d:Ljava/lang/CharSequence;

    .line 312
    .line 313
    iput-object v1, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 314
    .line 315
    invoke-virtual {v3, v11, v14}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Lpv5;

    .line 319
    .line 320
    invoke-direct {v1, v0}, Lpv5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;)V

    .line 321
    .line 322
    .line 323
    iput-object v1, v2, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 324
    .line 325
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 326
    .line 327
    .line 328
    return-object v16

    .line 329
    :pswitch_7
    check-cast v0, Lfq5;

    .line 330
    .line 331
    move-object/from16 v1, p1

    .line 332
    .line 333
    check-cast v1, Ljava/lang/String;

    .line 334
    .line 335
    new-instance v2, Lhv1;

    .line 336
    .line 337
    invoke-direct {v2, v0, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 338
    .line 339
    .line 340
    new-instance v3, Ls35;

    .line 341
    .line 342
    invoke-direct {v3, v0, v12, v2, v14}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v3, Lva;->b:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v2, Lra;

    .line 348
    .line 349
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    iput-object v4, v2, Lra;->d:Ljava/lang/CharSequence;

    .line 354
    .line 355
    iput-object v1, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 356
    .line 357
    invoke-virtual {v3, v11, v14}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    new-instance v1, Lub3;

    .line 361
    .line 362
    invoke-direct {v1, v0, v15}, Lub3;-><init>(Lil0;I)V

    .line 363
    .line 364
    .line 365
    iput-object v1, v2, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 366
    .line 367
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 368
    .line 369
    .line 370
    return-object v16

    .line 371
    :pswitch_8
    check-cast v0, Lje5;

    .line 372
    .line 373
    move-object/from16 v1, p1

    .line 374
    .line 375
    check-cast v1, Lke5;

    .line 376
    .line 377
    if-eqz v1, :cond_2

    .line 378
    .line 379
    iget-object v1, v1, Lke5;->a:Lq63;

    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    sget-object v2, Lg00;->a:Lg00;

    .line 385
    .line 386
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-nez v2, :cond_1

    .line 395
    .line 396
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 397
    .line 398
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sget-object v1, Lzn4;->a:Lzn4;

    .line 403
    .line 404
    invoke-static {v0, v7}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_0

    .line 408
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 409
    .line 410
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 411
    .line 412
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 427
    .line 428
    .line 429
    :cond_2
    :goto_0
    return-object v16

    .line 430
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 431
    .line 432
    move-object/from16 v1, p1

    .line 433
    .line 434
    check-cast v1, Ljava/lang/String;

    .line 435
    .line 436
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 437
    .line 438
    if-eqz v1, :cond_3

    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-nez v2, :cond_4

    .line 445
    .line 446
    :cond_3
    move v13, v15

    .line 447
    :cond_4
    xor-int/lit8 v2, v13, 0x1

    .line 448
    .line 449
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N:Lgv7;

    .line 450
    .line 451
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 456
    .line 457
    iget-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 458
    .line 459
    iget-boolean v4, v4, Lyb4;->q:Z

    .line 460
    .line 461
    if-eq v4, v2, :cond_5

    .line 462
    .line 463
    const-class v4, Landroid/widget/TextView;

    .line 464
    .line 465
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v0, v4}, Lil0;->y([Ljava/lang/Class;)V

    .line 470
    .line 471
    .line 472
    :cond_5
    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->P:Lgv7;

    .line 482
    .line 483
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 488
    .line 489
    invoke-virtual {v1, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    const/high16 v3, 0x3f000000    # 0.5f

    .line 497
    .line 498
    const/high16 v4, 0x3f800000    # 1.0f

    .line 499
    .line 500
    if-eqz v2, :cond_6

    .line 501
    .line 502
    move v2, v4

    .line 503
    goto :goto_1

    .line 504
    :cond_6
    move v2, v3

    .line 505
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->S:Lgv7;

    .line 509
    .line 510
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Lzq4;

    .line 515
    .line 516
    iget-object v0, v0, Lzq4;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 517
    .line 518
    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_7

    .line 526
    .line 527
    move v3, v4

    .line 528
    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 529
    .line 530
    .line 531
    return-object v16

    .line 532
    :pswitch_a
    check-cast v0, Ljava/lang/String;

    .line 533
    .line 534
    move-object/from16 v1, p1

    .line 535
    .line 536
    check-cast v1, Ls54;

    .line 537
    .line 538
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    sget-object v2, Lo54;->a:Lai6;

    .line 542
    .line 543
    invoke-static {v0}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    iget-object v3, v1, Ls54;->b:Lu54;

    .line 548
    .line 549
    iget-object v6, v1, Ls54;->n:Lji;

    .line 550
    .line 551
    iget-object v7, v1, Ls54;->d:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v8, v1, Ls54;->c:Ljava/lang/String;

    .line 554
    .line 555
    sget-object v9, Lk54;->a:[I

    .line 556
    .line 557
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    aget v3, v9, v3

    .line 562
    .line 563
    const/16 v16, 0x96

    .line 564
    .line 565
    const/4 v9, 0x3

    .line 566
    if-eq v3, v15, :cond_19

    .line 567
    .line 568
    const/16 v4, 0x2bc

    .line 569
    .line 570
    if-eq v3, v10, :cond_13

    .line 571
    .line 572
    if-eq v3, v9, :cond_9

    .line 573
    .line 574
    if-ne v3, v5, :cond_8

    .line 575
    .line 576
    goto :goto_2

    .line 577
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_10

    .line 581
    .line 582
    :cond_9
    :goto_2
    iget-object v3, v1, Ls54;->t:Ljava/util/List;

    .line 583
    .line 584
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    move v5, v13

    .line 589
    move v6, v5

    .line 590
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    if-eqz v7, :cond_12

    .line 595
    .line 596
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    add-int/lit8 v8, v6, 0x1

    .line 601
    .line 602
    if-ltz v6, :cond_11

    .line 603
    .line 604
    check-cast v7, Ljava/lang/String;

    .line 605
    .line 606
    invoke-static {v7}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v10

    .line 610
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    if-nez v11, :cond_b

    .line 615
    .line 616
    :cond_a
    move v7, v13

    .line 617
    goto :goto_4

    .line 618
    :cond_b
    invoke-static {v0}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v11

    .line 622
    invoke-static {v7}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v15

    .line 626
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v17

    .line 630
    if-eqz v17, :cond_c

    .line 631
    .line 632
    move v7, v4

    .line 633
    goto :goto_4

    .line 634
    :cond_c
    invoke-static {v10, v0, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 635
    .line 636
    .line 637
    move-result v17

    .line 638
    if-eqz v17, :cond_d

    .line 639
    .line 640
    const/16 v7, 0x258

    .line 641
    .line 642
    goto :goto_4

    .line 643
    :cond_d
    invoke-static {v7}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-static {v7, v2}, Lo54;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    if-eqz v7, :cond_e

    .line 652
    .line 653
    const/16 v7, 0x1f4

    .line 654
    .line 655
    goto :goto_4

    .line 656
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 657
    .line 658
    .line 659
    move-result v7

    .line 660
    if-lt v7, v9, :cond_f

    .line 661
    .line 662
    invoke-static {v10, v0, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    if-eqz v7, :cond_f

    .line 667
    .line 668
    move/from16 v7, v16

    .line 669
    .line 670
    goto :goto_4

    .line 671
    :cond_f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 672
    .line 673
    .line 674
    move-result v7

    .line 675
    if-lt v7, v9, :cond_a

    .line 676
    .line 677
    invoke-static {v15, v11, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 678
    .line 679
    .line 680
    move-result v7

    .line 681
    if-eqz v7, :cond_a

    .line 682
    .line 683
    const/16 v7, 0x78

    .line 684
    .line 685
    :goto_4
    sub-int/2addr v7, v6

    .line 686
    if-le v7, v5, :cond_10

    .line 687
    .line 688
    move v5, v7

    .line 689
    :cond_10
    move v6, v8

    .line 690
    goto :goto_3

    .line 691
    :cond_11
    invoke-static {}, Lfl1;->F0()V

    .line 692
    .line 693
    .line 694
    throw v14

    .line 695
    :cond_12
    move v13, v5

    .line 696
    goto/16 :goto_e

    .line 697
    .line 698
    :cond_13
    invoke-static {v8}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-static {v7}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-static {v8}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    invoke-static {v0}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v7

    .line 714
    invoke-static {v8}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v8

    .line 718
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v10

    .line 722
    if-eqz v10, :cond_14

    .line 723
    .line 724
    :goto_5
    const/16 v13, 0x320

    .line 725
    .line 726
    goto/16 :goto_e

    .line 727
    .line 728
    :cond_14
    invoke-static {v3, v2}, Lo54;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    if-eqz v3, :cond_15

    .line 733
    .line 734
    move v13, v4

    .line 735
    goto/16 :goto_e

    .line 736
    .line 737
    :cond_15
    invoke-static {v6, v0, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-eqz v0, :cond_17

    .line 742
    .line 743
    :cond_16
    :goto_6
    const/16 v13, 0x28a

    .line 744
    .line 745
    goto/16 :goto_e

    .line 746
    .line 747
    :cond_17
    invoke-static {v5, v2}, Lo54;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-eqz v0, :cond_18

    .line 752
    .line 753
    const/16 v13, 0x1c2

    .line 754
    .line 755
    goto/16 :goto_e

    .line 756
    .line 757
    :cond_18
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-lt v0, v9, :cond_2b

    .line 762
    .line 763
    invoke-static {v8, v7, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_2b

    .line 768
    .line 769
    :goto_7
    move/from16 v13, v16

    .line 770
    .line 771
    goto/16 :goto_e

    .line 772
    .line 773
    :cond_19
    if-eqz v6, :cond_1b

    .line 774
    .line 775
    invoke-virtual {v6}, Lji;->getName()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    if-nez v3, :cond_1a

    .line 780
    .line 781
    goto :goto_8

    .line 782
    :cond_1a
    move-object v8, v3

    .line 783
    :cond_1b
    :goto_8
    if-eqz v6, :cond_1d

    .line 784
    .line 785
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    if-nez v3, :cond_1c

    .line 790
    .line 791
    goto :goto_9

    .line 792
    :cond_1c
    move-object v4, v3

    .line 793
    goto :goto_a

    .line 794
    :cond_1d
    :goto_9
    if-nez v7, :cond_1e

    .line 795
    .line 796
    goto :goto_a

    .line 797
    :cond_1e
    move-object v4, v7

    .line 798
    :goto_a
    invoke-static {v8}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    invoke-static {v4}, Lo54;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    invoke-static {v8}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    invoke-static {v4}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    invoke-static {v0}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v7

    .line 818
    invoke-static {v8}, Lo54;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v10

    .line 822
    invoke-static {v2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v17

    .line 826
    check-cast v17, Ljava/lang/String;

    .line 827
    .line 828
    if-eqz v17, :cond_1f

    .line 829
    .line 830
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 831
    .line 832
    .line 833
    move-result v11

    .line 834
    if-le v11, v15, :cond_1f

    .line 835
    .line 836
    move-object/from16 v11, v17

    .line 837
    .line 838
    goto :goto_b

    .line 839
    :cond_1f
    move-object v11, v14

    .line 840
    :goto_b
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v15

    .line 844
    if-eqz v15, :cond_20

    .line 845
    .line 846
    const/16 v13, 0x384

    .line 847
    .line 848
    goto/16 :goto_e

    .line 849
    .line 850
    :cond_20
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v15

    .line 854
    if-eqz v15, :cond_21

    .line 855
    .line 856
    const/16 v13, 0x352

    .line 857
    .line 858
    goto/16 :goto_e

    .line 859
    .line 860
    :cond_21
    invoke-static {v3, v2}, Lo54;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 861
    .line 862
    .line 863
    move-result v15

    .line 864
    if-eqz v15, :cond_22

    .line 865
    .line 866
    goto/16 :goto_5

    .line 867
    .line 868
    :cond_22
    invoke-static {v6, v0, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 869
    .line 870
    .line 871
    move-result v6

    .line 872
    if-eqz v6, :cond_23

    .line 873
    .line 874
    const/16 v13, 0x2ee

    .line 875
    .line 876
    goto/16 :goto_e

    .line 877
    .line 878
    :cond_23
    if-eqz v11, :cond_28

    .line 879
    .line 880
    new-instance v6, Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    :cond_24
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 890
    .line 891
    .line 892
    move-result v15

    .line 893
    if-eqz v15, :cond_25

    .line 894
    .line 895
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v15

    .line 899
    check-cast v15, Ljava/lang/String;

    .line 900
    .line 901
    invoke-static {v15}, Lnq7;->c0(Ljava/lang/String;)Ljava/lang/Character;

    .line 902
    .line 903
    .line 904
    move-result-object v15

    .line 905
    if-eqz v15, :cond_24

    .line 906
    .line 907
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    goto :goto_c

    .line 911
    :cond_25
    const/16 v21, 0x0

    .line 912
    .line 913
    const/16 v22, 0x3e

    .line 914
    .line 915
    const-string v18, ""

    .line 916
    .line 917
    const/16 v19, 0x0

    .line 918
    .line 919
    const/16 v20, 0x0

    .line 920
    .line 921
    move-object/from16 v17, v6

    .line 922
    .line 923
    invoke-static/range {v17 .. v22}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    new-instance v6, Ljava/lang/StringBuilder;

    .line 928
    .line 929
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 933
    .line 934
    .line 935
    move-result v15

    .line 936
    move v12, v13

    .line 937
    :goto_d
    if-ge v12, v15, :cond_27

    .line 938
    .line 939
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    .line 940
    .line 941
    .line 942
    move-result v14

    .line 943
    invoke-static {v14}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 944
    .line 945
    .line 946
    move-result v18

    .line 947
    if-eqz v18, :cond_26

    .line 948
    .line 949
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 950
    .line 951
    .line 952
    :cond_26
    add-int/lit8 v12, v12, 0x1

    .line 953
    .line 954
    const/4 v14, 0x0

    .line 955
    goto :goto_d

    .line 956
    :cond_27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v6

    .line 960
    invoke-static {v6}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v6

    .line 964
    invoke-static {v3, v11, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-nez v3, :cond_16

    .line 969
    .line 970
    invoke-static {v6, v11, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 971
    .line 972
    .line 973
    move-result v3

    .line 974
    if-eqz v3, :cond_28

    .line 975
    .line 976
    goto/16 :goto_6

    .line 977
    .line 978
    :cond_28
    invoke-static {v5, v2}, Lo54;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    if-eqz v2, :cond_29

    .line 983
    .line 984
    const/16 v13, 0x226

    .line 985
    .line 986
    goto :goto_e

    .line 987
    :cond_29
    invoke-static {v4, v0, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    if-eqz v0, :cond_2a

    .line 992
    .line 993
    const/16 v13, 0x1f4

    .line 994
    .line 995
    goto :goto_e

    .line 996
    :cond_2a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    if-lt v0, v9, :cond_2b

    .line 1001
    .line 1002
    invoke-static {v10, v7, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    if-eqz v0, :cond_2b

    .line 1007
    .line 1008
    goto/16 :goto_7

    .line 1009
    .line 1010
    :cond_2b
    :goto_e
    if-lez v13, :cond_2c

    .line 1011
    .line 1012
    goto :goto_f

    .line 1013
    :cond_2c
    const/4 v1, 0x0

    .line 1014
    :goto_f
    if-eqz v1, :cond_2d

    .line 1015
    .line 1016
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    new-instance v14, Lpw5;

    .line 1021
    .line 1022
    invoke-direct {v14, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_10

    .line 1026
    :cond_2d
    const/4 v14, 0x0

    .line 1027
    :goto_10
    return-object v14

    .line 1028
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 1029
    .line 1030
    move-object/from16 v1, p1

    .line 1031
    .line 1032
    check-cast v1, Lq63;

    .line 1033
    .line 1034
    sget-object v2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 1035
    .line 1036
    if-eqz v1, :cond_2f

    .line 1037
    .line 1038
    invoke-virtual {v1}, Lq63;->j()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v2

    .line 1042
    if-ne v2, v15, :cond_2f

    .line 1043
    .line 1044
    sget-object v2, Lg00;->a:Lg00;

    .line 1045
    .line 1046
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v2

    .line 1054
    if-nez v2, :cond_2e

    .line 1055
    .line 1056
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1057
    .line 1058
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1063
    .line 1064
    invoke-static {v1, v7}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_11

    .line 1068
    :cond_2e
    new-instance v2, Landroid/content/Intent;

    .line 1069
    .line 1070
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 1071
    .line 1072
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v1

    .line 1079
    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1087
    .line 1088
    .line 1089
    :goto_11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 1090
    .line 1091
    .line 1092
    goto :goto_12

    .line 1093
    :cond_2f
    const v1, 0x7f1303be

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    .line 1102
    .line 1103
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1104
    .line 1105
    new-instance v2, Lcv;

    .line 1106
    .line 1107
    const/16 v3, 0xe

    .line 1108
    .line 1109
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 1113
    .line 1114
    .line 1115
    :goto_12
    return-object v16

    .line 1116
    :pswitch_c
    move-object/from16 v1, p1

    .line 1117
    .line 1118
    check-cast v1, Lfj5;

    .line 1119
    .line 1120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    .line 1122
    .line 1123
    iget-object v2, v1, Lfj5;->a:Lnh;

    .line 1124
    .line 1125
    iget-object v1, v1, Lfj5;->b:Lgy5;

    .line 1126
    .line 1127
    iget-object v3, v2, Lnh;->b:Ljava/lang/Object;

    .line 1128
    .line 1129
    check-cast v3, Lqn5;

    .line 1130
    .line 1131
    invoke-interface {v3, v1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    invoke-interface {v3}, Lqn5;->getValue()Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v3

    .line 1139
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-eqz v0, :cond_30

    .line 1144
    .line 1145
    new-instance v0, Lrd2;

    .line 1146
    .line 1147
    invoke-direct {v0, v1}, Lrd2;-><init>(Lgy5;)V

    .line 1148
    .line 1149
    .line 1150
    const/4 v3, 0x0

    .line 1151
    invoke-virtual {v0, v3}, Lrd2;->e(Ljava/lang/Object;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v3}, Lt62;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-static {v0}, Lui8;->c(Ljava/lang/Object;)V

    .line 1159
    .line 1160
    .line 1161
    sget-object v3, Lqv2;->e:Lqv2;

    .line 1162
    .line 1163
    invoke-static {v0, v3}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    iget-object v3, v2, Lnh;->b:Ljava/lang/Object;

    .line 1168
    .line 1169
    check-cast v3, Lqn5;

    .line 1170
    .line 1171
    invoke-interface {v3, v1, v0}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    iput-object v0, v2, Lnh;->b:Ljava/lang/Object;

    .line 1176
    .line 1177
    new-instance v0, Lb98;

    .line 1178
    .line 1179
    iget-object v2, v2, Lnh;->b:Ljava/lang/Object;

    .line 1180
    .line 1181
    check-cast v2, Lqn5;

    .line 1182
    .line 1183
    invoke-interface {v2, v1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    invoke-direct {v0, v15, v1}, Lb98;-><init>(ZLqn5;)V

    .line 1188
    .line 1189
    .line 1190
    goto :goto_13

    .line 1191
    :cond_30
    new-instance v0, Lb98;

    .line 1192
    .line 1193
    const/4 v3, 0x0

    .line 1194
    invoke-direct {v0, v13, v3}, Lb98;-><init>(ZLqn5;)V

    .line 1195
    .line 1196
    .line 1197
    :goto_13
    return-object v0

    .line 1198
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1199
    .line 1200
    move-object/from16 v1, p1

    .line 1201
    .line 1202
    check-cast v1, Lek2;

    .line 1203
    .line 1204
    sget v2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 1205
    .line 1206
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    iget-boolean v2, v2, Lmk2;->g:Z

    .line 1211
    .line 1212
    if-eqz v2, :cond_31

    .line 1213
    .line 1214
    instance-of v2, v1, Ldk2;

    .line 1215
    .line 1216
    if-eqz v2, :cond_31

    .line 1217
    .line 1218
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    iput-boolean v13, v2, Lmk2;->g:Z

    .line 1223
    .line 1224
    new-instance v2, Ll30;

    .line 1225
    .line 1226
    const/4 v4, 0x6

    .line 1227
    invoke-direct {v2, v4, v0, v1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1231
    .line 1232
    new-instance v1, Lkg;

    .line 1233
    .line 1234
    invoke-direct {v1, v3, v0, v2}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    const-wide/16 v2, 0x1f4

    .line 1238
    .line 1239
    invoke-static {v2, v3, v1}, Lzn4;->f(JLbt3;)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_14

    .line 1243
    :cond_31
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U:Lgv7;

    .line 1244
    .line 1245
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    check-cast v0, Lrj2;

    .line 1250
    .line 1251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v0, v1}, Lrj2;->b(Lek2;)V

    .line 1255
    .line 1256
    .line 1257
    :goto_14
    return-object v16

    .line 1258
    :pswitch_e
    check-cast v0, Lx92;

    .line 1259
    .line 1260
    move-object/from16 v1, p1

    .line 1261
    .line 1262
    check-cast v1, Ljava/lang/Boolean;

    .line 1263
    .line 1264
    invoke-virtual {v0}, Lx92;->m()Lfa2;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Lfa2;->c()V

    .line 1269
    .line 1270
    .line 1271
    return-object v16

    .line 1272
    :pswitch_f
    check-cast v0, Lv52;

    .line 1273
    .line 1274
    move-object/from16 v1, p1

    .line 1275
    .line 1276
    check-cast v1, Ljava/lang/String;

    .line 1277
    .line 1278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v0}, Lv52;->o()Ljh1;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    invoke-interface {v0, v1}, Ljh1;->q(Ljava/lang/String;)Lhh1;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    instance-of v2, v0, Lgh1;

    .line 1290
    .line 1291
    if-eqz v2, :cond_32

    .line 1292
    .line 1293
    new-instance v14, Lab1;

    .line 1294
    .line 1295
    check-cast v0, Lgh1;

    .line 1296
    .line 1297
    iget-object v0, v0, Lgh1;->a:Ljava/util/List;

    .line 1298
    .line 1299
    invoke-direct {v14, v0}, Lab1;-><init>(Ljava/util/List;)V

    .line 1300
    .line 1301
    .line 1302
    goto :goto_15

    .line 1303
    :cond_32
    sget-object v2, Lfh1;->a:Lfh1;

    .line 1304
    .line 1305
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v0

    .line 1309
    if-eqz v0, :cond_33

    .line 1310
    .line 1311
    new-instance v14, Lza1;

    .line 1312
    .line 1313
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1314
    .line 1315
    const-string v2, "Failed listing cloud directory \'"

    .line 1316
    .line 1317
    const-string v3, "\'"

    .line 1318
    .line 1319
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-direct {v14, v0}, Lza1;-><init>(Ljava/lang/Exception;)V

    .line 1327
    .line 1328
    .line 1329
    goto :goto_15

    .line 1330
    :cond_33
    invoke-static {}, Lq;->j()V

    .line 1331
    .line 1332
    .line 1333
    const/4 v14, 0x0

    .line 1334
    :goto_15
    return-object v14

    .line 1335
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 1336
    .line 1337
    move-object/from16 v1, p1

    .line 1338
    .line 1339
    check-cast v1, Lj62;

    .line 1340
    .line 1341
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 1342
    .line 1343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1344
    .line 1345
    .line 1346
    iget-object v3, v1, Lj62;->a:Ljava/security/cert/X509Certificate;

    .line 1347
    .line 1348
    iget-boolean v1, v1, Lj62;->b:Z

    .line 1349
    .line 1350
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    .line 1352
    .line 1353
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 1354
    .line 1355
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1356
    .line 1357
    .line 1358
    const v6, 0x7f130585

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v6

    .line 1365
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1366
    .line 1367
    .line 1368
    const-string v6, "\n\n"

    .line 1369
    .line 1370
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1371
    .line 1372
    .line 1373
    new-instance v7, Landroid/text/style/StyleSpan;

    .line 1374
    .line 1375
    invoke-direct {v7, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1379
    .line 1380
    .line 1381
    move-result v8

    .line 1382
    const-string v9, "Issued to\n"

    .line 1383
    .line 1384
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1388
    .line 1389
    .line 1390
    move-result v9

    .line 1391
    const/16 v11, 0x11

    .line 1392
    .line 1393
    invoke-virtual {v4, v7, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1394
    .line 1395
    .line 1396
    new-instance v7, Ly2;

    .line 1397
    .line 1398
    invoke-direct {v7, v5, v4, v3}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1399
    .line 1400
    .line 1401
    const-string v5, "Const"

    .line 1402
    .line 1403
    const-string v8, "showUntrustedDialog"

    .line 1404
    .line 1405
    invoke-static {v5, v8, v15, v7, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1409
    .line 1410
    .line 1411
    new-instance v7, Landroid/text/style/StyleSpan;

    .line 1412
    .line 1413
    invoke-direct {v7, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1417
    .line 1418
    .line 1419
    move-result v9

    .line 1420
    const-string v13, "Issued by\n"

    .line 1421
    .line 1422
    invoke-virtual {v4, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1426
    .line 1427
    .line 1428
    move-result v13

    .line 1429
    invoke-virtual {v4, v7, v9, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1430
    .line 1431
    .line 1432
    new-instance v7, Lo20;

    .line 1433
    .line 1434
    invoke-direct {v7, v15, v4, v3}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-static {v5, v8, v15, v7, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1441
    .line 1442
    .line 1443
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 1444
    .line 1445
    invoke-direct {v6, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1449
    .line 1450
    .line 1451
    move-result v7

    .line 1452
    const-string v9, "Validity\n"

    .line 1453
    .line 1454
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1458
    .line 1459
    .line 1460
    move-result v9

    .line 1461
    invoke-virtual {v4, v6, v7, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1462
    .line 1463
    .line 1464
    new-instance v6, Lxq;

    .line 1465
    .line 1466
    invoke-direct {v6, v10, v3, v4}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1467
    .line 1468
    .line 1469
    invoke-static {v5, v8, v15, v6, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    const/high16 v2, 0x41580000    # 13.5f

    .line 1473
    .line 1474
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v2

    .line 1478
    new-instance v3, Lhv1;

    .line 1479
    .line 1480
    invoke-direct {v3, v0, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1481
    .line 1482
    .line 1483
    new-instance v5, Ls35;

    .line 1484
    .line 1485
    invoke-direct {v5, v0, v12, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1486
    .line 1487
    .line 1488
    const v2, 0x7f130586

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    iget-object v3, v5, Lva;->b:Ljava/lang/Object;

    .line 1496
    .line 1497
    check-cast v3, Lra;

    .line 1498
    .line 1499
    iput-object v2, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 1500
    .line 1501
    iput-object v4, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 1502
    .line 1503
    if-eqz v1, :cond_34

    .line 1504
    .line 1505
    const v2, 0x7f130573

    .line 1506
    .line 1507
    .line 1508
    goto :goto_16

    .line 1509
    :cond_34
    const v2, 0x7f1301b3

    .line 1510
    .line 1511
    .line 1512
    :goto_16
    new-instance v3, Ld52;

    .line 1513
    .line 1514
    invoke-direct {v3, v0, v1}, Ld52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Z)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v5, v2, v3}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1518
    .line 1519
    .line 1520
    const v0, 0x7f130084

    .line 1521
    .line 1522
    .line 1523
    const/4 v3, 0x0

    .line 1524
    invoke-virtual {v5, v0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 1528
    .line 1529
    .line 1530
    return-object v16

    .line 1531
    :pswitch_11
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 1532
    .line 1533
    move-object/from16 v1, p1

    .line 1534
    .line 1535
    check-cast v1, Lc12;

    .line 1536
    .line 1537
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$ZDcjyBeBdr5_-IwZB-yDEoQsuUU(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lc12;)Lbe8;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    return-object v0

    .line 1542
    :pswitch_12
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 1543
    .line 1544
    move-object/from16 v1, p1

    .line 1545
    .line 1546
    check-cast v1, Lc12;

    .line 1547
    .line 1548
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$WH6ECyYb6jc96HjwWqEpztpN57k(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lc12;)Lbe8;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    return-object v0

    .line 1553
    :pswitch_13
    check-cast v0, Llr1;

    .line 1554
    .line 1555
    move-object/from16 v1, p1

    .line 1556
    .line 1557
    check-cast v1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1558
    .line 1559
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v2

    .line 1566
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v17

    .line 1574
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v23

    .line 1578
    const v34, 0xffdf

    .line 1579
    .line 1580
    .line 1581
    const/16 v35, 0x0

    .line 1582
    .line 1583
    const/16 v18, 0x0

    .line 1584
    .line 1585
    const/16 v19, 0x0

    .line 1586
    .line 1587
    const/16 v20, 0x0

    .line 1588
    .line 1589
    const/16 v21, 0x0

    .line 1590
    .line 1591
    const/16 v22, 0x0

    .line 1592
    .line 1593
    const/16 v24, 0x0

    .line 1594
    .line 1595
    const/16 v25, 0x0

    .line 1596
    .line 1597
    const/16 v26, 0x0

    .line 1598
    .line 1599
    const/16 v27, 0x0

    .line 1600
    .line 1601
    const/16 v28, 0x0

    .line 1602
    .line 1603
    const/16 v29, 0x0

    .line 1604
    .line 1605
    const/16 v30, 0x0

    .line 1606
    .line 1607
    const/16 v31, 0x0

    .line 1608
    .line 1609
    const/16 v32, 0x0

    .line 1610
    .line 1611
    const/16 v33, 0x0

    .line 1612
    .line 1613
    invoke-static/range {v17 .. v35}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v0

    .line 1617
    invoke-virtual {v2, v0}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 1618
    .line 1619
    .line 1620
    return-object v16

    .line 1621
    :pswitch_14
    check-cast v0, Lpe4;

    .line 1622
    .line 1623
    move-object/from16 v5, p1

    .line 1624
    .line 1625
    check-cast v5, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1626
    .line 1627
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1628
    .line 1629
    .line 1630
    sget-object v6, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->ERROR:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1631
    .line 1632
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1633
    .line 1634
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    check-cast v0, Lhi1;

    .line 1639
    .line 1640
    iget-object v0, v0, Lhi1;->m:Ljava/lang/Exception;

    .line 1641
    .line 1642
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    if-nez v0, :cond_35

    .line 1647
    .line 1648
    goto :goto_17

    .line 1649
    :cond_35
    move-object v4, v0

    .line 1650
    :goto_17
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v0

    .line 1654
    const v2, 0x7f130182

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v9

    .line 1661
    const/4 v11, 0x0

    .line 1662
    const/16 v12, 0x187f

    .line 1663
    .line 1664
    sget-object v7, Lov2;->a:Lov2;

    .line 1665
    .line 1666
    sget-object v8, Lsv2;->a:Lsv2;

    .line 1667
    .line 1668
    const/4 v10, 0x0

    .line 1669
    invoke-static/range {v5 .. v12}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    return-object v0

    .line 1674
    :pswitch_15
    check-cast v0, Ljava/util/Set;

    .line 1675
    .line 1676
    move-object/from16 v1, p1

    .line 1677
    .line 1678
    check-cast v1, Lef1;

    .line 1679
    .line 1680
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1681
    .line 1682
    .line 1683
    iget-object v2, v1, Lef1;->g:Ljava/util/List;

    .line 1684
    .line 1685
    new-instance v3, Ljava/util/ArrayList;

    .line 1686
    .line 1687
    const/16 v4, 0xa

    .line 1688
    .line 1689
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1690
    .line 1691
    .line 1692
    move-result v4

    .line 1693
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1694
    .line 1695
    .line 1696
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1701
    .line 1702
    .line 1703
    move-result v4

    .line 1704
    if-eqz v4, :cond_37

    .line 1705
    .line 1706
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v4

    .line 1710
    move-object v5, v4

    .line 1711
    check-cast v5, Lmd1;

    .line 1712
    .line 1713
    iget-object v4, v5, Lmd1;->a:Lqd1;

    .line 1714
    .line 1715
    iget-object v4, v4, Lqd1;->a:Lsd1;

    .line 1716
    .line 1717
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1718
    .line 1719
    .line 1720
    move-result v4

    .line 1721
    if-eqz v4, :cond_36

    .line 1722
    .line 1723
    sget-object v7, Lrd1;->NOT_RUN:Lrd1;

    .line 1724
    .line 1725
    const/4 v10, 0x0

    .line 1726
    const/4 v11, 0x3

    .line 1727
    const/4 v6, 0x0

    .line 1728
    const/4 v8, 0x0

    .line 1729
    const/4 v9, 0x0

    .line 1730
    invoke-static/range {v5 .. v11}, Lmd1;->a(Lmd1;ZLrd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Lmd1;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v5

    .line 1734
    :cond_36
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    goto :goto_18

    .line 1738
    :cond_37
    const/16 v0, 0xbf

    .line 1739
    .line 1740
    invoke-static {v1, v3, v15, v13, v0}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v0

    .line 1744
    return-object v0

    .line 1745
    :pswitch_16
    move-object v3, v0

    .line 1746
    check-cast v3, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 1747
    .line 1748
    move-object/from16 v0, p1

    .line 1749
    .line 1750
    check-cast v0, Ls01;

    .line 1751
    .line 1752
    iget-object v1, v3, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->R:Lgv7;

    .line 1753
    .line 1754
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v1

    .line 1758
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1759
    .line 1760
    .line 1761
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1762
    .line 1763
    iget-boolean v2, v0, Ls01;->a:Z

    .line 1764
    .line 1765
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1766
    .line 1767
    .line 1768
    iget-object v8, v3, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->S:Lgv7;

    .line 1769
    .line 1770
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v1

    .line 1774
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1775
    .line 1776
    iget-boolean v2, v0, Ls01;->a:Z

    .line 1777
    .line 1778
    xor-int/lit8 v4, v2, 0x1

    .line 1779
    .line 1780
    invoke-static {v1, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1781
    .line 1782
    .line 1783
    if-nez v2, :cond_38

    .line 1784
    .line 1785
    iget-object v0, v0, Ls01;->b:Ljava/util/ArrayList;

    .line 1786
    .line 1787
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v1

    .line 1791
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1792
    .line 1793
    invoke-virtual {v1, v15}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 1794
    .line 1795
    .line 1796
    new-instance v9, Lq01;

    .line 1797
    .line 1798
    new-instance v1, Ln01;

    .line 1799
    .line 1800
    const-string v6, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V"

    .line 1801
    .line 1802
    const/4 v7, 0x0

    .line 1803
    const/4 v2, 0x2

    .line 1804
    const-class v4, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 1805
    .line 1806
    const-string v5, "onBackupItemMenuClick"

    .line 1807
    .line 1808
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1809
    .line 1810
    .line 1811
    invoke-direct {v9, v1}, Lq01;-><init>(Lqt3;)V

    .line 1812
    .line 1813
    .line 1814
    new-instance v17, Lfm7;

    .line 1815
    .line 1816
    const/16 v21, 0x0

    .line 1817
    .line 1818
    const/16 v22, 0x1e

    .line 1819
    .line 1820
    const/16 v19, 0x0

    .line 1821
    .line 1822
    const/16 v20, 0x0

    .line 1823
    .line 1824
    move-object/from16 v18, v0

    .line 1825
    .line 1826
    invoke-direct/range {v17 .. v22}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1827
    .line 1828
    .line 1829
    move-object/from16 v0, v17

    .line 1830
    .line 1831
    invoke-virtual {v9, v0, v13}, Lgm7;->w(Lfm7;Z)V

    .line 1832
    .line 1833
    .line 1834
    new-instance v0, Lrs;

    .line 1835
    .line 1836
    invoke-direct {v0, v3, v10}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 1837
    .line 1838
    .line 1839
    iput-object v0, v9, Lgm7;->j:Lqt3;

    .line 1840
    .line 1841
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1846
    .line 1847
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 1848
    .line 1849
    .line 1850
    :cond_38
    return-object v16

    .line 1851
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 1852
    .line 1853
    move-object/from16 v1, p1

    .line 1854
    .line 1855
    check-cast v1, Lfm7;

    .line 1856
    .line 1857
    sget v3, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 1858
    .line 1859
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1860
    .line 1861
    .line 1862
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->M:Lgv7;

    .line 1863
    .line 1864
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v3

    .line 1868
    check-cast v3, Lbs0;

    .line 1869
    .line 1870
    invoke-virtual {v3, v1, v13}, Lgm7;->w(Lfm7;Z)V

    .line 1871
    .line 1872
    .line 1873
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 1874
    .line 1875
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1876
    .line 1877
    .line 1878
    move-result v3

    .line 1879
    invoke-virtual {v0}, Lzm;->invalidateOptionsMenu()V

    .line 1880
    .line 1881
    .line 1882
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N:Lgv7;

    .line 1883
    .line 1884
    if-nez v3, :cond_39

    .line 1885
    .line 1886
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v3

    .line 1890
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1891
    .line 1892
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v3

    .line 1899
    iget-object v3, v3, Lqr0;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1900
    .line 1901
    invoke-virtual {v3, v13}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v3

    .line 1908
    iget-object v3, v3, Lqr0;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1909
    .line 1910
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v3

    .line 1917
    iget-object v3, v3, Lqr0;->c:Lzx2;

    .line 1918
    .line 1919
    iget-object v3, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1920
    .line 1921
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    .line 1923
    .line 1924
    goto :goto_19

    .line 1925
    :cond_39
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v3

    .line 1929
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1930
    .line 1931
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v3

    .line 1938
    iget-object v3, v3, Lqr0;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1939
    .line 1940
    invoke-virtual {v3, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v3

    .line 1947
    iget-object v3, v3, Lqr0;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1948
    .line 1949
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v2

    .line 1956
    iget-object v2, v2, Lqr0;->c:Lzx2;

    .line 1957
    .line 1958
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1959
    .line 1960
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1961
    .line 1962
    .line 1963
    :goto_19
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v2

    .line 1967
    if-eqz v2, :cond_3a

    .line 1968
    .line 1969
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1970
    .line 1971
    .line 1972
    move-result v1

    .line 1973
    const/16 v3, 0x64

    .line 1974
    .line 1975
    invoke-static {v0, v1, v3, v13}, Lorg/swiftapps/swiftbackup/common/Const;->p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    invoke-virtual {v2, v0}, Lnc8;->d0(Ljava/lang/CharSequence;)V

    .line 1980
    .line 1981
    .line 1982
    :cond_3a
    return-object v16

    .line 1983
    :pswitch_18
    check-cast v0, Lil0;

    .line 1984
    .line 1985
    iget-object v0, v0, Lil0;->q:Lgv7;

    .line 1986
    .line 1987
    move-object/from16 v1, p1

    .line 1988
    .line 1989
    check-cast v1, Ljava/lang/String;

    .line 1990
    .line 1991
    if-eqz v1, :cond_3d

    .line 1992
    .line 1993
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1994
    .line 1995
    .line 1996
    move-result v2

    .line 1997
    if-nez v2, :cond_3b

    .line 1998
    .line 1999
    goto :goto_1a

    .line 2000
    :cond_3b
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v2

    .line 2004
    check-cast v2, Lw45;

    .line 2005
    .line 2006
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 2007
    .line 2008
    .line 2009
    move-result v2

    .line 2010
    if-nez v2, :cond_3c

    .line 2011
    .line 2012
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v2

    .line 2016
    check-cast v2, Lw45;

    .line 2017
    .line 2018
    invoke-virtual {v2}, Lw45;->show()V

    .line 2019
    .line 2020
    .line 2021
    :cond_3c
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v0

    .line 2025
    check-cast v0, Lw45;

    .line 2026
    .line 2027
    invoke-virtual {v0, v1}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 2028
    .line 2029
    .line 2030
    goto :goto_1b

    .line 2031
    :cond_3d
    :goto_1a
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v0

    .line 2035
    check-cast v0, Lw45;

    .line 2036
    .line 2037
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 2038
    .line 2039
    .line 2040
    :goto_1b
    return-object v16

    .line 2041
    :pswitch_19
    check-cast v0, Lxw;

    .line 2042
    .line 2043
    move-object/from16 v3, p1

    .line 2044
    .line 2045
    check-cast v3, Ljava/lang/String;

    .line 2046
    .line 2047
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2048
    .line 2049
    .line 2050
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 2051
    .line 2052
    const/4 v5, 0x4

    .line 2053
    const/4 v6, 0x0

    .line 2054
    const-string v2, "AppRestoreTask"

    .line 2055
    .line 2056
    const/4 v4, 0x0

    .line 2057
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2058
    .line 2059
    .line 2060
    iget-object v0, v0, Lxw;->u:Luw;

    .line 2061
    .line 2062
    invoke-virtual {v0, v3}, Luw;->c(Ljava/lang/String;)V

    .line 2063
    .line 2064
    .line 2065
    return-object v16

    .line 2066
    :pswitch_1a
    check-cast v0, Lmq;

    .line 2067
    .line 2068
    move-object/from16 v3, p1

    .line 2069
    .line 2070
    check-cast v3, Ljava/lang/String;

    .line 2071
    .line 2072
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2073
    .line 2074
    .line 2075
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 2076
    .line 2077
    const/4 v5, 0x4

    .line 2078
    const/4 v6, 0x0

    .line 2079
    const-string v2, "AppDownloadTask"

    .line 2080
    .line 2081
    const/4 v4, 0x0

    .line 2082
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2083
    .line 2084
    .line 2085
    iget-object v0, v0, Lmq;->j:Lkq;

    .line 2086
    .line 2087
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2088
    .line 2089
    .line 2090
    iget-object v1, v0, Lkq;->c:Ljava/lang/String;

    .line 2091
    .line 2092
    if-eqz v1, :cond_3f

    .line 2093
    .line 2094
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2095
    .line 2096
    .line 2097
    move-result v1

    .line 2098
    if-nez v1, :cond_3e

    .line 2099
    .line 2100
    goto :goto_1c

    .line 2101
    :cond_3e
    iget-object v1, v0, Lkq;->c:Ljava/lang/String;

    .line 2102
    .line 2103
    const-string v2, ", "

    .line 2104
    .line 2105
    invoke-static {v1, v2, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v1

    .line 2109
    iput-object v1, v0, Lkq;->c:Ljava/lang/String;

    .line 2110
    .line 2111
    goto :goto_1d

    .line 2112
    :cond_3f
    :goto_1c
    iget-object v1, v0, Lkq;->d:Lmq;

    .line 2113
    .line 2114
    iget-object v1, v1, Lmq;->e:Lji;

    .line 2115
    .line 2116
    invoke-virtual {v1}, Lji;->getName()Ljava/lang/String;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v1

    .line 2120
    const-string v2, ": "

    .line 2121
    .line 2122
    invoke-static {v1, v2, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v1

    .line 2126
    iput-object v1, v0, Lkq;->c:Ljava/lang/String;

    .line 2127
    .line 2128
    :goto_1d
    return-object v16

    .line 2129
    :pswitch_1b
    check-cast v0, Lrj;

    .line 2130
    .line 2131
    iget-object v1, v0, Lrj;->e:Lk28;

    .line 2132
    .line 2133
    move-object/from16 v2, p1

    .line 2134
    .line 2135
    check-cast v2, Lpi;

    .line 2136
    .line 2137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v2}, Lpi;->a()I

    .line 2141
    .line 2142
    .line 2143
    move-result v4

    .line 2144
    const/16 v5, 0xb

    .line 2145
    .line 2146
    if-eq v4, v5, :cond_43

    .line 2147
    .line 2148
    if-eq v4, v3, :cond_42

    .line 2149
    .line 2150
    const/16 v0, 0x15

    .line 2151
    .line 2152
    if-eq v4, v0, :cond_40

    .line 2153
    .line 2154
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 2155
    .line 2156
    invoke-virtual {v2}, Lpi;->a()I

    .line 2157
    .line 2158
    .line 2159
    move-result v0

    .line 2160
    const-string v1, "onHelpIconClick not implemented for item id="

    .line 2161
    .line 2162
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v7

    .line 2166
    const/4 v9, 0x4

    .line 2167
    const/4 v10, 0x0

    .line 2168
    const-string v6, "AppActionsDialog"

    .line 2169
    .line 2170
    const/4 v8, 0x0

    .line 2171
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2172
    .line 2173
    .line 2174
    goto :goto_1f

    .line 2175
    :cond_40
    const v0, 0x7f1300c8

    .line 2176
    .line 2177
    .line 2178
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v0

    .line 2182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2183
    .line 2184
    .line 2185
    const v2, 0x7f1300c9

    .line 2186
    .line 2187
    .line 2188
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v2

    .line 2192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2193
    .line 2194
    .line 2195
    new-instance v3, Lhv1;

    .line 2196
    .line 2197
    invoke-direct {v3, v1, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 2198
    .line 2199
    .line 2200
    new-instance v4, Ls35;

    .line 2201
    .line 2202
    const/4 v5, 0x0

    .line 2203
    invoke-direct {v4, v1, v12, v3, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 2204
    .line 2205
    .line 2206
    iget-object v3, v4, Lva;->b:Ljava/lang/Object;

    .line 2207
    .line 2208
    check-cast v3, Lra;

    .line 2209
    .line 2210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2211
    .line 2212
    .line 2213
    move-result v6

    .line 2214
    if-nez v6, :cond_41

    .line 2215
    .line 2216
    goto :goto_1e

    .line 2217
    :cond_41
    iput-object v0, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 2218
    .line 2219
    :goto_1e
    iput-object v2, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 2220
    .line 2221
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v0

    .line 2225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2226
    .line 2227
    .line 2228
    invoke-virtual {v4, v0, v5}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 2229
    .line 2230
    .line 2231
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 2232
    .line 2233
    .line 2234
    goto :goto_1f

    .line 2235
    :cond_42
    const/4 v5, 0x0

    .line 2236
    sput-object v5, Llr4;->h:Ljava/util/Set;

    .line 2237
    .line 2238
    invoke-virtual {v0}, Lrj;->I()V

    .line 2239
    .line 2240
    .line 2241
    goto :goto_1f

    .line 2242
    :cond_43
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 2243
    .line 2244
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 2245
    .line 2246
    .line 2247
    move-result v0

    .line 2248
    if-nez v0, :cond_44

    .line 2249
    .line 2250
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 2251
    .line 2252
    invoke-static {v1}, Lrs9;->u(Lk28;)V

    .line 2253
    .line 2254
    .line 2255
    :cond_44
    :goto_1f
    return-object v16

    .line 2256
    nop

    .line 2257
    :pswitch_data_0
    .packed-switch 0x0
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
