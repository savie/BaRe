.class public final synthetic Lnh1;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lnh1;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnh1;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Ln47;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lm37;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v7, Lk47;->a:Lk47;

    .line 29
    .line 30
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const/16 v8, 0x8

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    iget-object v1, v0, Lrl0;->b:Ljk8;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v1, Ln37;

    .line 44
    .line 45
    iget-object v1, v1, Ln37;->e:Lix0;

    .line 46
    .line 47
    iget-object v1, v1, Lix0;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lm37;->k()Landroidx/core/widget/NestedScrollView;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v4, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lm37;->j()Ley2;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_c

    .line 92
    .line 93
    :cond_0
    sget-object v7, Ll47;->a:Ll47;

    .line 94
    .line 95
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_1

    .line 100
    .line 101
    iget-object v1, v0, Lrl0;->b:Ljk8;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast v1, Ln37;

    .line 107
    .line 108
    iget-object v1, v1, Ln37;->e:Lix0;

    .line 109
    .line 110
    iget-object v1, v1, Lix0;->c:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 113
    .line 114
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lm37;->k()Landroidx/core/widget/NestedScrollView;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v4, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lm37;->j()Ley2;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :cond_1
    instance-of v7, v1, Lm47;

    .line 157
    .line 158
    if-eqz v7, :cond_f

    .line 159
    .line 160
    check-cast v1, Lm47;

    .line 161
    .line 162
    iget-object v9, v1, Lm47;->e:Ljava/util/ArrayList;

    .line 163
    .line 164
    iget-object v7, v1, Lm47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 165
    .line 166
    iget-object v15, v1, Lm47;->a:Ljava/util/ArrayList;

    .line 167
    .line 168
    iget-object v10, v0, Lrl0;->b:Ljk8;

    .line 169
    .line 170
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast v10, Ln37;

    .line 174
    .line 175
    iget-object v10, v10, Ln37;->e:Lix0;

    .line 176
    .line 177
    iget-object v10, v10, Lix0;->c:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v10, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 180
    .line 181
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v10, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lm37;->k()Landroidx/core/widget/NestedScrollView;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v10, v0, Lrl0;->b:Ljk8;

    .line 199
    .line 200
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    check-cast v10, Ln37;

    .line 204
    .line 205
    iget-object v10, v10, Ln37;->q:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    xor-int/2addr v11, v5

    .line 212
    invoke-static {v10, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    const-string v13, ")"

    .line 220
    .line 221
    const-string v14, " ("

    .line 222
    .line 223
    if-eqz v10, :cond_2

    .line 224
    .line 225
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v10, v4, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 230
    .line 231
    .line 232
    move/from16 v17, v5

    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_2
    sget-object v10, Lmp6;->a:Lmp6;

    .line 237
    .line 238
    invoke-static {}, Lmp6;->f()Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    sget-object v16, Lg00;->a:Lg00;

    .line 247
    .line 248
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    const-string v4, "android.hardware.telephony"

    .line 253
    .line 254
    invoke-virtual {v12, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    :try_start_0
    sget-object v12, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 259
    .line 260
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-static {v12}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    if-eqz v12, :cond_3

    .line 269
    .line 270
    invoke-virtual {v12}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    if-eqz v12, :cond_3

    .line 275
    .line 276
    move v12, v5

    .line 277
    goto :goto_0

    .line 278
    :cond_3
    const/4 v12, 0x0

    .line 279
    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_1

    .line 284
    :catch_0
    const/4 v12, 0x0

    .line 285
    :goto_1
    if-eqz v12, :cond_4

    .line 286
    .line 287
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    :goto_2
    move/from16 v17, v5

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_4
    const/4 v12, 0x0

    .line 295
    goto :goto_2

    .line 296
    :goto_3
    const v5, 0x7f1301b0

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    const v6, 0x7f13049e

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v6}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-static {v5, v14, v6, v13}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    const v6, 0x7f0a006f

    .line 315
    .line 316
    .line 317
    invoke-virtual {v11, v6, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n(IZ)V

    .line 318
    .line 319
    .line 320
    const v6, 0x7f0a0048

    .line 321
    .line 322
    .line 323
    invoke-virtual {v11, v6, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n(IZ)V

    .line 324
    .line 325
    .line 326
    const v4, 0x7f0a0091

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v4, v12}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n(IZ)V

    .line 330
    .line 331
    .line 332
    iget-object v4, v11, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->r:Ljava/util/LinkedHashMap;

    .line 333
    .line 334
    const v6, 0x7f0a0045

    .line 335
    .line 336
    .line 337
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Lb37;

    .line 346
    .line 347
    if-eqz v4, :cond_7

    .line 348
    .line 349
    iget-object v4, v4, Lb37;->b:Lcom/google/android/material/button/MaterialButton;

    .line 350
    .line 351
    if-eqz v10, :cond_5

    .line 352
    .line 353
    iget-object v5, v11, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->t:Ljava/util/LinkedHashMap;

    .line 354
    .line 355
    invoke-static {v5, v6}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Ljava/lang/CharSequence;

    .line 360
    .line 361
    :cond_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_6

    .line 375
    .line 376
    const/high16 v5, 0x3f800000    # 1.0f

    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_6
    const/high16 v5, 0x3f000000    # 0.5f

    .line 380
    .line 381
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 382
    .line 383
    .line 384
    :cond_7
    :goto_5
    invoke-virtual {v0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    xor-int/lit8 v5, v5, 0x1

    .line 393
    .line 394
    invoke-static {v4, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 395
    .line 396
    .line 397
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    check-cast v4, Ln37;

    .line 403
    .line 404
    iget-object v4, v4, Ln37;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 405
    .line 406
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    invoke-static {v4, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 411
    .line 412
    .line 413
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    check-cast v4, Ln37;

    .line 419
    .line 420
    iget-object v4, v4, Ln37;->b:Lcom/google/android/material/button/MaterialButton;

    .line 421
    .line 422
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-static {v4, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Lm37;->j()Ley2;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    iget-object v4, v4, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 434
    .line 435
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 439
    .line 440
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    check-cast v4, Ln37;

    .line 444
    .line 445
    iget-object v4, v4, Ln37;->k:Li75;

    .line 446
    .line 447
    iget-object v4, v4, Li75;->f:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v4, Lgm1;

    .line 450
    .line 451
    iget-object v4, v4, Lgm1;->f:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v4, Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-virtual {v0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    iget-object v6, v6, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 468
    .line 469
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-static {}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->b()Ljava/util/Calendar;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 477
    .line 478
    .line 479
    move-result-wide v10

    .line 480
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 492
    .line 493
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    check-cast v4, Ln37;

    .line 497
    .line 498
    iget-object v4, v4, Ln37;->k:Li75;

    .line 499
    .line 500
    iget-object v4, v4, Li75;->c:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v4, Lgm1;

    .line 503
    .line 504
    iget-object v4, v4, Lgm1;->f:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v4, Landroid/widget/TextView;

    .line 507
    .line 508
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryReqEnum()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryPercentReq()I

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    invoke-virtual {v5, v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->toDisplayString(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 524
    .line 525
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    check-cast v4, Ln37;

    .line 529
    .line 530
    iget-object v4, v4, Ln37;->k:Li75;

    .line 531
    .line 532
    iget-object v4, v4, Li75;->b:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 535
    .line 536
    iget-boolean v5, v1, Lm47;->d:Z

    .line 537
    .line 538
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    if-eqz v5, :cond_8

    .line 546
    .line 547
    const/high16 v11, 0x3f800000    # 1.0f

    .line 548
    .line 549
    goto :goto_6

    .line 550
    :cond_8
    const/high16 v11, 0x3f000000    # 0.5f

    .line 551
    .line 552
    :goto_6
    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    .line 553
    .line 554
    .line 555
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 556
    .line 557
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    check-cast v4, Ln37;

    .line 561
    .line 562
    iget-object v4, v4, Ln37;->q:Landroid/widget/TextView;

    .line 563
    .line 564
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 565
    .line 566
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const v6, 0x7f1304c9

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v6}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v6

    .line 576
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-static {v6}, Lsz8;->A(Landroid/content/Context;)I

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 588
    .line 589
    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    invoke-virtual {v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    const/16 v10, 0x14

    .line 608
    .line 609
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    filled-new-array {v8, v10}, [Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    const v11, 0x7f1304c2

    .line 622
    .line 623
    .line 624
    invoke-virtual {v10, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 635
    .line 636
    .line 637
    move-result v8

    .line 638
    const/16 v10, 0x11

    .line 639
    .line 640
    invoke-virtual {v5, v7, v6, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    .line 645
    .line 646
    iget-object v4, v0, Lrl0;->b:Ljk8;

    .line 647
    .line 648
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    check-cast v4, Ln37;

    .line 652
    .line 653
    iget-object v4, v4, Ln37;->p:Lw00;

    .line 654
    .line 655
    iget-object v5, v4, Lw00;->b:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 658
    .line 659
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    xor-int/lit8 v6, v6, 0x1

    .line 664
    .line 665
    invoke-static {v5, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    if-nez v5, :cond_9

    .line 673
    .line 674
    new-instance v13, Le7;

    .line 675
    .line 676
    const/16 v5, 0x17

    .line 677
    .line 678
    invoke-direct {v13, v0, v5}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 679
    .line 680
    .line 681
    const/16 v14, 0x1e

    .line 682
    .line 683
    const-string v10, "\n"

    .line 684
    .line 685
    const/4 v11, 0x0

    .line 686
    const/4 v12, 0x0

    .line 687
    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    iget-object v4, v4, Lw00;->c:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v4, Landroid/widget/TextView;

    .line 694
    .line 695
    new-instance v6, Lf75;

    .line 696
    .line 697
    invoke-virtual {v0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 698
    .line 699
    .line 700
    move-result-object v7

    .line 701
    const/16 v8, 0x3e

    .line 702
    .line 703
    invoke-direct {v6, v7, v8}, Lf75;-><init>(Lk28;I)V

    .line 704
    .line 705
    .line 706
    iget-object v6, v6, Lf75;->e:Lbp0;

    .line 707
    .line 708
    invoke-virtual {v6, v5}, Lbp0;->e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    :cond_9
    invoke-virtual {v0}, Lm37;->o()Lj57;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    iget-object v4, v4, Lgm7;->e:Lfm7;

    .line 720
    .line 721
    iget-object v4, v4, Lfm7;->a:Ljava/util/List;

    .line 722
    .line 723
    invoke-virtual {v0}, Lm37;->o()Lj57;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    new-instance v10, Lfm7;

    .line 728
    .line 729
    const/4 v14, 0x0

    .line 730
    move-object v11, v15

    .line 731
    const/16 v15, 0x1e

    .line 732
    .line 733
    const/4 v12, 0x0

    .line 734
    const/4 v13, 0x0

    .line 735
    invoke-direct/range {v10 .. v15}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 736
    .line 737
    .line 738
    iget-boolean v1, v1, Lm47;->b:Z

    .line 739
    .line 740
    invoke-virtual {v5, v10, v1}, Lgm7;->w(Lfm7;Z)V

    .line 741
    .line 742
    .line 743
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-nez v1, :cond_d

    .line 748
    .line 749
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    if-le v1, v5, :cond_d

    .line 758
    .line 759
    new-instance v1, Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 762
    .line 763
    .line 764
    move-result v3

    .line 765
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 766
    .line 767
    .line 768
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    if-eqz v4, :cond_a

    .line 777
    .line 778
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 783
    .line 784
    iget-object v4, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 785
    .line 786
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_7

    .line 794
    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    const/4 v4, 0x0

    .line 799
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 800
    .line 801
    .line 802
    move-result v5

    .line 803
    if-eqz v5, :cond_c

    .line 804
    .line 805
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    check-cast v5, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 810
    .line 811
    iget-object v5, v5, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 812
    .line 813
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    if-nez v5, :cond_b

    .line 822
    .line 823
    goto :goto_9

    .line 824
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 825
    .line 826
    goto :goto_8

    .line 827
    :cond_c
    const/4 v4, -0x1

    .line 828
    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    goto :goto_a

    .line 833
    :cond_d
    const/4 v1, 0x0

    .line 834
    :goto_a
    if-eqz v1, :cond_e

    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-ltz v3, :cond_e

    .line 841
    .line 842
    move-object v6, v1

    .line 843
    goto :goto_b

    .line 844
    :cond_e
    const/4 v6, 0x0

    .line 845
    :goto_b
    if-eqz v6, :cond_10

    .line 846
    .line 847
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    if-ltz v1, :cond_10

    .line 852
    .line 853
    invoke-virtual {v0}, Lm37;->n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    new-instance v3, Lb9;

    .line 858
    .line 859
    const/4 v4, 0x3

    .line 860
    invoke-direct {v3, v4, v0, v6}, Lb9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    const-wide/16 v4, 0x12c

    .line 864
    .line 865
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 866
    .line 867
    .line 868
    goto :goto_c

    .line 869
    :cond_f
    invoke-static {}, Lq;->j()V

    .line 870
    .line 871
    .line 872
    const/4 v2, 0x0

    .line 873
    :cond_10
    :goto_c
    return-object v2

    .line 874
    :pswitch_0
    move/from16 v17, v5

    .line 875
    .line 876
    move-object/from16 v1, p1

    .line 877
    .line 878
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 879
    .line 880
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 886
    .line 887
    sget v4, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 888
    .line 889
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->R:Lgv7;

    .line 894
    .line 895
    iget-object v4, v4, Lph1;->n:Landroid/widget/ImageView;

    .line 896
    .line 897
    iget-boolean v6, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 898
    .line 899
    iget-object v7, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 900
    .line 901
    iget-object v8, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 902
    .line 903
    iget-object v9, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 904
    .line 905
    invoke-static {v4, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 906
    .line 907
    .line 908
    if-eqz v6, :cond_12

    .line 909
    .line 910
    iget-boolean v4, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 911
    .line 912
    iget v10, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 913
    .line 914
    if-eqz v4, :cond_11

    .line 915
    .line 916
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    iget-object v4, v4, Lph1;->n:Landroid/widget/ImageView;

    .line 921
    .line 922
    const/high16 v11, 0x40400000    # 3.0f

    .line 923
    .line 924
    invoke-static {v4, v10, v7, v11}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 925
    .line 926
    .line 927
    goto :goto_d

    .line 928
    :cond_11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    iget-object v4, v4, Lph1;->n:Landroid/widget/ImageView;

    .line 933
    .line 934
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 938
    .line 939
    .line 940
    const/4 v10, 0x0

    .line 941
    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 942
    .line 943
    .line 944
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 945
    .line 946
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 947
    .line 948
    .line 949
    move/from16 v10, v17

    .line 950
    .line 951
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 952
    .line 953
    .line 954
    const/4 v10, 0x0

    .line 955
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 956
    .line 957
    .line 958
    :cond_12
    :goto_d
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 959
    .line 960
    .line 961
    move-result-object v4

    .line 962
    iget-object v4, v4, Lph1;->G:Landroid/widget/TextView;

    .line 963
    .line 964
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    iget-object v4, v4, Lph1;->y:Landroid/widget/TextView;

    .line 972
    .line 973
    iget-object v7, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 974
    .line 975
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    iget-object v4, v4, Lph1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 983
    .line 984
    xor-int/lit8 v7, v6, 0x1

    .line 985
    .line 986
    invoke-static {v4, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    iget-object v4, v4, Lph1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 994
    .line 995
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 996
    .line 997
    .line 998
    move-result v7

    .line 999
    const/16 v17, 0x1

    .line 1000
    .line 1001
    xor-int/lit8 v7, v7, 0x1

    .line 1002
    .line 1003
    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    iget-object v4, v4, Lph1;->J:Landroid/widget/TextView;

    .line 1011
    .line 1012
    iget-object v7, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 1013
    .line 1014
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    iget-object v4, v4, Lph1;->q:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1022
    .line 1023
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1024
    .line 1025
    .line 1026
    move-result v7

    .line 1027
    invoke-static {v4, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v4

    .line 1034
    iget-object v4, v4, Lph1;->p:Landroid/widget/ImageView;

    .line 1035
    .line 1036
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v7

    .line 1040
    const/16 v17, 0x1

    .line 1041
    .line 1042
    xor-int/lit8 v7, v7, 0x1

    .line 1043
    .line 1044
    invoke-static {v4, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1045
    .line 1046
    .line 1047
    const v4, 0x7f08015b

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v4

    .line 1054
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v7

    .line 1058
    if-eqz v7, :cond_13

    .line 1059
    .line 1060
    goto/16 :goto_f

    .line 1061
    .line 1062
    :cond_13
    sget-object v7, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->ERROR:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1063
    .line 1064
    if-ne v8, v7, :cond_14

    .line 1065
    .line 1066
    const v4, 0x7f08013a

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v7

    .line 1077
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v7

    .line 1081
    new-instance v10, Lpw5;

    .line 1082
    .line 1083
    invoke-direct {v10, v4, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_e

    .line 1087
    :cond_14
    sget-object v7, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->RESULTS:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1088
    .line 1089
    if-ne v8, v7, :cond_15

    .line 1090
    .line 1091
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v10

    .line 1095
    if-eqz v10, :cond_15

    .line 1096
    .line 1097
    const v4, 0x7f080104

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v4

    .line 1104
    invoke-static {v0}, Lsz8;->w(Landroid/content/Context;)I

    .line 1105
    .line 1106
    .line 1107
    move-result v7

    .line 1108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    new-instance v10, Lpw5;

    .line 1113
    .line 1114
    invoke-direct {v10, v4, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1115
    .line 1116
    .line 1117
    goto :goto_e

    .line 1118
    :cond_15
    if-ne v8, v7, :cond_16

    .line 1119
    .line 1120
    const v7, 0x7f060023

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    .line 1124
    .line 1125
    .line 1126
    move-result v7

    .line 1127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v7

    .line 1131
    new-instance v10, Lpw5;

    .line 1132
    .line 1133
    invoke-direct {v10, v4, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    .line 1135
    .line 1136
    goto :goto_e

    .line 1137
    :cond_16
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 1138
    .line 1139
    .line 1140
    move-result v7

    .line 1141
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v7

    .line 1145
    new-instance v10, Lpw5;

    .line 1146
    .line 1147
    invoke-direct {v10, v4, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1148
    .line 1149
    .line 1150
    :goto_e
    iget-object v4, v10, Lpw5;->a:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v4, Ljava/lang/Number;

    .line 1153
    .line 1154
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 1155
    .line 1156
    .line 1157
    move-result v4

    .line 1158
    iget-object v7, v10, Lpw5;->b:Ljava/lang/Object;

    .line 1159
    .line 1160
    check-cast v7, Ljava/lang/Number;

    .line 1161
    .line 1162
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 1163
    .line 1164
    .line 1165
    move-result v7

    .line 1166
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v10

    .line 1170
    iget-object v10, v10, Lph1;->p:Landroid/widget/ImageView;

    .line 1171
    .line 1172
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v4

    .line 1179
    iget-object v4, v4, Lph1;->p:Landroid/widget/ImageView;

    .line 1180
    .line 1181
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1182
    .line 1183
    .line 1184
    :goto_f
    sget-object v4, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->RESULTS:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1185
    .line 1186
    if-ne v8, v4, :cond_17

    .line 1187
    .line 1188
    const/4 v10, 0x1

    .line 1189
    goto :goto_10

    .line 1190
    :cond_17
    const/4 v10, 0x0

    .line 1191
    :goto_10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v4

    .line 1195
    iget-object v4, v4, Lph1;->I:Landroid/widget/TextView;

    .line 1196
    .line 1197
    invoke-static {v4, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1198
    .line 1199
    .line 1200
    if-eqz v10, :cond_18

    .line 1201
    .line 1202
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v4

    .line 1206
    iget-object v4, v4, Lph1;->I:Landroid/widget/TextView;

    .line 1207
    .line 1208
    iget v7, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 1209
    .line 1210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v7

    .line 1214
    iget v11, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 1215
    .line 1216
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v11

    .line 1220
    filled-new-array {v7, v11}, [Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v7

    .line 1224
    const v11, 0x7f130183

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v7

    .line 1231
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    .line 1233
    .line 1234
    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-static {v9, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1237
    .line 1238
    .line 1239
    move-result v3

    .line 1240
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v3

    .line 1247
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v7

    .line 1251
    if-eqz v7, :cond_19

    .line 1252
    .line 1253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v7

    .line 1257
    check-cast v7, Lwa1;

    .line 1258
    .line 1259
    new-instance v11, Lfi1;

    .line 1260
    .line 1261
    invoke-direct {v11, v7}, Lfi1;-><init>(Lwa1;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    .line 1266
    .line 1267
    goto :goto_11

    .line 1268
    :cond_19
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    check-cast v3, Lmh1;

    .line 1273
    .line 1274
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v7

    .line 1278
    iget-boolean v11, v3, Lmh1;->m:Z

    .line 1279
    .line 1280
    if-ne v11, v7, :cond_1a

    .line 1281
    .line 1282
    goto :goto_12

    .line 1283
    :cond_1a
    iput-boolean v7, v3, Lmh1;->m:Z

    .line 1284
    .line 1285
    invoke-virtual {v3}, Lhg6;->e()V

    .line 1286
    .line 1287
    .line 1288
    :goto_12
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    check-cast v3, Lmh1;

    .line 1293
    .line 1294
    new-instance v18, Lfm7;

    .line 1295
    .line 1296
    iget-object v5, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 1297
    .line 1298
    const/16 v22, 0x0

    .line 1299
    .line 1300
    const/16 v23, 0x1c

    .line 1301
    .line 1302
    const/16 v21, 0x0

    .line 1303
    .line 1304
    move-object/from16 v19, v4

    .line 1305
    .line 1306
    move-object/from16 v20, v5

    .line 1307
    .line 1308
    invoke-direct/range {v18 .. v23}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1309
    .line 1310
    .line 1311
    move-object/from16 v5, v18

    .line 1312
    .line 1313
    const/4 v4, 0x0

    .line 1314
    invoke-virtual {v3, v5, v4}, Lgm7;->w(Lfm7;Z)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v3

    .line 1321
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v3

    .line 1325
    const-wide/16 v11, 0x0

    .line 1326
    .line 1327
    move-wide v13, v11

    .line 1328
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    if-eqz v5, :cond_1c

    .line 1333
    .line 1334
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    check-cast v5, Lwa1;

    .line 1339
    .line 1340
    iget-wide v4, v5, Lwa1;->e:J

    .line 1341
    .line 1342
    cmp-long v7, v4, v11

    .line 1343
    .line 1344
    if-gez v7, :cond_1b

    .line 1345
    .line 1346
    move-wide v4, v11

    .line 1347
    :cond_1b
    add-long/2addr v13, v4

    .line 1348
    const/4 v4, 0x0

    .line 1349
    goto :goto_13

    .line 1350
    :cond_1c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    iget-object v3, v3, Lph1;->H:Landroid/widget/TextView;

    .line 1355
    .line 1356
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v4

    .line 1360
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1361
    .line 1362
    .line 1363
    move-result v4

    .line 1364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v4

    .line 1368
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1369
    .line 1370
    .line 1371
    move-result v5

    .line 1372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v5

    .line 1376
    sget-object v7, Lp93;->a:Lp93;

    .line 1377
    .line 1378
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v7

    .line 1382
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v7

    .line 1386
    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    const v5, 0x7f130187

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v4

    .line 1397
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1401
    .line 1402
    .line 1403
    move-result v3

    .line 1404
    if-nez v3, :cond_1d

    .line 1405
    .line 1406
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v3

    .line 1410
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    if-ne v3, v4, :cond_1d

    .line 1419
    .line 1420
    const/4 v3, 0x1

    .line 1421
    goto :goto_14

    .line 1422
    :cond_1d
    const/4 v3, 0x0

    .line 1423
    :goto_14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    iget-object v4, v4, Lph1;->k:Lcom/google/android/material/button/MaterialButton;

    .line 1428
    .line 1429
    if-eqz v3, :cond_1e

    .line 1430
    .line 1431
    const v3, 0x7f130175

    .line 1432
    .line 1433
    .line 1434
    goto :goto_15

    .line 1435
    :cond_1e
    const v3, 0x7f130186

    .line 1436
    .line 1437
    .line 1438
    :goto_15
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v3

    .line 1445
    iget-object v3, v3, Lph1;->k:Lcom/google/android/material/button/MaterialButton;

    .line 1446
    .line 1447
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1448
    .line 1449
    .line 1450
    move-result v4

    .line 1451
    if-nez v4, :cond_1f

    .line 1452
    .line 1453
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1454
    .line 1455
    .line 1456
    move-result v4

    .line 1457
    if-nez v4, :cond_1f

    .line 1458
    .line 1459
    const/4 v4, 0x1

    .line 1460
    goto :goto_16

    .line 1461
    :cond_1f
    const/4 v4, 0x0

    .line 1462
    :goto_16
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    iget-object v3, v3, Lph1;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1470
    .line 1471
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1472
    .line 1473
    .line 1474
    move-result v4

    .line 1475
    const/16 v17, 0x1

    .line 1476
    .line 1477
    xor-int/lit8 v4, v4, 0x1

    .line 1478
    .line 1479
    invoke-static {v3, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v3

    .line 1486
    iget-object v3, v3, Lph1;->x:Landroid/widget/TextView;

    .line 1487
    .line 1488
    if-eqz v10, :cond_20

    .line 1489
    .line 1490
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v4

    .line 1494
    if-eqz v4, :cond_20

    .line 1495
    .line 1496
    const/4 v4, 0x1

    .line 1497
    goto :goto_17

    .line 1498
    :cond_20
    const/4 v4, 0x0

    .line 1499
    :goto_17
    invoke-static {v3, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v3

    .line 1506
    iget-object v3, v3, Lph1;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1507
    .line 1508
    if-eqz v10, :cond_21

    .line 1509
    .line 1510
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v4

    .line 1514
    if-nez v4, :cond_21

    .line 1515
    .line 1516
    const/4 v10, 0x1

    .line 1517
    goto :goto_18

    .line 1518
    :cond_21
    const/4 v10, 0x0

    .line 1519
    :goto_18
    invoke-static {v3, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v3

    .line 1526
    iget-object v3, v3, Lph1;->f:Lcom/google/android/material/button/MaterialButton;

    .line 1527
    .line 1528
    if-eqz v6, :cond_22

    .line 1529
    .line 1530
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v4

    .line 1534
    if-nez v4, :cond_22

    .line 1535
    .line 1536
    const/4 v4, 0x1

    .line 1537
    goto :goto_19

    .line 1538
    :cond_22
    const/4 v4, 0x0

    .line 1539
    :goto_19
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    iget-object v3, v3, Lph1;->f:Lcom/google/android/material/button/MaterialButton;

    .line 1547
    .line 1548
    sget-object v4, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->IDLE:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1549
    .line 1550
    if-ne v8, v4, :cond_23

    .line 1551
    .line 1552
    const v4, 0x7f13017f

    .line 1553
    .line 1554
    .line 1555
    goto :goto_1a

    .line 1556
    :cond_23
    const v4, 0x7f130181

    .line 1557
    .line 1558
    .line 1559
    :goto_1a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v3

    .line 1566
    iget-object v3, v3, Lph1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 1567
    .line 1568
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b()Z

    .line 1569
    .line 1570
    .line 1571
    move-result v1

    .line 1572
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    iget-object v0, v0, Lph1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 1580
    .line 1581
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1582
    .line 1583
    .line 1584
    move-result v1

    .line 1585
    const/16 v17, 0x1

    .line 1586
    .line 1587
    xor-int/lit8 v1, v1, 0x1

    .line 1588
    .line 1589
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1590
    .line 1591
    .line 1592
    return-object v2

    .line 1593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
