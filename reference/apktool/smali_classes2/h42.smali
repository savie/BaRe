.class public final synthetic Lh42;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh42;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

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
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh42;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lh42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lt52;->c0:Landroid/widget/AutoCompleteTextView;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lt52;->I:Lu00;

    .line 26
    .line 27
    iget-object v0, v0, Lu00;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const v1, 0x7f0d0066

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f0a00b0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const-string v5, "Missing required view with ID: "

    .line 57
    .line 58
    if-eqz v4, :cond_d

    .line 59
    .line 60
    const v1, 0x7f0a00f2

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v8, v4

    .line 68
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    if-eqz v8, :cond_d

    .line 71
    .line 72
    const v1, 0x7f0a0132

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    move-object v9, v4

    .line 80
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 81
    .line 82
    if-eqz v9, :cond_d

    .line 83
    .line 84
    const v1, 0x7f0a0160

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    if-eqz v10, :cond_d

    .line 92
    .line 93
    const v1, 0x7f0a0161

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    if-eqz v11, :cond_d

    .line 101
    .line 102
    const v1, 0x7f0a0191

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v12, v4

    .line 110
    check-cast v12, Landroid/widget/LinearLayout;

    .line 111
    .line 112
    if-eqz v12, :cond_d

    .line 113
    .line 114
    const v1, 0x7f0a01b2

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    if-eqz v4, :cond_d

    .line 124
    .line 125
    const v1, 0x7f0a02b7

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    move-object v13, v4

    .line 133
    check-cast v13, Landroid/widget/ImageView;

    .line 134
    .line 135
    if-eqz v13, :cond_d

    .line 136
    .line 137
    const v1, 0x7f0a02bd

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    move-object v14, v4

    .line 145
    check-cast v14, Landroid/widget/ImageView;

    .line 146
    .line 147
    if-eqz v14, :cond_d

    .line 148
    .line 149
    const v1, 0x7f0a02c8

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    move-object v15, v4

    .line 157
    check-cast v15, Landroid/widget/ImageView;

    .line 158
    .line 159
    if-eqz v15, :cond_d

    .line 160
    .line 161
    const v1, 0x7f0a02d6

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    move-object/from16 v16, v4

    .line 169
    .line 170
    check-cast v16, Landroid/widget/ImageView;

    .line 171
    .line 172
    if-eqz v16, :cond_d

    .line 173
    .line 174
    const v1, 0x7f0a02fc

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_d

    .line 182
    .line 183
    const v1, 0x7f0a02ba

    .line 184
    .line 185
    .line 186
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    move-object/from16 v19, v6

    .line 191
    .line 192
    check-cast v19, Landroid/widget/ImageView;

    .line 193
    .line 194
    if-eqz v19, :cond_c

    .line 195
    .line 196
    const v1, 0x7f0a02bb

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    move-object/from16 v20, v6

    .line 204
    .line 205
    check-cast v20, Landroid/widget/ImageView;

    .line 206
    .line 207
    if-eqz v20, :cond_c

    .line 208
    .line 209
    move-object/from16 v18, v4

    .line 210
    .line 211
    check-cast v18, Lcom/google/android/material/card/MaterialCardView;

    .line 212
    .line 213
    const v1, 0x7f0a038d

    .line 214
    .line 215
    .line 216
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    move-object/from16 v22, v6

    .line 221
    .line 222
    check-cast v22, Landroid/widget/ProgressBar;

    .line 223
    .line 224
    if-eqz v22, :cond_c

    .line 225
    .line 226
    const v1, 0x7f0a0560

    .line 227
    .line 228
    .line 229
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    move-object/from16 v23, v6

    .line 234
    .line 235
    check-cast v23, Landroid/widget/TextView;

    .line 236
    .line 237
    if-eqz v23, :cond_c

    .line 238
    .line 239
    const v1, 0x7f0a0561

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    move-object/from16 v24, v6

    .line 247
    .line 248
    check-cast v24, Landroid/widget/TextView;

    .line 249
    .line 250
    if-eqz v24, :cond_c

    .line 251
    .line 252
    new-instance v17, Lm86;

    .line 253
    .line 254
    const/16 v25, 0x1

    .line 255
    .line 256
    move-object/from16 v21, v18

    .line 257
    .line 258
    invoke-direct/range {v17 .. v25}, Lm86;-><init>(Lcom/google/android/material/card/MaterialCardView;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 259
    .line 260
    .line 261
    const v1, 0x7f0a042d

    .line 262
    .line 263
    .line 264
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    move-object/from16 v18, v4

    .line 269
    .line 270
    check-cast v18, Landroidx/core/widget/NestedScrollView;

    .line 271
    .line 272
    if-eqz v18, :cond_d

    .line 273
    .line 274
    const v1, 0x7f0a0448

    .line 275
    .line 276
    .line 277
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    move-object/from16 v19, v4

    .line 282
    .line 283
    check-cast v19, Landroid/widget/LinearLayout;

    .line 284
    .line 285
    if-eqz v19, :cond_d

    .line 286
    .line 287
    const v1, 0x7f0a049a

    .line 288
    .line 289
    .line 290
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    move-object/from16 v20, v4

    .line 295
    .line 296
    check-cast v20, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 297
    .line 298
    if-eqz v20, :cond_d

    .line 299
    .line 300
    const v1, 0x7f0a049b

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    move-object/from16 v21, v4

    .line 308
    .line 309
    check-cast v21, Landroid/widget/FrameLayout;

    .line 310
    .line 311
    if-eqz v21, :cond_d

    .line 312
    .line 313
    const v1, 0x7f0a04c3

    .line 314
    .line 315
    .line 316
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    move-object/from16 v22, v4

    .line 321
    .line 322
    check-cast v22, Lcom/google/android/material/textfield/TextInputLayout;

    .line 323
    .line 324
    if-eqz v22, :cond_d

    .line 325
    .line 326
    const v1, 0x7f0a04cd

    .line 327
    .line 328
    .line 329
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    if-eqz v4, :cond_d

    .line 334
    .line 335
    const v1, 0x7f0a020c

    .line 336
    .line 337
    .line 338
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 343
    .line 344
    if-eqz v6, :cond_b

    .line 345
    .line 346
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 347
    .line 348
    new-instance v7, Lu00;

    .line 349
    .line 350
    const/4 v2, 0x1

    .line 351
    invoke-direct {v7, v2, v4, v6, v4}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    const v4, 0x7f0a04ce

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    if-eqz v6, :cond_a

    .line 362
    .line 363
    invoke-static {v6, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 368
    .line 369
    if-eqz v4, :cond_9

    .line 370
    .line 371
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 372
    .line 373
    new-instance v2, Ld62;

    .line 374
    .line 375
    invoke-direct {v2, v6, v4, v6, v3}, Ld62;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 376
    .line 377
    .line 378
    const v3, 0x7f0a04d2

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    if-eqz v4, :cond_8

    .line 386
    .line 387
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 392
    .line 393
    if-eqz v3, :cond_7

    .line 394
    .line 395
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 396
    .line 397
    new-instance v6, Ldr;

    .line 398
    .line 399
    const/4 v1, 0x1

    .line 400
    invoke-direct {v6, v4, v3, v4, v1}, Ldr;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 401
    .line 402
    .line 403
    const v1, 0x7f0a04d3

    .line 404
    .line 405
    .line 406
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    if-eqz v3, :cond_d

    .line 411
    .line 412
    const v4, 0x7f0a020c

    .line 413
    .line 414
    .line 415
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 420
    .line 421
    if-eqz v1, :cond_6

    .line 422
    .line 423
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 424
    .line 425
    new-instance v4, Lbp0;

    .line 426
    .line 427
    invoke-direct {v4, v3, v1, v3}, Lbp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    const v1, 0x7f0a04d5

    .line 431
    .line 432
    .line 433
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    if-eqz v3, :cond_5

    .line 438
    .line 439
    const v1, 0x7f0a020c

    .line 440
    .line 441
    .line 442
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 443
    .line 444
    .line 445
    move-result-object v25

    .line 446
    move-object/from16 v1, v25

    .line 447
    .line 448
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 449
    .line 450
    if-eqz v1, :cond_4

    .line 451
    .line 452
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 453
    .line 454
    move-object/from16 v26, v2

    .line 455
    .line 456
    new-instance v2, Lny1;

    .line 457
    .line 458
    move-object/from16 v27, v4

    .line 459
    .line 460
    const/4 v4, 0x5

    .line 461
    invoke-direct {v2, v4, v3, v1, v3}, Lny1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const v1, 0x7f0a04d6

    .line 465
    .line 466
    .line 467
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    move-object/from16 v28, v3

    .line 472
    .line 473
    check-cast v28, Lcom/google/android/material/textfield/TextInputLayout;

    .line 474
    .line 475
    if-eqz v28, :cond_d

    .line 476
    .line 477
    const v1, 0x7f0a04d7

    .line 478
    .line 479
    .line 480
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    if-eqz v3, :cond_d

    .line 485
    .line 486
    const v4, 0x7f0a020c

    .line 487
    .line 488
    .line 489
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 494
    .line 495
    if-eqz v1, :cond_3

    .line 496
    .line 497
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 498
    .line 499
    new-instance v4, Lu94;

    .line 500
    .line 501
    invoke-direct {v4, v3, v1, v3}, Lu94;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    const v1, 0x7f0a04d8

    .line 505
    .line 506
    .line 507
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    move-object/from16 v30, v3

    .line 512
    .line 513
    check-cast v30, Lcom/google/android/material/textfield/TextInputLayout;

    .line 514
    .line 515
    if-eqz v30, :cond_d

    .line 516
    .line 517
    const v1, 0x7f0a04d9

    .line 518
    .line 519
    .line 520
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    if-eqz v3, :cond_2

    .line 525
    .line 526
    const v1, 0x7f0a020c

    .line 527
    .line 528
    .line 529
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v24

    .line 533
    move-object/from16 v1, v24

    .line 534
    .line 535
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 536
    .line 537
    if-eqz v1, :cond_1

    .line 538
    .line 539
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 540
    .line 541
    move-object/from16 v31, v2

    .line 542
    .line 543
    new-instance v2, Le41;

    .line 544
    .line 545
    move-object/from16 v32, v4

    .line 546
    .line 547
    const/4 v4, 0x1

    .line 548
    invoke-direct {v2, v4, v3, v1, v3}, Le41;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    const v1, 0x7f0a04db

    .line 552
    .line 553
    .line 554
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    if-eqz v3, :cond_d

    .line 559
    .line 560
    const v4, 0x7f0a020c

    .line 561
    .line 562
    .line 563
    invoke-static {v3, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 568
    .line 569
    if-eqz v1, :cond_0

    .line 570
    .line 571
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 572
    .line 573
    new-instance v4, Ls02;

    .line 574
    .line 575
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 576
    .line 577
    .line 578
    iput-object v3, v4, Ls02;->a:Ljava/lang/Object;

    .line 579
    .line 580
    iput-object v1, v4, Ls02;->b:Ljava/lang/Object;

    .line 581
    .line 582
    iput-object v3, v4, Ls02;->c:Ljava/lang/Object;

    .line 583
    .line 584
    const v1, 0x7f0a04dc

    .line 585
    .line 586
    .line 587
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    move-object/from16 v33, v3

    .line 592
    .line 593
    check-cast v33, Lcom/google/android/material/textfield/TextInputLayout;

    .line 594
    .line 595
    if-eqz v33, :cond_d

    .line 596
    .line 597
    const v1, 0x7f0a0517

    .line 598
    .line 599
    .line 600
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    move-object/from16 v34, v3

    .line 605
    .line 606
    check-cast v34, Landroid/widget/AutoCompleteTextView;

    .line 607
    .line 608
    if-eqz v34, :cond_d

    .line 609
    .line 610
    const v1, 0x7f0a0518

    .line 611
    .line 612
    .line 613
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    move-object/from16 v35, v3

    .line 618
    .line 619
    check-cast v35, Landroid/widget/TextView;

    .line 620
    .line 621
    if-eqz v35, :cond_d

    .line 622
    .line 623
    const v1, 0x7f0a052a

    .line 624
    .line 625
    .line 626
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    move-object/from16 v36, v3

    .line 631
    .line 632
    check-cast v36, Landroid/widget/TextView;

    .line 633
    .line 634
    if-eqz v36, :cond_d

    .line 635
    .line 636
    const v1, 0x7f0a052b

    .line 637
    .line 638
    .line 639
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    move-object/from16 v37, v3

    .line 644
    .line 645
    check-cast v37, Landroid/widget/TextView;

    .line 646
    .line 647
    if-eqz v37, :cond_d

    .line 648
    .line 649
    const v1, 0x7f0a055b

    .line 650
    .line 651
    .line 652
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    move-object/from16 v38, v3

    .line 657
    .line 658
    check-cast v38, Landroid/widget/TextView;

    .line 659
    .line 660
    if-eqz v38, :cond_d

    .line 661
    .line 662
    const v1, 0x7f0a0579

    .line 663
    .line 664
    .line 665
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    move-object/from16 v39, v3

    .line 670
    .line 671
    check-cast v39, Landroid/widget/AutoCompleteTextView;

    .line 672
    .line 673
    if-eqz v39, :cond_d

    .line 674
    .line 675
    const v1, 0x7f0a058e

    .line 676
    .line 677
    .line 678
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    move-object/from16 v40, v3

    .line 683
    .line 684
    check-cast v40, Landroid/widget/AutoCompleteTextView;

    .line 685
    .line 686
    if-eqz v40, :cond_d

    .line 687
    .line 688
    const v1, 0x7f0a05ba

    .line 689
    .line 690
    .line 691
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    move-object/from16 v41, v3

    .line 696
    .line 697
    check-cast v41, Landroid/widget/TextView;

    .line 698
    .line 699
    if-eqz v41, :cond_d

    .line 700
    .line 701
    const v1, 0x7f0a05c4

    .line 702
    .line 703
    .line 704
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    move-object/from16 v42, v3

    .line 709
    .line 710
    check-cast v42, Landroid/widget/TextView;

    .line 711
    .line 712
    if-eqz v42, :cond_d

    .line 713
    .line 714
    const v1, 0x7f0a05cb

    .line 715
    .line 716
    .line 717
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    move-object/from16 v43, v3

    .line 722
    .line 723
    check-cast v43, Landroid/widget/AutoCompleteTextView;

    .line 724
    .line 725
    if-eqz v43, :cond_d

    .line 726
    .line 727
    move-object/from16 v25, v6

    .line 728
    .line 729
    new-instance v6, Lt52;

    .line 730
    .line 731
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 732
    .line 733
    move-object/from16 v23, v7

    .line 734
    .line 735
    move-object/from16 v24, v26

    .line 736
    .line 737
    move-object/from16 v26, v27

    .line 738
    .line 739
    move-object/from16 v27, v31

    .line 740
    .line 741
    move-object/from16 v29, v32

    .line 742
    .line 743
    move-object v7, v0

    .line 744
    move-object/from16 v31, v2

    .line 745
    .line 746
    move-object/from16 v32, v4

    .line 747
    .line 748
    invoke-direct/range {v6 .. v43}, Lt52;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lm86;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;Landroid/widget/FrameLayout;Lcom/google/android/material/textfield/TextInputLayout;Lu00;Ld62;Ldr;Lbp0;Lny1;Lcom/google/android/material/textfield/TextInputLayout;Lu94;Lcom/google/android/material/textfield/TextInputLayout;Le41;Ls02;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;)V

    .line 749
    .line 750
    .line 751
    move-object v2, v6

    .line 752
    goto/16 :goto_2

    .line 753
    .line 754
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    const v1, 0x7f0a020c

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    :goto_0
    const/4 v2, 0x0

    .line 773
    goto/16 :goto_2

    .line 774
    .line 775
    :cond_1
    const v1, 0x7f0a020c

    .line 776
    .line 777
    .line 778
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    goto :goto_0

    .line 794
    :cond_2
    const v1, 0x7f0a04d9

    .line 795
    .line 796
    .line 797
    goto/16 :goto_1

    .line 798
    .line 799
    :cond_3
    const v1, 0x7f0a020c

    .line 800
    .line 801
    .line 802
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    goto :goto_0

    .line 818
    :cond_4
    const v1, 0x7f0a020c

    .line 819
    .line 820
    .line 821
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    goto :goto_0

    .line 837
    :cond_5
    const v1, 0x7f0a04d5

    .line 838
    .line 839
    .line 840
    goto :goto_1

    .line 841
    :cond_6
    move v1, v4

    .line 842
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    goto :goto_0

    .line 858
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    goto :goto_0

    .line 874
    :cond_8
    move v1, v3

    .line 875
    goto :goto_1

    .line 876
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    goto :goto_0

    .line 892
    :cond_a
    move v1, v4

    .line 893
    goto :goto_1

    .line 894
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    goto/16 :goto_0

    .line 910
    .line 911
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    goto/16 :goto_0

    .line 927
    .line 928
    :cond_d
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_0

    .line 944
    .line 945
    :goto_2
    return-object v2

    .line 946
    nop

    .line 947
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
