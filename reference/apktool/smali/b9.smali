.class public final Lb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lb9;->a:I

    iput-object p2, p0, Lb9;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lzc2;Lbf3;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lb9;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb9;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lb9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lb9;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lb9;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lb9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lm37;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isDetached()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lm37;->n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lm37;->n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-float/2addr v3, v1

    .line 47
    invoke-virtual {p0}, Lm37;->n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v4, Lj37;

    .line 52
    .line 53
    invoke-direct {v4, p0, v3}, Lj37;-><init>(Lm37;F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 60
    .line 61
    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    .line 63
    const/high16 v3, 0x3f000000    # 0.5f

    .line 64
    .line 65
    invoke-direct {p0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v3, 0x2ee

    .line 77
    .line 78
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    :pswitch_0
    check-cast p0, Lvj6;

    .line 89
    .line 90
    iget-object p0, p0, Lvj6;->b:Lbf3;

    .line 91
    .line 92
    check-cast v3, Lwc2;

    .line 93
    .line 94
    invoke-virtual {p0, v3, v1}, Lbf3;->a(Lwc2;Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_1
    check-cast v3, Lzc2;

    .line 99
    .line 100
    iget-object v4, v3, Lzc2;->a:Lwj6;

    .line 101
    .line 102
    iget-object v6, v3, Lzc2;->b:Lgy5;

    .line 103
    .line 104
    check-cast p0, Lbf3;

    .line 105
    .line 106
    iget-object v3, v4, Lwj6;->i:Lu00;

    .line 107
    .line 108
    invoke-virtual {v3}, Lu00;->e()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const-string v5, "transaction: "

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v8, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v3, v0, v7, v8}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object v0, v4, Lwj6;->k:Lu00;

    .line 135
    .line 136
    invoke-virtual {v0}, Lu00;->e()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-array v5, v1, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-virtual {v3, v0, v7, v5}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    new-instance v5, Lzc2;

    .line 160
    .line 161
    invoke-direct {v5, v4, v6}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lhx0;

    .line 165
    .line 166
    const/16 v8, 0xe

    .line 167
    .line 168
    invoke-direct {v0, v8}, Lhx0;-><init>(I)V

    .line 169
    .line 170
    .line 171
    new-instance v8, Lbj8;

    .line 172
    .line 173
    invoke-virtual {v5}, Lzc2;->f()Lqc6;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-direct {v8, v4, v0, v9}, Lbj8;-><init>(Lwj6;Laj8;Lqc6;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v8}, Lwj6;->d(Lez2;)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Lvj6;

    .line 184
    .line 185
    iget-wide v9, v4, Lwj6;->o:J

    .line 186
    .line 187
    const-wide/16 v11, 0x1

    .line 188
    .line 189
    add-long v13, v9, v11

    .line 190
    .line 191
    iput-wide v13, v4, Lwj6;->o:J

    .line 192
    .line 193
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v6, v8, Lvj6;->a:Lgy5;

    .line 197
    .line 198
    iput-object p0, v8, Lvj6;->b:Lbf3;

    .line 199
    .line 200
    iput-object v0, v8, Lvj6;->c:Lhx0;

    .line 201
    .line 202
    iput v2, v8, Lvj6;->d:I

    .line 203
    .line 204
    iput v1, v8, Lvj6;->f:I

    .line 205
    .line 206
    iput-wide v9, v8, Lvj6;->e:J

    .line 207
    .line 208
    iput-object v7, v8, Lvj6;->k:Lwc2;

    .line 209
    .line 210
    iput-object v7, v8, Lvj6;->p:Lqn5;

    .line 211
    .line 212
    iput-object v7, v8, Lvj6;->q:Lqn5;

    .line 213
    .line 214
    iput-object v7, v8, Lvj6;->r:Lqn5;

    .line 215
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v2, v4, Lwj6;->n:Lbv7;

    .line 222
    .line 223
    invoke-virtual {v2, v6, v0}, Lbv7;->i(Lgy5;Ljava/util/ArrayList;)Lqn5;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-nez v0, :cond_3

    .line 228
    .line 229
    sget-object v0, Lqv2;->e:Lqv2;

    .line 230
    .line 231
    :cond_3
    iput-object v0, v8, Lvj6;->p:Lqn5;

    .line 232
    .line 233
    new-instance v2, Lfj5;

    .line 234
    .line 235
    invoke-direct {v2, v0}, Lfj5;-><init>(Lqn5;)V

    .line 236
    .line 237
    .line 238
    :try_start_0
    iget-object v0, p0, Lbf3;->a:Lmt3;

    .line 239
    .line 240
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Lb98;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    :try_start_1
    iget-object v2, p0, Lbf3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lb98;

    .line 254
    .line 255
    invoke-direct {v0, v1, v7}, Lb98;-><init>(ZLqn5;)V

    .line 256
    .line 257
    .line 258
    :goto_0
    if-eqz v0, :cond_4

    .line 259
    .line 260
    move-object v1, v7

    .line 261
    goto :goto_1

    .line 262
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 263
    .line 264
    const-string v2, "Transaction returned null as result"

    .line 265
    .line 266
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    const-string v2, "Caught Throwable."

    .line 272
    .line 273
    invoke-virtual {v3, v2, v0}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v2, Lb98;

    .line 281
    .line 282
    invoke-direct {v2, v1, v7}, Lb98;-><init>(ZLqn5;)V

    .line 283
    .line 284
    .line 285
    move-object v1, v0

    .line 286
    move-object v0, v2

    .line 287
    :goto_1
    iget-boolean v2, v0, Lb98;->a:Z

    .line 288
    .line 289
    if-nez v2, :cond_5

    .line 290
    .line 291
    iput-object v7, v8, Lvj6;->q:Lqn5;

    .line 292
    .line 293
    iput-object v7, v8, Lvj6;->r:Lqn5;

    .line 294
    .line 295
    iget-object v0, v8, Lvj6;->p:Lqn5;

    .line 296
    .line 297
    invoke-static {v0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    new-instance v2, Leb2;

    .line 302
    .line 303
    invoke-direct {v2, v5, v0}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 304
    .line 305
    .line 306
    new-instance v0, Lax2;

    .line 307
    .line 308
    invoke-direct {v0, p0, v1, v2}, Lax2;-><init>(Lbf3;Lwc2;Leb2;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v0}, Lwj6;->i(Ljava/lang/Runnable;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_5
    const/4 p0, 0x2

    .line 316
    iput p0, v8, Lvj6;->d:I

    .line 317
    .line 318
    iget-object p0, v4, Lwj6;->f:Lgd;

    .line 319
    .line 320
    invoke-virtual {p0, v6}, Lgd;->n(Lgy5;)Lgd;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    iget-object v1, p0, Lgd;->d:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v1, Leb8;

    .line 327
    .line 328
    iget-object v2, v1, Leb8;->b:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v2, Ljava/util/List;

    .line 331
    .line 332
    if-nez v2, :cond_6

    .line 333
    .line 334
    new-instance v2, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .line 338
    .line 339
    :cond_6
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    iput-object v2, v1, Leb8;->b:Ljava/lang/Object;

    .line 343
    .line 344
    invoke-virtual {p0}, Lgd;->o()V

    .line 345
    .line 346
    .line 347
    iget-object p0, v4, Lwj6;->b:Lis5;

    .line 348
    .line 349
    invoke-static {p0}, Lms8;->v(Laa1;)Ljava/util/HashMap;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    iget-object v7, v0, Lb98;->b:Lqn5;

    .line 354
    .line 355
    iget-object v0, v8, Lvj6;->p:Lqn5;

    .line 356
    .line 357
    new-instance v1, Lej8;

    .line 358
    .line 359
    invoke-direct {v1, v0}, Lej8;-><init>(Lqn5;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v7, v1, p0}, Lms8;->L(Lqn5;Lji8;Ljava/util/HashMap;)Lqn5;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    iput-object v7, v8, Lvj6;->q:Lqn5;

    .line 367
    .line 368
    iput-object p0, v8, Lvj6;->r:Lqn5;

    .line 369
    .line 370
    iget-wide v9, v4, Lwj6;->l:J

    .line 371
    .line 372
    add-long/2addr v11, v9

    .line 373
    iput-wide v11, v4, Lwj6;->l:J

    .line 374
    .line 375
    iput-wide v9, v8, Lvj6;->n:J

    .line 376
    .line 377
    iget-object v5, v4, Lwj6;->n:Lbv7;

    .line 378
    .line 379
    const/4 v12, 0x0

    .line 380
    const/4 v11, 0x0

    .line 381
    move-object v8, p0

    .line 382
    invoke-virtual/range {v5 .. v12}, Lbv7;->h(Lgy5;Lqn5;Lqn5;JZZ)Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {v4, p0}, Lwj6;->j(Ljava/util/List;)V

    .line 387
    .line 388
    .line 389
    iget-object p0, v4, Lwj6;->f:Lgd;

    .line 390
    .line 391
    invoke-virtual {v4, p0}, Lwj6;->k(Lgd;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, p0}, Lwj6;->o(Lgd;)V

    .line 395
    .line 396
    .line 397
    :goto_2
    return-void

    .line 398
    :pswitch_2
    check-cast p0, Landroid/app/Application;

    .line 399
    .line 400
    check-cast v3, Ld9;

    .line 401
    .line 402
    invoke-virtual {p0, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
