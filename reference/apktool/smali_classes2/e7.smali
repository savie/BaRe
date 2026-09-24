.class public final synthetic Le7;
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
    iput p2, p0, Le7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le7;->b:Ljava/lang/Object;

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
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le7;->a:I

    .line 4
    .line 5
    const/4 v4, 0x5

    .line 6
    const-class v5, Landroid/widget/TextView;

    .line 7
    .line 8
    const v6, 0x7f140160

    .line 9
    .line 10
    .line 11
    const/4 v9, 0x3

    .line 12
    const/4 v10, 0x6

    .line 13
    const-string v11, "Error in signIn"

    .line 14
    .line 15
    const/16 v12, 0xe

    .line 16
    .line 17
    const/4 v13, 0x2

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    sget-object v17, Lbe8;->a:Lbe8;

    .line 22
    .line 23
    iget-object v0, v0, Le7;->b:Ljava/lang/Object;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sget v2, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 39
    .line 40
    invoke-virtual {v0}, Lzm;->invalidateOptionsMenu()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lil0;->A(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-boolean v2, v2, Ltp8;->h:Z

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Z(ZZ)V

    .line 53
    .line 54
    .line 55
    return-object v17

    .line 56
    :pswitch_0
    check-cast v0, Lio8;

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    check-cast v1, Ljava/lang/Long;

    .line 61
    .line 62
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lio8;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object v17

    .line 74
    :pswitch_1
    move-object v1, v0

    .line 75
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 76
    .line 77
    move-object/from16 v0, p1

    .line 78
    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N:I

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :try_start_0
    invoke-static {v1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    iput-boolean v2, v1, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->L:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iput-boolean v15, v1, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->L:Z

    .line 94
    .line 95
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 107
    .line 108
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/4 v7, 0x4

    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lzn4;->a:Lzn4;

    .line 119
    .line 120
    new-instance v0, Lcv;

    .line 121
    .line 122
    invoke-direct {v0, v12, v1, v5}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-object v17

    .line 129
    :pswitch_2
    check-cast v0, Lh08;

    .line 130
    .line 131
    move-object/from16 v1, p1

    .line 132
    .line 133
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v2, Lokhttp3/Request$Builder;

    .line 139
    .line 140
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v0, "/openapi/uinfo"

    .line 155
    .line 156
    invoke-static {v3, v0, v1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 161
    .line 162
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lokhttp3/Request;

    .line 166
    .line 167
    invoke-direct {v0, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;

    .line 172
    .line 173
    move-object/from16 v1, p1

    .line 174
    .line 175
    check-cast v1, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    sget v1, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;->P:I

    .line 181
    .line 182
    invoke-virtual {v0}, Lil0;->H()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    .line 187
    .line 188
    return-object v17

    .line 189
    :pswitch_4
    check-cast v0, Lm37;

    .line 190
    .line 191
    move-object/from16 v1, p1

    .line 192
    .line 193
    check-cast v1, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "- "

    .line 204
    .line 205
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0

    .line 210
    :pswitch_5
    move-object v1, v0

    .line 211
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 212
    .line 213
    move-object/from16 v0, p1

    .line 214
    .line 215
    check-cast v0, Landroid/content/Intent;

    .line 216
    .line 217
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->M:I

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    :try_start_1
    iget v2, v1, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->L:I

    .line 223
    .line 224
    invoke-virtual {v1, v0, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    .line 229
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 241
    .line 242
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const/4 v7, 0x4

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v6, 0x0

    .line 249
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    sget-object v0, Lzn4;->a:Lzn4;

    .line 253
    .line 254
    new-instance v0, Lcv;

    .line 255
    .line 256
    invoke-direct {v0, v12, v1, v5}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 260
    .line 261
    .line 262
    :goto_1
    return-object v17

    .line 263
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;

    .line 264
    .line 265
    move-object/from16 v1, p1

    .line 266
    .line 267
    check-cast v1, Ljava/lang/Exception;

    .line 268
    .line 269
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->L:I

    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v2, Lhv1;

    .line 275
    .line 276
    invoke-direct {v2, v0, v6}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 277
    .line 278
    .line 279
    new-instance v3, Ls35;

    .line 280
    .line 281
    invoke-direct {v3, v0, v6, v2, v14}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v3, Lva;->b:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v2, Lra;

    .line 287
    .line 288
    const v4, 0x7f130222

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v4}, Lv75;->v(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-nez v1, :cond_0

    .line 299
    .line 300
    const-string v1, ""

    .line 301
    .line 302
    :cond_0
    iput-object v1, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 303
    .line 304
    const v1, 0x7f1303e6

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v1, v14}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lnv0;

    .line 311
    .line 312
    invoke-direct {v1, v0, v13}, Lnv0;-><init>(Lil0;I)V

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
    return-object v17

    .line 321
    :pswitch_7
    move-object v1, v0

    .line 322
    check-cast v1, Lfq5;

    .line 323
    .line 324
    move-object/from16 v0, p1

    .line 325
    .line 326
    check-cast v0, Landroid/content/Intent;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    const/16 v2, 0x1394

    .line 332
    .line 333
    :try_start_2
    invoke-virtual {v1, v0, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :catch_2
    move-exception v0

    .line 338
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .line 344
    .line 345
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 350
    .line 351
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    const/4 v7, 0x4

    .line 356
    const/4 v8, 0x0

    .line 357
    const/4 v6, 0x0

    .line 358
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    sget-object v0, Lzn4;->a:Lzn4;

    .line 362
    .line 363
    new-instance v0, Lcv;

    .line 364
    .line 365
    invoke-direct {v0, v12, v1, v5}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v15}, Landroid/app/Activity;->setResult(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 375
    .line 376
    .line 377
    :goto_2
    return-object v17

    .line 378
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 379
    .line 380
    move-object/from16 v1, p1

    .line 381
    .line 382
    check-cast v1, Lfm7;

    .line 383
    .line 384
    sget v3, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    iget-object v3, v1, Lfm7;->a:Ljava/util/List;

    .line 390
    .line 391
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    xor-int/lit8 v6, v3, 0x1

    .line 396
    .line 397
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v7, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 402
    .line 403
    .line 404
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->S:Lgv7;

    .line 405
    .line 406
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 411
    .line 412
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-ne v7, v2, :cond_1

    .line 417
    .line 418
    move v7, v2

    .line 419
    goto :goto_3

    .line 420
    :cond_1
    move v7, v15

    .line 421
    :goto_3
    invoke-static {v6, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 422
    .line 423
    .line 424
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->U:Lgv7;

    .line 425
    .line 426
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    check-cast v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 431
    .line 432
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    if-eq v7, v2, :cond_3

    .line 437
    .line 438
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-ne v7, v13, :cond_2

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_2
    move v7, v15

    .line 446
    goto :goto_5

    .line 447
    :cond_3
    :goto_4
    move v7, v2

    .line 448
    :goto_5
    invoke-static {v6, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    if-ne v7, v2, :cond_c

    .line 456
    .line 457
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N:Lgv7;

    .line 458
    .line 459
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    check-cast v7, Lji;

    .line 464
    .line 465
    if-eqz v7, :cond_6

    .line 466
    .line 467
    invoke-virtual {v7}, Lji;->getLabels()Ljava/util/Set;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    if-eqz v7, :cond_6

    .line 472
    .line 473
    new-instance v8, Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    :cond_4
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-eqz v10, :cond_5

    .line 487
    .line 488
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    check-cast v10, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 493
    .line 494
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v10

    .line 498
    if-eqz v10, :cond_4

    .line 499
    .line 500
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_6

    .line 504
    :cond_5
    invoke-static {v8}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    goto :goto_7

    .line 509
    :cond_6
    move-object v7, v14

    .line 510
    :goto_7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    invoke-virtual {v8}, Lzr4;->j()Ljava/util/ArrayList;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    new-instance v10, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    :cond_7
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v11

    .line 531
    if-eqz v11, :cond_8

    .line 532
    .line 533
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v11

    .line 537
    check-cast v11, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 538
    .line 539
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    if-eqz v11, :cond_7

    .line 544
    .line 545
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_8
    invoke-static {v10}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 550
    .line 551
    .line 552
    move-result-object v8

    .line 553
    if-eqz v7, :cond_9

    .line 554
    .line 555
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    move-result v10

    .line 559
    if-eqz v10, :cond_a

    .line 560
    .line 561
    :cond_9
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 562
    .line 563
    .line 564
    move-result v10

    .line 565
    if-eqz v10, :cond_a

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_a
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    if-nez v7, :cond_b

    .line 573
    .line 574
    move v7, v2

    .line 575
    goto :goto_a

    .line 576
    :cond_b
    :goto_9
    move v7, v15

    .line 577
    :goto_a
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    .line 579
    .line 580
    :cond_c
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R:Lgv7;

    .line 581
    .line 582
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    check-cast v6, Lzx2;

    .line 587
    .line 588
    iget-object v6, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 589
    .line 590
    if-eqz v3, :cond_d

    .line 591
    .line 592
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-nez v3, :cond_d

    .line 597
    .line 598
    move v3, v2

    .line 599
    goto :goto_b

    .line 600
    :cond_d
    move v3, v15

    .line 601
    :goto_b
    invoke-static {v6, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N()Lur4;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    if-eqz v6, :cond_e

    .line 613
    .line 614
    move v6, v2

    .line 615
    goto :goto_c

    .line 616
    :cond_e
    move v6, v15

    .line 617
    :goto_c
    invoke-virtual {v3, v1, v6}, Lgm7;->w(Lfm7;Z)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-nez v1, :cond_11

    .line 625
    .line 626
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    iget-object v1, v1, Lzr4;->g:Ljava/lang/String;

    .line 631
    .line 632
    if-eqz v1, :cond_11

    .line 633
    .line 634
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    iput-object v14, v3, Lzr4;->g:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N()Lur4;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    iget-object v3, v3, Lgm7;->e:Lfm7;

    .line 645
    .line 646
    iget-object v3, v3, Lfm7;->a:Ljava/util/List;

    .line 647
    .line 648
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    if-eqz v6, :cond_10

    .line 657
    .line 658
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    move-object v7, v6

    .line 663
    check-cast v7, Lvq4;

    .line 664
    .line 665
    iget-object v7, v7, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 666
    .line 667
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v7

    .line 671
    invoke-static {v7, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v7

    .line 675
    if-eqz v7, :cond_f

    .line 676
    .line 677
    move-object v14, v6

    .line 678
    :cond_10
    check-cast v14, Lvq4;

    .line 679
    .line 680
    if-eqz v14, :cond_11

    .line 681
    .line 682
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N()Lur4;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 687
    .line 688
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 689
    .line 690
    invoke-interface {v1, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    if-ltz v1, :cond_11

    .line 695
    .line 696
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    new-instance v6, Lkn0;

    .line 708
    .line 709
    invoke-direct {v6, v0, v1}, Lkn0;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;I)V

    .line 710
    .line 711
    .line 712
    const-wide/16 v7, 0x1f4

    .line 713
    .line 714
    invoke-virtual {v3, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    .line 716
    .line 717
    :cond_11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    const-class v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 722
    .line 723
    if-ne v1, v2, :cond_12

    .line 724
    .line 725
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-virtual {v1}, Lzr4;->j()Ljava/util/ArrayList;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    iget-object v7, v7, Lrr4;->G:Landroid/widget/TextView;

    .line 742
    .line 743
    invoke-static {v0, v6, v4, v15}, Lorg/swiftapps/swiftbackup/common/Const;->p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    iget-object v6, v6, Lrr4;->t:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 755
    .line 756
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 757
    .line 758
    .line 759
    move-result-object v7

    .line 760
    iget-object v7, v7, Lrr4;->p:Landroid/widget/ImageView;

    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 763
    .line 764
    .line 765
    move-result v8

    .line 766
    xor-int/2addr v8, v2

    .line 767
    invoke-static {v7, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 768
    .line 769
    .line 770
    filled-new-array {v5, v3}, [Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    invoke-virtual {v0, v7}, Lil0;->y([Ljava/lang/Class;)V

    .line 775
    .line 776
    .line 777
    sget-object v7, Ltr;->n0:Lqr;

    .line 778
    .line 779
    invoke-virtual {v0}, Lk28;->v()Z

    .line 780
    .line 781
    .line 782
    move-result v20

    .line 783
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 784
    .line 785
    .line 786
    move-result-object v22

    .line 787
    new-instance v1, Lh01;

    .line 788
    .line 789
    invoke-direct {v1, v0, v13}, Lh01;-><init>(Ljava/lang/Object;I)V

    .line 790
    .line 791
    .line 792
    const/16 v25, 0x7c2

    .line 793
    .line 794
    const/16 v19, 0x0

    .line 795
    .line 796
    const/high16 v21, 0x3f800000    # 1.0f

    .line 797
    .line 798
    const/16 v23, 0x1

    .line 799
    .line 800
    move-object/from16 v24, v1

    .line 801
    .line 802
    move-object/from16 v18, v6

    .line 803
    .line 804
    invoke-static/range {v18 .. v25}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 805
    .line 806
    .line 807
    :cond_12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-ne v1, v13, :cond_13

    .line 812
    .line 813
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-virtual {v1}, Lzr4;->j()Ljava/util/ArrayList;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 822
    .line 823
    .line 824
    move-result v6

    .line 825
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    iget-object v7, v7, Lrr4;->H:Landroid/widget/TextView;

    .line 830
    .line 831
    invoke-static {v0, v6, v4, v15}, Lorg/swiftapps/swiftbackup/common/Const;->p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    .line 837
    .line 838
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->T:Lgv7;

    .line 839
    .line 840
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 845
    .line 846
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 847
    .line 848
    .line 849
    move-result v6

    .line 850
    xor-int/2addr v2, v6

    .line 851
    invoke-static {v4, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 852
    .line 853
    .line 854
    filled-new-array {v5, v3}, [Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-virtual {v0, v2}, Lil0;->y([Ljava/lang/Class;)V

    .line 859
    .line 860
    .line 861
    sget-object v2, Ltr;->n0:Lqr;

    .line 862
    .line 863
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->W:Lgv7;

    .line 864
    .line 865
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    move-object/from16 v18, v2

    .line 870
    .line 871
    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    .line 872
    .line 873
    invoke-virtual {v0}, Lk28;->v()Z

    .line 874
    .line 875
    .line 876
    move-result v20

    .line 877
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 878
    .line 879
    .line 880
    move-result-object v22

    .line 881
    new-instance v1, Lrj0;

    .line 882
    .line 883
    invoke-direct {v1, v0, v9}, Lrj0;-><init>(Ljava/lang/Object;I)V

    .line 884
    .line 885
    .line 886
    const/16 v25, 0x7c2

    .line 887
    .line 888
    const/16 v19, 0x0

    .line 889
    .line 890
    const/high16 v21, 0x3f800000    # 1.0f

    .line 891
    .line 892
    const/16 v23, 0x1

    .line 893
    .line 894
    move-object/from16 v24, v1

    .line 895
    .line 896
    invoke-static/range {v18 .. v25}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 897
    .line 898
    .line 899
    :cond_13
    return-object v17

    .line 900
    :pswitch_9
    check-cast v0, Lwq4;

    .line 901
    .line 902
    move-object/from16 v1, p1

    .line 903
    .line 904
    check-cast v1, Lsl1;

    .line 905
    .line 906
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    iget-object v0, v0, Lwq4;->e:Lpb7;

    .line 910
    .line 911
    iget-object v2, v1, Lsl1;->d:Lgv7;

    .line 912
    .line 913
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    check-cast v2, Ljava/util/List;

    .line 918
    .line 919
    iget-object v1, v1, Lsl1;->b:Lgv7;

    .line 920
    .line 921
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    check-cast v1, Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    iput-object v1, v0, Lpb7;->g:Ljava/lang/String;

    .line 937
    .line 938
    invoke-static {v0, v2}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 939
    .line 940
    .line 941
    iget-object v0, v0, Lpb7;->h:Lgj;

    .line 942
    .line 943
    if-eqz v0, :cond_14

    .line 944
    .line 945
    invoke-virtual {v0}, Lgj;->invoke()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    :cond_14
    return-object v17

    .line 949
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 950
    .line 951
    move-object/from16 v1, p1

    .line 952
    .line 953
    check-cast v1, Lho7;

    .line 954
    .line 955
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->U:Lwa;

    .line 956
    .line 957
    if-nez v1, :cond_16

    .line 958
    .line 959
    if-eqz v5, :cond_15

    .line 960
    .line 961
    invoke-virtual {v5}, Lho;->dismiss()V

    .line 962
    .line 963
    .line 964
    :cond_15
    iput-object v14, v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->U:Lwa;

    .line 965
    .line 966
    goto/16 :goto_15

    .line 967
    .line 968
    :cond_16
    if-eqz v5, :cond_17

    .line 969
    .line 970
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    .line 971
    .line 972
    .line 973
    move-result v5

    .line 974
    if-ne v5, v2, :cond_17

    .line 975
    .line 976
    goto/16 :goto_15

    .line 977
    .line 978
    :cond_17
    new-instance v5, Lye4;

    .line 979
    .line 980
    invoke-direct {v5, v0, v13}, Lye4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V

    .line 981
    .line 982
    .line 983
    new-instance v18, Lq02;

    .line 984
    .line 985
    const/16 v24, 0x0

    .line 986
    .line 987
    const/16 v25, 0x2

    .line 988
    .line 989
    const/16 v19, 0x0

    .line 990
    .line 991
    const-class v21, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 992
    .line 993
    const-string v22, "finishAffinity"

    .line 994
    .line 995
    const-string v23, "finishAffinity()V"

    .line 996
    .line 997
    move-object/from16 v20, v0

    .line 998
    .line 999
    invoke-direct/range {v18 .. v25}, Lq02;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1000
    .line 1001
    .line 1002
    move-object/from16 v9, v18

    .line 1003
    .line 1004
    new-instance v11, Lcf4;

    .line 1005
    .line 1006
    invoke-direct {v11, v0, v2}, Lcf4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v12, Ldf4;

    .line 1010
    .line 1011
    invoke-direct {v12, v0, v2}, Ldf4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V

    .line 1012
    .line 1013
    .line 1014
    new-instance v2, Lkn3;

    .line 1015
    .line 1016
    invoke-direct {v2, v0, v10}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 1017
    .line 1018
    .line 1019
    iget-boolean v13, v1, Lho7;->c:Z

    .line 1020
    .line 1021
    iget-boolean v7, v1, Lho7;->b:Z

    .line 1022
    .line 1023
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v4

    .line 1027
    const v3, 0x7f0d00d7

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v4, v3, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    const v4, 0x7f0a0105

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v16

    .line 1041
    move-object/from16 v4, v16

    .line 1042
    .line 1043
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 1044
    .line 1045
    if-eqz v4, :cond_31

    .line 1046
    .line 1047
    const v8, 0x7f0a011b

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v16

    .line 1054
    move-object/from16 v8, v16

    .line 1055
    .line 1056
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 1057
    .line 1058
    if-eqz v8, :cond_30

    .line 1059
    .line 1060
    const v15, 0x7f0a011c

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v3, v15}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v16

    .line 1067
    move-object/from16 v15, v16

    .line 1068
    .line 1069
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 1070
    .line 1071
    if-eqz v15, :cond_2f

    .line 1072
    .line 1073
    const v14, 0x7f0a0137

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v3, v14}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v16

    .line 1080
    move-object/from16 v14, v16

    .line 1081
    .line 1082
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 1083
    .line 1084
    if-eqz v14, :cond_2e

    .line 1085
    .line 1086
    const v6, 0x7f0a02d0

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v16

    .line 1093
    check-cast v16, Landroid/widget/ImageView;

    .line 1094
    .line 1095
    if-eqz v16, :cond_2d

    .line 1096
    .line 1097
    const v6, 0x7f0a02d1

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v16

    .line 1104
    move-object/from16 v6, v16

    .line 1105
    .line 1106
    check-cast v6, Landroid/widget/ImageView;

    .line 1107
    .line 1108
    if-eqz v6, :cond_2c

    .line 1109
    .line 1110
    const v10, 0x7f0a0480

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v3, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v16

    .line 1117
    check-cast v16, Landroid/widget/LinearLayout;

    .line 1118
    .line 1119
    if-eqz v16, :cond_2b

    .line 1120
    .line 1121
    const v10, 0x7f0a0481

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v3, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v16

    .line 1128
    if-eqz v16, :cond_2b

    .line 1129
    .line 1130
    const v10, 0x7f0a0482

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v3, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v16

    .line 1137
    check-cast v16, Landroid/widget/LinearLayout;

    .line 1138
    .line 1139
    if-eqz v16, :cond_2b

    .line 1140
    .line 1141
    const v10, 0x7f0a0483

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v3, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v16

    .line 1148
    if-eqz v16, :cond_2b

    .line 1149
    .line 1150
    move-object v10, v3

    .line 1151
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1152
    .line 1153
    move/from16 v16, v7

    .line 1154
    .line 1155
    const v7, 0x7f0a0485

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v3, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v26

    .line 1162
    check-cast v26, Landroidx/core/widget/NestedScrollView;

    .line 1163
    .line 1164
    if-eqz v26, :cond_2a

    .line 1165
    .line 1166
    const v7, 0x7f0a05a1

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v3, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v26

    .line 1173
    move-object/from16 v7, v26

    .line 1174
    .line 1175
    check-cast v7, Landroid/widget/TextView;

    .line 1176
    .line 1177
    if-eqz v7, :cond_29

    .line 1178
    .line 1179
    move/from16 v26, v13

    .line 1180
    .line 1181
    const v13, 0x7f0a05a2

    .line 1182
    .line 1183
    .line 1184
    invoke-static {v3, v13}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v27

    .line 1188
    check-cast v27, Landroid/widget/TextView;

    .line 1189
    .line 1190
    if-eqz v27, :cond_28

    .line 1191
    .line 1192
    const v13, 0x7f0a05a3

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v3, v13}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v27

    .line 1199
    move-object/from16 v13, v27

    .line 1200
    .line 1201
    check-cast v13, Landroid/widget/TextView;

    .line 1202
    .line 1203
    if-eqz v13, :cond_27

    .line 1204
    .line 1205
    move-object/from16 p1, v11

    .line 1206
    .line 1207
    const v11, 0x7f0a05a4

    .line 1208
    .line 1209
    .line 1210
    invoke-static {v3, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v27

    .line 1214
    move-object/from16 v11, v27

    .line 1215
    .line 1216
    check-cast v11, Landroid/widget/TextView;

    .line 1217
    .line 1218
    if-eqz v11, :cond_26

    .line 1219
    .line 1220
    move-object/from16 v27, v4

    .line 1221
    .line 1222
    const v4, 0x7f0a05a5

    .line 1223
    .line 1224
    .line 1225
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v28

    .line 1229
    check-cast v28, Landroid/widget/TextView;

    .line 1230
    .line 1231
    if-eqz v28, :cond_32

    .line 1232
    .line 1233
    const v4, 0x7f0a05a6

    .line 1234
    .line 1235
    .line 1236
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v28

    .line 1240
    move-object/from16 v4, v28

    .line 1241
    .line 1242
    check-cast v4, Landroid/widget/TextView;

    .line 1243
    .line 1244
    if-eqz v4, :cond_25

    .line 1245
    .line 1246
    move-object/from16 v28, v9

    .line 1247
    .line 1248
    const v9, 0x7f0a05a7

    .line 1249
    .line 1250
    .line 1251
    invoke-static {v3, v9}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v29

    .line 1255
    move-object/from16 v9, v29

    .line 1256
    .line 1257
    check-cast v9, Landroid/widget/TextView;

    .line 1258
    .line 1259
    if-eqz v9, :cond_24

    .line 1260
    .line 1261
    move-object/from16 v29, v8

    .line 1262
    .line 1263
    const v8, 0x7f0a05a8

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v30

    .line 1270
    move-object/from16 v8, v30

    .line 1271
    .line 1272
    check-cast v8, Landroid/widget/TextView;

    .line 1273
    .line 1274
    if-eqz v8, :cond_23

    .line 1275
    .line 1276
    move-object/from16 v30, v5

    .line 1277
    .line 1278
    const v5, 0x7f0a05a9

    .line 1279
    .line 1280
    .line 1281
    invoke-static {v3, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v31

    .line 1285
    check-cast v31, Landroid/widget/TextView;

    .line 1286
    .line 1287
    if-eqz v31, :cond_22

    .line 1288
    .line 1289
    const v5, 0x7f0a05aa

    .line 1290
    .line 1291
    .line 1292
    invoke-static {v3, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v31

    .line 1296
    check-cast v31, Landroid/widget/TextView;

    .line 1297
    .line 1298
    if-eqz v31, :cond_22

    .line 1299
    .line 1300
    if-eqz v16, :cond_18

    .line 1301
    .line 1302
    const v3, 0x7f1300b3

    .line 1303
    .line 1304
    .line 1305
    goto :goto_d

    .line 1306
    :cond_18
    const v3, 0x7f1300b2

    .line 1307
    .line 1308
    .line 1309
    :goto_d
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1310
    .line 1311
    .line 1312
    iget-object v1, v1, Lho7;->a:Ljava/lang/String;

    .line 1313
    .line 1314
    if-eqz v1, :cond_19

    .line 1315
    .line 1316
    goto :goto_e

    .line 1317
    :cond_19
    const v1, 0x7f130580

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    .line 1326
    .line 1327
    :goto_e
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    .line 1329
    .line 1330
    if-eqz v16, :cond_1a

    .line 1331
    .line 1332
    const/4 v1, 0x0

    .line 1333
    goto :goto_f

    .line 1334
    :cond_1a
    const/16 v1, 0x8

    .line 1335
    .line 1336
    :goto_f
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 1340
    .line 1341
    .line 1342
    move-result v1

    .line 1343
    const v3, 0x7f1300ae

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v3

    .line 1350
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-static {v1, v0, v3}, Lzh8;->o(ILandroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 1362
    .line 1363
    .line 1364
    move-result v1

    .line 1365
    const v3, 0x7f1300af

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v3

    .line 1372
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v3

    .line 1376
    invoke-static {v1, v0, v3}, Lzh8;->o(ILandroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v9}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    const v3, 0x7f1300ad

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    const v4, 0x7f1300ac

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v4

    .line 1401
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v3

    .line 1409
    invoke-static {v1, v0, v3}, Lzh8;->o(ILandroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v1

    .line 1413
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    .line 1415
    .line 1416
    if-eqz v26, :cond_1b

    .line 1417
    .line 1418
    const/4 v1, 0x0

    .line 1419
    goto :goto_10

    .line 1420
    :cond_1b
    const/16 v1, 0x8

    .line 1421
    .line 1422
    :goto_10
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    .line 1424
    .line 1425
    if-eqz v26, :cond_1c

    .line 1426
    .line 1427
    const/4 v7, 0x0

    .line 1428
    goto :goto_11

    .line 1429
    :cond_1c
    const/16 v7, 0x8

    .line 1430
    .line 1431
    :goto_11
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    .line 1433
    .line 1434
    new-instance v1, Luf1;

    .line 1435
    .line 1436
    const/4 v3, 0x6

    .line 1437
    invoke-direct {v1, v3, v0, v2}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1441
    .line 1442
    .line 1443
    new-instance v1, Lhv1;

    .line 1444
    .line 1445
    const v2, 0x7f140160

    .line 1446
    .line 1447
    .line 1448
    invoke-direct {v1, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1449
    .line 1450
    .line 1451
    new-instance v3, Ls35;

    .line 1452
    .line 1453
    const/4 v4, 0x0

    .line 1454
    invoke-direct {v3, v0, v2, v1, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1455
    .line 1456
    .line 1457
    iget-object v1, v3, Lva;->b:Ljava/lang/Object;

    .line 1458
    .line 1459
    check-cast v1, Lra;

    .line 1460
    .line 1461
    iput-object v10, v1, Lra;->s:Landroid/view/View;

    .line 1462
    .line 1463
    const/4 v2, 0x0

    .line 1464
    iput-boolean v2, v1, Lra;->m:Z

    .line 1465
    .line 1466
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v1

    .line 1470
    if-nez v1, :cond_1d

    .line 1471
    .line 1472
    const/4 v14, 0x0

    .line 1473
    goto/16 :goto_14

    .line 1474
    .line 1475
    :cond_1d
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3

    .line 1482
    if-eqz v3, :cond_21

    .line 1483
    .line 1484
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v4

    .line 1488
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1489
    .line 1490
    .line 1491
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 1492
    .line 1493
    const v4, 0x1010031

    .line 1494
    .line 1495
    .line 1496
    invoke-static {v0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1497
    .line 1498
    .line 1499
    move-result v4

    .line 1500
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 1501
    .line 1502
    .line 1503
    move-result v4

    .line 1504
    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1508
    .line 1509
    .line 1510
    const/4 v2, -0x1

    .line 1511
    invoke-virtual {v3, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1512
    .line 1513
    .line 1514
    :goto_12
    if-eqz v10, :cond_20

    .line 1515
    .line 1516
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v4

    .line 1520
    if-eq v10, v4, :cond_20

    .line 1521
    .line 1522
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    if-eqz v4, :cond_1e

    .line 1527
    .line 1528
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1529
    .line 1530
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1531
    .line 1532
    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    .line 1534
    .line 1535
    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v2

    .line 1539
    instance-of v4, v2, Landroid/view/View;

    .line 1540
    .line 1541
    if-eqz v4, :cond_1f

    .line 1542
    .line 1543
    check-cast v2, Landroid/view/View;

    .line 1544
    .line 1545
    move-object v10, v2

    .line 1546
    goto :goto_13

    .line 1547
    :cond_1f
    const/4 v10, 0x0

    .line 1548
    :goto_13
    const/4 v2, -0x1

    .line 1549
    goto :goto_12

    .line 1550
    :cond_20
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v2

    .line 1554
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1555
    .line 1556
    .line 1557
    :cond_21
    new-instance v2, Lzf1;

    .line 1558
    .line 1559
    const/4 v3, 0x4

    .line 1560
    invoke-direct {v2, v12, v3}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    .line 1565
    .line 1566
    new-instance v2, Lh10;

    .line 1567
    .line 1568
    move-object/from16 v3, v30

    .line 1569
    .line 1570
    const/4 v4, 0x6

    .line 1571
    invoke-direct {v2, v4, v1, v3}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1572
    .line 1573
    .line 1574
    move-object/from16 v3, v29

    .line 1575
    .line 1576
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    .line 1578
    .line 1579
    new-instance v2, Li10;

    .line 1580
    .line 1581
    move-object/from16 v9, v28

    .line 1582
    .line 1583
    const/4 v3, 0x5

    .line 1584
    invoke-direct {v2, v3, v1, v9}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1585
    .line 1586
    .line 1587
    move-object/from16 v3, v27

    .line 1588
    .line 1589
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1590
    .line 1591
    .line 1592
    new-instance v2, Lrf4;

    .line 1593
    .line 1594
    move-object/from16 v3, p1

    .line 1595
    .line 1596
    const/4 v4, 0x0

    .line 1597
    invoke-direct {v2, v4, v1, v3}, Lrf4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1601
    .line 1602
    .line 1603
    move-object v14, v1

    .line 1604
    :goto_14
    iput-object v14, v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->U:Lwa;

    .line 1605
    .line 1606
    :goto_15
    move-object/from16 v14, v17

    .line 1607
    .line 1608
    goto :goto_17

    .line 1609
    :cond_22
    move v4, v5

    .line 1610
    goto :goto_16

    .line 1611
    :cond_23
    const v4, 0x7f0a05a8

    .line 1612
    .line 1613
    .line 1614
    goto :goto_16

    .line 1615
    :cond_24
    const v4, 0x7f0a05a7

    .line 1616
    .line 1617
    .line 1618
    goto :goto_16

    .line 1619
    :cond_25
    const v4, 0x7f0a05a6

    .line 1620
    .line 1621
    .line 1622
    goto :goto_16

    .line 1623
    :cond_26
    const v4, 0x7f0a05a4

    .line 1624
    .line 1625
    .line 1626
    goto :goto_16

    .line 1627
    :cond_27
    const v4, 0x7f0a05a3

    .line 1628
    .line 1629
    .line 1630
    goto :goto_16

    .line 1631
    :cond_28
    move v4, v13

    .line 1632
    goto :goto_16

    .line 1633
    :cond_29
    const v4, 0x7f0a05a1

    .line 1634
    .line 1635
    .line 1636
    goto :goto_16

    .line 1637
    :cond_2a
    move v4, v7

    .line 1638
    goto :goto_16

    .line 1639
    :cond_2b
    move v4, v10

    .line 1640
    goto :goto_16

    .line 1641
    :cond_2c
    const v4, 0x7f0a02d1

    .line 1642
    .line 1643
    .line 1644
    goto :goto_16

    .line 1645
    :cond_2d
    move v4, v6

    .line 1646
    goto :goto_16

    .line 1647
    :cond_2e
    const v4, 0x7f0a0137

    .line 1648
    .line 1649
    .line 1650
    goto :goto_16

    .line 1651
    :cond_2f
    const v4, 0x7f0a011c

    .line 1652
    .line 1653
    .line 1654
    goto :goto_16

    .line 1655
    :cond_30
    const v4, 0x7f0a011b

    .line 1656
    .line 1657
    .line 1658
    goto :goto_16

    .line 1659
    :cond_31
    const v4, 0x7f0a0105

    .line 1660
    .line 1661
    .line 1662
    :cond_32
    :goto_16
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v0

    .line 1666
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    const-string v1, "Missing required view with ID: "

    .line 1671
    .line 1672
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1677
    .line 1678
    .line 1679
    const/4 v14, 0x0

    .line 1680
    :goto_17
    return-object v14

    .line 1681
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 1682
    .line 1683
    move-object/from16 v1, p1

    .line 1684
    .line 1685
    check-cast v1, Lq63;

    .line 1686
    .line 1687
    sget-object v3, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 1688
    .line 1689
    if-eqz v1, :cond_34

    .line 1690
    .line 1691
    invoke-virtual {v1}, Lq63;->j()Z

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    if-ne v3, v2, :cond_34

    .line 1696
    .line 1697
    sget-object v2, Lg00;->a:Lg00;

    .line 1698
    .line 1699
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v2

    .line 1703
    const-string v3, "android.hardware.telephony"

    .line 1704
    .line 1705
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    if-nez v2, :cond_33

    .line 1710
    .line 1711
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1712
    .line 1713
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v1

    .line 1717
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1718
    .line 1719
    const-string v2, "Feature not supported on this device"

    .line 1720
    .line 1721
    invoke-static {v1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1722
    .line 1723
    .line 1724
    goto :goto_18

    .line 1725
    :cond_33
    new-instance v2, Landroid/content/Intent;

    .line 1726
    .line 1727
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 1728
    .line 1729
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1730
    .line 1731
    .line 1732
    const-string v3, "EXTRA_BACKUP_FILE_PATH"

    .line 1733
    .line 1734
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v1

    .line 1738
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v1

    .line 1742
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1746
    .line 1747
    .line 1748
    :goto_18
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 1749
    .line 1750
    .line 1751
    goto :goto_19

    .line 1752
    :cond_34
    const v1, 0x7f1303be

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v1

    .line 1759
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1760
    .line 1761
    .line 1762
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1763
    .line 1764
    new-instance v2, Lcv;

    .line 1765
    .line 1766
    invoke-direct {v2, v12, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1767
    .line 1768
    .line 1769
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 1770
    .line 1771
    .line 1772
    :goto_19
    return-object v17

    .line 1773
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 1774
    .line 1775
    move-object/from16 v1, p1

    .line 1776
    .line 1777
    check-cast v1, Ljava/lang/Boolean;

    .line 1778
    .line 1779
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 1780
    .line 1781
    const/16 v1, 0xb3

    .line 1782
    .line 1783
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1787
    .line 1788
    .line 1789
    return-object v17

    .line 1790
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 1791
    .line 1792
    move-object/from16 v1, p1

    .line 1793
    .line 1794
    check-cast v1, Lq63;

    .line 1795
    .line 1796
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 1797
    .line 1798
    if-eqz v1, :cond_35

    .line 1799
    .line 1800
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v2

    .line 1804
    const-string v3, "extra_selected_folder"

    .line 1805
    .line 1806
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v1

    .line 1810
    const/4 v2, -0x1

    .line 1811
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1815
    .line 1816
    .line 1817
    :cond_35
    return-object v17

    .line 1818
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 1819
    .line 1820
    move-object/from16 v1, p1

    .line 1821
    .line 1822
    check-cast v1, Ljava/lang/Boolean;

    .line 1823
    .line 1824
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 1825
    .line 1826
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1830
    .line 1831
    .line 1832
    move-result v1

    .line 1833
    iput-boolean v1, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W:Z

    .line 1834
    .line 1835
    invoke-virtual {v0}, Lzm;->invalidateOptionsMenu()V

    .line 1836
    .line 1837
    .line 1838
    return-object v17

    .line 1839
    :pswitch_f
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 1840
    .line 1841
    move-object/from16 v1, p1

    .line 1842
    .line 1843
    check-cast v1, Lc12;

    .line 1844
    .line 1845
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$hFe-9y1VyKDgbIJEMfGGnLnEIuE(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)Lbe8;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v0

    .line 1849
    return-object v0

    .line 1850
    :pswitch_10
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 1851
    .line 1852
    move-object/from16 v1, p1

    .line 1853
    .line 1854
    check-cast v1, Lc12;

    .line 1855
    .line 1856
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$TIoKY2xikd5hwSIbqw-Kayv1nqw(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Lc12;)Lbe8;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    return-object v0

    .line 1861
    :pswitch_11
    check-cast v0, Llr1;

    .line 1862
    .line 1863
    move-object/from16 v1, p1

    .line 1864
    .line 1865
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1866
    .line 1867
    invoke-virtual {v0}, Llr1;->s()V

    .line 1868
    .line 1869
    .line 1870
    return-object v17

    .line 1871
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 1872
    .line 1873
    move-object/from16 v1, p1

    .line 1874
    .line 1875
    check-cast v1, Lym7;

    .line 1876
    .line 1877
    sget v2, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 1878
    .line 1879
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R(Lym7;)V

    .line 1883
    .line 1884
    .line 1885
    return-object v17

    .line 1886
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 1887
    .line 1888
    move-object/from16 v1, p1

    .line 1889
    .line 1890
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1891
    .line 1892
    sget v2, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 1893
    .line 1894
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    const/4 v2, -0x1

    .line 1902
    invoke-virtual {v0, v1, v2}, Lqq1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;I)V

    .line 1903
    .line 1904
    .line 1905
    return-object v17

    .line 1906
    :pswitch_14
    check-cast v0, Lgg1;

    .line 1907
    .line 1908
    move-object/from16 v1, p1

    .line 1909
    .line 1910
    check-cast v1, Lz8;

    .line 1911
    .line 1912
    iget-object v3, v0, Lgg1;->e:Luj1;

    .line 1913
    .line 1914
    const-string v4, "cloudTagCard"

    .line 1915
    .line 1916
    if-eqz v3, :cond_40

    .line 1917
    .line 1918
    invoke-virtual {v3}, Luj1;->a()V

    .line 1919
    .line 1920
    .line 1921
    iget-object v0, v0, Lgg1;->e:Luj1;

    .line 1922
    .line 1923
    if-eqz v0, :cond_3f

    .line 1924
    .line 1925
    iget-object v3, v0, Luj1;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1926
    .line 1927
    iget-object v4, v0, Luj1;->f:Landroid/widget/LinearLayout;

    .line 1928
    .line 1929
    iget-object v6, v0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1930
    .line 1931
    iget-object v7, v0, Luj1;->b:Ltf1;

    .line 1932
    .line 1933
    iget-object v8, v7, Ltf1;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 1934
    .line 1935
    iget-object v10, v7, Ltf1;->f:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1936
    .line 1937
    iget-object v7, v7, Ltf1;->c:Landroid/view/View;

    .line 1938
    .line 1939
    if-nez v1, :cond_36

    .line 1940
    .line 1941
    const/16 v11, 0x8

    .line 1942
    .line 1943
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1944
    .line 1945
    .line 1946
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 1947
    .line 1948
    .line 1949
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    .line 1957
    .line 1958
    goto/16 :goto_1d

    .line 1959
    .line 1960
    :cond_36
    iget v11, v1, Lz8;->e:I

    .line 1961
    .line 1962
    iget v12, v1, Lz8;->d:I

    .line 1963
    .line 1964
    iget v14, v1, Lz8;->c:I

    .line 1965
    .line 1966
    iget v1, v1, Lz8;->a:I

    .line 1967
    .line 1968
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v5

    .line 1972
    invoke-virtual {v6, v5}, Lil0;->y([Ljava/lang/Class;)V

    .line 1973
    .line 1974
    .line 1975
    if-gtz v1, :cond_37

    .line 1976
    .line 1977
    if-gtz v14, :cond_37

    .line 1978
    .line 1979
    if-gtz v12, :cond_37

    .line 1980
    .line 1981
    if-lez v11, :cond_38

    .line 1982
    .line 1983
    :cond_37
    const/4 v5, 0x0

    .line 1984
    goto :goto_1a

    .line 1985
    :cond_38
    const/4 v5, 0x0

    .line 1986
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    .line 1988
    .line 1989
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 1990
    .line 1991
    .line 1992
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 1993
    .line 1994
    .line 1995
    const/16 v11, 0x8

    .line 1996
    .line 1997
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2001
    .line 2002
    .line 2003
    goto/16 :goto_1d

    .line 2004
    .line 2005
    :goto_1a
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2006
    .line 2007
    .line 2008
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 2009
    .line 2010
    .line 2011
    invoke-static {v4}, Lsz8;->c0(Landroid/view/View;)V

    .line 2012
    .line 2013
    .line 2014
    const-string v3, "compact_storage_info"

    .line 2015
    .line 2016
    :try_start_3
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2017
    .line 2018
    if-eqz v4, :cond_39

    .line 2019
    .line 2020
    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 2021
    .line 2022
    .line 2023
    move-result v3

    .line 2024
    goto :goto_1b

    .line 2025
    :cond_39
    const-string v3, "prefs"

    .line 2026
    .line 2027
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 2028
    .line 2029
    .line 2030
    const/16 v23, 0x0

    .line 2031
    .line 2032
    throw v23
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2033
    :catch_3
    const/4 v3, 0x0

    .line 2034
    :goto_1b
    new-instance v4, Ljava/util/ArrayList;

    .line 2035
    .line 2036
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2037
    .line 2038
    .line 2039
    if-lez v1, :cond_3a

    .line 2040
    .line 2041
    const v5, 0x7f130079

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v5

    .line 2048
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2049
    .line 2050
    .line 2051
    invoke-static {v1, v5}, Luj1;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v1

    .line 2055
    const v5, 0x7f0800bf

    .line 2056
    .line 2057
    .line 2058
    const v7, 0x7f06002a

    .line 2059
    .line 2060
    .line 2061
    invoke-static {v1, v2, v5, v7}, Luj1;->b(Ljava/lang/String;III)Ld71;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v1

    .line 2065
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    .line 2067
    .line 2068
    :cond_3a
    if-lez v14, :cond_3b

    .line 2069
    .line 2070
    const v1, 0x7f130348

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v1

    .line 2077
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2078
    .line 2079
    .line 2080
    invoke-static {v14, v1}, Luj1;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v1

    .line 2084
    const v5, 0x7f08017c

    .line 2085
    .line 2086
    .line 2087
    const v7, 0x7f06045b

    .line 2088
    .line 2089
    .line 2090
    invoke-static {v1, v13, v5, v7}, Luj1;->b(Ljava/lang/String;III)Ld71;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v1

    .line 2094
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    .line 2096
    .line 2097
    :cond_3b
    if-lez v12, :cond_3c

    .line 2098
    .line 2099
    const v1, 0x7f1300e3

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2107
    .line 2108
    .line 2109
    invoke-static {v12, v1}, Luj1;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v1

    .line 2113
    const v5, 0x7f0800f9

    .line 2114
    .line 2115
    .line 2116
    const v7, 0x7f06006c

    .line 2117
    .line 2118
    .line 2119
    invoke-static {v1, v9, v5, v7}, Luj1;->b(Ljava/lang/String;III)Ld71;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v1

    .line 2123
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    .line 2125
    .line 2126
    :cond_3c
    if-lez v11, :cond_3d

    .line 2127
    .line 2128
    const v1, 0x7f130281

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v1

    .line 2135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2136
    .line 2137
    .line 2138
    invoke-static {v11, v1}, Luj1;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v1

    .line 2142
    const v5, 0x7f08014b

    .line 2143
    .line 2144
    .line 2145
    const v7, 0x7f0600d1

    .line 2146
    .line 2147
    .line 2148
    const/4 v9, 0x6

    .line 2149
    invoke-static {v1, v9, v5, v7}, Luj1;->b(Ljava/lang/String;III)Ld71;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v1

    .line 2153
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    .line 2155
    .line 2156
    :cond_3d
    if-eqz v3, :cond_3e

    .line 2157
    .line 2158
    const/16 v11, 0x8

    .line 2159
    .line 2160
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    .line 2162
    .line 2163
    const/4 v5, 0x0

    .line 2164
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    .line 2166
    .line 2167
    goto :goto_1c

    .line 2168
    :cond_3e
    const/4 v5, 0x0

    .line 2169
    const/16 v11, 0x8

    .line 2170
    .line 2171
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2175
    .line 2176
    .line 2177
    move-object v8, v10

    .line 2178
    :goto_1c
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2179
    .line 2180
    invoke-direct {v1, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v1, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 2184
    .line 2185
    .line 2186
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h1(I)V

    .line 2187
    .line 2188
    .line 2189
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 2190
    .line 2191
    .line 2192
    new-instance v1, Lba2;

    .line 2193
    .line 2194
    invoke-direct {v1, v4, v3}, Lba2;-><init>(Ljava/util/List;Z)V

    .line 2195
    .line 2196
    .line 2197
    new-instance v2, Ltj1;

    .line 2198
    .line 2199
    invoke-direct {v2, v1, v0}, Ltj1;-><init>(Lba2;Luj1;)V

    .line 2200
    .line 2201
    .line 2202
    iput-object v2, v1, Lba2;->f:Lqt3;

    .line 2203
    .line 2204
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 2205
    .line 2206
    .line 2207
    :goto_1d
    return-object v17

    .line 2208
    :cond_3f
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 2209
    .line 2210
    .line 2211
    const/16 v23, 0x0

    .line 2212
    .line 2213
    throw v23

    .line 2214
    :cond_40
    const/16 v23, 0x0

    .line 2215
    .line 2216
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    throw v23

    .line 2220
    :pswitch_15
    check-cast v0, Lsd1;

    .line 2221
    .line 2222
    move-object/from16 v1, p1

    .line 2223
    .line 2224
    check-cast v1, Lef1;

    .line 2225
    .line 2226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2227
    .line 2228
    .line 2229
    iget-object v3, v1, Lef1;->g:Ljava/util/List;

    .line 2230
    .line 2231
    new-instance v4, Ljava/util/ArrayList;

    .line 2232
    .line 2233
    const/16 v5, 0xa

    .line 2234
    .line 2235
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 2236
    .line 2237
    .line 2238
    move-result v5

    .line 2239
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2240
    .line 2241
    .line 2242
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v3

    .line 2246
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2247
    .line 2248
    .line 2249
    move-result v5

    .line 2250
    if-eqz v5, :cond_42

    .line 2251
    .line 2252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v5

    .line 2256
    move-object v6, v5

    .line 2257
    check-cast v6, Lmd1;

    .line 2258
    .line 2259
    iget-object v5, v6, Lmd1;->a:Lqd1;

    .line 2260
    .line 2261
    iget-object v5, v5, Lqd1;->a:Lsd1;

    .line 2262
    .line 2263
    if-ne v5, v0, :cond_41

    .line 2264
    .line 2265
    invoke-virtual {v6}, Lmd1;->b()Z

    .line 2266
    .line 2267
    .line 2268
    move-result v5

    .line 2269
    if-eqz v5, :cond_41

    .line 2270
    .line 2271
    iget-boolean v5, v6, Lmd1;->b:Z

    .line 2272
    .line 2273
    xor-int/lit8 v7, v5, 0x1

    .line 2274
    .line 2275
    sget-object v8, Lrd1;->NOT_RUN:Lrd1;

    .line 2276
    .line 2277
    const/4 v11, 0x0

    .line 2278
    const/4 v12, 0x1

    .line 2279
    const/4 v9, 0x0

    .line 2280
    const/4 v10, 0x0

    .line 2281
    invoke-static/range {v6 .. v12}, Lmd1;->a(Lmd1;ZLrd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Lmd1;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v6

    .line 2285
    :cond_41
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    .line 2287
    .line 2288
    goto :goto_1e

    .line 2289
    :cond_42
    const/16 v0, 0x3bf

    .line 2290
    .line 2291
    const/4 v5, 0x0

    .line 2292
    invoke-static {v1, v4, v5, v5, v0}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v0

    .line 2296
    return-object v0

    .line 2297
    :pswitch_16
    move-object v1, v0

    .line 2298
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;

    .line 2299
    .line 2300
    move-object/from16 v0, p1

    .line 2301
    .line 2302
    check-cast v0, Landroid/content/Intent;

    .line 2303
    .line 2304
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->L:I

    .line 2305
    .line 2306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2307
    .line 2308
    .line 2309
    const/16 v2, 0x1393

    .line 2310
    .line 2311
    :try_start_4
    invoke-virtual {v1, v0, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2312
    .line 2313
    .line 2314
    goto :goto_1f

    .line 2315
    :catch_4
    move-exception v0

    .line 2316
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v2

    .line 2320
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2321
    .line 2322
    .line 2323
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v5

    .line 2327
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 2328
    .line 2329
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v4

    .line 2333
    const/4 v7, 0x4

    .line 2334
    const/4 v8, 0x0

    .line 2335
    const/4 v6, 0x0

    .line 2336
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2337
    .line 2338
    .line 2339
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2340
    .line 2341
    new-instance v0, Lcv;

    .line 2342
    .line 2343
    invoke-direct {v0, v12, v1, v5}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2344
    .line 2345
    .line 2346
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 2347
    .line 2348
    .line 2349
    const/4 v5, 0x0

    .line 2350
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setResult(I)V

    .line 2351
    .line 2352
    .line 2353
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 2354
    .line 2355
    .line 2356
    :goto_1f
    return-object v17

    .line 2357
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 2358
    .line 2359
    move-object/from16 v1, p1

    .line 2360
    .line 2361
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 2362
    .line 2363
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v1

    .line 2367
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v0

    .line 2371
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2372
    .line 2373
    .line 2374
    move-result v0

    .line 2375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v0

    .line 2379
    return-object v0

    .line 2380
    :pswitch_18
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 2381
    .line 2382
    move-object/from16 v1, p1

    .line 2383
    .line 2384
    check-cast v1, Ljava/lang/Integer;

    .line 2385
    .line 2386
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2387
    .line 2388
    .line 2389
    move-result v1

    .line 2390
    add-int/2addr v1, v2

    .line 2391
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 2392
    .line 2393
    const-string v3, "mAdapter"

    .line 2394
    .line 2395
    if-eqz v2, :cond_45

    .line 2396
    .line 2397
    iget-object v2, v2, Lgm7;->e:Lfm7;

    .line 2398
    .line 2399
    iget-object v2, v2, Lfm7;->a:Ljava/util/List;

    .line 2400
    .line 2401
    invoke-static {v2, v1}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v1

    .line 2405
    new-instance v2, Ljava/util/ArrayList;

    .line 2406
    .line 2407
    const/16 v5, 0xa

    .line 2408
    .line 2409
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 2410
    .line 2411
    .line 2412
    move-result v4

    .line 2413
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2414
    .line 2415
    .line 2416
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v1

    .line 2420
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2421
    .line 2422
    .line 2423
    move-result v4

    .line 2424
    if-eqz v4, :cond_43

    .line 2425
    .line 2426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v4

    .line 2430
    check-cast v4, Lji;

    .line 2431
    .line 2432
    invoke-virtual {v4}, Lji;->getItemId()Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v4

    .line 2436
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2437
    .line 2438
    .line 2439
    goto :goto_20

    .line 2440
    :cond_43
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 2441
    .line 2442
    if-eqz v0, :cond_44

    .line 2443
    .line 2444
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v1

    .line 2448
    invoke-virtual {v0, v1}, Lgm7;->t(Ljava/util/Set;)V

    .line 2449
    .line 2450
    .line 2451
    return-object v17

    .line 2452
    :cond_44
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 2453
    .line 2454
    .line 2455
    const/16 v23, 0x0

    .line 2456
    .line 2457
    throw v23

    .line 2458
    :cond_45
    const/16 v23, 0x0

    .line 2459
    .line 2460
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 2461
    .line 2462
    .line 2463
    throw v23

    .line 2464
    :pswitch_19
    move-object/from16 v23, v14

    .line 2465
    .line 2466
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 2467
    .line 2468
    move-object/from16 v1, p1

    .line 2469
    .line 2470
    check-cast v1, Lym7;

    .line 2471
    .line 2472
    sget v3, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 2473
    .line 2474
    if-eqz v1, :cond_4a

    .line 2475
    .line 2476
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v3

    .line 2480
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2481
    .line 2482
    const-string v5, "onViewStatusUI: "

    .line 2483
    .line 2484
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2485
    .line 2486
    .line 2487
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2488
    .line 2489
    .line 2490
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v4

    .line 2494
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    .line 2496
    .line 2497
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->p0()V

    .line 2498
    .line 2499
    .line 2500
    sget-object v3, Lx10;->b:[I

    .line 2501
    .line 2502
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 2503
    .line 2504
    .line 2505
    move-result v4

    .line 2506
    aget v3, v3, v4

    .line 2507
    .line 2508
    if-eq v3, v2, :cond_49

    .line 2509
    .line 2510
    if-eq v3, v13, :cond_48

    .line 2511
    .line 2512
    if-eq v3, v9, :cond_47

    .line 2513
    .line 2514
    const/4 v2, 0x4

    .line 2515
    if-ne v3, v2, :cond_46

    .line 2516
    .line 2517
    goto :goto_21

    .line 2518
    :cond_46
    const-string v0, "Unhandled onViewStatusUI: "

    .line 2519
    .line 2520
    invoke-static {v1, v0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2521
    .line 2522
    .line 2523
    move-object/from16 v14, v23

    .line 2524
    .line 2525
    goto :goto_23

    .line 2526
    :cond_47
    :goto_21
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v1

    .line 2530
    iget-object v1, v1, Lg20;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 2531
    .line 2532
    const/16 v11, 0x8

    .line 2533
    .line 2534
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v1

    .line 2541
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 2542
    .line 2543
    .line 2544
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2545
    .line 2546
    .line 2547
    move-result-object v1

    .line 2548
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 2549
    .line 2550
    .line 2551
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->h0()Ley2;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v0

    .line 2555
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 2556
    .line 2557
    const/4 v5, 0x0

    .line 2558
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2559
    .line 2560
    .line 2561
    goto :goto_22

    .line 2562
    :cond_48
    const/16 v11, 0x8

    .line 2563
    .line 2564
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v1

    .line 2568
    iget-object v1, v1, Lg20;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 2569
    .line 2570
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2571
    .line 2572
    .line 2573
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v1

    .line 2577
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 2578
    .line 2579
    .line 2580
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v1

    .line 2584
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->h0()Ley2;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v0

    .line 2591
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 2592
    .line 2593
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2594
    .line 2595
    .line 2596
    goto :goto_22

    .line 2597
    :cond_49
    const/16 v11, 0x8

    .line 2598
    .line 2599
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 2600
    .line 2601
    .line 2602
    move-result-object v1

    .line 2603
    iget-object v1, v1, Lg20;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 2604
    .line 2605
    const/4 v5, 0x0

    .line 2606
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2607
    .line 2608
    .line 2609
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v1

    .line 2613
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 2614
    .line 2615
    .line 2616
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v1

    .line 2620
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 2621
    .line 2622
    .line 2623
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->h0()Ley2;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v0

    .line 2627
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 2628
    .line 2629
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2630
    .line 2631
    .line 2632
    :cond_4a
    :goto_22
    move-object/from16 v14, v17

    .line 2633
    .line 2634
    :goto_23
    return-object v14

    .line 2635
    :pswitch_1a
    check-cast v0, Ldy7;

    .line 2636
    .line 2637
    move-object/from16 v1, p1

    .line 2638
    .line 2639
    check-cast v1, Ljava/lang/String;

    .line 2640
    .line 2641
    invoke-virtual {v0, v1}, Ldy7;->a(Ljava/lang/String;)V

    .line 2642
    .line 2643
    .line 2644
    return-object v17

    .line 2645
    :pswitch_1b
    check-cast v0, Lo7;

    .line 2646
    .line 2647
    move-object/from16 v2, p1

    .line 2648
    .line 2649
    check-cast v2, Ljava/util/List;

    .line 2650
    .line 2651
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2652
    .line 2653
    .line 2654
    iget-object v0, v0, Lo7;->d:Lgv7;

    .line 2655
    .line 2656
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2657
    .line 2658
    .line 2659
    move-result-object v0

    .line 2660
    check-cast v0, La7;

    .line 2661
    .line 2662
    new-instance v1, Lfm7;

    .line 2663
    .line 2664
    const/4 v5, 0x0

    .line 2665
    const/16 v6, 0x1e

    .line 2666
    .line 2667
    const/4 v3, 0x0

    .line 2668
    const/4 v4, 0x0

    .line 2669
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 2670
    .line 2671
    .line 2672
    const/4 v5, 0x0

    .line 2673
    invoke-virtual {v0, v1, v5}, Lgm7;->w(Lfm7;Z)V

    .line 2674
    .line 2675
    .line 2676
    return-object v17

    .line 2677
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
