.class public final synthetic Lfj;
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
    iput p2, p0, Lfj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfj;->b:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lfj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object p0, p0, Lfj;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lfs4;

    .line 13
    .line 14
    const-string v0, "clear_cached_apps_data"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 25
    .line 26
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lyq4;->c:Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 36
    .line 37
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Lif4;->f:Lkf4;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2
    check-cast p0, Lqp3;

    .line 47
    .line 48
    invoke-virtual {p0}, Lpw6;->g()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lqp3;->o:Lex6;

    .line 55
    .line 56
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lqp3;->m:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Leo3;

    .line 70
    .line 71
    invoke-virtual {p0}, Leo3;->a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    if-eqz p0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object p0, v2

    .line 83
    :goto_1
    if-nez p0, :cond_2

    .line 84
    .line 85
    const-string p0, ""

    .line 86
    .line 87
    :cond_2
    invoke-static {p0, v2}, Lpw6;->m(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :pswitch_3
    check-cast p0, Ldm3;

    .line 92
    .line 93
    iget-object v0, p0, Ldm3;->i:Lex6;

    .line 94
    .line 95
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 96
    .line 97
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lai8;->i(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    sget-object p0, Lrl3;->a:Lrl3;

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    sget-object v1, Ltb1;->a:Ltb1;

    .line 114
    .line 115
    invoke-static {}, Lqb1;->m()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    sget-object p0, Lpl3;->a:Lpl3;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    instance-of v1, v1, Lol3;

    .line 132
    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    sget-object v1, Lql3;->a:Lql3;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    sget-object v0, Lre3;->a:Lzc2;

    .line 141
    .line 142
    iget-object v0, p0, Ldm3;->m:Lzc2;

    .line 143
    .line 144
    iget-object v1, p0, Ldm3;->n:Lkm5;

    .line 145
    .line 146
    invoke-static {v0, v1}, Lre3;->n(Lzc2;Laj8;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lre3;->h()Lzc2;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Ldm3;->m:Lzc2;

    .line 169
    .line 170
    new-instance v1, Lkm5;

    .line 171
    .line 172
    const/16 v2, 0x9

    .line 173
    .line 174
    invoke-direct {v1, p0, v2}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    iput-object v1, p0, Ldm3;->n:Lkm5;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lzc2;->c(Laj8;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-object v3

    .line 183
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;

    .line 184
    .line 185
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_5
    check-cast p0, Lah3;

    .line 191
    .line 192
    iget-object p0, p0, Lah3;->a:Ljava/util/concurrent/CountDownLatch;

    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 195
    .line 196
    .line 197
    return-object v3

    .line 198
    :pswitch_6
    check-cast p0, Lsc3;

    .line 199
    .line 200
    iget-object p0, p0, Lsc3;->Q:Ldt;

    .line 201
    .line 202
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ldt;->f0(Lq05;)V

    .line 205
    .line 206
    .line 207
    return-object v3

    .line 208
    :pswitch_7
    check-cast p0, Ljh1;

    .line 209
    .line 210
    invoke-interface {p0}, Ljh1;->g()Ldd1;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :pswitch_8
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 220
    .line 221
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$GFlJXL-70gAT0nTUSI_7R5m2R5o(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;)Lbe8;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 227
    .line 228
    sget v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 229
    .line 230
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    iget-object p0, p0, Lov1;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 235
    .line 236
    return-object p0

    .line 237
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 238
    .line 239
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->e(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 245
    .line 246
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 247
    .line 248
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->O()Lnr1;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget-object p0, p0, Lnr1;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 256
    .line 257
    sget v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 258
    .line 259
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->q()V

    .line 264
    .line 265
    .line 266
    return-object v3

    .line 267
    :pswitch_d
    check-cast p0, Leb2;

    .line 268
    .line 269
    sget-object v0, Lsf1;->g:Lsf1;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    const-class v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 275
    .line 276
    invoke-virtual {p0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 281
    .line 282
    if-eqz p0, :cond_6

    .line 283
    .line 284
    iget-object v1, v0, Ldv;->a:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v5, "onChildChanged = "

    .line 293
    .line 294
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, p0}, Ldv;->l(Ljl0;)V

    .line 308
    .line 309
    .line 310
    :cond_6
    return-object v3

    .line 311
    :pswitch_e
    check-cast p0, Lv11;

    .line 312
    .line 313
    const-string v0, "compression_level_calls"

    .line 314
    .line 315
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    return-object p0

    .line 323
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 324
    .line 325
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 326
    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-static {p0}, Loi7;->a(Landroid/view/LayoutInflater;)Loi7;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :pswitch_10
    check-cast p0, Lil0;

    .line 337
    .line 338
    new-instance v0, Landroid/transition/ChangeBounds;

    .line 339
    .line 340
    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 341
    .line 342
    .line 343
    new-instance v1, Lel0;

    .line 344
    .line 345
    invoke-direct {v1, p0}, Lel0;-><init>(Lil0;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 349
    .line 350
    .line 351
    iput-object v1, p0, Lil0;->t:Lel0;

    .line 352
    .line 353
    return-object v0

    .line 354
    :pswitch_11
    check-cast p0, Lqk0;

    .line 355
    .line 356
    iget-object p0, p0, Lqk0;->h:Lji;

    .line 357
    .line 358
    invoke-virtual {p0}, Lji;->hasExpansion()Z

    .line 359
    .line 360
    .line 361
    move-result p0

    .line 362
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :pswitch_12
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 368
    .line 369
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    const v0, 0x7f0d0037

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    const v0, 0x7f0a00aa

    .line 383
    .line 384
    .line 385
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_7

    .line 390
    .line 391
    invoke-static {v1}, Lx00;->a(Landroid/view/View;)Lx00;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    const v0, 0x7f0a00e3

    .line 396
    .line 397
    .line 398
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    move-object v6, v1

    .line 403
    check-cast v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 404
    .line 405
    if-eqz v6, :cond_7

    .line 406
    .line 407
    const v0, 0x7f0a0209

    .line 408
    .line 409
    .line 410
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    if-eqz v1, :cond_7

    .line 415
    .line 416
    invoke-static {v1}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    const v0, 0x7f0a0220

    .line 421
    .line 422
    .line 423
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    move-object v8, v1

    .line 428
    check-cast v8, Lcom/l4digital/fastscroll/FastScroller;

    .line 429
    .line 430
    if-eqz v8, :cond_7

    .line 431
    .line 432
    const v0, 0x7f0a03a8

    .line 433
    .line 434
    .line 435
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object v9, v1

    .line 440
    check-cast v9, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 441
    .line 442
    if-eqz v9, :cond_7

    .line 443
    .line 444
    move-object v4, p0

    .line 445
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 446
    .line 447
    const v0, 0x7f0a03eb

    .line 448
    .line 449
    .line 450
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    move-object v10, v1

    .line 455
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 456
    .line 457
    if-eqz v10, :cond_7

    .line 458
    .line 459
    new-instance v3, La30;

    .line 460
    .line 461
    invoke-direct/range {v3 .. v10}, La30;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lx00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ley2;Lcom/l4digital/fastscroll/FastScroller;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 462
    .line 463
    .line 464
    move-object v2, v3

    .line 465
    goto :goto_3

    .line 466
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 467
    .line 468
    .line 469
    move-result-object p0

    .line 470
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    const-string v0, "Missing required view with ID: "

    .line 475
    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :goto_3
    return-object v2

    .line 484
    :pswitch_13
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/AppSwipeActionsActivity;

    .line 485
    .line 486
    sget v0, Lorg/swiftapps/swiftbackup/settings/AppSwipeActionsActivity;->Q:I

    .line 487
    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-static {p0}, Lga7;->a(Landroid/view/LayoutInflater;)Lga7;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    return-object p0

    .line 497
    :pswitch_14
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 498
    .line 499
    const-string v0, "backup_app_cache"

    .line 500
    .line 501
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 509
    .line 510
    return-object p0

    .line 511
    :pswitch_15
    check-cast p0, Lmx;

    .line 512
    .line 513
    iget-boolean v0, p0, Lmx;->b:Z

    .line 514
    .line 515
    if-eqz v0, :cond_8

    .line 516
    .line 517
    const/4 v1, 0x6

    .line 518
    :cond_8
    iget-boolean v0, p0, Lmx;->c:Z

    .line 519
    .line 520
    if-eqz v0, :cond_9

    .line 521
    .line 522
    add-int/lit8 v1, v1, 0x5

    .line 523
    .line 524
    :cond_9
    iget-boolean v0, p0, Lmx;->d:Z

    .line 525
    .line 526
    if-eqz v0, :cond_a

    .line 527
    .line 528
    add-int/lit8 v1, v1, 0x4

    .line 529
    .line 530
    :cond_a
    iget-boolean v0, p0, Lmx;->e:Z

    .line 531
    .line 532
    if-eqz v0, :cond_b

    .line 533
    .line 534
    add-int/lit8 v1, v1, 0x3

    .line 535
    .line 536
    :cond_b
    iget-boolean v0, p0, Lmx;->f:Z

    .line 537
    .line 538
    if-eqz v0, :cond_c

    .line 539
    .line 540
    add-int/lit8 v1, v1, 0x2

    .line 541
    .line 542
    :cond_c
    iget-boolean p0, p0, Lmx;->g:Z

    .line 543
    .line 544
    if-eqz p0, :cond_d

    .line 545
    .line 546
    add-int/lit8 v1, v1, 0x1

    .line 547
    .line 548
    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    return-object p0

    .line 553
    :pswitch_16
    check-cast p0, Lxw;

    .line 554
    .line 555
    iget-boolean v0, p0, Lxw;->i:Z

    .line 556
    .line 557
    if-eqz v0, :cond_e

    .line 558
    .line 559
    iget-object v0, p0, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 560
    .line 561
    if-eqz v0, :cond_f

    .line 562
    .line 563
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getKeyVersion()Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    goto :goto_4

    .line 568
    :cond_e
    invoke-virtual {p0}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    if-eqz v0, :cond_f

    .line 573
    .line 574
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getKeyVersion()Ljava/lang/Integer;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :cond_f
    :goto_4
    iget-object p0, p0, Lxw;->h:Lji;

    .line 579
    .line 580
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    if-eqz v2, :cond_10

    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    invoke-static {}, Lyx5;->j()Lux5;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {}, Lyx5;->k()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-static {v0, v2}, Lyx5;->a(Lux5;Ljava/lang/String;)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    new-instance v2, Ljava/util/ArrayList;

    .line 606
    .line 607
    const/16 v3, 0xa

    .line 608
    .line 609
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-eqz v4, :cond_11

    .line 625
    .line 626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    check-cast v4, Lux5;

    .line 631
    .line 632
    invoke-static {v4, p0, v1}, Lyx5;->f(Lux5;Ljava/lang/String;I)[C

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    goto :goto_5

    .line 640
    :cond_11
    invoke-static {v1, p0}, Lyx5;->l(ILjava/lang/String;)[C

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {}, Lyx5;->i()Ljava/util/List;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    new-instance v5, Ljava/util/ArrayList;

    .line 649
    .line 650
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    .line 656
    .line 657
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    if-eqz v4, :cond_12

    .line 666
    .line 667
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    check-cast v4, Ljava/lang/String;

    .line 672
    .line 673
    invoke-static {v4, v0}, Lyx5;->e(Ljava/lang/String;[C)[C

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    goto :goto_6

    .line 681
    :cond_12
    sget-object v0, Ld45;->b:Ld45;

    .line 682
    .line 683
    invoke-static {}, Lb45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-static {v1, v0, p0}, Lod2;->i(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)[C

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 700
    .line 701
    .line 702
    move-result-object p0

    .line 703
    invoke-static {v2, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-static {v0, p0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    new-instance v0, Ljava/util/HashSet;

    .line 712
    .line 713
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 714
    .line 715
    .line 716
    new-instance v1, Ljava/util/ArrayList;

    .line 717
    .line 718
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    :cond_13
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    if-eqz v2, :cond_14

    .line 730
    .line 731
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    move-object v3, v2

    .line 736
    check-cast v3, [C

    .line 737
    .line 738
    new-instance v4, Ljava/lang/String;

    .line 739
    .line 740
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    if-eqz v3, :cond_13

    .line 748
    .line 749
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    goto :goto_7

    .line 753
    :cond_14
    return-object v1

    .line 754
    :pswitch_17
    check-cast p0, Lwv;

    .line 755
    .line 756
    new-instance v0, Lrv;

    .line 757
    .line 758
    iget-object v1, p0, Lwv;->a:Lc40;

    .line 759
    .line 760
    iget-object v2, p0, Lwv;->b:Lry7;

    .line 761
    .line 762
    iget-object p0, p0, Lwv;->d:Lgv7;

    .line 763
    .line 764
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object p0

    .line 768
    check-cast p0, Lzn7;

    .line 769
    .line 770
    invoke-direct {v0, v1, v2, p0}, Lrv;-><init>(Lc40;Lry7;Lzn7;)V

    .line 771
    .line 772
    .line 773
    return-object v0

    .line 774
    :pswitch_18
    check-cast p0, Lcm;

    .line 775
    .line 776
    invoke-virtual {p0}, Lcm;->d()J

    .line 777
    .line 778
    .line 779
    move-result-wide v0

    .line 780
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 781
    .line 782
    .line 783
    move-result-object p0

    .line 784
    return-object p0

    .line 785
    :pswitch_19
    check-cast p0, Lgl;

    .line 786
    .line 787
    iget-object p0, p0, Lgl;->i:Lgv7;

    .line 788
    .line 789
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p0

    .line 793
    check-cast p0, Ljava/util/Set;

    .line 794
    .line 795
    return-object p0

    .line 796
    :pswitch_1a
    check-cast p0, Ljl;

    .line 797
    .line 798
    new-instance v0, Lgl;

    .line 799
    .line 800
    iget-object v1, p0, Ljl;->a:Lc40;

    .line 801
    .line 802
    iget-object p0, p0, Ljl;->b:Lky7;

    .line 803
    .line 804
    invoke-direct {v0, v1, p0}, Lgl;-><init>(Lc40;Lky7;)V

    .line 805
    .line 806
    .line 807
    return-object v0

    .line 808
    :pswitch_1b
    check-cast p0, Lhk;

    .line 809
    .line 810
    invoke-virtual {p0}, Lhk;->e()Lq63;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    iget-object p0, p0, Lhk;->b:Ljava/lang/String;

    .line 815
    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    const-string p0, ".xml"

    .line 825
    .line 826
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object p0

    .line 833
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 834
    .line 835
    .line 836
    move-result-object p0

    .line 837
    return-object p0

    .line 838
    :pswitch_1c
    check-cast p0, Lrj;

    .line 839
    .line 840
    iget-object v0, p0, Lrj;->f:Lji;

    .line 841
    .line 842
    invoke-virtual {v0}, Lji;->refresh()V

    .line 843
    .line 844
    .line 845
    sget-object v0, Lzn4;->a:Lzn4;

    .line 846
    .line 847
    new-instance v0, Lgj;

    .line 848
    .line 849
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 850
    .line 851
    .line 852
    const-wide/16 v1, 0xc8

    .line 853
    .line 854
    invoke-static {v1, v2, v0}, Lzn4;->f(JLbt3;)V

    .line 855
    .line 856
    .line 857
    return-object v3

    .line 858
    nop

    .line 859
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
