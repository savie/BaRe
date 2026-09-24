.class public final synthetic Llh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Llh;->a:I

    iput-object p2, p0, Llh;->b:Ljava/lang/Object;

    iput-object p3, p0, Llh;->c:Ljava/lang/Object;

    iput-object p4, p0, Llh;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrb;Ldj0;Ljava/util/List;Lmj0;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Llh;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Llh;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Llh;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Llh;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Llh;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v5, p0, Llh;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Llh;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Llh;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    check-cast v6, Lt22;

    .line 20
    .line 21
    check-cast v5, Lbw3;

    .line 22
    .line 23
    invoke-static {p0, v6, v5}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$YCaZPEfABwcobKMf-mdYs5IJGpc(Ljava/util/concurrent/Executor;Lt22;Lbw3;)Lbe8;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    check-cast p0, Lmh1;

    .line 29
    .line 30
    check-cast v6, Lfi1;

    .line 31
    .line 32
    check-cast v5, Llh1;

    .line 33
    .line 34
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5}, Lfh6;->b()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p0, v6, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v4

    .line 50
    :pswitch_1
    check-cast p0, Lrb;

    .line 51
    .line 52
    check-cast v6, Ljava/util/List;

    .line 53
    .line 54
    check-cast v5, Lmj0;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v5, v5, Lmj0;->f:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_6

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljj0;

    .line 78
    .line 79
    iget-object v8, v7, Ljj0;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v9, "locations"

    .line 82
    .line 83
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_1

    .line 88
    .line 89
    invoke-virtual {v7}, Ljj0;->a()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    new-instance v9, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v10, 0xa

    .line 96
    .line 97
    invoke-static {v8, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-eqz v10, :cond_2

    .line 113
    .line 114
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Lli0;

    .line 119
    .line 120
    iget-object v10, v10, Lli0;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_4

    .line 135
    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Ljava/lang/String;

    .line 141
    .line 142
    sget-object v10, Lq05;->Companion:Lo05;

    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v9}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v9, :cond_3

    .line 152
    .line 153
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    iget-object v7, v7, Ljj0;->c:Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_1

    .line 168
    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    check-cast v8, Lli0;

    .line 174
    .line 175
    sget-object v9, Lq05;->Companion:Lo05;

    .line 176
    .line 177
    iget-object v10, v8, Lli0;->a:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v10}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v8}, Lli0;->b()Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-nez v10, :cond_5

    .line 191
    .line 192
    if-eqz v9, :cond_5

    .line 193
    .line 194
    const/4 v10, 0x5

    .line 195
    invoke-virtual {v8}, Lli0;->a()Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    invoke-virtual {v9, v10, v8}, Lq05;->setCheckedInExpansion(IZ)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    new-instance v5, Lbz7;

    .line 204
    .line 205
    invoke-direct {v5, v6, v0, v2}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 206
    .line 207
    .line 208
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p0, Lcs8;

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    iget-object v0, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 221
    .line 222
    new-instance v2, Lqf;

    .line 223
    .line 224
    const/16 v6, 0x12

    .line 225
    .line 226
    invoke-direct {v2, v6, p0, v5}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1, v2, v3}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    iget-object p0, p0, Lcs8;->b:Liu8;

    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance v0, Lut8;

    .line 239
    .line 240
    const v1, 0x7f130086

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v5, v1, p0, v3}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 247
    .line 248
    .line 249
    :goto_3
    return-object v4

    .line 250
    :pswitch_2
    check-cast p0, Lnh;

    .line 251
    .line 252
    check-cast v6, Lw45;

    .line 253
    .line 254
    check-cast v5, Lqh;

    .line 255
    .line 256
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Lzm;

    .line 259
    .line 260
    instance-of v0, v5, Loh;

    .line 261
    .line 262
    if-eqz v0, :cond_a

    .line 263
    .line 264
    check-cast v5, Loh;

    .line 265
    .line 266
    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_8

    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :cond_8
    iget-wide v11, v5, Loh;->b:J

    .line 275
    .line 276
    const-wide/16 v0, 0x0

    .line 277
    .line 278
    cmp-long v0, v11, v0

    .line 279
    .line 280
    if-gtz v0, :cond_9

    .line 281
    .line 282
    invoke-virtual {v6, v3}, Lw45;->k(Z)V

    .line 283
    .line 284
    .line 285
    const v0, 0x7f130209

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, p0}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_9
    iget-wide v7, v5, Loh;->a:J

    .line 300
    .line 301
    const-wide/16 v9, 0x0

    .line 302
    .line 303
    invoke-static/range {v7 .. v12}, Ll73;->i(JJJ)J

    .line 304
    .line 305
    .line 306
    move-result-wide v0

    .line 307
    invoke-virtual {v6, v2}, Lw45;->k(Z)V

    .line 308
    .line 309
    .line 310
    invoke-static {v0, v1, v11, v12}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    const/16 v5, 0x64

    .line 315
    .line 316
    invoke-static {v3, v2, v5}, Ll73;->h(III)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-virtual {v6, v2}, Lw45;->m(I)V

    .line 321
    .line 322
    .line 323
    sget-object v2, Lp93;->a:Lp93;

    .line 324
    .line 325
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const v1, 0x7f13020a

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, p0}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_a
    sget-object v0, Lph;->a:Lph;

    .line 360
    .line 361
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_c

    .line 366
    .line 367
    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_b

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_b
    invoke-virtual {v6, v3}, Lw45;->k(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6, v2}, Lw45;->m(I)V

    .line 378
    .line 379
    .line 380
    const v0, 0x7f130427

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, p0}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    :goto_4
    move-object v1, v4

    .line 394
    goto :goto_5

    .line 395
    :cond_c
    invoke-static {}, Lq;->j()V

    .line 396
    .line 397
    .line 398
    :goto_5
    return-object v1

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
