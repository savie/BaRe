.class public final synthetic Lbk;
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
    iput p2, p0, Lbk;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbk;->b:Ljava/lang/Object;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lbk;->a:I

    .line 4
    .line 5
    const v2, 0x7f0a03bf

    .line 6
    .line 7
    .line 8
    const-string v3, "Missing required view with ID: "

    .line 9
    .line 10
    const v4, 0x7f0a00a9

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    sget-object v7, Lbe8;->a:Lbe8;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v0, v0, Lbk;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 24
    .line 25
    sget v1, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0d00ef

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

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
    move-result-object v1

    .line 48
    const v4, 0x7f0a03a8

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    check-cast v5, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 58
    .line 59
    new-instance v4, Lix0;

    .line 60
    .line 61
    const/4 v6, 0x6

    .line 62
    invoke-direct {v4, v6, v5, v5}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    new-instance v8, Lr55;

    .line 74
    .line 75
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 76
    .line 77
    invoke-direct {v8, v0, v1, v4, v5}, Lr55;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lix0;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move v2, v4

    .line 82
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-object v8

    .line 98
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 99
    .line 100
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 101
    .line 102
    new-instance v1, Lur4;

    .line 103
    .line 104
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0}, Lk28;->v()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-direct {v1, v2, v0}, Lur4;-><init>(IZ)V

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->getLabelParamsMap()Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_4

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 156
    .line 157
    invoke-static {v4}, Ly13;->s(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    move-object v2, v8

    .line 176
    :cond_4
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->getLabelledAppsMap()Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;

    .line 214
    .line 215
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;->hasLabels()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_5

    .line 220
    .line 221
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    move-object v3, v8

    .line 234
    :cond_7
    if-eqz v0, :cond_8

    .line 235
    .line 236
    invoke-virtual {v0, v2, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->copy(Ljava/util/Map;Ljava/util/Map;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    :cond_8
    sget-object v0, Llr4;->a:Llr4;

    .line 241
    .line 242
    invoke-virtual {v0, v8}, Llr4;->l(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Ld76;

    .line 246
    .line 247
    const-string v1, "saveAndUploadData"

    .line 248
    .line 249
    invoke-direct {v0, v8, v1}, Ld76;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Lre3;->k()Lzc2;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "labelsData"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v8}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 266
    .line 267
    .line 268
    return-object v7

    .line 269
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 270
    .line 271
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->e(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D

    .line 272
    .line 273
    .line 274
    move-result-wide v0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    return-object v0

    .line 280
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 281
    .line 282
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 283
    .line 284
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v0, v0, Lyq4;->f:Lzq4;

    .line 289
    .line 290
    return-object v0

    .line 291
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 292
    .line 293
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_9
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sget-object v1, Lzn4;->a:Lzn4;

    .line 307
    .line 308
    new-instance v1, Llj;

    .line 309
    .line 310
    const/4 v2, 0x4

    .line 311
    invoke-direct {v1, v0, v8, v2}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 312
    .line 313
    .line 314
    invoke-static {v8, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 315
    .line 316
    .line 317
    :goto_3
    return-object v7

    .line 318
    :pswitch_5
    check-cast v0, Lkp3;

    .line 319
    .line 320
    invoke-virtual {v0}, Lkp3;->m()Lnp3;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0, v5, v5}, Lnp3;->j(ZZ)V

    .line 325
    .line 326
    .line 327
    return-object v7

    .line 328
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 329
    .line 330
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const v1, 0x7f0d00ba

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 348
    .line 349
    if-eqz v1, :cond_b

    .line 350
    .line 351
    const v4, 0x7f0a049c

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 359
    .line 360
    if-eqz v1, :cond_b

    .line 361
    .line 362
    const v4, 0x7f0a04e5

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-eqz v2, :cond_b

    .line 370
    .line 371
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 372
    .line 373
    new-instance v4, Lix0;

    .line 374
    .line 375
    const/16 v5, 0x9

    .line 376
    .line 377
    invoke-direct {v4, v5, v2, v2}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    const v2, 0x7f0a05de

    .line 381
    .line 382
    .line 383
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    .line 388
    .line 389
    if-eqz v5, :cond_a

    .line 390
    .line 391
    new-instance v8, Lyo3;

    .line 392
    .line 393
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 394
    .line 395
    invoke-direct {v8, v0, v1, v4, v5}, Lyo3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/tabs/TabLayout;Lix0;Landroidx/viewpager/widget/ViewPager;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_a
    move v4, v2

    .line 400
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    :goto_4
    return-object v8

    .line 416
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 417
    .line 418
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 419
    .line 420
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    iget-object v0, v0, Loo3;->c:Ley2;

    .line 425
    .line 426
    return-object v0

    .line 427
    :pswitch_8
    check-cast v0, Lin3;

    .line 428
    .line 429
    invoke-virtual {v0}, Lin3;->l()Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eqz v2, :cond_d

    .line 445
    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Lzn7;

    .line 451
    .line 452
    invoke-virtual {v2}, Lzn7;->n()Lq63;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_c

    .line 473
    .line 474
    new-instance v1, Lhn3;

    .line 475
    .line 476
    invoke-virtual {v2}, Lzn7;->n()Lq63;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-direct {v1, v2, v0, v3}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 481
    .line 482
    .line 483
    return-object v1

    .line 484
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 485
    .line 486
    const-string v1, "Collection contains no element matching the predicate."

    .line 487
    .line 488
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 493
    .line 494
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 495
    .line 496
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    iget-object v0, v0, Lkm3;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 501
    .line 502
    return-object v0

    .line 503
    :pswitch_a
    check-cast v0, Lyl3;

    .line 504
    .line 505
    sget-object v1, Lp93;->a:Lp93;

    .line 506
    .line 507
    iget-wide v0, v0, Lyl3;->b:J

    .line 508
    .line 509
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    return-object v0

    .line 518
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 519
    .line 520
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->P:I

    .line 521
    .line 522
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->K:Lgv7;

    .line 523
    .line 524
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Ldr2;

    .line 529
    .line 530
    iget-object v0, v0, Ldr2;->b:Landroid/widget/TextView;

    .line 531
    .line 532
    return-object v0

    .line 533
    :pswitch_c
    check-cast v0, Lkb2;

    .line 534
    .line 535
    iget-object v0, v0, Lkb2;->d:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 538
    .line 539
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    .line 540
    .line 541
    .line 542
    return-object v7

    .line 543
    :pswitch_d
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 544
    .line 545
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$RYYU7unT04J82y-G6JL9ut_wHGE(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)Lbe8;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    return-object v0

    .line 550
    :pswitch_e
    check-cast v0, Llr1;

    .line 551
    .line 552
    const-string v1, "config_multiple_backups_strategy"

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    return-object v0

    .line 562
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 563
    .line 564
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 565
    .line 566
    new-instance v1, Landroid/content/Intent;

    .line 567
    .line 568
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    const-string v3, "extra_config_settings"

    .line 580
    .line 581
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    const-string v2, "extra_config_settings_delete"

    .line 586
    .line 587
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    const/4 v2, -0x1

    .line 595
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 599
    .line 600
    .line 601
    return-object v7

    .line 602
    :pswitch_10
    check-cast v0, Lio1;

    .line 603
    .line 604
    new-instance v1, Lzs5;

    .line 605
    .line 606
    new-instance v2, Lvn1;

    .line 607
    .line 608
    invoke-direct {v2, v0, v6}, Lvn1;-><init>(Ljava/lang/Object;I)V

    .line 609
    .line 610
    .line 611
    invoke-direct {v1, v2}, Lzs5;-><init>(Ljava/lang/Runnable;)V

    .line 612
    .line 613
    .line 614
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 615
    .line 616
    const/16 v3, 0x21

    .line 617
    .line 618
    if-lt v2, v3, :cond_f

    .line 619
    .line 620
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-nez v2, :cond_e

    .line 633
    .line 634
    new-instance v2, Landroid/os/Handler;

    .line 635
    .line 636
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 641
    .line 642
    .line 643
    new-instance v3, Lpb;

    .line 644
    .line 645
    invoke-direct {v3, v5, v0, v1}, Lpb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    .line 650
    .line 651
    goto :goto_5

    .line 652
    :cond_e
    invoke-virtual {v0, v1}, Lio1;->k(Lzs5;)V

    .line 653
    .line 654
    .line 655
    :cond_f
    :goto_5
    return-object v1

    .line 656
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 657
    .line 658
    sget v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 659
    .line 660
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    const v1, 0x7f0d0057

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    const v1, 0x7f0a003e

    .line 672
    .line 673
    .line 674
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    move-object v11, v5

    .line 679
    check-cast v11, Landroid/widget/LinearLayout;

    .line 680
    .line 681
    if-eqz v11, :cond_10

    .line 682
    .line 683
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    if-eqz v1, :cond_11

    .line 688
    .line 689
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 690
    .line 691
    .line 692
    move-result-object v12

    .line 693
    const v1, 0x7f0a00f3

    .line 694
    .line 695
    .line 696
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    move-object v13, v4

    .line 701
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 702
    .line 703
    if-eqz v13, :cond_10

    .line 704
    .line 705
    const v1, 0x7f0a00fa

    .line 706
    .line 707
    .line 708
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    move-object v14, v4

    .line 713
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 714
    .line 715
    if-eqz v14, :cond_10

    .line 716
    .line 717
    const v1, 0x7f0a0121

    .line 718
    .line 719
    .line 720
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    move-object v15, v4

    .line 725
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 726
    .line 727
    if-eqz v15, :cond_10

    .line 728
    .line 729
    const v1, 0x7f0a0124

    .line 730
    .line 731
    .line 732
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    move-object/from16 v16, v4

    .line 737
    .line 738
    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 739
    .line 740
    if-eqz v16, :cond_10

    .line 741
    .line 742
    const v1, 0x7f0a0255

    .line 743
    .line 744
    .line 745
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    check-cast v4, Landroid/widget/LinearLayout;

    .line 750
    .line 751
    if-eqz v4, :cond_10

    .line 752
    .line 753
    const v1, 0x7f0a02c4

    .line 754
    .line 755
    .line 756
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    move-object/from16 v17, v4

    .line 761
    .line 762
    check-cast v17, Landroid/widget/ImageView;

    .line 763
    .line 764
    if-eqz v17, :cond_10

    .line 765
    .line 766
    const v1, 0x7f0a02cf

    .line 767
    .line 768
    .line 769
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    move-object/from16 v18, v4

    .line 774
    .line 775
    check-cast v18, Landroid/widget/ImageView;

    .line 776
    .line 777
    if-eqz v18, :cond_10

    .line 778
    .line 779
    const v1, 0x7f0a03ae

    .line 780
    .line 781
    .line 782
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    move-object/from16 v19, v4

    .line 787
    .line 788
    check-cast v19, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 789
    .line 790
    if-eqz v19, :cond_10

    .line 791
    .line 792
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    move-object/from16 v20, v1

    .line 797
    .line 798
    check-cast v20, Landroidx/recyclerview/widget/RecyclerView;

    .line 799
    .line 800
    if-eqz v20, :cond_12

    .line 801
    .line 802
    const v2, 0x7f0a03c6

    .line 803
    .line 804
    .line 805
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    move-object/from16 v21, v1

    .line 810
    .line 811
    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 812
    .line 813
    if-eqz v21, :cond_12

    .line 814
    .line 815
    const v2, 0x7f0a0539

    .line 816
    .line 817
    .line 818
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    move-object/from16 v22, v1

    .line 823
    .line 824
    check-cast v22, Landroid/widget/TextView;

    .line 825
    .line 826
    if-eqz v22, :cond_12

    .line 827
    .line 828
    const v2, 0x7f0a057b

    .line 829
    .line 830
    .line 831
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    move-object/from16 v23, v1

    .line 836
    .line 837
    check-cast v23, Landroid/widget/TextView;

    .line 838
    .line 839
    if-eqz v23, :cond_12

    .line 840
    .line 841
    const v2, 0x7f0a057c

    .line 842
    .line 843
    .line 844
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    move-object/from16 v24, v1

    .line 849
    .line 850
    check-cast v24, Landroid/widget/TextView;

    .line 851
    .line 852
    if-eqz v24, :cond_12

    .line 853
    .line 854
    const v2, 0x7f0a0589

    .line 855
    .line 856
    .line 857
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    move-object/from16 v25, v1

    .line 862
    .line 863
    check-cast v25, Landroid/widget/TextView;

    .line 864
    .line 865
    if-eqz v25, :cond_12

    .line 866
    .line 867
    const v2, 0x7f0a058a

    .line 868
    .line 869
    .line 870
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    check-cast v1, Landroid/widget/TextView;

    .line 875
    .line 876
    if-eqz v1, :cond_12

    .line 877
    .line 878
    const v2, 0x7f0a059f

    .line 879
    .line 880
    .line 881
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    move-object/from16 v26, v1

    .line 886
    .line 887
    check-cast v26, Landroid/widget/TextView;

    .line 888
    .line 889
    if-eqz v26, :cond_12

    .line 890
    .line 891
    const v2, 0x7f0a05a0

    .line 892
    .line 893
    .line 894
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    move-object/from16 v27, v1

    .line 899
    .line 900
    check-cast v27, Landroid/widget/TextView;

    .line 901
    .line 902
    if-eqz v27, :cond_12

    .line 903
    .line 904
    new-instance v9, Lph1;

    .line 905
    .line 906
    move-object v10, v0

    .line 907
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 908
    .line 909
    invoke-direct/range {v9 .. v27}, Lph1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 910
    .line 911
    .line 912
    move-object v8, v9

    .line 913
    goto :goto_7

    .line 914
    :cond_10
    move v2, v1

    .line 915
    goto :goto_6

    .line 916
    :cond_11
    move v2, v4

    .line 917
    :cond_12
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    :goto_7
    return-object v8

    .line 933
    :pswitch_12
    check-cast v0, Lgg1;

    .line 934
    .line 935
    invoke-virtual {v0}, Lgg1;->m()Lng1;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 940
    .line 941
    iget-object v10, v0, La55;->b:Ljava/lang/String;

    .line 942
    .line 943
    sget-object v1, Ltb1;->a:Ltb1;

    .line 944
    .line 945
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-virtual {v1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    const-string v2, "Disconnecting cloud: "

    .line 954
    .line 955
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v11

    .line 959
    const/4 v13, 0x4

    .line 960
    const/4 v14, 0x0

    .line 961
    const/4 v12, 0x0

    .line 962
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    sget-object v1, Lzn4;->a:Lzn4;

    .line 966
    .line 967
    new-instance v1, Lmg1;

    .line 968
    .line 969
    invoke-direct {v1, v0, v8, v6}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 970
    .line 971
    .line 972
    invoke-static {v8, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 973
    .line 974
    .line 975
    return-object v7

    .line 976
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 977
    .line 978
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 979
    .line 980
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    iget-boolean v1, v1, Lv01;->g:Z

    .line 985
    .line 986
    if-eqz v1, :cond_13

    .line 987
    .line 988
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->y(Lzm;)Z

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    if-nez v1, :cond_13

    .line 993
    .line 994
    goto :goto_8

    .line 995
    :cond_13
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    iget-object v1, v1, Lv01;->f:Lex6;

    .line 1000
    .line 1001
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    check-cast v1, Ls01;

    .line 1006
    .line 1007
    if-eqz v1, :cond_14

    .line 1008
    .line 1009
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    iget-object v1, v1, Ls01;->b:Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    iget-boolean v0, v0, Lv01;->g:Z

    .line 1020
    .line 1021
    invoke-virtual {v2, v1, v0}, Lv01;->j(Ljava/util/List;Z)V

    .line 1022
    .line 1023
    .line 1024
    :cond_14
    :goto_8
    return-object v7

    .line 1025
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 1026
    .line 1027
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 1028
    .line 1029
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    iget-object v0, v0, Lli7;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 1034
    .line 1035
    return-object v0

    .line 1036
    :pswitch_15
    check-cast v0, Lqk0;

    .line 1037
    .line 1038
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 1039
    .line 1040
    iget-object v2, v0, Lqk0;->h:Lji;

    .line 1041
    .line 1042
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    if-eqz v2, :cond_15

    .line 1047
    .line 1048
    iget-object v3, v0, Lqk0;->a:Lhz;

    .line 1049
    .line 1050
    iget-boolean v3, v3, Lhz;->g:Z

    .line 1051
    .line 1052
    invoke-virtual {v2, v3}, Lqx;->getExtDataSize(Z)J

    .line 1053
    .line 1054
    .line 1055
    move-result-wide v2

    .line 1056
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v8

    .line 1060
    :cond_15
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 1061
    .line 1062
    .line 1063
    move-result-wide v2

    .line 1064
    invoke-virtual {v0, v1, v2, v3}, Lqk0;->n(Liu;J)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    return-object v0

    .line 1073
    :pswitch_16
    check-cast v0, Landroid/app/Activity;

    .line 1074
    .line 1075
    const-string v1, "https://www.swiftapps.org/faq#appparts"

    .line 1076
    .line 1077
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1078
    .line 1079
    .line 1080
    return-object v7

    .line 1081
    :pswitch_17
    check-cast v0, Ljava/lang/String;

    .line 1082
    .line 1083
    invoke-static {v0}, Lg00;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    return-object v0

    .line 1088
    :pswitch_18
    check-cast v0, Lqx;

    .line 1089
    .line 1090
    invoke-static {v0}, Lqx;->l(Lqx;)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v0

    .line 1094
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    return-object v0

    .line 1099
    :pswitch_19
    check-cast v0, Ldt;

    .line 1100
    .line 1101
    new-instance v1, Lk10;

    .line 1102
    .line 1103
    new-instance v2, Lzs;

    .line 1104
    .line 1105
    invoke-direct {v2, v0, v6}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 1106
    .line 1107
    .line 1108
    new-instance v3, Llm;

    .line 1109
    .line 1110
    invoke-direct {v3, v0, v5}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 1111
    .line 1112
    .line 1113
    invoke-direct {v1, v2, v3}, Lk10;-><init>(Lzs;Llm;)V

    .line 1114
    .line 1115
    .line 1116
    return-object v1

    .line 1117
    :pswitch_1a
    check-cast v0, Ldm;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Ldm;->d()J

    .line 1120
    .line 1121
    .line 1122
    move-result-wide v0

    .line 1123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    return-object v0

    .line 1128
    :pswitch_1b
    check-cast v0, Lwl;

    .line 1129
    .line 1130
    invoke-virtual {v0}, Lwl;->d()J

    .line 1131
    .line 1132
    .line 1133
    move-result-wide v0

    .line 1134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    return-object v0

    .line 1139
    :pswitch_1c
    check-cast v0, Lhk;

    .line 1140
    .line 1141
    invoke-virtual {v0}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    if-eqz v1, :cond_16

    .line 1146
    .line 1147
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    if-eqz v1, :cond_16

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1154
    .line 1155
    .line 1156
    move-result-wide v0

    .line 1157
    goto :goto_9

    .line 1158
    :cond_16
    invoke-virtual {v0}, Lhk;->l()J

    .line 1159
    .line 1160
    .line 1161
    move-result-wide v0

    .line 1162
    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    return-object v0

    .line 1167
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
