.class public final synthetic Lck;
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
    iput p2, p0, Lck;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lck;->b:Ljava/lang/Object;

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
    iget v1, v0, Lck;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v0, v0, Lck;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 14
    .line 15
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "labels_activity_mode"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 33
    .line 34
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 35
    .line 36
    sget-object v1, Llr4;->a:Llr4;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->O()Lar4;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lar4;->h:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_0
    sget-object v1, Lzn4;->a:Lzn4;

    .line 51
    .line 52
    new-instance v1, Ljr4;

    .line 53
    .line 54
    invoke-direct {v1, v3, v4}, Ljr4;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lbe8;->a:Lbe8;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_1
    check-cast v0, Lkg4;

    .line 67
    .line 68
    iget-object v0, v0, Lkg4;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 69
    .line 70
    invoke-virtual {v0}, Leo6;->h()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Leo6;->j()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v2, v4

    .line 84
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 90
    .line 91
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const v1, 0x7f0d00c7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const v1, 0x7f0a00ab

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object v6, v2

    .line 112
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    const v1, 0x7f0a00ed

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object v7, v2

    .line 124
    check-cast v7, Landroid/widget/ImageButton;

    .line 125
    .line 126
    if-eqz v7, :cond_3

    .line 127
    .line 128
    const v1, 0x7f0a010a

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    move-object v8, v2

    .line 136
    check-cast v8, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v8, :cond_3

    .line 139
    .line 140
    const v1, 0x7f0a010b

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object v9, v2

    .line 148
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 149
    .line 150
    if-eqz v9, :cond_3

    .line 151
    .line 152
    const v1, 0x7f0a0216

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object v10, v2

    .line 160
    check-cast v10, Landroid/widget/EditText;

    .line 161
    .line 162
    if-eqz v10, :cond_3

    .line 163
    .line 164
    const v1, 0x7f0a0243

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object v11, v2

    .line 172
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 173
    .line 174
    if-eqz v11, :cond_3

    .line 175
    .line 176
    const v1, 0x7f0a0260

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 184
    .line 185
    if-eqz v2, :cond_3

    .line 186
    .line 187
    const v1, 0x7f0a0261

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    invoke-static {v2}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    const v1, 0x7f0a0262

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Landroid/widget/LinearLayout;

    .line 208
    .line 209
    if-eqz v2, :cond_3

    .line 210
    .line 211
    const v1, 0x7f0a03b5

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    move-object v13, v2

    .line 219
    check-cast v13, Lcom/google/android/material/card/MaterialCardView;

    .line 220
    .line 221
    if-eqz v13, :cond_3

    .line 222
    .line 223
    const v1, 0x7f0a03f9

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    move-object v14, v2

    .line 231
    check-cast v14, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 232
    .line 233
    if-eqz v14, :cond_3

    .line 234
    .line 235
    const v1, 0x7f0a03fa

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    move-object v15, v2

    .line 243
    check-cast v15, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 244
    .line 245
    if-eqz v15, :cond_3

    .line 246
    .line 247
    const v1, 0x7f0a03fb

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    move-object/from16 v16, v2

    .line 255
    .line 256
    check-cast v16, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 257
    .line 258
    if-eqz v16, :cond_3

    .line 259
    .line 260
    const v1, 0x7f0a03fc

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object/from16 v17, v2

    .line 268
    .line 269
    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 270
    .line 271
    if-eqz v17, :cond_3

    .line 272
    .line 273
    const v1, 0x7f0a03fd

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    move-object/from16 v18, v2

    .line 281
    .line 282
    check-cast v18, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 283
    .line 284
    if-eqz v18, :cond_3

    .line 285
    .line 286
    const v1, 0x7f0a0435

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    move-object/from16 v19, v2

    .line 294
    .line 295
    check-cast v19, Landroid/widget/FrameLayout;

    .line 296
    .line 297
    if-eqz v19, :cond_3

    .line 298
    .line 299
    const v1, 0x7f0a0436

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Landroid/widget/FrameLayout;

    .line 307
    .line 308
    if-eqz v2, :cond_3

    .line 309
    .line 310
    const v1, 0x7f0a043b

    .line 311
    .line 312
    .line 313
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    move-object/from16 v20, v2

    .line 318
    .line 319
    check-cast v20, Landroid/widget/LinearLayout;

    .line 320
    .line 321
    if-eqz v20, :cond_3

    .line 322
    .line 323
    const v1, 0x7f0a043c

    .line 324
    .line 325
    .line 326
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    move-object/from16 v21, v2

    .line 331
    .line 332
    check-cast v21, Landroidx/core/widget/NestedScrollView;

    .line 333
    .line 334
    if-eqz v21, :cond_3

    .line 335
    .line 336
    const v1, 0x7f0a043e

    .line 337
    .line 338
    .line 339
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    move-object/from16 v22, v2

    .line 344
    .line 345
    check-cast v22, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 346
    .line 347
    if-eqz v22, :cond_3

    .line 348
    .line 349
    const v1, 0x7f0a044d

    .line 350
    .line 351
    .line 352
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    move-object/from16 v23, v2

    .line 357
    .line 358
    check-cast v23, Lcom/google/android/material/card/MaterialCardView;

    .line 359
    .line 360
    if-eqz v23, :cond_3

    .line 361
    .line 362
    const v1, 0x7f0a0551

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    move-object/from16 v24, v2

    .line 370
    .line 371
    check-cast v24, Landroid/widget/TextView;

    .line 372
    .line 373
    if-eqz v24, :cond_3

    .line 374
    .line 375
    const v1, 0x7f0a0552

    .line 376
    .line 377
    .line 378
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    move-object/from16 v25, v2

    .line 383
    .line 384
    check-cast v25, Landroid/widget/TextView;

    .line 385
    .line 386
    if-eqz v25, :cond_3

    .line 387
    .line 388
    const v1, 0x7f0a0553

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    move-object/from16 v26, v2

    .line 396
    .line 397
    check-cast v26, Landroid/widget/TextView;

    .line 398
    .line 399
    if-eqz v26, :cond_3

    .line 400
    .line 401
    const v1, 0x7f0a0554

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    move-object/from16 v27, v2

    .line 409
    .line 410
    check-cast v27, Landroid/widget/TextView;

    .line 411
    .line 412
    if-eqz v27, :cond_3

    .line 413
    .line 414
    new-instance v4, Lz44;

    .line 415
    .line 416
    move-object v5, v0

    .line 417
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 418
    .line 419
    invoke-direct/range {v4 .. v27}, Lz44;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/EditText;Lcom/google/android/material/card/MaterialCardView;Lzx2;Lcom/google/android/material/card/MaterialCardView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 420
    .line 421
    .line 422
    move-object v3, v4

    .line 423
    goto :goto_1

    .line 424
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    const-string v1, "Missing required view with ID: "

    .line 433
    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    :goto_1
    return-object v3

    .line 442
    :pswitch_3
    check-cast v0, Lq63;

    .line 443
    .line 444
    sget-boolean v1, Lq63;->d:Z

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 452
    .line 453
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 454
    .line 455
    new-instance v1, Luo3;

    .line 456
    .line 457
    invoke-virtual {v0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-direct {v1, v0, v2}, Luo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;Lur3;)V

    .line 465
    .line 466
    .line 467
    return-object v1

    .line 468
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 469
    .line 470
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 471
    .line 472
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iget-object v0, v0, Loo3;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 477
    .line 478
    return-object v0

    .line 479
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 480
    .line 481
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 482
    .line 483
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sget-object v1, Lzn4;->a:Lzn4;

    .line 488
    .line 489
    new-instance v1, Lek;

    .line 490
    .line 491
    const/16 v2, 0x1d

    .line 492
    .line 493
    invoke-direct {v1, v0, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 494
    .line 495
    .line 496
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 497
    .line 498
    .line 499
    sget-object v0, Lbe8;->a:Lbe8;

    .line 500
    .line 501
    return-object v0

    .line 502
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 503
    .line 504
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 505
    .line 506
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    iget-object v0, v0, Lkm3;->p:Landroid/view/View;

    .line 511
    .line 512
    return-object v0

    .line 513
    :pswitch_8
    check-cast v0, Lyl3;

    .line 514
    .line 515
    const-string v1, "app_locale"

    .line 516
    .line 517
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 518
    .line 519
    if-eqz v2, :cond_4

    .line 520
    .line 521
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    goto :goto_2

    .line 526
    :cond_4
    const-string v1, "prefs"

    .line 527
    .line 528
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :catch_0
    move-object v1, v3

    .line 533
    :goto_2
    if-eqz v1, :cond_6

    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-nez v2, :cond_5

    .line 540
    .line 541
    goto :goto_3

    .line 542
    :cond_5
    invoke-static {v1}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    goto :goto_4

    .line 551
    :cond_6
    :goto_3
    invoke-static {}, Lxx3;->h()Lis4;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    :goto_4
    sget-object v2, Lu33;->c:Lt33;

    .line 560
    .line 561
    invoke-virtual {v2, v4, v1, v3}, Lt33;->a(ILjava/util/Locale;Ljava/util/TimeZone;)Ljava/text/Format;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    check-cast v1, Lu33;

    .line 566
    .line 567
    iget-wide v2, v0, Lyl3;->c:J

    .line 568
    .line 569
    iget-object v0, v1, Lu33;->a:Lg53;

    .line 570
    .line 571
    iget-object v1, v0, Lg53;->b:Ljava/util/TimeZone;

    .line 572
    .line 573
    iget-object v5, v0, Lg53;->c:Ljava/util/Locale;

    .line 574
    .line 575
    invoke-static {v1, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 580
    .line 581
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    iget v3, v0, Lg53;->e:I

    .line 585
    .line 586
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 587
    .line 588
    .line 589
    iget-object v0, v0, Lg53;->d:[Ls43;

    .line 590
    .line 591
    array-length v3, v0

    .line 592
    :goto_5
    if-ge v4, v3, :cond_7

    .line 593
    .line 594
    aget-object v5, v0, v4

    .line 595
    .line 596
    invoke-interface {v5, v2, v1}, Ls43;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 597
    .line 598
    .line 599
    add-int/lit8 v4, v4, 0x1

    .line 600
    .line 601
    goto :goto_5

    .line 602
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    return-object v0

    .line 607
    :pswitch_9
    check-cast v0, Lwj3;

    .line 608
    .line 609
    iget-object v0, v0, Lwj3;->a:Lqp3;

    .line 610
    .line 611
    iget-boolean v0, v0, Lpw6;->l:Z

    .line 612
    .line 613
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    return-object v0

    .line 618
    :pswitch_a
    check-cast v0, Lrj3;

    .line 619
    .line 620
    new-instance v1, Lao3;

    .line 621
    .line 622
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 623
    .line 624
    check-cast v0, Lsj3;

    .line 625
    .line 626
    iget-object v0, v0, Lsj3;->f:Lcp1;

    .line 627
    .line 628
    invoke-direct {v1, v0}, Lao3;-><init>(Lcp1;)V

    .line 629
    .line 630
    .line 631
    return-object v1

    .line 632
    :pswitch_b
    check-cast v0, Ljava/lang/String;

    .line 633
    .line 634
    new-instance v1, Lq63;

    .line 635
    .line 636
    invoke-direct {v1, v0, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 637
    .line 638
    .line 639
    return-object v1

    .line 640
    :pswitch_c
    check-cast v0, Lsc3;

    .line 641
    .line 642
    sget-object v1, Lud3;->a:Lud3;

    .line 643
    .line 644
    iget-object v2, v0, Lu35;->K:Ljk8;

    .line 645
    .line 646
    check-cast v2, Ltc3;

    .line 647
    .line 648
    iget-object v5, v2, Ltc3;->L:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 649
    .line 650
    iget-object v6, v2, Ltc3;->O:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 651
    .line 652
    iget-object v7, v2, Ltc3;->I:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 653
    .line 654
    iget-object v8, v2, Ltc3;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 655
    .line 656
    iget-object v9, v2, Ltc3;->G:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 657
    .line 658
    iget-object v10, v2, Ltc3;->H:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 659
    .line 660
    iget-object v11, v2, Ltc3;->K:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 661
    .line 662
    iget-object v12, v2, Ltc3;->M:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 663
    .line 664
    iget-object v13, v2, Ltc3;->J:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 665
    .line 666
    filled-new-array/range {v5 .. v13}, [Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    new-instance v5, Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .line 674
    .line 675
    :goto_6
    const/16 v6, 0x9

    .line 676
    .line 677
    if-ge v4, v6, :cond_9

    .line 678
    .line 679
    aget-object v6, v2, v4

    .line 680
    .line 681
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 682
    .line 683
    .line 684
    move-result-object v6

    .line 685
    check-cast v6, Lxc3;

    .line 686
    .line 687
    if-eqz v6, :cond_8

    .line 688
    .line 689
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 693
    .line 694
    goto :goto_6

    .line 695
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_c

    .line 709
    .line 710
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    check-cast v5, Lxc3;

    .line 715
    .line 716
    iget-object v5, v5, Lr35;->d:Ljava/util/List;

    .line 717
    .line 718
    new-instance v6, Ljava/util/ArrayList;

    .line 719
    .line 720
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .line 722
    .line 723
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    :cond_a
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 728
    .line 729
    .line 730
    move-result v7

    .line 731
    if-eqz v7, :cond_b

    .line 732
    .line 733
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    move-object v8, v7

    .line 738
    check-cast v8, Luc3;

    .line 739
    .line 740
    iget-boolean v8, v8, Luc3;->c:Z

    .line 741
    .line 742
    if-eqz v8, :cond_a

    .line 743
    .line 744
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    goto :goto_8

    .line 748
    :cond_b
    invoke-static {v6, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 749
    .line 750
    .line 751
    goto :goto_7

    .line 752
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    if-eqz v4, :cond_d

    .line 766
    .line 767
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    check-cast v4, Luc3;

    .line 772
    .line 773
    iget-object v5, v4, Luc3;->a:Lod3;

    .line 774
    .line 775
    iget-object v4, v4, Luc3;->b:Lnd3;

    .line 776
    .line 777
    invoke-interface {v5, v4}, Lod3;->b(Lnd3;)V

    .line 778
    .line 779
    .line 780
    goto :goto_9

    .line 781
    :cond_d
    sget-object v2, Lxd3;->a:Lxd3;

    .line 782
    .line 783
    invoke-virtual {v2}, Lxd3;->e()Lwd3;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    sget-object v5, Lwd3;->Selected:Lwd3;

    .line 788
    .line 789
    if-ne v4, v5, :cond_10

    .line 790
    .line 791
    const-string v2, "selected_labels_filter_temp"

    .line 792
    .line 793
    sget-object v4, Lsv2;->a:Lsv2;

    .line 794
    .line 795
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 796
    .line 797
    if-eqz v5, :cond_f

    .line 798
    .line 799
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    if-nez v2, :cond_e

    .line 804
    .line 805
    goto :goto_a

    .line 806
    :cond_e
    move-object v4, v2

    .line 807
    :goto_a
    invoke-virtual {v1, v4}, Lud3;->h(Ljava/util/Set;)V

    .line 808
    .line 809
    .line 810
    goto :goto_b

    .line 811
    :cond_f
    const-string v0, "prefs"

    .line 812
    .line 813
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    throw v3

    .line 817
    :cond_10
    invoke-virtual {v2}, Lxd3;->e()Lwd3;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    invoke-virtual {v1, v2}, Lud3;->b(Lnd3;)V

    .line 822
    .line 823
    .line 824
    :goto_b
    invoke-virtual {v0}, Lsc3;->j()Lfj7;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    iget-object v1, v1, Lfj7;->a:Lsx;

    .line 829
    .line 830
    invoke-virtual {v0}, Lsc3;->j()Lfj7;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    iget-boolean v2, v2, Lfj7;->e:Z

    .line 835
    .line 836
    sget-object v4, Liy;->a:Liy;

    .line 837
    .line 838
    invoke-static {v1}, Liy;->d(Lsx;)V

    .line 839
    .line 840
    .line 841
    const-string v1, "app_sort_ascending"

    .line 842
    .line 843
    sget-object v4, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 844
    .line 845
    if-eqz v4, :cond_11

    .line 846
    .line 847
    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 852
    .line 853
    .line 854
    iget-object v0, v0, Lsc3;->Q:Ldt;

    .line 855
    .line 856
    invoke-virtual {v0}, Ldt;->c0()V

    .line 857
    .line 858
    .line 859
    sget-object v0, Lbe8;->a:Lbe8;

    .line 860
    .line 861
    return-object v0

    .line 862
    :cond_11
    const-string v0, "editor"

    .line 863
    .line 864
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    throw v3

    .line 868
    :pswitch_d
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 869
    .line 870
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$oEITb7BsTfA8aCvvb7LhtES9DOA(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)Lbe8;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    return-object v0

    .line 875
    :pswitch_e
    move-object v1, v0

    .line 876
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 877
    .line 878
    monitor-enter v1

    .line 879
    :try_start_1
    iget-object v2, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 880
    .line 881
    if-eqz v2, :cond_12

    .line 882
    .line 883
    sget-object v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->RESULTS:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 884
    .line 885
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 886
    .line 887
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    const v10, 0x7f130188

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v6

    .line 898
    const/4 v8, 0x0

    .line 899
    const/16 v9, 0x1b7f

    .line 900
    .line 901
    const/4 v4, 0x0

    .line 902
    const/4 v5, 0x0

    .line 903
    const/4 v7, 0x0

    .line 904
    invoke-static/range {v2 .. v9}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->t(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    .line 910
    .line 911
    monitor-exit v1

    .line 912
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 913
    .line 914
    new-instance v1, Lvh1;

    .line 915
    .line 916
    invoke-direct {v1, v10}, Lvh1;-><init>(I)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 920
    .line 921
    .line 922
    sget-object v0, Lbe8;->a:Lbe8;

    .line 923
    .line 924
    return-object v0

    .line 925
    :catchall_0
    move-exception v0

    .line 926
    goto :goto_c

    .line 927
    :cond_12
    :try_start_2
    const-string v0, "Required value was null."

    .line 928
    .line 929
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 930
    .line 931
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw v2

    .line 935
    :goto_c
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 936
    throw v0

    .line 937
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 938
    .line 939
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->a(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Ldd1;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    return-object v0

    .line 944
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 945
    .line 946
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 947
    .line 948
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    const-string v1, "cloud_constant"

    .line 953
    .line 954
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    return-object v0

    .line 959
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 960
    .line 961
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 962
    .line 963
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    sget-object v1, Lzn4;->a:Lzn4;

    .line 968
    .line 969
    new-instance v1, Lz2;

    .line 970
    .line 971
    const/4 v2, 0x2

    .line 972
    invoke-direct {v1, v0, v3, v2}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 973
    .line 974
    .line 975
    invoke-static {v3, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 976
    .line 977
    .line 978
    sget-object v0, Lbe8;->a:Lbe8;

    .line 979
    .line 980
    return-object v0

    .line 981
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 982
    .line 983
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 984
    .line 985
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-static {v0}, Lni7;->a(Landroid/view/LayoutInflater;)Lni7;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    return-object v0

    .line 994
    :pswitch_13
    check-cast v0, Lqk0;

    .line 995
    .line 996
    sget-object v1, Liu;->EXPANSION:Liu;

    .line 997
    .line 998
    iget-object v2, v0, Lqk0;->h:Lji;

    .line 999
    .line 1000
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    if-eqz v2, :cond_13

    .line 1005
    .line 1006
    invoke-virtual {v2}, Lqx;->getExternalObbSize()J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v2

    .line 1010
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    :cond_13
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v2

    .line 1018
    invoke-virtual {v0, v1, v2, v3}, Lqk0;->n(Liu;J)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    return-object v0

    .line 1027
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1028
    .line 1029
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1030
    .line 1031
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->j0()Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    iget-boolean v1, v1, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 1036
    .line 1037
    if-eqz v1, :cond_14

    .line 1038
    .line 1039
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->j0()Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-virtual {v0, v4}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a(Z)V

    .line 1044
    .line 1045
    .line 1046
    goto :goto_d

    .line 1047
    :cond_14
    invoke-virtual {v0, v4}, Lil0;->A(Z)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0}, Lil0;->z()V

    .line 1051
    .line 1052
    .line 1053
    :goto_d
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1054
    .line 1055
    return-object v0

    .line 1056
    :pswitch_15
    check-cast v0, Lji;

    .line 1057
    .line 1058
    sget-object v1, Lg00;->a:Lg00;

    .line 1059
    .line 1060
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1073
    .line 1074
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    return-object v0

    .line 1079
    :pswitch_16
    check-cast v0, Lqx;

    .line 1080
    .line 1081
    invoke-static {v0}, Lqx;->e(Lqx;)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v0

    .line 1085
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    return-object v0

    .line 1090
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1091
    .line 1092
    const-string v1, "app_backup_limits"

    .line 1093
    .line 1094
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1099
    .line 1100
    .line 1101
    return-object v0

    .line 1102
    :pswitch_18
    check-cast v0, Ltv;

    .line 1103
    .line 1104
    iget-object v0, v0, Ltv;->d:Lgv7;

    .line 1105
    .line 1106
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    check-cast v0, Lg55;

    .line 1111
    .line 1112
    return-object v0

    .line 1113
    :pswitch_19
    check-cast v0, Ldt;

    .line 1114
    .line 1115
    new-instance v1, Lw45;

    .line 1116
    .line 1117
    invoke-direct {v1, v0}, Lw45;-><init>(Lio1;)V

    .line 1118
    .line 1119
    .line 1120
    const v5, 0x7f1300e1

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    invoke-virtual {v1, v0}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1131
    .line 1132
    .line 1133
    iput v2, v1, Lw45;->r:I

    .line 1134
    .line 1135
    invoke-virtual {v1, v3}, Lw45;->n(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    return-object v1

    .line 1139
    :pswitch_1a
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 1140
    .line 1141
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->e(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    return-object v0

    .line 1146
    :pswitch_1b
    check-cast v0, Lyl;

    .line 1147
    .line 1148
    iget-object v1, v0, Lyl;->b:Lji;

    .line 1149
    .line 1150
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    if-eqz v1, :cond_15

    .line 1155
    .line 1156
    iget-boolean v0, v0, Lyl;->c:Z

    .line 1157
    .line 1158
    invoke-virtual {v1, v0}, Lqx;->getDataSize(Z)J

    .line 1159
    .line 1160
    .line 1161
    move-result-wide v0

    .line 1162
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    :cond_15
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 1167
    .line 1168
    .line 1169
    move-result-wide v0

    .line 1170
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    return-object v0

    .line 1175
    :pswitch_1c
    check-cast v0, Lhk;

    .line 1176
    .line 1177
    sget-object v1, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1178
    .line 1179
    iget-object v0, v0, Lhk;->a:Ljava/lang/String;

    .line 1180
    .line 1181
    invoke-static {v0}, Lfk;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    return-object v0

    .line 1186
    nop

    .line 1187
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
