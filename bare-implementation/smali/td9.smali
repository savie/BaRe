.class public final Ltd9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Ltd9;->a:I

    iput-object p2, p0, Ltd9;->c:Ljava/lang/Object;

    iput-object p3, p0, Ltd9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke9;Lwq3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltd9;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ltd9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ltd9;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Ltd9;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltd9;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    sget-object v3, Llv2;->a:Llv2;

    .line 18
    .line 19
    invoke-static {v3, v0}, Ly13;->m(Lox1;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lmu4;

    .line 25
    .line 26
    invoke-virtual {v0}, Lmu4;->q()Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-object v0, p0, Ltd9;->b:Ljava/lang/Object;

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    if-lt v1, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lmu4;

    .line 43
    .line 44
    iget-object v3, v0, Lmu4;->d:Lrx1;

    .line 45
    .line 46
    invoke-static {v3, v0}, Lly8;->N(Lrx1;Lox1;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lmu4;

    .line 55
    .line 56
    iget-object v1, v0, Lmu4;->d:Lrx1;

    .line 57
    .line 58
    invoke-static {v1, v0, p0}, Lly8;->M(Lrx1;Lox1;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    iget-object p0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lmu4;

    .line 66
    .line 67
    iget-object v1, p0, Lmu4;->k:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_2
    sget-object v2, Lmu4;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    throw v0

    .line 77
    :catchall_2
    move-exception p0

    .line 78
    monitor-exit v1

    .line 79
    throw p0

    .line 80
    :pswitch_0
    invoke-static {}, Lv24;->a()Lv24;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lxh8;->c()V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Lv24;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lgh3;

    .line 98
    .line 99
    iget-object v0, v0, Lgh3;->b:Lhh3;

    .line 100
    .line 101
    iput-boolean v2, v0, Lhh3;->b:Z

    .line 102
    .line 103
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lgh3;

    .line 106
    .line 107
    iget-object v0, v0, Lgh3;->a:Landroid/view/View;

    .line 108
    .line 109
    iget-object v1, p0, Ltd9;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lgh3;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Lgh3;

    .line 123
    .line 124
    iget-object p0, p0, Lgh3;->b:Lhh3;

    .line 125
    .line 126
    iget-object p0, p0, Lhh3;->a:Ljava/util/Set;

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_1
    iget-object v0, p0, Ltd9;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Lfh7;

    .line 135
    .line 136
    iget-object v1, v0, Lfh7;->b:Lrm7;

    .line 137
    .line 138
    invoke-virtual {v1}, Lrm7;->a()V

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lfh7;->c:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Ltd9;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Ldx2;

    .line 147
    .line 148
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 149
    :try_start_4
    iget-object v2, p0, Ltd9;->c:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Ldx2;

    .line 152
    .line 153
    iget-object v2, v2, Ldx2;->a:Lcx2;

    .line 154
    .line 155
    iget-object v3, p0, Ltd9;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v3, Lfh7;

    .line 158
    .line 159
    iget-object v2, v2, Lcx2;->a:Ljava/util/ArrayList;

    .line 160
    .line 161
    new-instance v4, Lbx2;

    .line 162
    .line 163
    sget-object v5, Lxh8;->f:Lrz2;

    .line 164
    .line 165
    invoke-direct {v4, v3, v5}, Lbx2;-><init>(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    iget-object v2, p0, Ltd9;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Ldx2;

    .line 177
    .line 178
    iget-object v2, v2, Ldx2;->K:Lfx2;

    .line 179
    .line 180
    invoke-virtual {v2}, Lfx2;->a()V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Ltd9;->c:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v2, Ldx2;

    .line 186
    .line 187
    iget-object v3, p0, Ltd9;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v3, Lfh7;

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 192
    .line 193
    .line 194
    :try_start_5
    iget-object v4, v2, Ldx2;->K:Lfx2;

    .line 195
    .line 196
    iget v2, v2, Ldx2;->G:I

    .line 197
    .line 198
    invoke-virtual {v3, v4, v2}, Lfh7;->h(Lll6;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 199
    .line 200
    .line 201
    :try_start_6
    iget-object v2, p0, Ltd9;->c:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v2, Ldx2;

    .line 204
    .line 205
    iget-object v3, p0, Ltd9;->b:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v3, Lfh7;

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ldx2;->g(Lfh7;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_3
    move-exception p0

    .line 214
    goto :goto_3

    .line 215
    :catchall_4
    move-exception p0

    .line 216
    new-instance v2, Lwz0;

    .line 217
    .line 218
    invoke-direct {v2, p0}, Lwz0;-><init>(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw v2

    .line 222
    :cond_2
    :goto_2
    iget-object p0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Ldx2;

    .line 225
    .line 226
    invoke-virtual {p0}, Ldx2;->c()V

    .line 227
    .line 228
    .line 229
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 230
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 231
    return-void

    .line 232
    :catchall_5
    move-exception p0

    .line 233
    goto :goto_4

    .line 234
    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 235
    :try_start_9
    throw p0

    .line 236
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 237
    throw p0

    .line 238
    :pswitch_2
    iget-object v0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Lwq3;

    .line 241
    .line 242
    iget-object p0, p0, Ltd9;->b:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p0, Lke9;

    .line 245
    .line 246
    instance-of v3, p0, Luc9;

    .line 247
    .line 248
    if-eqz v3, :cond_4

    .line 249
    .line 250
    move-object v3, p0

    .line 251
    check-cast v3, Luc9;

    .line 252
    .line 253
    invoke-virtual {v3}, Luc9;->b()Ljava/lang/Throwable;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-nez v3, :cond_3

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_3
    invoke-virtual {v0, v3}, Lwq3;->f(Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_b

    .line 264
    .line 265
    :cond_4
    :goto_5
    :try_start_a
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 266
    .line 267
    .line 268
    move-result v3
    :try_end_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 269
    if-eqz v3, :cond_8

    .line 270
    .line 271
    :goto_6
    :try_start_b
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 275
    if-eqz v1, :cond_5

    .line 276
    .line 277
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :catchall_6
    move-exception p0

    .line 286
    goto :goto_9

    .line 287
    :catch_0
    move-exception p0

    .line 288
    goto :goto_a

    .line 289
    :cond_5
    :goto_7
    check-cast p0, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iget-object v2, v0, Lwq3;->d:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v2, Lud9;

    .line 298
    .line 299
    if-lez v1, :cond_6

    .line 300
    .line 301
    iget v1, v0, Lwq3;->a:I

    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    const-string v3, "Billing override value was set by a license tester."

    .line 311
    .line 312
    invoke-static {p0, v3}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    const/16 v3, 0x5d

    .line 317
    .line 318
    invoke-virtual {v2, v3, v1, p0}, Lud9;->G(IILyq0;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v0, Lwq3;->b:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Lyt1;

    .line 324
    .line 325
    invoke-interface {v0, p0}, Lyt1;->accept(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_6
    iget-object p0, v0, Lwq3;->c:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p0, Ljava/lang/Runnable;

    .line 332
    .line 333
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 334
    .line 335
    .line 336
    goto :goto_b

    .line 337
    :catchall_7
    move-exception p0

    .line 338
    if-nez v1, :cond_7

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_7
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 346
    .line 347
    .line 348
    :goto_8
    throw p0

    .line 349
    :catch_1
    move v1, v2

    .line 350
    goto :goto_6

    .line 351
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 352
    .line 353
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    const-string v2, "Future was expected to be done: %s"

    .line 358
    .line 359
    invoke-static {v2, p0}, Ll73;->L(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v1
    :try_end_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 367
    :goto_9
    invoke-virtual {v0, p0}, Lwq3;->f(Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    goto :goto_b

    .line 371
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {v0, p0}, Lwq3;->f(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    :goto_b
    return-void

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Ltd9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Lgd;

    .line 12
    .line 13
    const-class v1, Ltd9;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lgd;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Ltd9;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lwq3;

    .line 25
    .line 26
    new-instance v1, Lh80;

    .line 27
    .line 28
    const/16 v2, 0x12

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v1, v2, v3}, Lh80;-><init>(IZ)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lgd;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lh80;

    .line 37
    .line 38
    iput-object v1, v2, Lh80;->c:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, v0, Lgd;->d:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p0, v1, Lh80;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0}, Lgd;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
