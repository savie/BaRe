.class public final Lee5;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lee5;->l:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lee5;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lqt3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lee5;->l:I

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 15
    iput-object p1, p0, Lee5;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lee5;->l:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    check-cast v2, Lz37;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lgm7;->m(I)Ljl0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ly37;

    .line 21
    .line 22
    iget-object v1, v2, Lz37;->z:Lee5;

    .line 23
    .line 24
    iget-object v5, v1, Lee5;->m:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Lil0;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v6, v0, Ly37;->n:Ljava/util/Set;

    .line 32
    .line 33
    iget-object v7, v0, Ly37;->k:Ljava/util/List;

    .line 34
    .line 35
    new-instance v8, Lfm1;

    .line 36
    .line 37
    iget-object v9, v2, Lz37;->u:Lgm1;

    .line 38
    .line 39
    invoke-direct {v8, v9}, Lfm1;-><init>(Lgm1;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v10, v0, Ly37;->d:Z

    .line 43
    .line 44
    if-eqz v10, :cond_0

    .line 45
    .line 46
    invoke-virtual {v8}, Lfm1;->a()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v8}, Lfm1;->b()V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v8, v2, Lfh6;->a:Landroid/view/View;

    .line 54
    .line 55
    iget-boolean v10, v0, Ly37;->c:Z

    .line 56
    .line 57
    if-eqz v10, :cond_1

    .line 58
    .line 59
    const/high16 v10, 0x3f800000    # 1.0f

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/high16 v10, 0x3f000000    # 0.5f

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v2, Lz37;->v:Landroid/widget/ImageView;

    .line 68
    .line 69
    iget v10, v0, Ly37;->e:I

    .line 70
    .line 71
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v8, v2, Lz37;->w:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v10, v0, Ly37;->f:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v8, v2, Lz37;->x:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    xor-int/2addr v10, v4

    .line 88
    invoke-static {v8, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 89
    .line 90
    .line 91
    invoke-static {v8}, Lsz8;->I(Landroid/view/View;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_6

    .line 96
    .line 97
    new-instance v11, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Lx37;

    .line 117
    .line 118
    iget-object v10, v10, Lx37;->a:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v10, :cond_3

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-nez v12, :cond_4

    .line 127
    .line 128
    :cond_3
    move-object v10, v3

    .line 129
    :cond_4
    if-eqz v10, :cond_2

    .line 130
    .line 131
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 v15, 0x0

    .line 136
    const/16 v16, 0x3f

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    iget-object v3, v2, Lz37;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 149
    .line 150
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    xor-int/2addr v7, v4

    .line 155
    invoke-static {v3, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 156
    .line 157
    .line 158
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_7

    .line 163
    .line 164
    iput-boolean v4, v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->b1:Z

    .line 165
    .line 166
    sget-object v3, Ltr;->n0:Lqr;

    .line 167
    .line 168
    iget-object v10, v2, Lz37;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 169
    .line 170
    new-instance v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 171
    .line 172
    invoke-direct {v11, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Lk28;->v()Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    invoke-static {v6}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const/16 v17, 0xfe0

    .line 186
    .line 187
    const/high16 v13, 0x3f800000    # 1.0f

    .line 188
    .line 189
    const/4 v15, 0x0

    .line 190
    invoke-static/range {v10 .. v17}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 191
    .line 192
    .line 193
    :cond_7
    iget-object v3, v9, Lgm1;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 196
    .line 197
    new-instance v5, Lmj2;

    .line 198
    .line 199
    invoke-direct {v5, v4, v1, v0, v2}, Lmj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_0
    move-object/from16 v2, p1

    .line 207
    .line 208
    check-cast v2, Lde5;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lgm7;->m(I)Ljl0;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lvd5;

    .line 215
    .line 216
    iget-object v5, v2, Lde5;->A:Lee5;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object v6, v2, Lfh6;->a:Landroid/view/View;

    .line 222
    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iget-object v7, v2, Lde5;->v:Landroid/widget/ImageView;

    .line 228
    .line 229
    invoke-virtual {v0}, Lvd5;->isCloudItem()Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_8

    .line 234
    .line 235
    const v8, 0x7f080114

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    const v8, 0x7f080129

    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const-string v7, "app_locale"

    .line 249
    .line 250
    :try_start_0
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 251
    .line 252
    if-eqz v8, :cond_9

    .line 253
    .line 254
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    goto :goto_4

    .line 259
    :cond_9
    const-string v7, "prefs"

    .line 260
    .line 261
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    :goto_4
    if-eqz v3, :cond_b

    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-nez v7, :cond_a

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_a
    invoke-static {v3}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    goto :goto_6

    .line 283
    :cond_b
    :goto_5
    invoke-static {}, Lxx3;->h()Lis4;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    :goto_6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Lvd5;->getBackupTime()J

    .line 299
    .line 300
    .line 301
    move-result-wide v8

    .line 302
    const/4 v10, 0x2

    .line 303
    const/4 v11, 0x3

    .line 304
    invoke-static {v10, v11, v3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 309
    .line 310
    .line 311
    new-instance v7, Ljava/util/Date;

    .line 312
    .line 313
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Lvd5;->getTotalConversations()I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    const v8, 0x7f1305c2

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lvd5;->getTotalSms()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    const v9, 0x7f1305c4

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    const/4 v11, 0x0

    .line 376
    const/16 v12, 0x3e

    .line 377
    .line 378
    const-string v8, " \u2022 "

    .line 379
    .line 380
    const/4 v9, 0x0

    .line 381
    const/4 v10, 0x0

    .line 382
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v0}, Lvd5;->getBackupTime()J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    iget-object v8, v2, Lde5;->w:Landroid/widget/TextView;

    .line 395
    .line 396
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    iget-object v3, v2, Lde5;->x:Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    iget-object v3, v2, Lde5;->y:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v2, Lde5;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 410
    .line 411
    new-instance v6, Lce5;

    .line 412
    .line 413
    invoke-direct {v6, v5, v0, v1}, Lce5;-><init>(Lee5;Lvd5;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v2, Lde5;->z:Landroid/widget/ImageView;

    .line 420
    .line 421
    new-instance v2, Lll3;

    .line 422
    .line 423
    invoke-direct {v2, v4, v5, v0}, Lll3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)I
    .locals 0

    .line 1
    iget p0, p0, Lee5;->l:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p0, 0x7f0d0167

    .line 7
    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f0d0178

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    iget p2, p0, Lee5;->l:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p2, Lz37;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Lz37;-><init>(Lee5;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object p2

    .line 12
    :pswitch_0
    new-instance p2, Lde5;

    .line 13
    .line 14
    invoke-static {p1}, Lyz0;->a(Landroid/view/View;)Lyz0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p0, p1}, Lde5;-><init>(Lee5;Lyz0;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
