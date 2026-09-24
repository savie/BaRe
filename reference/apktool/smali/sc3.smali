.class public final Lsc3;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final Q:Ldt;

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z


# direct methods
.method public constructor <init>(Ldt;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f0d009e

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f0a00e9

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v8, v4

    .line 26
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    const v3, 0x7f0a00ed

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object v9, v4

    .line 38
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 39
    .line 40
    if-eqz v9, :cond_0

    .line 41
    .line 42
    const v3, 0x7f0a00ef

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v10, v4

    .line 50
    check-cast v10, Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v10, :cond_0

    .line 53
    .line 54
    const v3, 0x7f0a0180

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v11, v4

    .line 62
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 63
    .line 64
    if-eqz v11, :cond_0

    .line 65
    .line 66
    const v3, 0x7f0a0184

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v12, v4

    .line 74
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 75
    .line 76
    if-eqz v12, :cond_0

    .line 77
    .line 78
    const v3, 0x7f0a0189

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    move-object v13, v4

    .line 86
    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 87
    .line 88
    if-eqz v13, :cond_0

    .line 89
    .line 90
    const v3, 0x7f0a018c

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    move-object v14, v4

    .line 98
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 99
    .line 100
    if-eqz v14, :cond_0

    .line 101
    .line 102
    const v3, 0x7f0a0190

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v15, v4

    .line 110
    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 111
    .line 112
    if-eqz v15, :cond_0

    .line 113
    .line 114
    const v3, 0x7f0a0192

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object/from16 v16, v4

    .line 122
    .line 123
    check-cast v16, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 124
    .line 125
    if-eqz v16, :cond_0

    .line 126
    .line 127
    const v3, 0x7f0a0194

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object/from16 v17, v4

    .line 135
    .line 136
    check-cast v17, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 137
    .line 138
    if-eqz v17, :cond_0

    .line 139
    .line 140
    const v3, 0x7f0a019f

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    move-object/from16 v18, v4

    .line 148
    .line 149
    check-cast v18, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 150
    .line 151
    if-eqz v18, :cond_0

    .line 152
    .line 153
    const v3, 0x7f0a01a0

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    move-object/from16 v19, v4

    .line 161
    .line 162
    check-cast v19, Landroid/widget/RelativeLayout;

    .line 163
    .line 164
    if-eqz v19, :cond_0

    .line 165
    .line 166
    const v3, 0x7f0a01e1

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    if-eqz v4, :cond_0

    .line 174
    .line 175
    const v3, 0x7f0a0229

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    move-object/from16 v20, v4

    .line 183
    .line 184
    check-cast v20, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 185
    .line 186
    if-eqz v20, :cond_0

    .line 187
    .line 188
    const v3, 0x7f0a022a

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    move-object/from16 v21, v4

    .line 196
    .line 197
    check-cast v21, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 198
    .line 199
    if-eqz v21, :cond_0

    .line 200
    .line 201
    const v3, 0x7f0a022b

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    move-object/from16 v22, v4

    .line 209
    .line 210
    check-cast v22, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 211
    .line 212
    if-eqz v22, :cond_0

    .line 213
    .line 214
    const v3, 0x7f0a022c

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    move-object/from16 v23, v4

    .line 222
    .line 223
    check-cast v23, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 224
    .line 225
    if-eqz v23, :cond_0

    .line 226
    .line 227
    const v3, 0x7f0a022d

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    move-object/from16 v24, v4

    .line 235
    .line 236
    check-cast v24, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 237
    .line 238
    if-eqz v24, :cond_0

    .line 239
    .line 240
    const v3, 0x7f0a022e

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    move-object/from16 v25, v4

    .line 248
    .line 249
    check-cast v25, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 250
    .line 251
    if-eqz v25, :cond_0

    .line 252
    .line 253
    const v3, 0x7f0a02a3

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-eqz v4, :cond_0

    .line 261
    .line 262
    const v3, 0x7f0a03e9

    .line 263
    .line 264
    .line 265
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    move-object/from16 v26, v4

    .line 270
    .line 271
    check-cast v26, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 272
    .line 273
    if-eqz v26, :cond_0

    .line 274
    .line 275
    const v3, 0x7f0a03f6

    .line 276
    .line 277
    .line 278
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    move-object/from16 v27, v4

    .line 283
    .line 284
    check-cast v27, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 285
    .line 286
    if-eqz v27, :cond_0

    .line 287
    .line 288
    const v3, 0x7f0a0411

    .line 289
    .line 290
    .line 291
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    move-object/from16 v28, v4

    .line 296
    .line 297
    check-cast v28, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 298
    .line 299
    if-eqz v28, :cond_0

    .line 300
    .line 301
    const v3, 0x7f0a0412

    .line 302
    .line 303
    .line 304
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    move-object/from16 v29, v4

    .line 309
    .line 310
    check-cast v29, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 311
    .line 312
    if-eqz v29, :cond_0

    .line 313
    .line 314
    const v3, 0x7f0a0494

    .line 315
    .line 316
    .line 317
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 322
    .line 323
    if-eqz v4, :cond_0

    .line 324
    .line 325
    const v3, 0x7f0a0516

    .line 326
    .line 327
    .line 328
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    check-cast v4, Landroid/widget/TextView;

    .line 333
    .line 334
    if-eqz v4, :cond_0

    .line 335
    .line 336
    const v3, 0x7f0a053c

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    check-cast v4, Landroid/widget/TextView;

    .line 344
    .line 345
    if-eqz v4, :cond_0

    .line 346
    .line 347
    const v3, 0x7f0a0544

    .line 348
    .line 349
    .line 350
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    check-cast v4, Landroid/widget/TextView;

    .line 355
    .line 356
    if-eqz v4, :cond_0

    .line 357
    .line 358
    const v3, 0x7f0a059d

    .line 359
    .line 360
    .line 361
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    check-cast v4, Landroid/widget/TextView;

    .line 366
    .line 367
    if-eqz v4, :cond_0

    .line 368
    .line 369
    const v3, 0x7f0a05b5

    .line 370
    .line 371
    .line 372
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    check-cast v4, Landroid/widget/TextView;

    .line 377
    .line 378
    if-eqz v4, :cond_0

    .line 379
    .line 380
    const v3, 0x7f0a05bb

    .line 381
    .line 382
    .line 383
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Landroid/widget/TextView;

    .line 388
    .line 389
    if-eqz v4, :cond_0

    .line 390
    .line 391
    const v3, 0x7f0a05bc

    .line 392
    .line 393
    .line 394
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    check-cast v4, Landroid/widget/TextView;

    .line 399
    .line 400
    if-eqz v4, :cond_0

    .line 401
    .line 402
    const v3, 0x7f0a05bd

    .line 403
    .line 404
    .line 405
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    check-cast v4, Landroid/widget/TextView;

    .line 410
    .line 411
    if-eqz v4, :cond_0

    .line 412
    .line 413
    const v3, 0x7f0a05be

    .line 414
    .line 415
    .line 416
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    check-cast v4, Landroid/widget/TextView;

    .line 421
    .line 422
    if-eqz v4, :cond_0

    .line 423
    .line 424
    const v3, 0x7f0a05bf

    .line 425
    .line 426
    .line 427
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    check-cast v4, Landroid/widget/TextView;

    .line 432
    .line 433
    if-eqz v4, :cond_0

    .line 434
    .line 435
    const v3, 0x7f0a05c0

    .line 436
    .line 437
    .line 438
    invoke-static {v2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    check-cast v4, Landroid/widget/TextView;

    .line 443
    .line 444
    if-eqz v4, :cond_0

    .line 445
    .line 446
    new-instance v6, Ltc3;

    .line 447
    .line 448
    move-object v7, v2

    .line 449
    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 450
    .line 451
    invoke-direct/range {v6 .. v29}, Ltc3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/RelativeLayout;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 452
    .line 453
    .line 454
    const/16 v2, 0xc

    .line 455
    .line 456
    invoke-direct {v0, v1, v6, v2}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 457
    .line 458
    .line 459
    iput-object v1, v0, Lsc3;->Q:Ldt;

    .line 460
    .line 461
    const/4 v1, 0x1

    .line 462
    iput-boolean v1, v0, Lsc3;->R:Z

    .line 463
    .line 464
    iput-boolean v1, v0, Lsc3;->S:Z

    .line 465
    .line 466
    iput-boolean v1, v0, Lsc3;->T:Z

    .line 467
    .line 468
    iput-boolean v1, v0, Lsc3;->U:Z

    .line 469
    .line 470
    iput-boolean v1, v0, Lsc3;->V:Z

    .line 471
    .line 472
    iput-boolean v1, v0, Lsc3;->W:Z

    .line 473
    .line 474
    iput-boolean v1, v0, Lsc3;->X:Z

    .line 475
    .line 476
    iput-boolean v1, v0, Lsc3;->Y:Z

    .line 477
    .line 478
    return-void

    .line 479
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    const-string v1, "Missing required view with ID: "

    .line 488
    .line 489
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v5
.end method


# virtual methods
.method public final j()Lfj7;
    .locals 8

    .line 1
    iget-object v0, p0, Lu35;->K:Ljk8;

    .line 2
    .line 3
    check-cast v0, Ltc3;

    .line 4
    .line 5
    iget-object v0, v0, Ltc3;->N:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast v0, Lhj7;

    .line 15
    .line 16
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 17
    .line 18
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lfj7;

    .line 36
    .line 37
    iget-boolean v2, v2, Lfj7;->d:Z

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    check-cast v1, Lfj7;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    new-instance v2, Lfj7;

    .line 48
    .line 49
    sget-object v3, Lsx;->Name:Lsx;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const v0, 0x7f1303a8

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v7, 0x1

    .line 67
    const v5, 0x7f0801f0

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v2 .. v7}, Lfj7;-><init>(Lsx;Ljava/lang/String;IZZ)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_2
    return-object v1
.end method

.method public final k(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu35;->K:Ljk8;

    .line 2
    .line 3
    check-cast v0, Ltc3;

    .line 4
    .line 5
    iget-object v1, v0, Ltc3;->x:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-wide/16 v2, 0x64

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v0, v0, Ltc3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 22
    .line 23
    new-instance v4, Lrc3;

    .line 24
    .line 25
    invoke-direct {v4, p2, p0, v1, p1}, Lrc3;-><init>(ZLsc3;Landroid/widget/RelativeLayout;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Lsc3;->Q:Ldt;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lxc3;

    .line 16
    .line 17
    new-instance v2, Lej;

    .line 18
    .line 19
    const/16 v3, 0x13

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lfj;

    .line 25
    .line 26
    const/16 v4, 0x16

    .line 27
    .line 28
    invoke-direct {v3, p0, v4}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, p2, v2, v3}, Lxc3;-><init>(Lsa1;Ljava/util/ArrayList;Lej;Lfj;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final m(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lsc3;->R:Z

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "prefs"

    .line 9
    .line 10
    const/16 v5, 0xa

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    iget-object v7, v0, Lu35;->K:Ljk8;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    const-string v1, "show_system_apps"

    .line 19
    .line 20
    :try_start_0
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    if-eqz v9, :cond_0

    .line 23
    .line 24
    invoke-interface {v9, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    move v1, v8

    .line 34
    :goto_0
    if-eqz v1, :cond_7

    .line 35
    .line 36
    move-object v1, v7

    .line 37
    check-cast v1, Ltc3;

    .line 38
    .line 39
    iget-object v9, v1, Ltc3;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 40
    .line 41
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget-object v9, Lcd3;->All:Lcd3;

    .line 52
    .line 53
    :goto_1
    iget-object v10, v1, Ltc3;->L:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 54
    .line 55
    invoke-static {}, Lcd3;->getEntries()Ljx2;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    new-instance v12, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v11, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    check-cast v11, Lz3;

    .line 69
    .line 70
    new-instance v13, Lw3;

    .line 71
    .line 72
    invoke-direct {v13, v11}, Lw3;-><init>(Lz3;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v13}, Lw3;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_3

    .line 80
    .line 81
    invoke-virtual {v13}, Lw3;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    check-cast v11, Lcd3;

    .line 86
    .line 87
    new-instance v14, Luc3;

    .line 88
    .line 89
    if-ne v9, v11, :cond_2

    .line 90
    .line 91
    move v15, v6

    .line 92
    :goto_3
    move-object/from16 v16, v3

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_2
    move v15, v8

    .line 96
    goto :goto_3

    .line 97
    :goto_4
    sget-object v3, Ldd3;->a:Ldd3;

    .line 98
    .line 99
    invoke-direct {v14, v3, v11, v15, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-object/from16 v3, v16

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move-object/from16 v16, v3

    .line 109
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v10, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Ltc3;->L:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    check-cast v3, Lxc3;

    .line 128
    .line 129
    new-instance v10, Lpf;

    .line 130
    .line 131
    const/4 v11, 0x5

    .line 132
    invoke-direct {v10, v0, v11}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    iput-object v10, v3, Lxc3;->l:Lpf;

    .line 136
    .line 137
    invoke-virtual {v9}, Lcd3;->hasSystem()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v0, v3, v8}, Lsc3;->k(ZZ)V

    .line 142
    .line 143
    .line 144
    if-nez p1, :cond_4

    .line 145
    .line 146
    invoke-static {}, Lge3;->e()Lfe3;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    goto :goto_5

    .line 151
    :cond_4
    sget-object v3, Lfe3;->All:Lfe3;

    .line 152
    .line 153
    :goto_5
    iget-object v1, v1, Ltc3;->O:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 154
    .line 155
    invoke-static {}, Lfe3;->getEntries()Ljx2;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    new-instance v10, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-static {v9, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .line 167
    .line 168
    check-cast v9, Lz3;

    .line 169
    .line 170
    new-instance v11, Lw3;

    .line 171
    .line 172
    invoke-direct {v11, v9}, Lw3;-><init>(Lz3;)V

    .line 173
    .line 174
    .line 175
    :goto_6
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_6

    .line 180
    .line 181
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Lfe3;

    .line 186
    .line 187
    new-instance v12, Luc3;

    .line 188
    .line 189
    if-ne v3, v9, :cond_5

    .line 190
    .line 191
    move v13, v6

    .line 192
    goto :goto_7

    .line 193
    :cond_5
    move v13, v8

    .line 194
    :goto_7
    sget-object v14, Lge3;->a:Lge3;

    .line 195
    .line 196
    invoke-direct {v12, v14, v9, v13, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_7
    move-object/from16 v16, v3

    .line 213
    .line 214
    move-object v1, v7

    .line 215
    check-cast v1, Ltc3;

    .line 216
    .line 217
    iget-object v1, v1, Ltc3;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :goto_8
    iget-boolean v1, v0, Lsc3;->U:Z

    .line 223
    .line 224
    if-eqz v1, :cond_10

    .line 225
    .line 226
    move-object v1, v7

    .line 227
    check-cast v1, Ltc3;

    .line 228
    .line 229
    iget-object v3, v1, Ltc3;->n:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 230
    .line 231
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    if-nez p1, :cond_c

    .line 235
    .line 236
    const-string v3, "key_filter_favorites"

    .line 237
    .line 238
    sget-object v9, Lld3;->All:Lld3;

    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    :try_start_1
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 245
    .line 246
    if-eqz v10, :cond_8

    .line 247
    .line 248
    invoke-interface {v10, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    goto :goto_9

    .line 253
    :cond_8
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v16
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :catch_1
    :goto_9
    if-eqz v9, :cond_b

    .line 258
    .line 259
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Lz3;

    .line 264
    .line 265
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    :cond_9
    move-object v10, v3

    .line 270
    check-cast v10, Lw3;

    .line 271
    .line 272
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_a

    .line 277
    .line 278
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    move-object v11, v10

    .line 283
    check-cast v11, Lld3;

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_9

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_a
    move-object/from16 v10, v16

    .line 297
    .line 298
    :goto_a
    check-cast v10, Lld3;

    .line 299
    .line 300
    if-nez v10, :cond_d

    .line 301
    .line 302
    :cond_b
    sget-object v10, Lld3;->All:Lld3;

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_c
    sget-object v10, Lld3;->All:Lld3;

    .line 306
    .line 307
    :cond_d
    :goto_b
    iget-object v1, v1, Ltc3;->G:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 308
    .line 309
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    new-instance v9, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .line 321
    .line 322
    check-cast v3, Lz3;

    .line 323
    .line 324
    new-instance v11, Lw3;

    .line 325
    .line 326
    invoke-direct {v11, v3}, Lw3;-><init>(Lz3;)V

    .line 327
    .line 328
    .line 329
    :goto_c
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_f

    .line 334
    .line 335
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Lld3;

    .line 340
    .line 341
    new-instance v12, Luc3;

    .line 342
    .line 343
    if-ne v10, v3, :cond_e

    .line 344
    .line 345
    move v13, v6

    .line 346
    goto :goto_d

    .line 347
    :cond_e
    move v13, v8

    .line 348
    :goto_d
    sget-object v14, Lmd3;->a:Lmd3;

    .line 349
    .line 350
    invoke-direct {v12, v14, v3, v13, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 363
    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_10
    move-object v1, v7

    .line 367
    check-cast v1, Ltc3;

    .line 368
    .line 369
    iget-object v1, v1, Ltc3;->n:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 370
    .line 371
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    :goto_e
    invoke-virtual/range {p0 .. p1}, Lsc3;->n(Z)V

    .line 375
    .line 376
    .line 377
    iget-boolean v1, v0, Lsc3;->T:Z

    .line 378
    .line 379
    if-eqz v1, :cond_19

    .line 380
    .line 381
    move-object v1, v7

    .line 382
    check-cast v1, Ltc3;

    .line 383
    .line 384
    iget-object v3, v1, Ltc3;->f:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 385
    .line 386
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    if-nez p1, :cond_15

    .line 390
    .line 391
    const-string v3, "key_filter_app_backup"

    .line 392
    .line 393
    sget-object v9, Lfd3;->All:Lfd3;

    .line 394
    .line 395
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    :try_start_2
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 400
    .line 401
    if-eqz v10, :cond_11

    .line 402
    .line 403
    invoke-interface {v10, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    goto :goto_f

    .line 408
    :cond_11
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v16
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 412
    :catch_2
    :goto_f
    if-eqz v9, :cond_14

    .line 413
    .line 414
    invoke-static {}, Lfd3;->getEntries()Ljx2;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    check-cast v3, Lz3;

    .line 419
    .line 420
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    :cond_12
    move-object v10, v3

    .line 425
    check-cast v10, Lw3;

    .line 426
    .line 427
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    if-eqz v11, :cond_13

    .line 432
    .line 433
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    move-object v11, v10

    .line 438
    check-cast v11, Lfd3;

    .line 439
    .line 440
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    if-eqz v11, :cond_12

    .line 449
    .line 450
    goto :goto_10

    .line 451
    :cond_13
    move-object/from16 v10, v16

    .line 452
    .line 453
    :goto_10
    check-cast v10, Lfd3;

    .line 454
    .line 455
    if-nez v10, :cond_16

    .line 456
    .line 457
    :cond_14
    sget-object v10, Lfd3;->All:Lfd3;

    .line 458
    .line 459
    goto :goto_11

    .line 460
    :cond_15
    sget-object v10, Lfd3;->All:Lfd3;

    .line 461
    .line 462
    :cond_16
    :goto_11
    iget-object v1, v1, Ltc3;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 463
    .line 464
    invoke-static {}, Lfd3;->getEntries()Ljx2;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    new-instance v9, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    .line 476
    .line 477
    check-cast v3, Lz3;

    .line 478
    .line 479
    new-instance v11, Lw3;

    .line 480
    .line 481
    invoke-direct {v11, v3}, Lw3;-><init>(Lz3;)V

    .line 482
    .line 483
    .line 484
    :goto_12
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    if-eqz v3, :cond_18

    .line 489
    .line 490
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    check-cast v3, Lfd3;

    .line 495
    .line 496
    new-instance v12, Luc3;

    .line 497
    .line 498
    if-ne v10, v3, :cond_17

    .line 499
    .line 500
    move v13, v6

    .line 501
    goto :goto_13

    .line 502
    :cond_17
    move v13, v8

    .line 503
    :goto_13
    sget-object v14, Lgd3;->a:Lgd3;

    .line 504
    .line 505
    invoke-direct {v12, v14, v3, v13, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_12

    .line 512
    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 518
    .line 519
    .line 520
    goto :goto_14

    .line 521
    :cond_19
    move-object v1, v7

    .line 522
    check-cast v1, Ltc3;

    .line 523
    .line 524
    iget-object v1, v1, Ltc3;->f:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 525
    .line 526
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    :goto_14
    iget-object v1, v0, Lsc3;->Q:Ldt;

    .line 530
    .line 531
    invoke-virtual {v1}, Ldt;->b0()Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-nez v1, :cond_23

    .line 536
    .line 537
    iget-boolean v1, v0, Lsc3;->W:Z

    .line 538
    .line 539
    if-eqz v1, :cond_23

    .line 540
    .line 541
    move-object v1, v7

    .line 542
    check-cast v1, Ltc3;

    .line 543
    .line 544
    iget-object v3, v1, Ltc3;->t:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 545
    .line 546
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    if-nez p1, :cond_1e

    .line 550
    .line 551
    const-string v3, "key_filter_app_synced"

    .line 552
    .line 553
    sget-object v9, Lce3;->All:Lce3;

    .line 554
    .line 555
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    :try_start_3
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 560
    .line 561
    if-eqz v10, :cond_1a

    .line 562
    .line 563
    invoke-interface {v10, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v9

    .line 567
    goto :goto_15

    .line 568
    :cond_1a
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw v16
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 572
    :catch_3
    :goto_15
    if-eqz v9, :cond_1d

    .line 573
    .line 574
    invoke-static {}, Lce3;->getEntries()Ljx2;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    check-cast v3, Lz3;

    .line 579
    .line 580
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    :cond_1b
    move-object v10, v3

    .line 585
    check-cast v10, Lw3;

    .line 586
    .line 587
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v11

    .line 591
    if-eqz v11, :cond_1c

    .line 592
    .line 593
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    move-object v11, v10

    .line 598
    check-cast v11, Lce3;

    .line 599
    .line 600
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v11

    .line 604
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v11

    .line 608
    if-eqz v11, :cond_1b

    .line 609
    .line 610
    goto :goto_16

    .line 611
    :cond_1c
    move-object/from16 v10, v16

    .line 612
    .line 613
    :goto_16
    check-cast v10, Lce3;

    .line 614
    .line 615
    if-nez v10, :cond_1f

    .line 616
    .line 617
    :cond_1d
    sget-object v10, Lce3;->All:Lce3;

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_1e
    sget-object v10, Lce3;->All:Lce3;

    .line 621
    .line 622
    :cond_1f
    :goto_17
    iget-object v1, v1, Ltc3;->K:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 623
    .line 624
    invoke-static {}, Lce3;->getEntries()Ljx2;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    new-instance v9, Ljava/util/ArrayList;

    .line 629
    .line 630
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 631
    .line 632
    .line 633
    move-result v11

    .line 634
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 635
    .line 636
    .line 637
    check-cast v3, Lz3;

    .line 638
    .line 639
    new-instance v11, Lw3;

    .line 640
    .line 641
    invoke-direct {v11, v3}, Lw3;-><init>(Lz3;)V

    .line 642
    .line 643
    .line 644
    :goto_18
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    if-eqz v3, :cond_22

    .line 649
    .line 650
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    check-cast v3, Lce3;

    .line 655
    .line 656
    new-instance v12, Luc3;

    .line 657
    .line 658
    if-ne v10, v3, :cond_20

    .line 659
    .line 660
    move v13, v6

    .line 661
    goto :goto_19

    .line 662
    :cond_20
    move v13, v8

    .line 663
    :goto_19
    sget-object v14, Lce3;->Synced:Lce3;

    .line 664
    .line 665
    if-ne v3, v14, :cond_21

    .line 666
    .line 667
    move v14, v6

    .line 668
    goto :goto_1a

    .line 669
    :cond_21
    move v14, v8

    .line 670
    :goto_1a
    sget-object v15, Lde3;->a:Lde3;

    .line 671
    .line 672
    invoke-direct {v12, v15, v3, v13, v14}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    goto :goto_18

    .line 679
    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    .line 680
    .line 681
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 685
    .line 686
    .line 687
    goto :goto_1b

    .line 688
    :cond_23
    move-object v1, v7

    .line 689
    check-cast v1, Ltc3;

    .line 690
    .line 691
    iget-object v1, v1, Ltc3;->t:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 692
    .line 693
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    .line 695
    .line 696
    :goto_1b
    iget-boolean v1, v0, Lsc3;->V:Z

    .line 697
    .line 698
    if-eqz v1, :cond_2c

    .line 699
    .line 700
    move-object v1, v7

    .line 701
    check-cast v1, Ltc3;

    .line 702
    .line 703
    iget-object v3, v1, Ltc3;->p:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 704
    .line 705
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 706
    .line 707
    .line 708
    if-nez p1, :cond_28

    .line 709
    .line 710
    const-string v3, "key_filter_app_install"

    .line 711
    .line 712
    sget-object v9, Lqd3;->All:Lqd3;

    .line 713
    .line 714
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v9

    .line 718
    :try_start_4
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 719
    .line 720
    if-eqz v10, :cond_24

    .line 721
    .line 722
    invoke-interface {v10, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v9

    .line 726
    goto :goto_1c

    .line 727
    :cond_24
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw v16
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 731
    :catch_4
    :goto_1c
    if-eqz v9, :cond_27

    .line 732
    .line 733
    invoke-static {}, Lqd3;->getEntries()Ljx2;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    check-cast v3, Lz3;

    .line 738
    .line 739
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    :cond_25
    move-object v10, v3

    .line 744
    check-cast v10, Lw3;

    .line 745
    .line 746
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v11

    .line 750
    if-eqz v11, :cond_26

    .line 751
    .line 752
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v10

    .line 756
    move-object v11, v10

    .line 757
    check-cast v11, Lqd3;

    .line 758
    .line 759
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v11

    .line 767
    if-eqz v11, :cond_25

    .line 768
    .line 769
    goto :goto_1d

    .line 770
    :cond_26
    move-object/from16 v10, v16

    .line 771
    .line 772
    :goto_1d
    check-cast v10, Lqd3;

    .line 773
    .line 774
    if-nez v10, :cond_29

    .line 775
    .line 776
    :cond_27
    sget-object v10, Lqd3;->All:Lqd3;

    .line 777
    .line 778
    goto :goto_1e

    .line 779
    :cond_28
    sget-object v10, Lqd3;->All:Lqd3;

    .line 780
    .line 781
    :cond_29
    :goto_1e
    iget-object v1, v1, Ltc3;->H:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 782
    .line 783
    invoke-static {}, Lqd3;->getEntries()Ljx2;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    new-instance v9, Ljava/util/ArrayList;

    .line 788
    .line 789
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 790
    .line 791
    .line 792
    move-result v11

    .line 793
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 794
    .line 795
    .line 796
    check-cast v3, Lz3;

    .line 797
    .line 798
    new-instance v11, Lw3;

    .line 799
    .line 800
    invoke-direct {v11, v3}, Lw3;-><init>(Lz3;)V

    .line 801
    .line 802
    .line 803
    :goto_1f
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    if-eqz v3, :cond_2b

    .line 808
    .line 809
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    check-cast v3, Lqd3;

    .line 814
    .line 815
    new-instance v12, Luc3;

    .line 816
    .line 817
    if-ne v10, v3, :cond_2a

    .line 818
    .line 819
    move v13, v6

    .line 820
    goto :goto_20

    .line 821
    :cond_2a
    move v13, v8

    .line 822
    :goto_20
    sget-object v14, Lrd3;->a:Lrd3;

    .line 823
    .line 824
    invoke-direct {v12, v14, v3, v13, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    goto :goto_1f

    .line 831
    :cond_2b
    new-instance v3, Ljava/util/ArrayList;

    .line 832
    .line 833
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 837
    .line 838
    .line 839
    goto :goto_21

    .line 840
    :cond_2c
    move-object v1, v7

    .line 841
    check-cast v1, Ltc3;

    .line 842
    .line 843
    iget-object v1, v1, Ltc3;->p:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 844
    .line 845
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 846
    .line 847
    .line 848
    :goto_21
    iget-boolean v1, v0, Lsc3;->X:Z

    .line 849
    .line 850
    if-eqz v1, :cond_35

    .line 851
    .line 852
    move-object v1, v7

    .line 853
    check-cast v1, Ltc3;

    .line 854
    .line 855
    iget-object v3, v1, Ltc3;->k:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 856
    .line 857
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 858
    .line 859
    .line 860
    if-nez p1, :cond_31

    .line 861
    .line 862
    const-string v3, "key_filter_app_enabled"

    .line 863
    .line 864
    sget-object v9, Lid3;->All:Lid3;

    .line 865
    .line 866
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v9

    .line 870
    :try_start_5
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 871
    .line 872
    if-eqz v10, :cond_2d

    .line 873
    .line 874
    invoke-interface {v10, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    goto :goto_22

    .line 879
    :cond_2d
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    throw v16
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 883
    :catch_5
    :goto_22
    if-eqz v9, :cond_30

    .line 884
    .line 885
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    check-cast v3, Lz3;

    .line 890
    .line 891
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    :cond_2e
    move-object v10, v3

    .line 896
    check-cast v10, Lw3;

    .line 897
    .line 898
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 899
    .line 900
    .line 901
    move-result v11

    .line 902
    if-eqz v11, :cond_2f

    .line 903
    .line 904
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v10

    .line 908
    move-object v11, v10

    .line 909
    check-cast v11, Lid3;

    .line 910
    .line 911
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v11

    .line 915
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result v11

    .line 919
    if-eqz v11, :cond_2e

    .line 920
    .line 921
    goto :goto_23

    .line 922
    :cond_2f
    move-object/from16 v10, v16

    .line 923
    .line 924
    :goto_23
    check-cast v10, Lid3;

    .line 925
    .line 926
    if-nez v10, :cond_32

    .line 927
    .line 928
    :cond_30
    sget-object v10, Lid3;->All:Lid3;

    .line 929
    .line 930
    goto :goto_24

    .line 931
    :cond_31
    sget-object v10, Lid3;->All:Lid3;

    .line 932
    .line 933
    :cond_32
    :goto_24
    iget-object v1, v1, Ltc3;->M:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 934
    .line 935
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    new-instance v9, Ljava/util/ArrayList;

    .line 940
    .line 941
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 942
    .line 943
    .line 944
    move-result v11

    .line 945
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    .line 947
    .line 948
    check-cast v3, Lz3;

    .line 949
    .line 950
    new-instance v11, Lw3;

    .line 951
    .line 952
    invoke-direct {v11, v3}, Lw3;-><init>(Lz3;)V

    .line 953
    .line 954
    .line 955
    :goto_25
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_34

    .line 960
    .line 961
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Lid3;

    .line 966
    .line 967
    new-instance v12, Luc3;

    .line 968
    .line 969
    if-ne v10, v3, :cond_33

    .line 970
    .line 971
    move v13, v6

    .line 972
    goto :goto_26

    .line 973
    :cond_33
    move v13, v8

    .line 974
    :goto_26
    sget-object v14, Ljd3;->a:Ljd3;

    .line 975
    .line 976
    invoke-direct {v12, v14, v3, v13, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    goto :goto_25

    .line 983
    :cond_34
    new-instance v3, Ljava/util/ArrayList;

    .line 984
    .line 985
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v1, v3}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 989
    .line 990
    .line 991
    goto :goto_27

    .line 992
    :cond_35
    move-object v1, v7

    .line 993
    check-cast v1, Ltc3;

    .line 994
    .line 995
    iget-object v1, v1, Ltc3;->k:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 996
    .line 997
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 998
    .line 999
    .line 1000
    :goto_27
    iget-boolean v1, v0, Lsc3;->Y:Z

    .line 1001
    .line 1002
    if-eqz v1, :cond_3e

    .line 1003
    .line 1004
    check-cast v7, Ltc3;

    .line 1005
    .line 1006
    iget-object v1, v7, Ltc3;->r:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 1007
    .line 1008
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    .line 1010
    .line 1011
    if-nez p1, :cond_3a

    .line 1012
    .line 1013
    const-string v1, "key_filter_app_backup_age"

    .line 1014
    .line 1015
    sget-object v2, Lzd3;->All:Lzd3;

    .line 1016
    .line 1017
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    :try_start_6
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1022
    .line 1023
    if-eqz v3, :cond_36

    .line 1024
    .line 1025
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    goto :goto_28

    .line 1030
    :cond_36
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    throw v16
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1034
    :catch_6
    :goto_28
    if-eqz v2, :cond_39

    .line 1035
    .line 1036
    invoke-static {}, Lzd3;->getEntries()Ljx2;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    check-cast v1, Lz3;

    .line 1041
    .line 1042
    invoke-virtual {v1}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1

    .line 1046
    :cond_37
    move-object v3, v1

    .line 1047
    check-cast v3, Lw3;

    .line 1048
    .line 1049
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v4

    .line 1053
    if-eqz v4, :cond_38

    .line 1054
    .line 1055
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    move-object v4, v3

    .line 1060
    check-cast v4, Lzd3;

    .line 1061
    .line 1062
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v4

    .line 1066
    invoke-static {v4, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v4

    .line 1070
    if-eqz v4, :cond_37

    .line 1071
    .line 1072
    goto :goto_29

    .line 1073
    :cond_38
    move-object/from16 v3, v16

    .line 1074
    .line 1075
    :goto_29
    check-cast v3, Lzd3;

    .line 1076
    .line 1077
    if-nez v3, :cond_3b

    .line 1078
    .line 1079
    :cond_39
    sget-object v3, Lzd3;->All:Lzd3;

    .line 1080
    .line 1081
    goto :goto_2a

    .line 1082
    :cond_3a
    sget-object v3, Lzd3;->All:Lzd3;

    .line 1083
    .line 1084
    :cond_3b
    :goto_2a
    iget-object v1, v7, Ltc3;->J:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1085
    .line 1086
    invoke-static {}, Lzd3;->getEntries()Ljx2;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    new-instance v4, Ljava/util/ArrayList;

    .line 1091
    .line 1092
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1093
    .line 1094
    .line 1095
    move-result v5

    .line 1096
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1097
    .line 1098
    .line 1099
    check-cast v2, Lz3;

    .line 1100
    .line 1101
    new-instance v5, Lw3;

    .line 1102
    .line 1103
    invoke-direct {v5, v2}, Lw3;-><init>(Lz3;)V

    .line 1104
    .line 1105
    .line 1106
    :goto_2b
    invoke-virtual {v5}, Lw3;->hasNext()Z

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    if-eqz v2, :cond_3d

    .line 1111
    .line 1112
    invoke-virtual {v5}, Lw3;->next()Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    check-cast v2, Lzd3;

    .line 1117
    .line 1118
    new-instance v7, Luc3;

    .line 1119
    .line 1120
    if-ne v3, v2, :cond_3c

    .line 1121
    .line 1122
    move v9, v6

    .line 1123
    goto :goto_2c

    .line 1124
    :cond_3c
    move v9, v8

    .line 1125
    :goto_2c
    sget-object v10, Lae3;->a:Lae3;

    .line 1126
    .line 1127
    invoke-direct {v7, v10, v2, v9, v8}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    .line 1132
    .line 1133
    goto :goto_2b

    .line 1134
    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    .line 1135
    .line 1136
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v0, v1, v2}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :cond_3e
    check-cast v7, Ltc3;

    .line 1144
    .line 1145
    iget-object v0, v7, Ltc3;->r:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 1146
    .line 1147
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    .line 1149
    .line 1150
    return-void
.end method

.method public final n(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsc3;->S:Z

    .line 2
    .line 3
    iget-object v1, p0, Lu35;->K:Ljk8;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast v1, Ltc3;

    .line 8
    .line 9
    iget-object v0, v1, Ltc3;->q:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lxd3;->a:Lxd3;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lxd3;->e()Lwd3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lwd3;->All:Lwd3;

    .line 25
    .line 26
    :goto_0
    iget-object v1, v1, Ltc3;->I:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 27
    .line 28
    invoke-static {}, Lwd3;->getEntries()Ljx2;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    check-cast v3, Lz3;

    .line 44
    .line 45
    new-instance v5, Lw3;

    .line 46
    .line 47
    invoke-direct {v5, v3}, Lw3;-><init>(Lz3;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v5}, Lw3;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v5}, Lw3;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lwd3;

    .line 61
    .line 62
    new-instance v6, Luc3;

    .line 63
    .line 64
    if-ne p1, v3, :cond_1

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    move v7, v2

    .line 69
    :goto_2
    invoke-direct {v6, v0, v3, v7, v2}, Luc3;-><init>(Lod3;Lnd3;ZZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, p1}, Lsc3;->l(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    check-cast v1, Ltc3;

    .line 86
    .line 87
    iget-object p0, v1, Ltc3;->q:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 88
    .line 89
    const/16 p1, 0x8

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final show()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lud3;->a:Lud3;

    .line 4
    .line 5
    invoke-virtual {v1}, Lud3;->f()Ltd3;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Ltd3;->Selected:Ltd3;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    sget-object v5, Lxd3;->a:Lxd3;

    .line 13
    .line 14
    if-ne v2, v3, :cond_4

    .line 15
    .line 16
    invoke-virtual {v1}, Lud3;->g()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 42
    .line 43
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v1, v4

    .line 59
    :goto_1
    if-nez v1, :cond_3

    .line 60
    .line 61
    sget-object v1, Lsv2;->a:Lsv2;

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v5, v1}, Lxd3;->g(Ljava/util/Set;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {v1}, Lud3;->f()Ltd3;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v5, v1}, Lxd3;->b(Lnd3;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object v1, v0, Lu35;->K:Ljk8;

    .line 75
    .line 76
    check-cast v1, Ltc3;

    .line 77
    .line 78
    iget-object v2, v1, Ltc3;->N:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 79
    .line 80
    new-instance v3, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 81
    .line 82
    iget-object v5, v0, Lsc3;->Q:Ldt;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-direct {v3, v5, v6}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lhj7;

    .line 95
    .line 96
    new-instance v7, Lfm7;

    .line 97
    .line 98
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    new-instance v9, Lfj7;

    .line 103
    .line 104
    sget-object v10, Lsx;->Name:Lsx;

    .line 105
    .line 106
    const v11, 0x7f1303a8

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const v12, 0x7f0801f0

    .line 117
    .line 118
    .line 119
    invoke-direct {v9, v10, v11, v12}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    new-instance v10, Lfj7;

    .line 123
    .line 124
    sget-object v11, Lsx;->InstallDate:Lsx;

    .line 125
    .line 126
    const v12, 0x7f1302be

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const v13, 0x7f08015c

    .line 137
    .line 138
    .line 139
    invoke-direct {v10, v11, v12, v13}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    new-instance v11, Lfj7;

    .line 143
    .line 144
    sget-object v12, Lsx;->UpdateDate:Lsx;

    .line 145
    .line 146
    const v13, 0x7f130587

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const v14, 0x7f080204

    .line 157
    .line 158
    .line 159
    invoke-direct {v11, v12, v13, v14}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    new-instance v12, Lfj7;

    .line 163
    .line 164
    sget-object v13, Lsx;->BackupDate:Lsx;

    .line 165
    .line 166
    if-eqz v8, :cond_5

    .line 167
    .line 168
    const v14, 0x7f13055e

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const v14, 0x7f13009a

    .line 173
    .line 174
    .line 175
    :goto_3
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    if-eqz v8, :cond_6

    .line 183
    .line 184
    const v8, 0x7f080114

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    const v8, 0x7f0800c9

    .line 189
    .line 190
    .line 191
    :goto_4
    invoke-direct {v12, v13, v14, v8}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    new-instance v13, Lfj7;

    .line 195
    .line 196
    sget-object v8, Lsx;->BackupSize:Lsx;

    .line 197
    .line 198
    const v14, 0x7f1300a6

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const v15, 0x7f08012d

    .line 209
    .line 210
    .line 211
    invoke-direct {v13, v8, v14, v15}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    new-instance v14, Lfj7;

    .line 215
    .line 216
    sget-object v8, Lsx;->DateUsed:Lsx;

    .line 217
    .line 218
    const v15, 0x7f1301da

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const v4, 0x7f080200

    .line 229
    .line 230
    .line 231
    invoke-direct {v14, v8, v15, v4}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    new-instance v15, Lfj7;

    .line 235
    .line 236
    sget-object v4, Lsx;->AppSize:Lsx;

    .line 237
    .line 238
    const v8, 0x7f130061

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const v6, 0x7f0800bf

    .line 249
    .line 250
    .line 251
    invoke-direct {v15, v4, v8, v6}, Lfj7;-><init>(Lsx;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    filled-new-array/range {v9 .. v15}, [Lfj7;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v4}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_8

    .line 271
    .line 272
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    move-object v9, v6

    .line 277
    check-cast v9, Lfj7;

    .line 278
    .line 279
    iget-object v9, v9, Lfj7;->a:Lsx;

    .line 280
    .line 281
    sget-object v10, Liy;->a:Liy;

    .line 282
    .line 283
    invoke-static {}, Liy;->b()Lsx;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    if-ne v9, v10, :cond_7

    .line 288
    .line 289
    move-object v4, v6

    .line 290
    goto :goto_5

    .line 291
    :cond_8
    const/4 v4, 0x0

    .line 292
    :goto_5
    check-cast v4, Lfj7;

    .line 293
    .line 294
    if-eqz v4, :cond_9

    .line 295
    .line 296
    const/4 v6, 0x1

    .line 297
    iput-boolean v6, v4, Lfj7;->d:Z

    .line 298
    .line 299
    sget-object v6, Liy;->a:Liy;

    .line 300
    .line 301
    invoke-static {}, Liy;->c()Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    iput-boolean v6, v4, Lfj7;->e:Z

    .line 306
    .line 307
    :cond_9
    const/4 v11, 0x0

    .line 308
    const/16 v12, 0x1e

    .line 309
    .line 310
    const/4 v9, 0x0

    .line 311
    const/4 v10, 0x0

    .line 312
    invoke-direct/range {v7 .. v12}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v3, v5, v7}, Lhj7;-><init>(Lil0;Lfm7;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 319
    .line 320
    .line 321
    iget-object v3, v3, Lgm7;->e:Lfm7;

    .line 322
    .line 323
    iget-object v3, v3, Lfm7;->a:Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const/4 v4, 0x0

    .line 330
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    const/4 v6, -0x1

    .line 335
    if-eqz v5, :cond_b

    .line 336
    .line 337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Lfj7;

    .line 342
    .line 343
    iget-boolean v5, v5, Lfj7;->d:Z

    .line 344
    .line 345
    if-eqz v5, :cond_a

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_b
    move v4, v6

    .line 352
    :goto_7
    if-eq v4, v6, :cond_c

    .line 353
    .line 354
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 355
    .line 356
    .line 357
    :cond_c
    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, v2}, Lsc3;->m(Z)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v1, Ltc3;->d:Landroid/widget/ImageView;

    .line 362
    .line 363
    new-instance v3, Lnf;

    .line 364
    .line 365
    const/4 v4, 0x6

    .line 366
    invoke-direct {v3, v0, v4}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v1, Ltc3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 373
    .line 374
    new-instance v3, Lg7;

    .line 375
    .line 376
    const/16 v4, 0xa

    .line 377
    .line 378
    invoke-direct {v3, v0, v4}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v1, Ltc3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 385
    .line 386
    new-instance v2, Lh7;

    .line 387
    .line 388
    const/16 v3, 0x8

    .line 389
    .line 390
    invoke-direct {v2, v0, v3}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    invoke-super {v0}, Lu35;->show()V

    .line 397
    .line 398
    .line 399
    return-void
.end method
