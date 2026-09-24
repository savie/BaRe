.class public final synthetic Lxq4;
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
    iput p2, p0, Lxq4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxq4;->b:Ljava/lang/Object;

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
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lxq4;->a:I

    .line 4
    .line 5
    const v2, 0x7f0a05ba

    .line 6
    .line 7
    .line 8
    sget-object v3, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const v5, 0x7f0a00a9

    .line 12
    .line 13
    .line 14
    const-string v6, "Missing required view with ID: "

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v0, v0, Lxq4;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 24
    .line 25
    sget-object v1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0d0192

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const v5, 0x7f0a0109

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v12, v1

    .line 56
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    if-eqz v12, :cond_0

    .line 59
    .line 60
    const v5, 0x7f0a01a4

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v13, v1

    .line 68
    check-cast v13, Landroidx/core/widget/NestedScrollView;

    .line 69
    .line 70
    if-eqz v13, :cond_0

    .line 71
    .line 72
    const v5, 0x7f0a0363

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v14, v1

    .line 80
    check-cast v14, Lcom/google/android/material/card/MaterialCardView;

    .line 81
    .line 82
    if-eqz v14, :cond_0

    .line 83
    .line 84
    const v5, 0x7f0a05f2

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-static {v1}, Lyr8;->a(Landroid/view/View;)Lyr8;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const v5, 0x7f0a05f3

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    invoke-static {v1}, Lyr8;->a(Landroid/view/View;)Lyr8;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const v5, 0x7f0a05f4

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    .line 119
    invoke-static {v1}, Lyr8;->a(Landroid/view/View;)Lyr8;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    new-instance v9, Lur8;

    .line 124
    .line 125
    move-object v10, v0

    .line 126
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 127
    .line 128
    invoke-direct/range {v9 .. v17}, Lur8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/card/MaterialCardView;Lyr8;Lyr8;Lyr8;)V

    .line 129
    .line 130
    .line 131
    move-object v8, v9

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-object v8

    .line 149
    :pswitch_0
    check-cast v0, Lto8;

    .line 150
    .line 151
    iget-object v0, v0, Lto8;->b:Lpp8;

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Lpp8;->l(Z)V

    .line 154
    .line 155
    .line 156
    return-object v3

    .line 157
    :pswitch_1
    check-cast v0, Lah8;

    .line 158
    .line 159
    invoke-static {v0}, Lah8;->b(Lah8;)Lbe8;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0

    .line 164
    :pswitch_2
    check-cast v0, Li08;

    .line 165
    .line 166
    iget-object v0, v0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 167
    .line 168
    return-object v0

    .line 169
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 170
    .line 171
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 172
    .line 173
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v0, v0, Lay7;->e:Lfm1;

    .line 178
    .line 179
    iget-object v0, v0, Lfm1;->e:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 182
    .line 183
    return-object v0

    .line 184
    :pswitch_4
    check-cast v0, Lpa7;

    .line 185
    .line 186
    const-string v1, "amoled_black_theme"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 196
    .line 197
    return-object v0

    .line 198
    :pswitch_5
    check-cast v0, Lq47;

    .line 199
    .line 200
    sget-object v1, Lc47;->a:Lc47;

    .line 201
    .line 202
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    .line 211
    .line 212
    new-instance v8, Ljava/util/ArrayList;

    .line 213
    .line 214
    const/16 v2, 0xa

    .line 215
    .line 216
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_1

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    move-object v10, v2

    .line 238
    check-cast v10, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 239
    .line 240
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isPermissionsGranted()Z

    .line 241
    .line 242
    .line 243
    move-result v16

    .line 244
    const/16 v17, 0x1f

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/4 v11, 0x0

    .line 249
    const/4 v12, 0x0

    .line 250
    const/4 v13, 0x0

    .line 251
    const/4 v14, 0x0

    .line 252
    const/4 v15, 0x0

    .line 253
    invoke-static/range {v10 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_1
    move-object/from16 v18, v8

    .line 262
    .line 263
    const/16 v23, 0x1eff

    .line 264
    .line 265
    const/16 v24, 0x0

    .line 266
    .line 267
    const/4 v10, 0x0

    .line 268
    const/4 v11, 0x0

    .line 269
    const/4 v12, 0x0

    .line 270
    const/4 v13, 0x0

    .line 271
    const/4 v14, 0x0

    .line 272
    const/4 v15, 0x0

    .line 273
    const/16 v16, 0x0

    .line 274
    .line 275
    const/16 v17, 0x0

    .line 276
    .line 277
    const/16 v19, 0x0

    .line 278
    .line 279
    const/16 v20, 0x0

    .line 280
    .line 281
    const/16 v21, 0x0

    .line 282
    .line 283
    const/16 v22, 0x0

    .line 284
    .line 285
    invoke-static/range {v9 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 290
    .line 291
    .line 292
    return-object v3

    .line 293
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 294
    .line 295
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 296
    .line 297
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v0, v0, Ls37;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 302
    .line 303
    return-object v0

    .line 304
    :pswitch_7
    check-cast v0, Lm37;

    .line 305
    .line 306
    invoke-static {}, Lc47;->d()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_2

    .line 311
    .line 312
    invoke-virtual {v0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0}, Lc47;->f(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 317
    .line 318
    .line 319
    move v4, v7

    .line 320
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    return-object v0

    .line 325
    :pswitch_8
    check-cast v0, Lvl6;

    .line 326
    .line 327
    iget-object v1, v0, Lvl6;->b:Ljava/lang/ClassLoader;

    .line 328
    .line 329
    iget-object v2, v0, Lvl6;->c:Lfa3;

    .line 330
    .line 331
    const-string v0, ""

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v3, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_5

    .line 361
    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Ljava/net/URL;

    .line 367
    .line 368
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    const-string v9, "file"

    .line 376
    .line 377
    invoke-static {v6, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-nez v6, :cond_4

    .line 382
    .line 383
    move-object v6, v8

    .line 384
    goto :goto_3

    .line 385
    :cond_4
    sget-object v6, Ley5;->b:Ljava/lang/String;

    .line 386
    .line 387
    new-instance v6, Ljava/io/File;

    .line 388
    .line 389
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-static {v5}, Lma2;->r(Ljava/lang/String;)Ley5;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    new-instance v6, Lpw5;

    .line 408
    .line 409
    invoke-direct {v6, v2, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :goto_3
    if-eqz v6, :cond_3

    .line 413
    .line 414
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_5
    const-string v0, "META-INF/MANIFEST.MF"

    .line 419
    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    new-instance v1, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_19

    .line 448
    .line 449
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Ljava/net/URL;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    const-string v6, "jar:file:"

    .line 466
    .line 467
    invoke-static {v0, v6, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    if-nez v6, :cond_6

    .line 472
    .line 473
    :goto_5
    move-object/from16 p0, v5

    .line 474
    .line 475
    goto/16 :goto_17

    .line 476
    .line 477
    :cond_6
    const-string v6, "!"

    .line 478
    .line 479
    const/4 v9, 0x6

    .line 480
    invoke-static {v9, v0, v6}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    const/4 v9, -0x1

    .line 485
    if-ne v6, v9, :cond_7

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_7
    sget-object v9, Ley5;->b:Ljava/lang/String;

    .line 489
    .line 490
    new-instance v9, Ljava/io/File;

    .line 491
    .line 492
    const/4 v10, 0x4

    .line 493
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    invoke-static {v0}, Lma2;->r(Ljava/lang/String;)Ley5;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const-string v6, "not a zip: size="

    .line 516
    .line 517
    invoke-virtual {v2, v0}, Lfa3;->a(Ley5;)Lon4;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    :try_start_0
    invoke-virtual {v9}, Lon4;->size()J

    .line 522
    .line 523
    .line 524
    move-result-wide v10

    .line 525
    const-wide/16 v12, 0x16

    .line 526
    .line 527
    sub-long v12, v10, v12

    .line 528
    .line 529
    const-wide/16 v14, 0x0

    .line 530
    .line 531
    cmp-long v0, v12, v14

    .line 532
    .line 533
    if-ltz v0, :cond_17

    .line 534
    .line 535
    const-wide/32 v16, 0x10016

    .line 536
    .line 537
    .line 538
    sub-long v10, v10, v16

    .line 539
    .line 540
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 541
    .line 542
    .line 543
    move-result-wide v10

    .line 544
    :goto_6
    invoke-virtual {v9, v12, v13}, Lon4;->a(J)Lo73;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    new-instance v6, Ltf6;

    .line 549
    .line 550
    invoke-direct {v6, v0}, Ltf6;-><init>(Lij7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 551
    .line 552
    .line 553
    :try_start_1
    invoke-virtual {v6}, Ltf6;->b()I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    move-wide/from16 v16, v14

    .line 558
    .line 559
    const v14, 0x6054b50

    .line 560
    .line 561
    .line 562
    if-ne v0, v14, :cond_15

    .line 563
    .line 564
    invoke-virtual {v6}, Ltf6;->h()S

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    const v10, 0xffff

    .line 569
    .line 570
    .line 571
    and-int/2addr v0, v10

    .line 572
    invoke-virtual {v6}, Ltf6;->h()S

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    and-int/2addr v11, v10

    .line 577
    invoke-virtual {v6}, Ltf6;->h()S

    .line 578
    .line 579
    .line 580
    move-result v14

    .line 581
    and-int/2addr v14, v10

    .line 582
    int-to-long v14, v14

    .line 583
    invoke-virtual {v6}, Ltf6;->h()S

    .line 584
    .line 585
    .line 586
    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 587
    move/from16 p0, v10

    .line 588
    .line 589
    and-int v10, v18, p0

    .line 590
    .line 591
    int-to-long v7, v10

    .line 592
    cmp-long v7, v14, v7

    .line 593
    .line 594
    const-string v8, "unsupported zip: spanned"

    .line 595
    .line 596
    if-nez v7, :cond_14

    .line 597
    .line 598
    if-nez v0, :cond_14

    .line 599
    .line 600
    if-nez v11, :cond_14

    .line 601
    .line 602
    const-wide/16 v10, 0x4

    .line 603
    .line 604
    :try_start_2
    invoke-virtual {v6, v10, v11}, Ltf6;->skip(J)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6}, Ltf6;->b()I

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    int-to-long v10, v0

    .line 612
    const-wide v18, 0xffffffffL

    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    and-long v22, v10, v18

    .line 618
    .line 619
    invoke-virtual {v6}, Ltf6;->h()S

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    and-int v19, v0, p0

    .line 624
    .line 625
    new-instance v18, Lvx2;

    .line 626
    .line 627
    move-wide/from16 v20, v14

    .line 628
    .line 629
    invoke-direct/range {v18 .. v23}, Lvx2;-><init>(IJJ)V

    .line 630
    .line 631
    .line 632
    move/from16 v0, v19

    .line 633
    .line 634
    int-to-long v10, v0

    .line 635
    invoke-virtual {v6, v10, v11}, Ltf6;->j(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 636
    .line 637
    .line 638
    :try_start_3
    invoke-virtual {v6}, Ltf6;->close()V

    .line 639
    .line 640
    .line 641
    const-wide/16 v6, 0x14

    .line 642
    .line 643
    sub-long/2addr v12, v6

    .line 644
    cmp-long v6, v12, v16

    .line 645
    .line 646
    if-lez v6, :cond_d

    .line 647
    .line 648
    invoke-virtual {v9, v12, v13}, Lon4;->a(J)Lo73;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    new-instance v7, Ltf6;

    .line 653
    .line 654
    invoke-direct {v7, v6}, Ltf6;-><init>(Lij7;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 655
    .line 656
    .line 657
    :try_start_4
    invoke-virtual {v7}, Ltf6;->b()I

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    const v10, 0x7064b50

    .line 662
    .line 663
    .line 664
    if-ne v6, v10, :cond_c

    .line 665
    .line 666
    invoke-virtual {v7}, Ltf6;->b()I

    .line 667
    .line 668
    .line 669
    move-result v6

    .line 670
    invoke-virtual {v7}, Ltf6;->g()J

    .line 671
    .line 672
    .line 673
    move-result-wide v10

    .line 674
    invoke-virtual {v7}, Ltf6;->b()I

    .line 675
    .line 676
    .line 677
    move-result v12

    .line 678
    if-ne v12, v4, :cond_b

    .line 679
    .line 680
    if-nez v6, :cond_b

    .line 681
    .line 682
    invoke-virtual {v9, v10, v11}, Lon4;->a(J)Lo73;

    .line 683
    .line 684
    .line 685
    move-result-object v6

    .line 686
    new-instance v10, Ltf6;

    .line 687
    .line 688
    invoke-direct {v10, v6}, Ltf6;-><init>(Lij7;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 689
    .line 690
    .line 691
    :try_start_5
    invoke-virtual {v10}, Ltf6;->b()I

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    const v11, 0x6064b50

    .line 696
    .line 697
    .line 698
    if-ne v6, v11, :cond_9

    .line 699
    .line 700
    const-wide/16 v11, 0xc

    .line 701
    .line 702
    invoke-virtual {v10, v11, v12}, Ltf6;->skip(J)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v10}, Ltf6;->b()I

    .line 706
    .line 707
    .line 708
    move-result v6

    .line 709
    invoke-virtual {v10}, Ltf6;->b()I

    .line 710
    .line 711
    .line 712
    move-result v11

    .line 713
    invoke-virtual {v10}, Ltf6;->g()J

    .line 714
    .line 715
    .line 716
    move-result-wide v27

    .line 717
    invoke-virtual {v10}, Ltf6;->g()J

    .line 718
    .line 719
    .line 720
    move-result-wide v12

    .line 721
    cmp-long v12, v27, v12

    .line 722
    .line 723
    if-nez v12, :cond_8

    .line 724
    .line 725
    if-nez v6, :cond_8

    .line 726
    .line 727
    if-nez v11, :cond_8

    .line 728
    .line 729
    const-wide/16 v11, 0x8

    .line 730
    .line 731
    invoke-virtual {v10, v11, v12}, Ltf6;->skip(J)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v10}, Ltf6;->g()J

    .line 735
    .line 736
    .line 737
    move-result-wide v29

    .line 738
    new-instance v25, Lvx2;

    .line 739
    .line 740
    move/from16 v26, v0

    .line 741
    .line 742
    invoke-direct/range {v25 .. v30}, Lvx2;-><init>(IJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 743
    .line 744
    .line 745
    :try_start_6
    invoke-virtual {v10}, Ltf6;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 746
    .line 747
    .line 748
    const/4 v0, 0x0

    .line 749
    goto :goto_7

    .line 750
    :catchall_0
    move-exception v0

    .line 751
    :goto_7
    move-object/from16 v18, v25

    .line 752
    .line 753
    goto :goto_b

    .line 754
    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    .line 755
    .line 756
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :goto_8
    move-object v6, v0

    .line 761
    goto :goto_9

    .line 762
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 763
    .line 764
    new-instance v8, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    const-string v12, "bad zip: expected "

    .line 770
    .line 771
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-static {v11}, Lho6;->r(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v11

    .line 778
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    const-string v11, " but was "

    .line 782
    .line 783
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-static {v6}, Lho6;->r(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v6

    .line 790
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 801
    :catchall_1
    move-exception v0

    .line 802
    goto :goto_8

    .line 803
    :goto_9
    :try_start_8
    invoke-virtual {v10}, Ltf6;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 804
    .line 805
    .line 806
    goto :goto_a

    .line 807
    :catchall_2
    move-exception v0

    .line 808
    :try_start_9
    invoke-static {v6, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 809
    .line 810
    .line 811
    :goto_a
    move-object v0, v6

    .line 812
    :goto_b
    if-nez v0, :cond_a

    .line 813
    .line 814
    goto :goto_c

    .line 815
    :cond_a
    throw v0

    .line 816
    :catchall_3
    move-exception v0

    .line 817
    move-object v6, v0

    .line 818
    goto :goto_d

    .line 819
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 820
    .line 821
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 825
    :cond_c
    :goto_c
    :try_start_a
    invoke-virtual {v7}, Ltf6;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 826
    .line 827
    .line 828
    const/4 v0, 0x0

    .line 829
    goto :goto_f

    .line 830
    :catchall_4
    move-exception v0

    .line 831
    goto :goto_f

    .line 832
    :goto_d
    :try_start_b
    invoke-virtual {v7}, Ltf6;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 833
    .line 834
    .line 835
    goto :goto_e

    .line 836
    :catchall_5
    move-exception v0

    .line 837
    :try_start_c
    invoke-static {v6, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 838
    .line 839
    .line 840
    :goto_e
    move-object v0, v6

    .line 841
    :goto_f
    if-nez v0, :cond_e

    .line 842
    .line 843
    :cond_d
    move-object/from16 v0, v18

    .line 844
    .line 845
    goto :goto_10

    .line 846
    :cond_e
    throw v0

    .line 847
    :catchall_6
    move-exception v0

    .line 848
    move-object v1, v0

    .line 849
    goto/16 :goto_19

    .line 850
    .line 851
    :goto_10
    new-instance v6, Ljava/util/ArrayList;

    .line 852
    .line 853
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .line 855
    .line 856
    iget-wide v7, v0, Lvx2;->b:J

    .line 857
    .line 858
    invoke-virtual {v9, v7, v8}, Lon4;->a(J)Lo73;

    .line 859
    .line 860
    .line 861
    move-result-object v7

    .line 862
    new-instance v8, Ltf6;

    .line 863
    .line 864
    invoke-direct {v8, v7}, Ltf6;-><init>(Lij7;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 865
    .line 866
    .line 867
    :try_start_d
    iget-wide v10, v0, Lvx2;->a:J

    .line 868
    .line 869
    move-wide/from16 v14, v16

    .line 870
    .line 871
    :goto_11
    cmp-long v7, v14, v10

    .line 872
    .line 873
    if-gez v7, :cond_11

    .line 874
    .line 875
    invoke-static {v8}, Lho6;->K(Ltf6;)Lxy8;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    iget-wide v12, v7, Lxy8;->b:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 880
    .line 881
    move-object/from16 p0, v5

    .line 882
    .line 883
    :try_start_e
    iget-wide v4, v0, Lvx2;->b:J

    .line 884
    .line 885
    cmp-long v4, v12, v4

    .line 886
    .line 887
    if-gez v4, :cond_10

    .line 888
    .line 889
    sget-object v4, Lvl6;->e:Ley5;

    .line 890
    .line 891
    iget-object v4, v7, Lxy8;->a:Ley5;

    .line 892
    .line 893
    invoke-static {v4}, Lus2;->s(Ley5;)Z

    .line 894
    .line 895
    .line 896
    move-result v4

    .line 897
    if-eqz v4, :cond_f

    .line 898
    .line 899
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    goto :goto_13

    .line 903
    :catchall_7
    move-exception v0

    .line 904
    :goto_12
    move-object v4, v0

    .line 905
    goto :goto_14

    .line 906
    :cond_f
    :goto_13
    const-wide/16 v4, 0x1

    .line 907
    .line 908
    add-long/2addr v14, v4

    .line 909
    move-object/from16 v5, p0

    .line 910
    .line 911
    const/4 v4, 0x1

    .line 912
    goto :goto_11

    .line 913
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 914
    .line 915
    const-string v4, "bad zip: local file header offset >= central directory offset"

    .line 916
    .line 917
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 921
    :catchall_8
    move-exception v0

    .line 922
    move-object/from16 p0, v5

    .line 923
    .line 924
    goto :goto_12

    .line 925
    :cond_11
    move-object/from16 p0, v5

    .line 926
    .line 927
    :try_start_f
    invoke-virtual {v8}, Ltf6;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 928
    .line 929
    .line 930
    const/4 v0, 0x0

    .line 931
    goto :goto_16

    .line 932
    :catchall_9
    move-exception v0

    .line 933
    goto :goto_16

    .line 934
    :goto_14
    :try_start_10
    invoke-virtual {v8}, Ltf6;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 935
    .line 936
    .line 937
    goto :goto_15

    .line 938
    :catchall_a
    move-exception v0

    .line 939
    :try_start_11
    invoke-static {v4, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 940
    .line 941
    .line 942
    :goto_15
    move-object v0, v4

    .line 943
    :goto_16
    if-nez v0, :cond_13

    .line 944
    .line 945
    invoke-static {v6}, Lho6;->a(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 946
    .line 947
    .line 948
    new-instance v0, Liz8;

    .line 949
    .line 950
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 951
    .line 952
    .line 953
    :try_start_12
    invoke-virtual {v9}, Lon4;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 954
    .line 955
    .line 956
    :catchall_b
    sget-object v4, Lvl6;->e:Ley5;

    .line 957
    .line 958
    new-instance v5, Lpw5;

    .line 959
    .line 960
    invoke-direct {v5, v0, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    move-object v8, v5

    .line 964
    :goto_17
    if-eqz v8, :cond_12

    .line 965
    .line 966
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    :cond_12
    move-object/from16 v5, p0

    .line 970
    .line 971
    const/4 v4, 0x1

    .line 972
    const/4 v7, 0x0

    .line 973
    const/4 v8, 0x0

    .line 974
    goto/16 :goto_4

    .line 975
    .line 976
    :cond_13
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 977
    :catchall_c
    move-exception v0

    .line 978
    goto :goto_18

    .line 979
    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    .line 980
    .line 981
    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 985
    :cond_15
    move-object/from16 p0, v5

    .line 986
    .line 987
    :try_start_15
    invoke-virtual {v6}, Ltf6;->close()V

    .line 988
    .line 989
    .line 990
    const-wide/16 v4, -0x1

    .line 991
    .line 992
    add-long/2addr v12, v4

    .line 993
    cmp-long v0, v12, v10

    .line 994
    .line 995
    if-ltz v0, :cond_16

    .line 996
    .line 997
    move-object/from16 v5, p0

    .line 998
    .line 999
    move-wide/from16 v14, v16

    .line 1000
    .line 1001
    const/4 v4, 0x1

    .line 1002
    const/4 v7, 0x0

    .line 1003
    const/4 v8, 0x0

    .line 1004
    goto/16 :goto_6

    .line 1005
    .line 1006
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 1007
    .line 1008
    const-string v1, "not a zip: end of central directory signature not found"

    .line 1009
    .line 1010
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    throw v0

    .line 1014
    :goto_18
    invoke-virtual {v6}, Ltf6;->close()V

    .line 1015
    .line 1016
    .line 1017
    throw v0

    .line 1018
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 1019
    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v9}, Lon4;->size()J

    .line 1026
    .line 1027
    .line 1028
    move-result-wide v2

    .line 1029
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 1040
    :goto_19
    if-eqz v9, :cond_18

    .line 1041
    .line 1042
    :try_start_16
    invoke-virtual {v9}, Lon4;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 1043
    .line 1044
    .line 1045
    goto :goto_1a

    .line 1046
    :catchall_d
    move-exception v0

    .line 1047
    invoke-static {v1, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1048
    .line 1049
    .line 1050
    :cond_18
    :goto_1a
    throw v1

    .line 1051
    :cond_19
    invoke-static {v3, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    return-object v0

    .line 1056
    :pswitch_9
    check-cast v0, Los4;

    .line 1057
    .line 1058
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    check-cast v0, Lxr8;

    .line 1063
    .line 1064
    return-object v0

    .line 1065
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 1066
    .line 1067
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 1068
    .line 1069
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    const v1, 0x7f0d014b

    .line 1074
    .line 1075
    .line 1076
    const/4 v3, 0x0

    .line 1077
    const/4 v4, 0x0

    .line 1078
    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v1

    .line 1086
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 1087
    .line 1088
    if-eqz v1, :cond_1c

    .line 1089
    .line 1090
    const v5, 0x7f0a0115

    .line 1091
    .line 1092
    .line 1093
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    move-object v9, v1

    .line 1098
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 1099
    .line 1100
    if-eqz v9, :cond_1c

    .line 1101
    .line 1102
    const v5, 0x7f0a02a9

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    check-cast v1, Landroid/widget/ImageView;

    .line 1110
    .line 1111
    if-eqz v1, :cond_1c

    .line 1112
    .line 1113
    move-object v8, v0

    .line 1114
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1115
    .line 1116
    const v5, 0x7f0a039c

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    if-eqz v1, :cond_1c

    .line 1124
    .line 1125
    const v3, 0x7f0a02a1

    .line 1126
    .line 1127
    .line 1128
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v4

    .line 1132
    check-cast v4, Landroid/widget/ImageView;

    .line 1133
    .line 1134
    if-eqz v4, :cond_1a

    .line 1135
    .line 1136
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    check-cast v3, Landroid/widget/TextView;

    .line 1141
    .line 1142
    if-eqz v3, :cond_1b

    .line 1143
    .line 1144
    new-instance v10, Ld56;

    .line 1145
    .line 1146
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 1147
    .line 1148
    invoke-direct {v10, v1, v3}, Ld56;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;)V

    .line 1149
    .line 1150
    .line 1151
    const v5, 0x7f0a039d

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    move-object v11, v1

    .line 1159
    check-cast v11, Landroid/widget/LinearLayout;

    .line 1160
    .line 1161
    if-eqz v11, :cond_1c

    .line 1162
    .line 1163
    const v5, 0x7f0a039e

    .line 1164
    .line 1165
    .line 1166
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    move-object v12, v1

    .line 1171
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1172
    .line 1173
    if-eqz v12, :cond_1c

    .line 1174
    .line 1175
    const v5, 0x7f0a039f

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    move-object v13, v1

    .line 1183
    check-cast v13, Landroid/widget/FrameLayout;

    .line 1184
    .line 1185
    if-eqz v13, :cond_1c

    .line 1186
    .line 1187
    const v5, 0x7f0a03a8

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    move-object v14, v1

    .line 1195
    check-cast v14, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1196
    .line 1197
    if-eqz v14, :cond_1c

    .line 1198
    .line 1199
    const v5, 0x7f0a03bf

    .line 1200
    .line 1201
    .line 1202
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v1

    .line 1206
    move-object v15, v1

    .line 1207
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    .line 1208
    .line 1209
    if-eqz v15, :cond_1c

    .line 1210
    .line 1211
    const v5, 0x7f0a040a

    .line 1212
    .line 1213
    .line 1214
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v1

    .line 1218
    move-object/from16 v16, v1

    .line 1219
    .line 1220
    check-cast v16, Landroidx/recyclerview/widget/RecyclerView;

    .line 1221
    .line 1222
    if-eqz v16, :cond_1c

    .line 1223
    .line 1224
    const v5, 0x7f0a04e5

    .line 1225
    .line 1226
    .line 1227
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    if-eqz v1, :cond_1c

    .line 1232
    .line 1233
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 1234
    .line 1235
    new-instance v2, Lix0;

    .line 1236
    .line 1237
    const/16 v3, 0x9

    .line 1238
    .line 1239
    invoke-direct {v2, v3, v1, v1}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1240
    .line 1241
    .line 1242
    const v5, 0x7f0a052c

    .line 1243
    .line 1244
    .line 1245
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    move-object/from16 v18, v1

    .line 1250
    .line 1251
    check-cast v18, Landroid/widget/TextView;

    .line 1252
    .line 1253
    if-eqz v18, :cond_1c

    .line 1254
    .line 1255
    const v5, 0x7f0a052d

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    move-object/from16 v19, v1

    .line 1263
    .line 1264
    check-cast v19, Landroid/widget/TextView;

    .line 1265
    .line 1266
    if-eqz v19, :cond_1c

    .line 1267
    .line 1268
    new-instance v7, Lc56;

    .line 1269
    .line 1270
    move-object/from16 v17, v2

    .line 1271
    .line 1272
    invoke-direct/range {v7 .. v19}, Lc56;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Ld56;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lix0;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1273
    .line 1274
    .line 1275
    move-object v8, v7

    .line 1276
    goto :goto_1c

    .line 1277
    :cond_1a
    move v2, v3

    .line 1278
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    :goto_1b
    const/4 v8, 0x0

    .line 1294
    goto :goto_1c

    .line 1295
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_1b

    .line 1311
    :goto_1c
    return-object v8

    .line 1312
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 1313
    .line 1314
    sget v1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 1315
    .line 1316
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    const v1, 0x7f0d0139

    .line 1321
    .line 1322
    .line 1323
    const/4 v3, 0x0

    .line 1324
    const/4 v4, 0x0

    .line 1325
    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    const v1, 0x7f0a00d0

    .line 1330
    .line 1331
    .line 1332
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    move-object v9, v2

    .line 1337
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1338
    .line 1339
    if-eqz v9, :cond_1d

    .line 1340
    .line 1341
    const v1, 0x7f0a00ff

    .line 1342
    .line 1343
    .line 1344
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    move-object v10, v2

    .line 1349
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 1350
    .line 1351
    if-eqz v10, :cond_1d

    .line 1352
    .line 1353
    const v1, 0x7f0a0140

    .line 1354
    .line 1355
    .line 1356
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v2

    .line 1360
    move-object v11, v2

    .line 1361
    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1362
    .line 1363
    if-eqz v11, :cond_1d

    .line 1364
    .line 1365
    const v1, 0x7f0a0141

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v2

    .line 1372
    if-eqz v2, :cond_1d

    .line 1373
    .line 1374
    invoke-static {v2}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v12

    .line 1378
    move-object v8, v0

    .line 1379
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1380
    .line 1381
    const v1, 0x7f0a029d

    .line 1382
    .line 1383
    .line 1384
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    move-object v13, v2

    .line 1389
    check-cast v13, Landroid/widget/ImageView;

    .line 1390
    .line 1391
    if-eqz v13, :cond_1d

    .line 1392
    .line 1393
    const v1, 0x7f0a0458

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    move-object v14, v2

    .line 1401
    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1402
    .line 1403
    if-eqz v14, :cond_1d

    .line 1404
    .line 1405
    const v1, 0x7f0a0459

    .line 1406
    .line 1407
    .line 1408
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    if-eqz v2, :cond_1d

    .line 1413
    .line 1414
    invoke-static {v2}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v15

    .line 1418
    const v1, 0x7f0a05ec

    .line 1419
    .line 1420
    .line 1421
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v2

    .line 1425
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1426
    .line 1427
    if-eqz v2, :cond_1d

    .line 1428
    .line 1429
    const v1, 0x7f0a05ed

    .line 1430
    .line 1431
    .line 1432
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v2

    .line 1436
    if-eqz v2, :cond_1d

    .line 1437
    .line 1438
    invoke-static {v2}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 1439
    .line 1440
    .line 1441
    new-instance v7, Lp36;

    .line 1442
    .line 1443
    invoke-direct/range {v7 .. v15}, Lp36;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/RelativeLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/RelativeLayout;Lgm1;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lgm1;)V

    .line 1444
    .line 1445
    .line 1446
    move-object v8, v7

    .line 1447
    goto :goto_1d

    .line 1448
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    const/4 v8, 0x0

    .line 1464
    :goto_1d
    return-object v8

    .line 1465
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 1466
    .line 1467
    sget v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 1468
    .line 1469
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/h;

    .line 1470
    .line 1471
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    iget-object v2, v2, Lbj5;->e:Lcj5;

    .line 1476
    .line 1477
    invoke-direct {v1, v0, v2}, Lorg/swiftapps/swiftbackup/settings/h;-><init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;Lcj5;)V

    .line 1478
    .line 1479
    .line 1480
    return-object v1

    .line 1481
    :pswitch_d
    check-cast v0, Lxg5;

    .line 1482
    .line 1483
    invoke-static {v0}, Lxg5;->e(Lxg5;)Ljava/io/InputStream;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    return-object v0

    .line 1488
    :pswitch_e
    check-cast v0, Lcf5;

    .line 1489
    .line 1490
    const-string v1, "max_sms_backups"

    .line 1491
    .line 1492
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1497
    .line 1498
    .line 1499
    return-object v0

    .line 1500
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 1501
    .line 1502
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 1503
    .line 1504
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    iget-object v0, v0, Lli7;->c:Lzx2;

    .line 1509
    .line 1510
    return-object v0

    .line 1511
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 1512
    .line 1513
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 1514
    .line 1515
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v0

    .line 1519
    invoke-static {v0}, Lub5;->a(Landroid/view/LayoutInflater;)Lub5;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v0

    .line 1523
    return-object v0

    .line 1524
    :pswitch_11
    check-cast v0, Lfs4;

    .line 1525
    .line 1526
    const-string v1, "use_test_pdras"

    .line 1527
    .line 1528
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    .line 1534
    .line 1535
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 1536
    .line 1537
    return-object v0

    .line 1538
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 1539
    .line 1540
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 1541
    .line 1542
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    const v1, 0x7f0d00db

    .line 1547
    .line 1548
    .line 1549
    const/4 v3, 0x0

    .line 1550
    const/4 v4, 0x0

    .line 1551
    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v1

    .line 1559
    if-eqz v1, :cond_23

    .line 1560
    .line 1561
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v9

    .line 1565
    const v1, 0x7f0a00ec

    .line 1566
    .line 1567
    .line 1568
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v3

    .line 1572
    move-object v10, v3

    .line 1573
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 1574
    .line 1575
    if-eqz v10, :cond_1e

    .line 1576
    .line 1577
    const v1, 0x7f0a0120

    .line 1578
    .line 1579
    .line 1580
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v3

    .line 1584
    move-object v11, v3

    .line 1585
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 1586
    .line 1587
    if-eqz v11, :cond_1e

    .line 1588
    .line 1589
    const v1, 0x7f0a0214

    .line 1590
    .line 1591
    .line 1592
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v3

    .line 1596
    move-object v12, v3

    .line 1597
    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1598
    .line 1599
    if-eqz v12, :cond_1e

    .line 1600
    .line 1601
    const v1, 0x7f0a02da

    .line 1602
    .line 1603
    .line 1604
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v3

    .line 1608
    if-eqz v3, :cond_1e

    .line 1609
    .line 1610
    const v1, 0x7f0a02af

    .line 1611
    .line 1612
    .line 1613
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v5

    .line 1617
    check-cast v5, Landroid/widget/ImageView;

    .line 1618
    .line 1619
    if-eqz v5, :cond_21

    .line 1620
    .line 1621
    const v1, 0x7f0a05ac

    .line 1622
    .line 1623
    .line 1624
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v5

    .line 1628
    check-cast v5, Landroid/widget/TextView;

    .line 1629
    .line 1630
    if-eqz v5, :cond_21

    .line 1631
    .line 1632
    invoke-static {v3, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v1

    .line 1636
    check-cast v1, Landroid/widget/TextView;

    .line 1637
    .line 1638
    if-eqz v1, :cond_22

    .line 1639
    .line 1640
    new-instance v13, Lzq4;

    .line 1641
    .line 1642
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 1643
    .line 1644
    invoke-direct {v13, v3, v5, v1}, Lzq4;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1645
    .line 1646
    .line 1647
    const v1, 0x7f0a02db

    .line 1648
    .line 1649
    .line 1650
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    if-eqz v3, :cond_1e

    .line 1655
    .line 1656
    const v1, 0x7f0a01e0

    .line 1657
    .line 1658
    .line 1659
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v5

    .line 1663
    if-eqz v5, :cond_1f

    .line 1664
    .line 1665
    const v1, 0x7f0a03fe

    .line 1666
    .line 1667
    .line 1668
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v5

    .line 1672
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 1673
    .line 1674
    if-eqz v5, :cond_1f

    .line 1675
    .line 1676
    const v1, 0x7f0a03ff

    .line 1677
    .line 1678
    .line 1679
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v7

    .line 1683
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 1684
    .line 1685
    if-eqz v7, :cond_1f

    .line 1686
    .line 1687
    invoke-static {v3, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v1

    .line 1691
    check-cast v1, Landroid/widget/TextView;

    .line 1692
    .line 1693
    if-eqz v1, :cond_20

    .line 1694
    .line 1695
    new-instance v14, Lvq;

    .line 1696
    .line 1697
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 1698
    .line 1699
    const/16 v1, 0x8

    .line 1700
    .line 1701
    invoke-direct {v14, v1, v3, v5, v7}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1702
    .line 1703
    .line 1704
    const v1, 0x7f0a02dc

    .line 1705
    .line 1706
    .line 1707
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v3

    .line 1711
    if-eqz v3, :cond_1e

    .line 1712
    .line 1713
    invoke-static {v3}, Lur;->a(Landroid/view/View;)Lur;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v15

    .line 1717
    const v1, 0x7f0a04cf

    .line 1718
    .line 1719
    .line 1720
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v3

    .line 1724
    move-object/from16 v16, v3

    .line 1725
    .line 1726
    check-cast v16, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1727
    .line 1728
    if-eqz v16, :cond_1e

    .line 1729
    .line 1730
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v1

    .line 1734
    check-cast v1, Landroid/widget/TextView;

    .line 1735
    .line 1736
    if-eqz v1, :cond_24

    .line 1737
    .line 1738
    new-instance v7, Lyq4;

    .line 1739
    .line 1740
    move-object v8, v0

    .line 1741
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1742
    .line 1743
    invoke-direct/range {v7 .. v16}, Lyq4;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lzq4;Lvq;Lur;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1744
    .line 1745
    .line 1746
    move-object v8, v7

    .line 1747
    goto :goto_20

    .line 1748
    :cond_1e
    move v2, v1

    .line 1749
    goto :goto_1f

    .line 1750
    :cond_1f
    move v2, v1

    .line 1751
    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v0

    .line 1763
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    :goto_1e
    move-object v8, v4

    .line 1767
    goto :goto_20

    .line 1768
    :cond_21
    move v2, v1

    .line 1769
    :cond_22
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v0

    .line 1777
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1782
    .line 1783
    .line 1784
    goto :goto_1e

    .line 1785
    :cond_23
    move v2, v5

    .line 1786
    :cond_24
    :goto_1f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v0

    .line 1790
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v0

    .line 1798
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1799
    .line 1800
    .line 1801
    goto :goto_1e

    .line 1802
    :goto_20
    return-object v8

    .line 1803
    :pswitch_data_0
    .packed-switch 0x0
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
