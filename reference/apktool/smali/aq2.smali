.class public final Laq2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Laq2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Laq2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Laq2;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Loa9;

    .line 13
    .line 14
    iget-object v1, v0, Loa9;->d:Ldq0;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ldq0;->r(I)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lle9;->k:Lyq0;

    .line 20
    .line 21
    const/16 v3, 0x18

    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Ldq0;->q(ILyq0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Loa9;->c(Lyq0;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Ldr8;

    .line 34
    .line 35
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Ldr8;->c:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, v1, Ldr8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    iget-object v4, v1, Ldr8;->f:Ljava/nio/channels/WritableByteChannel;

    .line 54
    .line 55
    invoke-interface {v4, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_1
    iget-object v0, v1, Ldr8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge v3, v0, :cond_2

    .line 68
    .line 69
    iget-object v0, v1, Ldr8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    iget-object v4, v1, Ldr8;->f:Ljava/nio/channels/WritableByteChannel;

    .line 78
    .line 79
    invoke-interface {v4, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    new-instance v3, Lbr8;

    .line 86
    .line 87
    const-string v4, "IO Exception"

    .line 88
    .line 89
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Ldr8;->e:Lar8;

    .line 93
    .line 94
    iget-object v1, v0, Lar8;->c:Lc00;

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lc00;->n(Lbr8;)V

    .line 97
    .line 98
    .line 99
    iget v1, v0, Lar8;->a:I

    .line 100
    .line 101
    if-ne v1, v2, :cond_1

    .line 102
    .line 103
    invoke-virtual {v0}, Lar8;->a()V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {v0}, Lar8;->b()V

    .line 107
    .line 108
    .line 109
    :catch_1
    :cond_2
    return-void

    .line 110
    :pswitch_1
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 123
    .line 124
    if-eqz v1, :cond_f

    .line 125
    .line 126
    check-cast v1, Lcf2;

    .line 127
    .line 128
    iget-wide v4, v1, Lng6;->d:J

    .line 129
    .line 130
    iget-object v6, v1, Lcf2;->h:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    iget-object v8, v1, Lcf2;->j:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    iget-object v10, v1, Lcf2;->k:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    iget-object v12, v1, Lcf2;->i:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eqz v7, :cond_3

    .line 155
    .line 156
    if-eqz v9, :cond_3

    .line 157
    .line 158
    if-eqz v13, :cond_3

    .line 159
    .line 160
    if-eqz v11, :cond_3

    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-eqz v15, :cond_4

    .line 173
    .line 174
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    check-cast v15, Lfh6;

    .line 179
    .line 180
    iget-object v2, v15, Lfh6;->a:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object/from16 p0, v6

    .line 187
    .line 188
    iget-object v6, v1, Lcf2;->q:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    move/from16 v16, v7

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    new-instance v7, Lve2;

    .line 205
    .line 206
    invoke-direct {v7, v1, v15, v2, v3}, Lve2;-><init>(Lcf2;Lfh6;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 214
    .line 215
    .line 216
    move-object/from16 v6, p0

    .line 217
    .line 218
    move/from16 v7, v16

    .line 219
    .line 220
    const/4 v2, 0x3

    .line 221
    const/4 v3, 0x0

    .line 222
    goto :goto_3

    .line 223
    :cond_4
    move-object/from16 p0, v6

    .line 224
    .line 225
    move/from16 v16, v7

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 228
    .line 229
    .line 230
    if-nez v9, :cond_6

    .line 231
    .line 232
    new-instance v2, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    .line 239
    .line 240
    iget-object v3, v1, Lcf2;->m:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 246
    .line 247
    .line 248
    new-instance v3, Lte2;

    .line 249
    .line 250
    const/4 v6, 0x0

    .line 251
    invoke-direct {v3, v6, v1, v2}, Lte2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    if-nez v16, :cond_5

    .line 255
    .line 256
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Lbf2;

    .line 261
    .line 262
    iget-object v2, v2, Lbf2;->a:Lfh6;

    .line 263
    .line 264
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 265
    .line 266
    sget-object v6, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 267
    .line 268
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_5
    invoke-virtual {v3}, Lte2;->run()V

    .line 273
    .line 274
    .line 275
    :cond_6
    :goto_4
    if-nez v11, :cond_8

    .line 276
    .line 277
    new-instance v2, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Lcf2;->n:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 291
    .line 292
    .line 293
    new-instance v3, Lue2;

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    invoke-direct {v3, v6, v1, v2}, Lue2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    if-nez v16, :cond_7

    .line 300
    .line 301
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Laf2;

    .line 306
    .line 307
    iget-object v2, v2, Laf2;->a:Lfh6;

    .line 308
    .line 309
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 310
    .line 311
    sget-object v6, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 312
    .line 313
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_7
    invoke-virtual {v3}, Lue2;->run()V

    .line 318
    .line 319
    .line 320
    :cond_8
    :goto_5
    if-nez v13, :cond_e

    .line 321
    .line 322
    new-instance v2, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    .line 329
    .line 330
    iget-object v3, v1, Lcf2;->l:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 336
    .line 337
    .line 338
    new-instance v3, Li8;

    .line 339
    .line 340
    const/4 v6, 0x3

    .line 341
    invoke-direct {v3, v6, v1, v2}, Li8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    if-eqz v16, :cond_a

    .line 345
    .line 346
    if-eqz v9, :cond_a

    .line 347
    .line 348
    if-nez v11, :cond_9

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_9
    invoke-virtual {v3}, Li8;->run()V

    .line 352
    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_a
    :goto_6
    const-wide/16 v6, 0x0

    .line 356
    .line 357
    if-nez v16, :cond_b

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_b
    move-wide v4, v6

    .line 361
    :goto_7
    if-nez v9, :cond_c

    .line 362
    .line 363
    iget-wide v8, v1, Lng6;->e:J

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_c
    move-wide v8, v6

    .line 367
    :goto_8
    if-nez v11, :cond_d

    .line 368
    .line 369
    iget-wide v6, v1, Lng6;->f:J

    .line 370
    .line 371
    :cond_d
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 372
    .line 373
    .line 374
    move-result-wide v6

    .line 375
    add-long/2addr v6, v4

    .line 376
    const/4 v1, 0x0

    .line 377
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Lfh6;

    .line 382
    .line 383
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 384
    .line 385
    sget-object v4, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 386
    .line 387
    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 388
    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_e
    :goto_9
    const/4 v1, 0x0

    .line 392
    goto :goto_b

    .line 393
    :cond_f
    :goto_a
    move v1, v3

    .line 394
    :goto_b
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->D0:Z

    .line 395
    .line 396
    return-void

    .line 397
    :pswitch_3
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v0, Lky4;

    .line 400
    .line 401
    iget-object v1, v0, Lky4;->c:Lbq2;

    .line 402
    .line 403
    if-eqz v1, :cond_10

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_10

    .line 410
    .line 411
    iget-object v1, v0, Lky4;->c:Lbq2;

    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    iget-object v2, v0, Lky4;->c:Lbq2;

    .line 418
    .line 419
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-le v1, v2, :cond_10

    .line 424
    .line 425
    iget-object v1, v0, Lky4;->c:Lbq2;

    .line 426
    .line 427
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    iget v2, v0, Lky4;->x:I

    .line 432
    .line 433
    if-gt v1, v2, :cond_10

    .line 434
    .line 435
    iget-object v1, v0, Lky4;->R:Lqo;

    .line 436
    .line 437
    const/4 v2, 0x2

    .line 438
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lky4;->b()V

    .line 442
    .line 443
    .line 444
    :cond_10
    return-void

    .line 445
    :pswitch_4
    iget-object v0, v0, Laq2;->b:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Lbq2;

    .line 448
    .line 449
    const/4 v1, 0x0

    .line 450
    iput-object v1, v0, Lbq2;->t:Laq2;

    .line 451
    .line 452
    invoke-virtual {v0}, Lbq2;->drawableStateChanged()V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
