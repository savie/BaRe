.class public final Lp20;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/Set;Ljv1;I)V
    .locals 0

    .line 1
    iput p6, p0, Lp20;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp20;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lp20;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p3, p0, Lp20;->b:Z

    .line 8
    .line 9
    iput-object p4, p0, Lp20;->c:Ljava/util/Set;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 10

    .line 1
    iget p1, p0, Lp20;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp20;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lp20;->d:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v2, Lp20;

    .line 11
    .line 12
    move-object v3, v1

    .line 13
    check-cast v3, Lhf1;

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v6, p0, Lp20;->c:Ljava/util/Set;

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    iget-boolean v5, p0, Lp20;->b:Z

    .line 22
    .line 23
    move-object v7, p2

    .line 24
    invoke-direct/range {v2 .. v8}, Lp20;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/Set;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :pswitch_0
    move-object v7, p2

    .line 29
    new-instance v3, Lp20;

    .line 30
    .line 31
    move-object v4, v1

    .line 32
    check-cast v4, Ljava/util/List;

    .line 33
    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Lr20;

    .line 36
    .line 37
    move-object v8, v7

    .line 38
    iget-object v7, p0, Lp20;->c:Ljava/util/Set;

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    iget-boolean v6, p0, Lp20;->b:Z

    .line 42
    .line 43
    invoke-direct/range {v3 .. v9}, Lp20;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/Set;Ljv1;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lp20;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lp20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lp20;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lp20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lp20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lp20;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lp20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp20;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lp20;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lhf1;

    .line 15
    .line 16
    iget-object v1, v1, Lhf1;->g:Lgv7;

    .line 17
    .line 18
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Lwe1;

    .line 24
    .line 25
    iget-object v1, v0, Lp20;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v7, Lke;

    .line 30
    .line 31
    iget-object v4, v0, Lp20;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Lhf1;

    .line 34
    .line 35
    const/4 v9, 0x2

    .line 36
    invoke-direct {v7, v4, v9}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    iput-boolean v10, v3, Lwe1;->b:Z

    .line 44
    .line 45
    new-instance v11, Llh6;

    .line 46
    .line 47
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    move-object v4, v2

    .line 55
    move-object v13, v4

    .line 56
    move v6, v10

    .line 57
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v14, 0x1

    .line 62
    if-eqz v5, :cond_b

    .line 63
    .line 64
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    move-object v15, v5

    .line 69
    check-cast v15, Lqd1;

    .line 70
    .line 71
    iget-boolean v5, v3, Lwe1;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    if-eqz v5, :cond_0

    .line 74
    .line 75
    iget-object v1, v11, Llh6;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lte1;

    .line 78
    .line 79
    if-eqz v1, :cond_c

    .line 80
    .line 81
    :goto_1
    invoke-virtual {v1, v7}, Lte1;->a(Lke;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_0
    :try_start_1
    iget-object v5, v15, Lqd1;->a:Lsd1;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v8, v7, Lke;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v8, Lhf1;

    .line 94
    .line 95
    new-instance v10, Lhi;

    .line 96
    .line 97
    invoke-direct {v10, v9}, Lhi;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v8, v5, v10}, Lhf1;->j(Lhf1;Lsd1;Lmt3;)V

    .line 101
    .line 102
    .line 103
    if-eqz v13, :cond_1

    .line 104
    .line 105
    new-instance v5, Lpd1;

    .line 106
    .line 107
    sget-object v8, Lrd1;->SKIPPED:Lrd1;

    .line 108
    .line 109
    invoke-direct {v5, v8, v13, v2}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto/16 :goto_f

    .line 115
    .line 116
    :cond_1
    iget-object v5, v15, Lqd1;->a:Lsd1;

    .line 117
    .line 118
    sget-object v8, Lsd1;->INTERNET_CONNECTIVITY:Lsd1;

    .line 119
    .line 120
    sget-object v10, Lsd1;->FIREBASE_BACKEND_ACCESS:Lsd1;

    .line 121
    .line 122
    filled-new-array {v8, v10}, [Lsd1;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_3

    .line 135
    .line 136
    if-nez v4, :cond_2

    .line 137
    .line 138
    sget-object v4, Ltb1;->a:Ltb1;

    .line 139
    .line 140
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :cond_2
    move-object v5, v4

    .line 145
    move-object v10, v5

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move-object v5, v2

    .line 148
    move-object v10, v4

    .line 149
    :goto_2
    iget-object v4, v15, Lqd1;->a:Lsd1;

    .line 150
    .line 151
    if-eqz v5, :cond_5

    .line 152
    .line 153
    sget-object v8, Lud1;->a:Ljava/util/Set;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v8, Lud1;->a:Ljava/util/Set;

    .line 159
    .line 160
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_4

    .line 165
    .line 166
    move-object v8, v5

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    move-object v8, v2

    .line 169
    :goto_3
    if-eqz v8, :cond_5

    .line 170
    .line 171
    invoke-static {v11, v1, v3, v8}, Lwe1;->p(Llh6;Ljava/util/ArrayList;Lwe1;Ltb1;)Lte1;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    move-object v8, v2

    .line 177
    :goto_4
    invoke-virtual/range {v3 .. v8}, Lwe1;->A(Lsd1;Ltb1;ZLke;Lte1;)Lpd1;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    move-object v4, v10

    .line 182
    :goto_5
    iget-object v8, v15, Lqd1;->a:Lsd1;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v10, v7, Lke;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v10, Lhf1;

    .line 190
    .line 191
    new-instance v2, Lv10;

    .line 192
    .line 193
    const/4 v9, 0x3

    .line 194
    invoke-direct {v2, v5, v9}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v10, v8, v2}, Lhf1;->j(Lhf1;Lsd1;Lmt3;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v15, Lqd1;->a:Lsd1;

    .line 201
    .line 202
    sget-object v8, Lsd1;->INTERNET_CONNECTIVITY:Lsd1;

    .line 203
    .line 204
    if-ne v2, v8, :cond_6

    .line 205
    .line 206
    iget-object v9, v5, Lpd1;->a:Lrd1;

    .line 207
    .line 208
    sget-object v10, Lrd1;->PASSED:Lrd1;

    .line 209
    .line 210
    if-ne v9, v10, :cond_6

    .line 211
    .line 212
    move v6, v14

    .line 213
    :cond_6
    iget-object v5, v5, Lpd1;->a:Lrd1;

    .line 214
    .line 215
    sget-object v9, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 216
    .line 217
    if-ne v5, v9, :cond_7

    .line 218
    .line 219
    if-eq v2, v8, :cond_8

    .line 220
    .line 221
    sget-object v5, Lsd1;->FIREBASE_BACKEND_ACCESS:Lsd1;

    .line 222
    .line 223
    if-ne v2, v5, :cond_7

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_7
    const/4 v5, 0x2

    .line 227
    goto :goto_8

    .line 228
    :cond_8
    :goto_6
    sget-object v5, Lue1;->a:[I

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    aget v2, v5, v2

    .line 235
    .line 236
    if-eq v2, v14, :cond_a

    .line 237
    .line 238
    const/4 v5, 0x2

    .line 239
    if-eq v2, v5, :cond_9

    .line 240
    .line 241
    const/4 v13, 0x0

    .line 242
    goto :goto_8

    .line 243
    :cond_9
    iget-object v2, v3, Lwe1;->a:Landroid/content/Context;

    .line 244
    .line 245
    const v8, 0x7f130148

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    :goto_7
    move-object v13, v2

    .line 253
    goto :goto_8

    .line 254
    :cond_a
    const/4 v5, 0x2

    .line 255
    iget-object v2, v3, Lwe1;->a:Landroid/content/Context;

    .line 256
    .line 257
    const v8, 0x7f130149

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    goto :goto_7

    .line 265
    :goto_8
    move v9, v5

    .line 266
    const/4 v2, 0x0

    .line 267
    const/4 v10, 0x0

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_b
    iget-object v1, v11, Llh6;->a:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Lte1;

    .line 273
    .line 274
    if-eqz v1, :cond_c

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_c
    :goto_9
    iget-object v1, v0, Lp20;->d:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Lhf1;

    .line 281
    .line 282
    monitor-enter v1

    .line 283
    :try_start_2
    iget-object v2, v1, Lhf1;->h:Lef1;

    .line 284
    .line 285
    if-eqz v2, :cond_13

    .line 286
    .line 287
    const/16 v3, 0xff

    .line 288
    .line 289
    const/4 v4, 0x0

    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-static {v2, v4, v5, v5, v3}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Lhf1;->q(Lef1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    .line 297
    .line 298
    monitor-exit v1

    .line 299
    iget-object v1, v0, Lp20;->d:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v1, Lhf1;

    .line 302
    .line 303
    iput-object v4, v1, Lhf1;->i:Lbl7;

    .line 304
    .line 305
    iget-boolean v3, v0, Lp20;->b:Z

    .line 306
    .line 307
    if-eqz v3, :cond_12

    .line 308
    .line 309
    iget-object v1, v2, Lef1;->g:Ljava/util/List;

    .line 310
    .line 311
    iget-object v2, v0, Lp20;->c:Ljava/util/Set;

    .line 312
    .line 313
    new-instance v3, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    :cond_d
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_e

    .line 327
    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    move-object v5, v4

    .line 333
    check-cast v5, Lmd1;

    .line 334
    .line 335
    iget-object v5, v5, Lmd1;->a:Lqd1;

    .line 336
    .line 337
    iget-object v5, v5, Lqd1;->a:Lsd1;

    .line 338
    .line 339
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_d

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_e
    iget-object v0, v0, Lp20;->d:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v0, Lhf1;

    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_f

    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_11

    .line 369
    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    check-cast v2, Lmd1;

    .line 375
    .line 376
    iget-object v2, v2, Lmd1;->c:Lrd1;

    .line 377
    .line 378
    sget-object v4, Lrd1;->PASSED:Lrd1;

    .line 379
    .line 380
    if-ne v2, v4, :cond_10

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_10
    const/4 v14, 0x0

    .line 384
    :cond_11
    :goto_c
    const-string v4, " | "

    .line 385
    .line 386
    new-instance v7, Lgf1;

    .line 387
    .line 388
    const/4 v5, 0x0

    .line 389
    invoke-direct {v7, v5}, Lgf1;-><init>(I)V

    .line 390
    .line 391
    .line 392
    const/16 v8, 0x1e

    .line 393
    .line 394
    const/4 v5, 0x0

    .line 395
    const/4 v6, 0x0

    .line 396
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v0, v0, Lhf1;->f:Lix6;

    .line 401
    .line 402
    new-instance v2, Lbf1;

    .line 403
    .line 404
    invoke-direct {v2, v1, v14}, Lbf1;-><init>(Ljava/lang/String;Z)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_12
    iget-object v1, v1, Lhf1;->f:Lix6;

    .line 412
    .line 413
    new-instance v3, Laf1;

    .line 414
    .line 415
    iget-object v0, v0, Lp20;->c:Ljava/util/Set;

    .line 416
    .line 417
    invoke-static {v2, v0}, Lhf1;->k(Lef1;Ljava/util/Set;)Lye1;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-direct {v3, v0}, Laf1;-><init>(Lye1;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    :goto_d
    sget-object v0, Lbe8;->a:Lbe8;

    .line 428
    .line 429
    return-object v0

    .line 430
    :catchall_1
    move-exception v0

    .line 431
    goto :goto_e

    .line 432
    :cond_13
    :try_start_3
    const-string v0, "Required value was null."

    .line 433
    .line 434
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 435
    .line 436
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v2

    .line 440
    :goto_e
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    throw v0

    .line 442
    :goto_f
    iget-object v1, v11, Llh6;->a:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, Lte1;

    .line 445
    .line 446
    if-eqz v1, :cond_14

    .line 447
    .line 448
    invoke-virtual {v1, v7}, Lte1;->a(Lke;)V

    .line 449
    .line 450
    .line 451
    :cond_14
    throw v0

    .line 452
    :pswitch_0
    move-object v4, v2

    .line 453
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    iget-object v1, v0, Lp20;->d:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v1, Ljava/util/List;

    .line 459
    .line 460
    iget-boolean v2, v0, Lp20;->b:Z

    .line 461
    .line 462
    iget-object v3, v0, Lp20;->c:Ljava/util/Set;

    .line 463
    .line 464
    new-instance v5, Ljava/util/ArrayList;

    .line 465
    .line 466
    const/16 v6, 0xa

    .line 467
    .line 468
    invoke-static {v1, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_1a

    .line 484
    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    check-cast v6, Lji;

    .line 490
    .line 491
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 492
    .line 493
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 494
    .line 495
    .line 496
    if-eqz v2, :cond_16

    .line 497
    .line 498
    sget-object v8, Llr4;->a:Llr4;

    .line 499
    .line 500
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-static {v8}, Llr4;->e(Ljava/lang/String;)Ljava/util/Set;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    if-eqz v8, :cond_16

    .line 509
    .line 510
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    if-eqz v9, :cond_15

    .line 515
    .line 516
    goto :goto_11

    .line 517
    :cond_15
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 518
    .line 519
    .line 520
    :cond_16
    :goto_11
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    :cond_17
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v9

    .line 528
    if-eqz v9, :cond_18

    .line 529
    .line 530
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v9

    .line 534
    check-cast v9, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 535
    .line 536
    invoke-interface {v7}, Ljava/util/Set;->size()I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    const/4 v11, 0x5

    .line 541
    if-ge v10, v11, :cond_17

    .line 542
    .line 543
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    goto :goto_12

    .line 547
    :cond_18
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-nez v8, :cond_19

    .line 552
    .line 553
    goto :goto_13

    .line 554
    :cond_19
    move-object v7, v4

    .line 555
    :goto_13
    new-instance v8, Lpw5;

    .line 556
    .line 557
    invoke-direct {v8, v6, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    goto :goto_10

    .line 564
    :cond_1a
    sget-object v1, Llr4;->a:Llr4;

    .line 565
    .line 566
    invoke-static {v5}, Llr4;->k(Ljava/util/List;)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v0, Lp20;->e:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Lr20;

    .line 572
    .line 573
    invoke-virtual {v0}, Lqo0;->d()V

    .line 574
    .line 575
    .line 576
    sget-object v0, Lbe8;->a:Lbe8;

    .line 577
    .line 578
    return-object v0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
