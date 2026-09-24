.class public final synthetic Lzd1;
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
    iput p7, p0, Lzd1;->a:I

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzd1;->a:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sget-object v4, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lorg/swiftapps/swiftbackup/common/Const;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return-object v4

    .line 34
    :pswitch_0
    move-object/from16 v1, p1

    .line 35
    .line 36
    check-cast v1, Lu37;

    .line 37
    .line 38
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 41
    .line 42
    sget v7, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->S:Lgv7;

    .line 48
    .line 49
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N:Lgv7;

    .line 50
    .line 51
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->V:Lgv7;

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_0
    new-instance v10, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v11, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    iget-object v12, v12, Lv37;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    const-string v12, "extra_selected_labels"

    .line 74
    .line 75
    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/4 v11, -0x1

    .line 83
    invoke-virtual {v0, v11, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    iget-object v10, v1, Lu37;->d:Ljava/util/ArrayList;

    .line 87
    .line 88
    new-instance v11, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_2

    .line 102
    .line 103
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    check-cast v12, Ljava/lang/String;

    .line 108
    .line 109
    sget-object v13, Llr4;->a:Llr4;

    .line 110
    .line 111
    invoke-static {v12}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    if-eqz v12, :cond_1

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    .line 127
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    xor-int/2addr v12, v3

    .line 132
    invoke-static {v10, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 140
    .line 141
    invoke-static {v9}, Lsz8;->I(Landroid/view/View;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_3

    .line 146
    .line 147
    sget-object v9, Ltr;->n0:Lqr;

    .line 148
    .line 149
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->W:Lgv7;

    .line 150
    .line 151
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    move-object v12, v9

    .line 156
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    invoke-virtual {v0}, Lk28;->v()Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    invoke-static {v11}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v16

    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v19, 0xfc2

    .line 169
    .line 170
    const/4 v13, 0x0

    .line 171
    const/high16 v15, 0x3f800000    # 1.0f

    .line 172
    .line 173
    const/16 v17, 0x0

    .line 174
    .line 175
    invoke-static/range {v12 .. v19}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 176
    .line 177
    .line 178
    :cond_3
    iget-object v9, v1, Lu37;->a:Ljava/util/ArrayList;

    .line 179
    .line 180
    new-instance v10, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-eqz v11, :cond_5

    .line 194
    .line 195
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Ljava/lang/String;

    .line 200
    .line 201
    sget-object v12, Llr4;->a:Llr4;

    .line 202
    .line 203
    invoke-static {v11}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    if-eqz v11, :cond_4

    .line 208
    .line 209
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_5
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->M:Lgv7;

    .line 214
    .line 215
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    check-cast v9, Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    invoke-static {v9, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 226
    .line 227
    .line 228
    const-class v9, Landroid/widget/TextView;

    .line 229
    .line 230
    const-class v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    filled-new-array {v9, v11}, [Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v0, v9}, Lil0;->y([Ljava/lang/Class;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 244
    .line 245
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    xor-int/2addr v11, v3

    .line 250
    invoke-static {v9, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 251
    .line 252
    .line 253
    invoke-static {v9}, Lsz8;->I(Landroid/view/View;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_6

    .line 258
    .line 259
    sget-object v9, Ltr;->n0:Lqr;

    .line 260
    .line 261
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    move-object v11, v8

    .line 266
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    invoke-virtual {v0}, Lk28;->v()Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    invoke-static {v10}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    new-instance v8, Lf7;

    .line 277
    .line 278
    const/4 v9, 0x5

    .line 279
    invoke-direct {v8, v0, v9}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 280
    .line 281
    .line 282
    const/16 v18, 0x7c2

    .line 283
    .line 284
    const/4 v12, 0x0

    .line 285
    const/high16 v14, 0x3f800000    # 1.0f

    .line 286
    .line 287
    const/16 v16, 0x1

    .line 288
    .line 289
    move-object/from16 v17, v8

    .line 290
    .line 291
    invoke-static/range {v11 .. v18}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 292
    .line 293
    .line 294
    :cond_6
    sget-object v8, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 295
    .line 296
    invoke-static {v8}, Lw13;->g(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    new-instance v9, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    if-eqz v10, :cond_8

    .line 314
    .line 315
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    move-object v11, v10

    .line 320
    check-cast v11, Lvq4;

    .line 321
    .line 322
    iget-object v11, v11, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 323
    .line 324
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    iget-object v12, v1, Lu37;->b:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-static {v12, v11}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    if-eqz v11, :cond_7

    .line 335
    .line 336
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_8
    new-instance v8, Lcl7;

    .line 341
    .line 342
    const/4 v10, 0x7

    .line 343
    invoke-direct {v8, v10}, Lcl7;-><init>(I)V

    .line 344
    .line 345
    .line 346
    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    new-instance v11, Lm54;

    .line 352
    .line 353
    invoke-direct {v11, v8, v3}, Lm54;-><init>(Ljava/util/Comparator;I)V

    .line 354
    .line 355
    .line 356
    invoke-static {v9, v11}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->R:Lgv7;

    .line 361
    .line 362
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 367
    .line 368
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    invoke-static {v8, v9}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 373
    .line 374
    .line 375
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->P:Lgv7;

    .line 376
    .line 377
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 382
    .line 383
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    xor-int/2addr v9, v3

    .line 388
    invoke-static {v8, v9}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 389
    .line 390
    .line 391
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->Q:Lgv7;

    .line 392
    .line 393
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    check-cast v8, Lur4;

    .line 398
    .line 399
    new-instance v12, Lfm7;

    .line 400
    .line 401
    const/16 v16, 0x0

    .line 402
    .line 403
    const/16 v17, 0x1e

    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    const/4 v15, 0x0

    .line 407
    invoke-direct/range {v12 .. v17}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v12, v5}, Lgm7;->w(Lfm7;Z)V

    .line 411
    .line 412
    .line 413
    sget-object v8, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 414
    .line 415
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {}, Lhr4;->a()Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    new-instance v9, Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-static {v8, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .line 430
    .line 431
    check-cast v8, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-eqz v8, :cond_9

    .line 442
    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    check-cast v8, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 448
    .line 449
    new-instance v11, Lvq4;

    .line 450
    .line 451
    invoke-direct {v11, v8, v6}, Lvq4;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;Ljava/util/List;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto :goto_3

    .line 458
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    :cond_a
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    if-eqz v8, :cond_b

    .line 472
    .line 473
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    move-object v9, v8

    .line 478
    check-cast v9, Lvq4;

    .line 479
    .line 480
    iget-object v9, v9, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 481
    .line 482
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    iget-object v11, v1, Lu37;->c:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-static {v11, v9}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    if-eqz v9, :cond_a

    .line 493
    .line 494
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_b
    new-instance v1, Lcl7;

    .line 499
    .line 500
    invoke-direct {v1, v10}, Lcl7;-><init>(I)V

    .line 501
    .line 502
    .line 503
    new-instance v6, Lm54;

    .line 504
    .line 505
    invoke-direct {v6, v1, v3}, Lm54;-><init>(Ljava/util/Comparator;I)V

    .line 506
    .line 507
    .line 508
    invoke-static {v2, v6}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 517
    .line 518
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    xor-int/2addr v2, v3

    .line 523
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 531
    .line 532
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_c

    .line 537
    .line 538
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->U:Lgv7;

    .line 539
    .line 540
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Lur4;

    .line 545
    .line 546
    new-instance v8, Lfm7;

    .line 547
    .line 548
    const/4 v12, 0x0

    .line 549
    const/16 v13, 0x1e

    .line 550
    .line 551
    const/4 v10, 0x0

    .line 552
    const/4 v11, 0x0

    .line 553
    invoke-direct/range {v8 .. v13}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v8, v5}, Lgm7;->w(Lfm7;Z)V

    .line 557
    .line 558
    .line 559
    :cond_c
    :goto_5
    return-object v4

    .line 560
    :pswitch_1
    move-object/from16 v1, p1

    .line 561
    .line 562
    check-cast v1, Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v0, Luq6;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static {v0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    return-object v0

    .line 586
    :pswitch_2
    move-object/from16 v1, p1

    .line 587
    .line 588
    check-cast v1, Lv76;

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 596
    .line 597
    sget v2, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    const-string v2, "5.1.0"

    .line 603
    .line 604
    const-string v7, "dev"

    .line 605
    .line 606
    invoke-static {v2, v7, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 607
    .line 608
    .line 609
    move-result v7

    .line 610
    const/4 v8, 0x2

    .line 611
    if-nez v7, :cond_1f

    .line 612
    .line 613
    const-string v7, "alpha"

    .line 614
    .line 615
    invoke-static {v2, v7, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 616
    .line 617
    .line 618
    move-result v7

    .line 619
    if-nez v7, :cond_1f

    .line 620
    .line 621
    const-string v7, "beta"

    .line 622
    .line 623
    invoke-static {v2, v7, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 624
    .line 625
    .line 626
    move-result v7

    .line 627
    if-nez v7, :cond_1f

    .line 628
    .line 629
    const-string v7, "rc"

    .line 630
    .line 631
    invoke-static {v2, v7, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-nez v2, :cond_1f

    .line 636
    .line 637
    :try_start_1
    sget-object v2, Ld45;->b:Ld45;

    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    if-eqz v2, :cond_d

    .line 647
    .line 648
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 653
    .line 654
    .line 655
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    goto :goto_6

    .line 657
    :catch_1
    :cond_d
    move-object v2, v6

    .line 658
    :goto_6
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 659
    .line 660
    invoke-static {v2, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-eqz v2, :cond_e

    .line 665
    .line 666
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->M(Lil0;)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_e

    .line 670
    .line 671
    :cond_e
    sget-object v2, Lwq0;->a:Lwq0;

    .line 672
    .line 673
    iget-object v2, v1, Lv76;->e:Ljava/lang/String;

    .line 674
    .line 675
    new-instance v7, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v9, "Called for product: "

    .line 678
    .line 679
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    const-string v7, "startPurchaseFlow"

    .line 690
    .line 691
    invoke-static {v7, v2}, Lwq0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iget-object v2, v1, Lv76;->d:Ljava/lang/String;

    .line 695
    .line 696
    const-string v7, "inapp"

    .line 697
    .line 698
    invoke-static {v2, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    if-eqz v2, :cond_10

    .line 703
    .line 704
    :cond_f
    move-object v2, v6

    .line 705
    goto :goto_7

    .line 706
    :cond_10
    iget-object v2, v1, Lv76;->h:Ljava/util/ArrayList;

    .line 707
    .line 708
    if-eqz v2, :cond_f

    .line 709
    .line 710
    invoke-static {v2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, Lu76;

    .line 715
    .line 716
    if-eqz v2, :cond_f

    .line 717
    .line 718
    iget-object v2, v2, Lu76;->a:Ljava/lang/String;

    .line 719
    .line 720
    :goto_7
    new-instance v7, Loe;

    .line 721
    .line 722
    invoke-direct {v7, v8, v5}, Loe;-><init>(IZ)V

    .line 723
    .line 724
    .line 725
    iput-object v1, v7, Loe;->b:Ljava/lang/Object;

    .line 726
    .line 727
    invoke-virtual {v1}, Lv76;->a()Ls76;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    if-eqz v8, :cond_11

    .line 732
    .line 733
    invoke-virtual {v1}, Lv76;->a()Ls76;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1}, Lv76;->a()Ls76;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    iget-object v1, v1, Ls76;->b:Ljava/lang/String;

    .line 745
    .line 746
    if-eqz v1, :cond_11

    .line 747
    .line 748
    iput-object v1, v7, Loe;->c:Ljava/lang/Object;

    .line 749
    .line 750
    :cond_11
    if-eqz v2, :cond_14

    .line 751
    .line 752
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-nez v1, :cond_12

    .line 757
    .line 758
    goto :goto_9

    .line 759
    :cond_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-nez v1, :cond_13

    .line 764
    .line 765
    iput-object v2, v7, Loe;->c:Ljava/lang/Object;

    .line 766
    .line 767
    goto :goto_9

    .line 768
    :cond_13
    const-string v0, "offerToken can not be empty"

    .line 769
    .line 770
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :goto_8
    move-object v4, v6

    .line 774
    goto/16 :goto_e

    .line 775
    .line 776
    :cond_14
    :goto_9
    iget-object v1, v7, Loe;->b:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v1, Lv76;

    .line 779
    .line 780
    if-eqz v1, :cond_1e

    .line 781
    .line 782
    new-instance v1, Lfq0;

    .line 783
    .line 784
    invoke-direct {v1, v7}, Lfq0;-><init>(Loe;)V

    .line 785
    .line 786
    .line 787
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    new-instance v2, Ljava/util/ArrayList;

    .line 792
    .line 793
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 794
    .line 795
    .line 796
    sget-object v1, Ld45;->b:Ld45;

    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    if-eqz v1, :cond_1d

    .line 806
    .line 807
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    if-nez v7, :cond_1c

    .line 816
    .line 817
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 822
    .line 823
    .line 824
    move-result v9

    .line 825
    if-eqz v9, :cond_16

    .line 826
    .line 827
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v9

    .line 831
    check-cast v9, Lfq0;

    .line 832
    .line 833
    if-eqz v9, :cond_15

    .line 834
    .line 835
    goto :goto_a

    .line 836
    :cond_15
    const-string v0, "ProductDetailsParams cannot be null."

    .line 837
    .line 838
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    goto :goto_8

    .line 842
    :cond_16
    new-instance v8, Lgq0;

    .line 843
    .line 844
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 845
    .line 846
    .line 847
    if-nez v7, :cond_17

    .line 848
    .line 849
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    check-cast v7, Lfq0;

    .line 854
    .line 855
    iget-object v7, v7, Lfq0;->a:Lv76;

    .line 856
    .line 857
    iget-object v7, v7, Lv76;->b:Lorg/json/JSONObject;

    .line 858
    .line 859
    const-string v9, "packageName"

    .line 860
    .line 861
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v7

    .line 865
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    if-nez v7, :cond_17

    .line 870
    .line 871
    move v7, v3

    .line 872
    goto :goto_b

    .line 873
    :cond_17
    move v7, v5

    .line 874
    :goto_b
    iput-boolean v7, v8, Lgq0;->a:Z

    .line 875
    .line 876
    iput-object v1, v8, Lgq0;->b:Ljava/lang/String;

    .line 877
    .line 878
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-eqz v1, :cond_19

    .line 883
    .line 884
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    if-nez v1, :cond_18

    .line 889
    .line 890
    goto :goto_c

    .line 891
    :cond_18
    move v3, v5

    .line 892
    :cond_19
    :goto_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-eqz v3, :cond_1b

    .line 897
    .line 898
    if-eqz v1, :cond_1a

    .line 899
    .line 900
    goto :goto_d

    .line 901
    :cond_1a
    const-string v0, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    .line 902
    .line 903
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_8

    .line 907
    .line 908
    :cond_1b
    :goto_d
    new-instance v1, Llk;

    .line 909
    .line 910
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 911
    .line 912
    .line 913
    iput-object v1, v8, Lgq0;->c:Llk;

    .line 914
    .line 915
    new-instance v1, Ljava/util/ArrayList;

    .line 916
    .line 917
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .line 919
    .line 920
    iput-object v1, v8, Lgq0;->e:Ljava/util/ArrayList;

    .line 921
    .line 922
    invoke-static {v2}, Lma9;->o(Ljava/util/ArrayList;)Lma9;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    iput-object v1, v8, Lgq0;->d:Lma9;

    .line 927
    .line 928
    sget-object v1, Lwq0;->g:Ldq0;

    .line 929
    .line 930
    invoke-virtual {v1, v0, v8}, Ldq0;->b(Landroid/app/Activity;Lgq0;)Lyq0;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 938
    .line 939
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v6

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    const-string v2, "startPurchaseFlow: "

    .line 946
    .line 947
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v7

    .line 957
    const/4 v9, 0x4

    .line 958
    const/4 v10, 0x0

    .line 959
    const/4 v8, 0x0

    .line 960
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    goto :goto_e

    .line 964
    :cond_1c
    const-string v0, "Details of the products must be provided."

    .line 965
    .line 966
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_8

    .line 970
    .line 971
    :cond_1d
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 972
    .line 973
    invoke-static {v5, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    throw v0

    .line 978
    :cond_1e
    const-string v0, "ProductDetails is required for constructing ProductDetailsParams."

    .line 979
    .line 980
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    goto/16 :goto_8

    .line 984
    .line 985
    :cond_1f
    const v1, 0x7f1300f4

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    .line 994
    .line 995
    invoke-static {v0, v6, v1, v8}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 996
    .line 997
    .line 998
    :goto_e
    return-object v4

    .line 999
    :pswitch_3
    move-object/from16 v1, p1

    .line 1000
    .line 1001
    check-cast v1, Lh62;

    .line 1002
    .line 1003
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 1009
    .line 1010
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    const/high16 v2, 0x41580000    # 13.5f

    .line 1016
    .line 1017
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    new-instance v3, Lhv1;

    .line 1022
    .line 1023
    const v7, 0x7f140160

    .line 1024
    .line 1025
    .line 1026
    invoke-direct {v3, v0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v8, Ls35;

    .line 1030
    .line 1031
    invoke-direct {v8, v0, v7, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1032
    .line 1033
    .line 1034
    const v2, 0x7f1304eb

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    iget-object v3, v8, Lva;->b:Ljava/lang/Object;

    .line 1042
    .line 1043
    check-cast v3, Lra;

    .line 1044
    .line 1045
    iput-object v2, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 1046
    .line 1047
    iget-object v2, v1, Lh62;->a:Landroid/text/SpannedString;

    .line 1048
    .line 1049
    iput-object v2, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 1050
    .line 1051
    iget-boolean v2, v1, Lh62;->b:Z

    .line 1052
    .line 1053
    if-eqz v2, :cond_20

    .line 1054
    .line 1055
    const v2, 0x7f130573

    .line 1056
    .line 1057
    .line 1058
    goto :goto_f

    .line 1059
    :cond_20
    const v2, 0x7f1301b3

    .line 1060
    .line 1061
    .line 1062
    :goto_f
    new-instance v3, Lb52;

    .line 1063
    .line 1064
    invoke-direct {v3, v5, v0, v1}, Lb52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v8, v2, v3}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1068
    .line 1069
    .line 1070
    const v0, 0x7f130084

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v8, v0, v6}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 1077
    .line 1078
    .line 1079
    return-object v4

    .line 1080
    :pswitch_4
    move-object/from16 v1, p1

    .line 1081
    .line 1082
    check-cast v1, Lef1;

    .line 1083
    .line 1084
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 1090
    .line 1091
    sget v7, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 1092
    .line 1093
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->R:Lgv7;

    .line 1097
    .line 1098
    iget-boolean v8, v1, Lef1;->i:Z

    .line 1099
    .line 1100
    iget-object v9, v1, Lef1;->b:Ljava/lang/String;

    .line 1101
    .line 1102
    iget-object v11, v1, Lef1;->g:Ljava/util/List;

    .line 1103
    .line 1104
    iget-boolean v10, v1, Lef1;->h:Z

    .line 1105
    .line 1106
    if-eqz v8, :cond_21

    .line 1107
    .line 1108
    iget-boolean v12, v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->W:Z

    .line 1109
    .line 1110
    if-eqz v12, :cond_21

    .line 1111
    .line 1112
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->W()V

    .line 1113
    .line 1114
    .line 1115
    :cond_21
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v12

    .line 1119
    iget-object v12, v12, Lbe1;->t:Landroid/widget/ImageView;

    .line 1120
    .line 1121
    invoke-static {v12, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1122
    .line 1123
    .line 1124
    if-eqz v10, :cond_23

    .line 1125
    .line 1126
    iget-boolean v12, v1, Lef1;->d:Z

    .line 1127
    .line 1128
    iget v13, v1, Lef1;->c:I

    .line 1129
    .line 1130
    if-eqz v12, :cond_22

    .line 1131
    .line 1132
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v12

    .line 1136
    iget-object v12, v12, Lbe1;->t:Landroid/widget/ImageView;

    .line 1137
    .line 1138
    const/high16 v14, 0x40400000    # 3.0f

    .line 1139
    .line 1140
    invoke-static {v12, v13, v9, v14}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_10

    .line 1144
    :cond_22
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v12

    .line 1148
    iget-object v12, v12, Lbe1;->t:Landroid/widget/ImageView;

    .line 1149
    .line 1150
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v12, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    .line 1158
    .line 1159
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 1160
    .line 1161
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v12, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1168
    .line 1169
    .line 1170
    :cond_23
    :goto_10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v12

    .line 1174
    iget-object v12, v12, Lbe1;->N:Landroid/widget/TextView;

    .line 1175
    .line 1176
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v9

    .line 1183
    iget-object v9, v9, Lbe1;->M:Landroid/widget/TextView;

    .line 1184
    .line 1185
    iget-object v12, v1, Lef1;->e:Ljava/lang/String;

    .line 1186
    .line 1187
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v9

    .line 1194
    iget-object v9, v9, Lbe1;->K:Landroid/widget/TextView;

    .line 1195
    .line 1196
    iget-object v12, v1, Lef1;->f:Ljava/lang/String;

    .line 1197
    .line 1198
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v12

    .line 1202
    const v13, 0x7f130115

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v12

    .line 1209
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v9

    .line 1216
    iget-object v9, v9, Lbe1;->K:Landroid/widget/TextView;

    .line 1217
    .line 1218
    invoke-static {v9, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v9

    .line 1225
    iget-object v9, v9, Lbe1;->r:Landroid/view/View;

    .line 1226
    .line 1227
    invoke-static {v9, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v9

    .line 1234
    iget-object v9, v9, Lbe1;->L:Landroid/widget/TextView;

    .line 1235
    .line 1236
    invoke-static {v9, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v9

    .line 1243
    iget-object v9, v9, Lbe1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 1244
    .line 1245
    xor-int/lit8 v12, v10, 0x1

    .line 1246
    .line 1247
    invoke-static {v9, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v9

    .line 1254
    iget-object v9, v9, Lbe1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 1255
    .line 1256
    invoke-static {v9, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v9

    .line 1263
    iget-object v9, v9, Lbe1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 1264
    .line 1265
    xor-int/lit8 v12, v8, 0x1

    .line 1266
    .line 1267
    invoke-virtual {v9, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v9

    .line 1274
    iget-object v9, v9, Lbe1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 1275
    .line 1276
    invoke-virtual {v9, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v9

    .line 1283
    check-cast v9, Lge1;

    .line 1284
    .line 1285
    iget-boolean v13, v9, Lge1;->m:Z

    .line 1286
    .line 1287
    if-ne v13, v8, :cond_24

    .line 1288
    .line 1289
    goto :goto_11

    .line 1290
    :cond_24
    iput-boolean v8, v9, Lge1;->m:Z

    .line 1291
    .line 1292
    invoke-virtual {v9}, Lhg6;->e()V

    .line 1293
    .line 1294
    .line 1295
    :goto_11
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v7

    .line 1299
    check-cast v7, Lge1;

    .line 1300
    .line 1301
    new-instance v9, Ljava/util/ArrayList;

    .line 1302
    .line 1303
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .line 1305
    .line 1306
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v13

    .line 1310
    :cond_25
    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v14

    .line 1314
    if-eqz v14, :cond_26

    .line 1315
    .line 1316
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v14

    .line 1320
    move-object v15, v14

    .line 1321
    check-cast v15, Lmd1;

    .line 1322
    .line 1323
    iget-boolean v15, v15, Lmd1;->b:Z

    .line 1324
    .line 1325
    if-eqz v15, :cond_25

    .line 1326
    .line 1327
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    goto :goto_12

    .line 1331
    :cond_26
    new-instance v13, Ljava/util/ArrayList;

    .line 1332
    .line 1333
    invoke-static {v9, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1334
    .line 1335
    .line 1336
    move-result v2

    .line 1337
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1345
    .line 1346
    .line 1347
    move-result v9

    .line 1348
    if-eqz v9, :cond_27

    .line 1349
    .line 1350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v9

    .line 1354
    check-cast v9, Lmd1;

    .line 1355
    .line 1356
    invoke-virtual {v9}, Lmd1;->getItemId()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v9

    .line 1360
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    goto :goto_13

    .line 1364
    :cond_27
    invoke-static {v13}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    move v9, v10

    .line 1369
    new-instance v10, Lfm7;

    .line 1370
    .line 1371
    const/4 v13, 0x0

    .line 1372
    const/4 v14, 0x0

    .line 1373
    const/16 v15, 0x1c

    .line 1374
    .line 1375
    move/from16 v20, v12

    .line 1376
    .line 1377
    move-object v12, v2

    .line 1378
    move/from16 v2, v20

    .line 1379
    .line 1380
    invoke-direct/range {v10 .. v15}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v7, v10, v5}, Lgm7;->w(Lfm7;Z)V

    .line 1384
    .line 1385
    .line 1386
    iget-boolean v1, v1, Lef1;->j:Z

    .line 1387
    .line 1388
    new-instance v7, Ljava/util/ArrayList;

    .line 1389
    .line 1390
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v10

    .line 1397
    :cond_28
    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1398
    .line 1399
    .line 1400
    move-result v12

    .line 1401
    if-eqz v12, :cond_29

    .line 1402
    .line 1403
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v12

    .line 1407
    move-object v13, v12

    .line 1408
    check-cast v13, Lmd1;

    .line 1409
    .line 1410
    iget-object v13, v13, Lmd1;->a:Lqd1;

    .line 1411
    .line 1412
    iget-boolean v13, v13, Lqd1;->d:Z

    .line 1413
    .line 1414
    if-eqz v13, :cond_28

    .line 1415
    .line 1416
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    .line 1418
    .line 1419
    goto :goto_14

    .line 1420
    :cond_29
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1421
    .line 1422
    .line 1423
    move-result v10

    .line 1424
    if-eqz v10, :cond_2a

    .line 1425
    .line 1426
    move v12, v5

    .line 1427
    goto :goto_16

    .line 1428
    :cond_2a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v10

    .line 1432
    move v12, v5

    .line 1433
    :cond_2b
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v13

    .line 1437
    if-eqz v13, :cond_2d

    .line 1438
    .line 1439
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v13

    .line 1443
    check-cast v13, Lmd1;

    .line 1444
    .line 1445
    iget-boolean v13, v13, Lmd1;->b:Z

    .line 1446
    .line 1447
    if-eqz v13, :cond_2b

    .line 1448
    .line 1449
    add-int/lit8 v12, v12, 0x1

    .line 1450
    .line 1451
    if-ltz v12, :cond_2c

    .line 1452
    .line 1453
    goto :goto_15

    .line 1454
    :cond_2c
    invoke-static {}, Lfl1;->E0()V

    .line 1455
    .line 1456
    .line 1457
    throw v6

    .line 1458
    :cond_2d
    :goto_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1459
    .line 1460
    .line 1461
    move-result v7

    .line 1462
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v10

    .line 1466
    iget-object v10, v10, Lbe1;->T:Landroid/widget/TextView;

    .line 1467
    .line 1468
    const v13, 0x7f130155

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v10

    .line 1478
    iget-object v10, v10, Lbe1;->S:Landroid/widget/TextView;

    .line 1479
    .line 1480
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v13

    .line 1484
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v7

    .line 1488
    filled-new-array {v13, v7}, [Ljava/lang/Object;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v7

    .line 1492
    const v13, 0x7f130147

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v7

    .line 1499
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v7

    .line 1509
    iget-object v7, v7, Lbe1;->n:Lcom/google/android/material/button/MaterialButton;

    .line 1510
    .line 1511
    if-lez v12, :cond_2e

    .line 1512
    .line 1513
    if-nez v8, :cond_2e

    .line 1514
    .line 1515
    if-eqz v9, :cond_2e

    .line 1516
    .line 1517
    move v10, v3

    .line 1518
    goto :goto_17

    .line 1519
    :cond_2e
    move v10, v5

    .line 1520
    :goto_17
    invoke-virtual {v7, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v7

    .line 1527
    iget-object v7, v7, Lbe1;->n:Lcom/google/android/material/button/MaterialButton;

    .line 1528
    .line 1529
    invoke-static {v7, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v2

    .line 1536
    iget-object v2, v2, Lbe1;->p:Lcom/google/android/material/button/MaterialButton;

    .line 1537
    .line 1538
    invoke-static {v2, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v2

    .line 1545
    iget-object v2, v2, Lbe1;->p:Lcom/google/android/material/button/MaterialButton;

    .line 1546
    .line 1547
    if-eqz v8, :cond_2f

    .line 1548
    .line 1549
    if-nez v1, :cond_2f

    .line 1550
    .line 1551
    move v7, v3

    .line 1552
    goto :goto_18

    .line 1553
    :cond_2f
    move v7, v5

    .line 1554
    :goto_18
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    iget-object v2, v2, Lbe1;->p:Lcom/google/android/material/button/MaterialButton;

    .line 1562
    .line 1563
    if-eqz v1, :cond_30

    .line 1564
    .line 1565
    const v1, 0x7f1300f3

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v1

    .line 1572
    goto :goto_19

    .line 1573
    :cond_30
    const v1, 0x7f1300f1

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v1

    .line 1580
    :goto_19
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    .line 1582
    .line 1583
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v1

    .line 1587
    if-eqz v1, :cond_31

    .line 1588
    .line 1589
    move v2, v5

    .line 1590
    goto :goto_1b

    .line 1591
    :cond_31
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v1

    .line 1595
    move v2, v5

    .line 1596
    :cond_32
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1597
    .line 1598
    .line 1599
    move-result v7

    .line 1600
    if-eqz v7, :cond_34

    .line 1601
    .line 1602
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v7

    .line 1606
    check-cast v7, Lmd1;

    .line 1607
    .line 1608
    invoke-virtual {v7}, Lmd1;->b()Z

    .line 1609
    .line 1610
    .line 1611
    move-result v7

    .line 1612
    if-eqz v7, :cond_32

    .line 1613
    .line 1614
    add-int/lit8 v2, v2, 0x1

    .line 1615
    .line 1616
    if-ltz v2, :cond_33

    .line 1617
    .line 1618
    goto :goto_1a

    .line 1619
    :cond_33
    invoke-static {}, Lfl1;->E0()V

    .line 1620
    .line 1621
    .line 1622
    throw v6

    .line 1623
    :cond_34
    :goto_1b
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 1624
    .line 1625
    .line 1626
    move-result v1

    .line 1627
    if-eqz v1, :cond_36

    .line 1628
    .line 1629
    :cond_35
    move v1, v5

    .line 1630
    goto :goto_1c

    .line 1631
    :cond_36
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v1

    .line 1635
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1636
    .line 1637
    .line 1638
    move-result v7

    .line 1639
    if-eqz v7, :cond_35

    .line 1640
    .line 1641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v7

    .line 1645
    check-cast v7, Lmd1;

    .line 1646
    .line 1647
    invoke-virtual {v7}, Lmd1;->b()Z

    .line 1648
    .line 1649
    .line 1650
    move-result v10

    .line 1651
    if-eqz v10, :cond_37

    .line 1652
    .line 1653
    iget-boolean v7, v7, Lmd1;->b:Z

    .line 1654
    .line 1655
    if-nez v7, :cond_37

    .line 1656
    .line 1657
    move v1, v3

    .line 1658
    :goto_1c
    if-lez v2, :cond_38

    .line 1659
    .line 1660
    if-nez v8, :cond_38

    .line 1661
    .line 1662
    move v2, v3

    .line 1663
    goto :goto_1d

    .line 1664
    :cond_38
    move v2, v5

    .line 1665
    :goto_1d
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v7

    .line 1669
    iget-object v7, v7, Lbe1;->q:Lcom/google/android/material/button/MaterialButton;

    .line 1670
    .line 1671
    invoke-static {v7, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v7

    .line 1678
    iget-object v7, v7, Lbe1;->q:Lcom/google/android/material/button/MaterialButton;

    .line 1679
    .line 1680
    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    iget-object v2, v2, Lbe1;->q:Lcom/google/android/material/button/MaterialButton;

    .line 1688
    .line 1689
    if-eqz v1, :cond_39

    .line 1690
    .line 1691
    const v7, 0x7f130146

    .line 1692
    .line 1693
    .line 1694
    goto :goto_1e

    .line 1695
    :cond_39
    const v7, 0x7f130119

    .line 1696
    .line 1697
    .line 1698
    :goto_1e
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v2

    .line 1705
    iget-object v2, v2, Lbe1;->q:Lcom/google/android/material/button/MaterialButton;

    .line 1706
    .line 1707
    if-eqz v1, :cond_3a

    .line 1708
    .line 1709
    const v1, 0x7f080104

    .line 1710
    .line 1711
    .line 1712
    goto :goto_1f

    .line 1713
    :cond_3a
    const v1, 0x7f08010b

    .line 1714
    .line 1715
    .line 1716
    :goto_1f
    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 1717
    .line 1718
    .line 1719
    new-instance v1, Ljava/util/ArrayList;

    .line 1720
    .line 1721
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    .line 1723
    .line 1724
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v2

    .line 1728
    :cond_3b
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1729
    .line 1730
    .line 1731
    move-result v10

    .line 1732
    if-eqz v10, :cond_3c

    .line 1733
    .line 1734
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v10

    .line 1738
    move-object v11, v10

    .line 1739
    check-cast v11, Lmd1;

    .line 1740
    .line 1741
    iget-object v12, v11, Lmd1;->a:Lqd1;

    .line 1742
    .line 1743
    iget-boolean v12, v12, Lqd1;->d:Z

    .line 1744
    .line 1745
    if-eqz v12, :cond_3b

    .line 1746
    .line 1747
    iget-boolean v11, v11, Lmd1;->b:Z

    .line 1748
    .line 1749
    if-eqz v11, :cond_3b

    .line 1750
    .line 1751
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    .line 1753
    .line 1754
    goto :goto_20

    .line 1755
    :cond_3c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1756
    .line 1757
    .line 1758
    move-result v2

    .line 1759
    if-eqz v2, :cond_3d

    .line 1760
    .line 1761
    move v10, v5

    .line 1762
    goto :goto_22

    .line 1763
    :cond_3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v2

    .line 1767
    move v10, v5

    .line 1768
    :cond_3e
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1769
    .line 1770
    .line 1771
    move-result v11

    .line 1772
    if-eqz v11, :cond_40

    .line 1773
    .line 1774
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v11

    .line 1778
    check-cast v11, Lmd1;

    .line 1779
    .line 1780
    iget-object v11, v11, Lmd1;->c:Lrd1;

    .line 1781
    .line 1782
    sget-object v12, Lrd1;->PASSED:Lrd1;

    .line 1783
    .line 1784
    if-ne v11, v12, :cond_3e

    .line 1785
    .line 1786
    add-int/lit8 v10, v10, 0x1

    .line 1787
    .line 1788
    if-ltz v10, :cond_3f

    .line 1789
    .line 1790
    goto :goto_21

    .line 1791
    :cond_3f
    invoke-static {}, Lfl1;->E0()V

    .line 1792
    .line 1793
    .line 1794
    throw v6

    .line 1795
    :cond_40
    :goto_22
    new-instance v11, Ljava/util/ArrayList;

    .line 1796
    .line 1797
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v2

    .line 1804
    :cond_41
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1805
    .line 1806
    .line 1807
    move-result v12

    .line 1808
    if-eqz v12, :cond_42

    .line 1809
    .line 1810
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v12

    .line 1814
    move-object v13, v12

    .line 1815
    check-cast v13, Lmd1;

    .line 1816
    .line 1817
    iget-object v13, v13, Lmd1;->c:Lrd1;

    .line 1818
    .line 1819
    invoke-virtual {v13}, Lrd1;->isReportableFailure()Z

    .line 1820
    .line 1821
    .line 1822
    move-result v13

    .line 1823
    if-eqz v13, :cond_41

    .line 1824
    .line 1825
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    .line 1827
    .line 1828
    goto :goto_23

    .line 1829
    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    .line 1830
    .line 1831
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v12

    .line 1838
    :cond_43
    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1839
    .line 1840
    .line 1841
    move-result v13

    .line 1842
    if-eqz v13, :cond_44

    .line 1843
    .line 1844
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v13

    .line 1848
    move-object v14, v13

    .line 1849
    check-cast v14, Lmd1;

    .line 1850
    .line 1851
    iget-object v14, v14, Lmd1;->c:Lrd1;

    .line 1852
    .line 1853
    sget-object v15, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 1854
    .line 1855
    if-ne v14, v15, :cond_43

    .line 1856
    .line 1857
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    .line 1859
    .line 1860
    goto :goto_24

    .line 1861
    :cond_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1862
    .line 1863
    .line 1864
    move-result v12

    .line 1865
    if-eqz v12, :cond_45

    .line 1866
    .line 1867
    move v13, v5

    .line 1868
    goto :goto_26

    .line 1869
    :cond_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v12

    .line 1873
    move v13, v5

    .line 1874
    :cond_46
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1875
    .line 1876
    .line 1877
    move-result v14

    .line 1878
    if-eqz v14, :cond_48

    .line 1879
    .line 1880
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v14

    .line 1884
    check-cast v14, Lmd1;

    .line 1885
    .line 1886
    iget-object v14, v14, Lmd1;->c:Lrd1;

    .line 1887
    .line 1888
    sget-object v15, Lrd1;->SKIPPED:Lrd1;

    .line 1889
    .line 1890
    if-ne v14, v15, :cond_46

    .line 1891
    .line 1892
    add-int/lit8 v13, v13, 0x1

    .line 1893
    .line 1894
    if-ltz v13, :cond_47

    .line 1895
    .line 1896
    goto :goto_25

    .line 1897
    :cond_47
    invoke-static {}, Lfl1;->E0()V

    .line 1898
    .line 1899
    .line 1900
    throw v6

    .line 1901
    :cond_48
    :goto_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v12

    .line 1905
    if-eqz v12, :cond_49

    .line 1906
    .line 1907
    move v14, v5

    .line 1908
    goto :goto_28

    .line 1909
    :cond_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v12

    .line 1913
    move v14, v5

    .line 1914
    :goto_27
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1915
    .line 1916
    .line 1917
    move-result v15

    .line 1918
    if-eqz v15, :cond_4c

    .line 1919
    .line 1920
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v15

    .line 1924
    check-cast v15, Lmd1;

    .line 1925
    .line 1926
    iget-object v15, v15, Lmd1;->c:Lrd1;

    .line 1927
    .line 1928
    sget-object v3, Lrd1;->RUNNING:Lrd1;

    .line 1929
    .line 1930
    if-ne v15, v3, :cond_4a

    .line 1931
    .line 1932
    add-int/lit8 v14, v14, 0x1

    .line 1933
    .line 1934
    if-ltz v14, :cond_4b

    .line 1935
    .line 1936
    :cond_4a
    const/4 v3, 0x1

    .line 1937
    goto :goto_27

    .line 1938
    :cond_4b
    invoke-static {}, Lfl1;->E0()V

    .line 1939
    .line 1940
    .line 1941
    throw v6

    .line 1942
    :cond_4c
    :goto_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1943
    .line 1944
    .line 1945
    move-result v3

    .line 1946
    if-eqz v3, :cond_4d

    .line 1947
    .line 1948
    move v12, v5

    .line 1949
    goto :goto_2a

    .line 1950
    :cond_4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v3

    .line 1954
    move v12, v5

    .line 1955
    :cond_4e
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1956
    .line 1957
    .line 1958
    move-result v15

    .line 1959
    if-eqz v15, :cond_50

    .line 1960
    .line 1961
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v15

    .line 1965
    check-cast v15, Lmd1;

    .line 1966
    .line 1967
    iget-object v15, v15, Lmd1;->c:Lrd1;

    .line 1968
    .line 1969
    invoke-virtual {v15}, Lrd1;->isCompleted()Z

    .line 1970
    .line 1971
    .line 1972
    move-result v15

    .line 1973
    if-eqz v15, :cond_4e

    .line 1974
    .line 1975
    add-int/lit8 v12, v12, 0x1

    .line 1976
    .line 1977
    if-ltz v12, :cond_4f

    .line 1978
    .line 1979
    goto :goto_29

    .line 1980
    :cond_4f
    invoke-static {}, Lfl1;->E0()V

    .line 1981
    .line 1982
    .line 1983
    throw v6

    .line 1984
    :cond_50
    :goto_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1985
    .line 1986
    .line 1987
    move-result v3

    .line 1988
    sub-int/2addr v3, v12

    .line 1989
    sub-int/2addr v3, v14

    .line 1990
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1991
    .line 1992
    .line 1993
    move-result v15

    .line 1994
    if-eqz v15, :cond_52

    .line 1995
    .line 1996
    :cond_51
    move v6, v5

    .line 1997
    goto :goto_2c

    .line 1998
    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v15

    .line 2002
    :goto_2b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v16

    .line 2006
    if-eqz v16, :cond_51

    .line 2007
    .line 2008
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v16

    .line 2012
    move-object/from16 v6, v16

    .line 2013
    .line 2014
    check-cast v6, Lmd1;

    .line 2015
    .line 2016
    iget-object v6, v6, Lmd1;->c:Lrd1;

    .line 2017
    .line 2018
    sget-object v7, Lrd1;->NOT_RUN:Lrd1;

    .line 2019
    .line 2020
    if-eq v6, v7, :cond_53

    .line 2021
    .line 2022
    const/4 v6, 0x1

    .line 2023
    goto :goto_2c

    .line 2024
    :cond_53
    const/4 v6, 0x0

    .line 2025
    goto :goto_2b

    .line 2026
    :goto_2c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v7

    .line 2030
    iget-object v7, v7, Lbe1;->R:Landroid/widget/TextView;

    .line 2031
    .line 2032
    if-nez v9, :cond_54

    .line 2033
    .line 2034
    const v9, 0x7f1301b5

    .line 2035
    .line 2036
    .line 2037
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v9

    .line 2041
    goto/16 :goto_2d

    .line 2042
    .line 2043
    :cond_54
    if-eqz v8, :cond_56

    .line 2044
    .line 2045
    add-int/2addr v12, v14

    .line 2046
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2047
    .line 2048
    .line 2049
    move-result v9

    .line 2050
    if-le v12, v9, :cond_55

    .line 2051
    .line 2052
    move v12, v9

    .line 2053
    :cond_55
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v9

    .line 2057
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2058
    .line 2059
    .line 2060
    move-result v10

    .line 2061
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v10

    .line 2065
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v9

    .line 2069
    const v10, 0x7f13013c

    .line 2070
    .line 2071
    .line 2072
    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v9

    .line 2076
    goto/16 :goto_2d

    .line 2077
    .line 2078
    :cond_56
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2079
    .line 2080
    .line 2081
    move-result v9

    .line 2082
    if-nez v9, :cond_57

    .line 2083
    .line 2084
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2085
    .line 2086
    .line 2087
    move-result v9

    .line 2088
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v9

    .line 2092
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2093
    .line 2094
    .line 2095
    move-result-object v10

    .line 2096
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2097
    .line 2098
    .line 2099
    move-result-object v12

    .line 2100
    filled-new-array {v9, v10, v12}, [Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v9

    .line 2104
    const v10, 0x7f130136

    .line 2105
    .line 2106
    .line 2107
    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v9

    .line 2111
    goto :goto_2d

    .line 2112
    :cond_57
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2113
    .line 2114
    .line 2115
    move-result v9

    .line 2116
    if-nez v9, :cond_58

    .line 2117
    .line 2118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2119
    .line 2120
    .line 2121
    move-result v9

    .line 2122
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v9

    .line 2126
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v10

    .line 2130
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v9

    .line 2134
    const v10, 0x7f130135

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v9

    .line 2141
    goto :goto_2d

    .line 2142
    :cond_58
    if-eqz v6, :cond_59

    .line 2143
    .line 2144
    if-lez v3, :cond_59

    .line 2145
    .line 2146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v9

    .line 2150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v10

    .line 2154
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v9

    .line 2158
    const v10, 0x7f130139

    .line 2159
    .line 2160
    .line 2161
    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v9

    .line 2165
    goto :goto_2d

    .line 2166
    :cond_59
    if-eqz v6, :cond_5a

    .line 2167
    .line 2168
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v9

    .line 2172
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v10

    .line 2176
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v9

    .line 2180
    const v10, 0x7f13013a

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v9

    .line 2187
    goto :goto_2d

    .line 2188
    :cond_5a
    const v9, 0x7f13013b

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v9

    .line 2195
    :goto_2d
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    .line 2197
    .line 2198
    const-string v7, ""

    .line 2199
    .line 2200
    if-eqz v8, :cond_5e

    .line 2201
    .line 2202
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v1

    .line 2206
    :cond_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2207
    .line 2208
    .line 2209
    move-result v9

    .line 2210
    if-eqz v9, :cond_5c

    .line 2211
    .line 2212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v9

    .line 2216
    move-object v10, v9

    .line 2217
    check-cast v10, Lmd1;

    .line 2218
    .line 2219
    iget-object v10, v10, Lmd1;->c:Lrd1;

    .line 2220
    .line 2221
    sget-object v12, Lrd1;->RUNNING:Lrd1;

    .line 2222
    .line 2223
    if-ne v10, v12, :cond_5b

    .line 2224
    .line 2225
    goto :goto_2e

    .line 2226
    :cond_5c
    const/4 v9, 0x0

    .line 2227
    :goto_2e
    check-cast v9, Lmd1;

    .line 2228
    .line 2229
    if-eqz v9, :cond_5e

    .line 2230
    .line 2231
    iget-object v1, v9, Lmd1;->a:Lqd1;

    .line 2232
    .line 2233
    iget v1, v1, Lqd1;->b:I

    .line 2234
    .line 2235
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v1

    .line 2239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2240
    .line 2241
    .line 2242
    iget-object v9, v9, Lmd1;->e:Ljava/lang/String;

    .line 2243
    .line 2244
    new-instance v10, Lod1;

    .line 2245
    .line 2246
    if-nez v9, :cond_5d

    .line 2247
    .line 2248
    move-object v9, v7

    .line 2249
    :cond_5d
    invoke-direct {v10, v1, v9}, Lod1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    .line 2251
    .line 2252
    goto :goto_2f

    .line 2253
    :cond_5e
    const/4 v10, 0x0

    .line 2254
    :goto_2f
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2255
    .line 2256
    .line 2257
    move-result v1

    .line 2258
    if-nez v1, :cond_5f

    .line 2259
    .line 2260
    new-instance v15, Lwd1;

    .line 2261
    .line 2262
    invoke-direct {v15, v0, v5}, Lwd1;-><init>(Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;I)V

    .line 2263
    .line 2264
    .line 2265
    const/16 v16, 0x1e

    .line 2266
    .line 2267
    const-string v12, "\n"

    .line 2268
    .line 2269
    const/4 v13, 0x0

    .line 2270
    const/4 v14, 0x0

    .line 2271
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v1

    .line 2275
    move-object v14, v2

    .line 2276
    goto :goto_31

    .line 2277
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2278
    .line 2279
    .line 2280
    move-result v1

    .line 2281
    if-nez v1, :cond_60

    .line 2282
    .line 2283
    new-instance v1, Lk3;

    .line 2284
    .line 2285
    const/4 v9, 0x6

    .line 2286
    invoke-direct {v1, v0, v9}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 2287
    .line 2288
    .line 2289
    const/16 v19, 0x1e

    .line 2290
    .line 2291
    const-string v15, "\n"

    .line 2292
    .line 2293
    const/16 v16, 0x0

    .line 2294
    .line 2295
    const/16 v17, 0x0

    .line 2296
    .line 2297
    move-object/from16 v18, v1

    .line 2298
    .line 2299
    move-object v14, v2

    .line 2300
    invoke-static/range {v14 .. v19}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v1

    .line 2304
    goto :goto_31

    .line 2305
    :cond_60
    move-object v14, v2

    .line 2306
    if-eqz v8, :cond_62

    .line 2307
    .line 2308
    if-eqz v10, :cond_61

    .line 2309
    .line 2310
    iget-object v1, v10, Lod1;->a:Ljava/lang/String;

    .line 2311
    .line 2312
    goto :goto_30

    .line 2313
    :cond_61
    const/4 v1, 0x0

    .line 2314
    :goto_30
    if-nez v1, :cond_63

    .line 2315
    .line 2316
    move-object v1, v7

    .line 2317
    goto :goto_31

    .line 2318
    :cond_62
    const/4 v1, 0x0

    .line 2319
    :cond_63
    :goto_31
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v2

    .line 2323
    iget-object v2, v2, Lbe1;->P:Landroid/widget/TextView;

    .line 2324
    .line 2325
    if-eqz v8, :cond_64

    .line 2326
    .line 2327
    const/4 v9, 0x1

    .line 2328
    goto :goto_32

    .line 2329
    :cond_64
    const v9, 0x7fffffff

    .line 2330
    .line 2331
    .line 2332
    :goto_32
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2333
    .line 2334
    .line 2335
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v2

    .line 2339
    iget-object v2, v2, Lbe1;->P:Landroid/widget/TextView;

    .line 2340
    .line 2341
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v2

    .line 2348
    iget-object v2, v2, Lbe1;->P:Landroid/widget/TextView;

    .line 2349
    .line 2350
    if-nez v8, :cond_66

    .line 2351
    .line 2352
    if-eqz v1, :cond_65

    .line 2353
    .line 2354
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2355
    .line 2356
    .line 2357
    move-result v1

    .line 2358
    if-eqz v1, :cond_66

    .line 2359
    .line 2360
    :cond_65
    move v1, v5

    .line 2361
    goto :goto_33

    .line 2362
    :cond_66
    const/4 v1, 0x1

    .line 2363
    :goto_33
    invoke-static {v2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 2364
    .line 2365
    .line 2366
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v1

    .line 2370
    iget-object v1, v1, Lbe1;->Q:Landroid/widget/TextView;

    .line 2371
    .line 2372
    if-eqz v10, :cond_67

    .line 2373
    .line 2374
    iget-object v2, v10, Lod1;->b:Ljava/lang/String;

    .line 2375
    .line 2376
    goto :goto_34

    .line 2377
    :cond_67
    const/4 v2, 0x0

    .line 2378
    :goto_34
    if-nez v2, :cond_68

    .line 2379
    .line 2380
    goto :goto_35

    .line 2381
    :cond_68
    move-object v7, v2

    .line 2382
    :goto_35
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v1

    .line 2389
    iget-object v1, v1, Lbe1;->Q:Landroid/widget/TextView;

    .line 2390
    .line 2391
    invoke-static {v1, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 2392
    .line 2393
    .line 2394
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v1

    .line 2398
    iget-object v1, v1, Lbe1;->k:Lcom/google/android/material/button/MaterialButton;

    .line 2399
    .line 2400
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2401
    .line 2402
    .line 2403
    move-result v2

    .line 2404
    if-nez v2, :cond_69

    .line 2405
    .line 2406
    if-nez v8, :cond_69

    .line 2407
    .line 2408
    const/4 v2, 0x1

    .line 2409
    goto :goto_36

    .line 2410
    :cond_69
    move v2, v5

    .line 2411
    :goto_36
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 2412
    .line 2413
    .line 2414
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2415
    .line 2416
    .line 2417
    move-result v1

    .line 2418
    if-nez v1, :cond_6a

    .line 2419
    .line 2420
    sget-object v1, Lrd1;->FAILED:Lrd1;

    .line 2421
    .line 2422
    goto :goto_37

    .line 2423
    :cond_6a
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2424
    .line 2425
    .line 2426
    move-result v1

    .line 2427
    if-nez v1, :cond_6b

    .line 2428
    .line 2429
    sget-object v1, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 2430
    .line 2431
    goto :goto_37

    .line 2432
    :cond_6b
    if-eqz v8, :cond_6c

    .line 2433
    .line 2434
    sget-object v1, Lrd1;->RUNNING:Lrd1;

    .line 2435
    .line 2436
    goto :goto_37

    .line 2437
    :cond_6c
    if-eqz v6, :cond_6d

    .line 2438
    .line 2439
    if-nez v3, :cond_6d

    .line 2440
    .line 2441
    sget-object v1, Lrd1;->PASSED:Lrd1;

    .line 2442
    .line 2443
    goto :goto_37

    .line 2444
    :cond_6d
    if-eqz v6, :cond_6e

    .line 2445
    .line 2446
    sget-object v1, Lrd1;->SKIPPED:Lrd1;

    .line 2447
    .line 2448
    goto :goto_37

    .line 2449
    :cond_6e
    sget-object v1, Lrd1;->NOT_RUN:Lrd1;

    .line 2450
    .line 2451
    :goto_37
    sget-object v2, Lrd1;->RUNNING:Lrd1;

    .line 2452
    .line 2453
    if-ne v1, v2, :cond_6f

    .line 2454
    .line 2455
    const/4 v3, 0x1

    .line 2456
    goto :goto_38

    .line 2457
    :cond_6f
    move v3, v5

    .line 2458
    :goto_38
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v2

    .line 2462
    iget-object v2, v2, Lbe1;->x:Landroid/widget/ImageView;

    .line 2463
    .line 2464
    if-eqz v3, :cond_70

    .line 2465
    .line 2466
    const/4 v5, 0x4

    .line 2467
    :cond_70
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2468
    .line 2469
    .line 2470
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v2

    .line 2474
    iget-object v2, v2, Lbe1;->y:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 2475
    .line 2476
    invoke-static {v2, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 2477
    .line 2478
    .line 2479
    if-eqz v3, :cond_71

    .line 2480
    .line 2481
    goto :goto_3c

    .line 2482
    :cond_71
    sget-object v2, Lyd1;->a:[I

    .line 2483
    .line 2484
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 2485
    .line 2486
    .line 2487
    move-result v3

    .line 2488
    aget v3, v2, v3

    .line 2489
    .line 2490
    const v5, 0x7f08013a

    .line 2491
    .line 2492
    .line 2493
    const v6, 0x7f08015b

    .line 2494
    .line 2495
    .line 2496
    packed-switch v3, :pswitch_data_1

    .line 2497
    .line 2498
    .line 2499
    invoke-static {}, Lq;->j()V

    .line 2500
    .line 2501
    .line 2502
    :goto_39
    const/4 v4, 0x0

    .line 2503
    goto :goto_3c

    .line 2504
    :pswitch_5
    move v7, v6

    .line 2505
    goto :goto_3a

    .line 2506
    :pswitch_6
    move v7, v5

    .line 2507
    goto :goto_3a

    .line 2508
    :pswitch_7
    const v7, 0x7f080104

    .line 2509
    .line 2510
    .line 2511
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 2512
    .line 2513
    .line 2514
    move-result v1

    .line 2515
    aget v1, v2, v1

    .line 2516
    .line 2517
    const v2, 0x7f060023

    .line 2518
    .line 2519
    .line 2520
    packed-switch v1, :pswitch_data_2

    .line 2521
    .line 2522
    .line 2523
    invoke-static {}, Lq;->j()V

    .line 2524
    .line 2525
    .line 2526
    goto :goto_39

    .line 2527
    :pswitch_8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 2528
    .line 2529
    .line 2530
    move-result v1

    .line 2531
    goto :goto_3b

    .line 2532
    :pswitch_9
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 2533
    .line 2534
    .line 2535
    move-result v1

    .line 2536
    goto :goto_3b

    .line 2537
    :pswitch_a
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 2538
    .line 2539
    .line 2540
    move-result v1

    .line 2541
    goto :goto_3b

    .line 2542
    :pswitch_b
    invoke-static {v0}, Lsz8;->w(Landroid/content/Context;)I

    .line 2543
    .line 2544
    .line 2545
    move-result v1

    .line 2546
    goto :goto_3b

    .line 2547
    :pswitch_c
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 2548
    .line 2549
    .line 2550
    move-result v1

    .line 2551
    goto :goto_3b

    .line 2552
    :pswitch_d
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 2553
    .line 2554
    .line 2555
    move-result v1

    .line 2556
    :goto_3b
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v2

    .line 2560
    iget-object v2, v2, Lbe1;->x:Landroid/widget/ImageView;

    .line 2561
    .line 2562
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2563
    .line 2564
    .line 2565
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->U()Lbe1;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v0

    .line 2569
    iget-object v0, v0, Lbe1;->x:Landroid/widget/ImageView;

    .line 2570
    .line 2571
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2572
    .line 2573
    .line 2574
    :goto_3c
    return-object v4

    .line 2575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
