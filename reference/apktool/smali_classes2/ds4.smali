.class public final Lds4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfs4;Lqo0;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lds4;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lds4;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lds4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lkd7;Ljv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lds4;->a:I

    .line 13
    iput-object p1, p0, Lds4;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lds4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lds4;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lds4;

    .line 9
    .line 10
    check-cast v1, Lkd7;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Lds4;-><init>(Lkd7;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lds4;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p1, Lds4;

    .line 19
    .line 20
    iget-object p0, p0, Lds4;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lfs4;

    .line 23
    .line 24
    check-cast v1, Lqo0;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1, p2}, Lds4;-><init>(Lfs4;Lqo0;Ljv1;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lds4;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lq87;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lds4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lds4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lds4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lxx1;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lds4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lds4;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lds4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lds4;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lds4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lds4;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lq87;

    .line 17
    .line 18
    check-cast v2, Lkd7;

    .line 19
    .line 20
    iget-object v1, v2, Lkd7;->d:La48;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, La48;->a()Li38;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x5

    .line 30
    invoke-static {v0, v3, v1, v3, v2}, Lq87;->a(Lq87;Lu87;Li38;Ljava/util/Map;I)Lq87;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lds4;->b:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Lfs4;

    .line 42
    .line 43
    invoke-virtual {v1}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v5, ": "

    .line 51
    .line 52
    const-string v6, "Error while reading metadata at "

    .line 53
    .line 54
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lyn7;->a()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_24

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lzn7;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const-string v10, "-"

    .line 84
    .line 85
    const/16 v11, 0x14

    .line 86
    .line 87
    invoke-static {v11, v10}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v10, "\n"

    .line 100
    .line 101
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v11, Landroid/text/style/RelativeSizeSpan;

    .line 112
    .line 113
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 114
    .line 115
    invoke-direct {v11, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    new-instance v14, Landroid/text/style/StyleSpan;

    .line 123
    .line 124
    const/4 v15, 0x1

    .line 125
    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 137
    .line 138
    invoke-direct {v3, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    move-object/from16 v17, v2

    .line 153
    .line 154
    const/16 v2, 0x11

    .line 155
    .line 156
    invoke-virtual {v7, v3, v15, v9, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v7, v14, v12, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-virtual {v7, v11, v13, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    .line 172
    .line 173
    sget-object v3, Lry5;->u:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v0}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v9, "\n\n"

    .line 188
    .line 189
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance v3, Lq63;

    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    const/4 v12, 0x0

    .line 203
    invoke-static {v11, v12}, Lqy5;->f(ZLzn7;)Lry5;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    iget-object v13, v13, Lry5;->c:Ljava/lang/String;

    .line 208
    .line 209
    const/4 v14, 0x1

    .line 210
    invoke-direct {v3, v13, v14}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Lq63;->p()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    new-instance v13, Lq63;

    .line 218
    .line 219
    const-string v15, "accounts"

    .line 220
    .line 221
    invoke-direct {v13, v0, v15, v14}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13}, Lq63;->B()Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    .line 230
    new-instance v13, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    if-eqz v14, :cond_1

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    move-object v15, v14

    .line 250
    check-cast v15, Lq63;

    .line 251
    .line 252
    invoke-virtual {v15}, Lq63;->x()Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    if-eqz v15, :cond_0

    .line 257
    .line 258
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_1
    new-instance v0, Luk0;

    .line 263
    .line 264
    invoke-direct {v0, v3, v11}, Luk0;-><init>(Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    invoke-static {v13, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    goto :goto_2

    .line 272
    :cond_2
    move-object v0, v12

    .line 273
    :goto_2
    new-instance v13, Landroid/text/style/RelativeSizeSpan;

    .line 274
    .line 275
    const/high16 v14, 0x3fa00000    # 1.25f

    .line 276
    .line 277
    invoke-direct {v13, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    new-instance v15, Landroid/text/style/StyleSpan;

    .line 285
    .line 286
    const/4 v11, 0x1

    .line 287
    invoke-direct {v15, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    sget-object v16, Lov2;->a:Lov2;

    .line 295
    .line 296
    if-nez v0, :cond_3

    .line 297
    .line 298
    move-object/from16 v18, v16

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_3
    move-object/from16 v18, v0

    .line 302
    .line 303
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v12, " Account(s)"

    .line 316
    .line 317
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    const/16 v12, 0x11

    .line 332
    .line 333
    invoke-virtual {v7, v15, v11, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-virtual {v7, v13, v14, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 341
    .line 342
    .line 343
    if-eqz v0, :cond_23

    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_4

    .line 350
    .line 351
    goto/16 :goto_17

    .line 352
    .line 353
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const/4 v0, 0x0

    .line 358
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    if-eqz v11, :cond_23

    .line 363
    .line 364
    add-int/lit8 v11, v0, 0x1

    .line 365
    .line 366
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v12

    .line 370
    check-cast v12, Lq63;

    .line 371
    .line 372
    if-lez v0, :cond_5

    .line 373
    .line 374
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    .line 376
    .line 377
    :cond_5
    invoke-virtual {v12}, Lq63;->p()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    sget-object v13, Lry5;->u:Ljava/lang/String;

    .line 386
    .line 387
    sget-object v13, Ld45;->b:Ld45;

    .line 388
    .line 389
    invoke-static {}, Lb45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    invoke-static {v13}, Lqy5;->e(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v13

    .line 397
    invoke-virtual {v12}, Lq63;->p()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-eqz v13, :cond_6

    .line 406
    .line 407
    invoke-virtual {v12}, Lq63;->p()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    const-string v15, "8690a48a4fcc72f1"

    .line 412
    .line 413
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    if-nez v14, :cond_6

    .line 418
    .line 419
    const/4 v14, 0x1

    .line 420
    goto :goto_5

    .line 421
    :cond_6
    const/4 v14, 0x0

    .line 422
    :goto_5
    if-eqz v13, :cond_7

    .line 423
    .line 424
    const-string v13, "Anonymous"

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_7
    const-string v13, "Google"

    .line 428
    .line 429
    :goto_6
    if-eqz v0, :cond_8

    .line 430
    .line 431
    const-string v15, "Current account"

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_8
    const/4 v15, 0x0

    .line 435
    :goto_7
    filled-new-array {v13, v15}, [Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    invoke-static {v13}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v19

    .line 443
    const/16 v23, 0x0

    .line 444
    .line 445
    const/16 v24, 0x3f

    .line 446
    .line 447
    const/16 v20, 0x0

    .line 448
    .line 449
    const/16 v21, 0x0

    .line 450
    .line 451
    const/16 v22, 0x0

    .line 452
    .line 453
    invoke-static/range {v19 .. v24}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v13

    .line 457
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    .line 459
    .line 460
    new-instance v15, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    move/from16 v19, v0

    .line 466
    .line 467
    invoke-virtual {v12}, Lq63;->p()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    move-object/from16 v20, v2

    .line 472
    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v0, " ("

    .line 482
    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v0, ")"

    .line 490
    .line 491
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    if-eqz v14, :cond_9

    .line 502
    .line 503
    const-string v0, " \ud83d\udd34"

    .line 504
    .line 505
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-eqz v19, :cond_a

    .line 513
    .line 514
    const v2, 0x7f0600da

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4, v2}, Landroid/content/Context;->getColor(I)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    .line 522
    .line 523
    invoke-direct {v13, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    new-instance v14, Landroid/text/style/UnderlineSpan;

    .line 531
    .line 532
    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 536
    .line 537
    .line 538
    move-result v15

    .line 539
    move-object/from16 v21, v3

    .line 540
    .line 541
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 542
    .line 543
    move-object/from16 v22, v8

    .line 544
    .line 545
    const/4 v8, 0x1

    .line 546
    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 550
    .line 551
    .line 552
    move-result v8

    .line 553
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    move/from16 v23, v11

    .line 561
    .line 562
    const/16 v11, 0x11

    .line 563
    .line 564
    invoke-virtual {v7, v3, v8, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    invoke-virtual {v7, v14, v15, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    invoke-virtual {v7, v13, v2, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 579
    .line 580
    .line 581
    const/4 v14, 0x1

    .line 582
    goto :goto_8

    .line 583
    :cond_a
    move-object/from16 v21, v3

    .line 584
    .line 585
    move-object/from16 v22, v8

    .line 586
    .line 587
    move/from16 v23, v11

    .line 588
    .line 589
    const/16 v11, 0x11

    .line 590
    .line 591
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 592
    .line 593
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    new-instance v8, Landroid/text/style/StyleSpan;

    .line 601
    .line 602
    const/4 v14, 0x1

    .line 603
    invoke-direct {v8, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 607
    .line 608
    .line 609
    move-result v13

    .line 610
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    invoke-virtual {v7, v8, v13, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    invoke-virtual {v7, v2, v3, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 625
    .line 626
    .line 627
    :goto_8
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v0, "/backups/apps/local/"

    .line 631
    .line 632
    invoke-virtual {v12, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lq63;->B()Ljava/util/ArrayList;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    if-eqz v0, :cond_c

    .line 641
    .line 642
    new-instance v2, Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-eqz v3, :cond_d

    .line 656
    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    move-object v8, v3

    .line 662
    check-cast v8, Lq63;

    .line 663
    .line 664
    invoke-virtual {v8}, Lq63;->x()Z

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-eqz v8, :cond_b

    .line 669
    .line 670
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    goto :goto_9

    .line 674
    :cond_c
    const/4 v2, 0x0

    .line 675
    :cond_d
    if-eqz v2, :cond_10

    .line 676
    .line 677
    new-instance v0, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .line 681
    .line 682
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    :cond_e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v8

    .line 690
    if-eqz v8, :cond_f

    .line 691
    .line 692
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    check-cast v8, Lq63;

    .line 697
    .line 698
    sget-object v11, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 699
    .line 700
    invoke-virtual {v8}, Lq63;->p()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v8

    .line 704
    invoke-static {v8}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    if-eqz v8, :cond_e

    .line 709
    .line 710
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    goto :goto_a

    .line 714
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 724
    .line 725
    .line 726
    move-result v8

    .line 727
    if-eqz v8, :cond_11

    .line 728
    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    check-cast v8, Ljava/lang/Iterable;

    .line 734
    .line 735
    invoke-static {v8, v3}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 736
    .line 737
    .line 738
    goto :goto_b

    .line 739
    :cond_10
    const/4 v3, 0x0

    .line 740
    :cond_11
    if-nez v3, :cond_12

    .line 741
    .line 742
    move-object/from16 v3, v16

    .line 743
    .line 744
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    .line 745
    .line 746
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .line 748
    .line 749
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    :cond_13
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 754
    .line 755
    .line 756
    move-result v11

    .line 757
    if-eqz v11, :cond_15

    .line 758
    .line 759
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    check-cast v11, Lhk;

    .line 764
    .line 765
    invoke-virtual {v11}, Lhk;->v()Lq63;

    .line 766
    .line 767
    .line 768
    move-result-object v11

    .line 769
    invoke-virtual {v11}, Lq63;->j()Z

    .line 770
    .line 771
    .line 772
    move-result v12

    .line 773
    if-eqz v12, :cond_14

    .line 774
    .line 775
    goto :goto_d

    .line 776
    :cond_14
    const/4 v11, 0x0

    .line 777
    :goto_d
    if-eqz v11, :cond_13

    .line 778
    .line 779
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    goto :goto_c

    .line 783
    :cond_15
    if-eqz v2, :cond_16

    .line 784
    .line 785
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 786
    .line 787
    .line 788
    move-result v8

    .line 789
    if-eqz v8, :cond_17

    .line 790
    .line 791
    :cond_16
    const/16 v11, 0x11

    .line 792
    .line 793
    goto/16 :goto_15

    .line 794
    .line 795
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    const-string v8, " package directories with total "

    .line 804
    .line 805
    const-string v11, " backups"

    .line 806
    .line 807
    const-string v12, "- "

    .line 808
    .line 809
    invoke-static {v12, v2, v8, v11, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    const-string v8, " metadata xml files"

    .line 818
    .line 819
    invoke-static {v3, v12, v8}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    if-nez v19, :cond_18

    .line 824
    .line 825
    const-string v8, "- Sign-in with this account needed to read the metadata files"

    .line 826
    .line 827
    goto :goto_e

    .line 828
    :cond_18
    const/4 v8, 0x0

    .line 829
    :goto_e
    filled-new-array {v2, v3, v8}, [Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 834
    .line 835
    .line 836
    move-result-object v24

    .line 837
    const/16 v28, 0x0

    .line 838
    .line 839
    const/16 v29, 0x3e

    .line 840
    .line 841
    const-string v25, "\n"

    .line 842
    .line 843
    const/16 v26, 0x0

    .line 844
    .line 845
    const/16 v27, 0x0

    .line 846
    .line 847
    invoke-static/range {v24 .. v29}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-static {v4}, Lsz8;->A(Landroid/content/Context;)I

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    invoke-static {v3, v4, v2}, Lorg/swiftapps/swiftbackup/common/Const;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 860
    .line 861
    .line 862
    if-nez v19, :cond_1a

    .line 863
    .line 864
    :cond_19
    const/16 v11, 0x11

    .line 865
    .line 866
    goto/16 :goto_16

    .line 867
    .line 868
    :cond_1a
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    const/4 v3, 0x0

    .line 876
    const/4 v8, 0x0

    .line 877
    const/4 v11, 0x0

    .line 878
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    if-eqz v0, :cond_1f

    .line 883
    .line 884
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    move-object v13, v0

    .line 889
    check-cast v13, Lq63;

    .line 890
    .line 891
    :try_start_0
    invoke-static {v13}, Lcu;->c(Lq63;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 892
    .line 893
    .line 894
    move-result-object v0
    :try_end_0
    .catch Lbu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    if-eqz v0, :cond_1d

    .line 896
    .line 897
    add-int/lit8 v3, v3, 0x1

    .line 898
    .line 899
    goto :goto_12

    .line 900
    :catch_0
    move-exception v0

    .line 901
    sget-object v24, Lvr6;->INSTANCE:Lvr6;

    .line 902
    .line 903
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    new-instance v15, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v26

    .line 925
    const/16 v28, 0x4

    .line 926
    .line 927
    const/16 v29, 0x0

    .line 928
    .line 929
    const-string v25, "BackupsScanHelper"

    .line 930
    .line 931
    const/16 v27, 0x0

    .line 932
    .line 933
    invoke-static/range {v24 .. v29}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 937
    .line 938
    goto :goto_12

    .line 939
    :catch_1
    move-exception v0

    .line 940
    sget-object v24, Lvr6;->INSTANCE:Lvr6;

    .line 941
    .line 942
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v15

    .line 946
    new-instance v14, Ljava/lang/StringBuilder;

    .line 947
    .line 948
    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v26

    .line 964
    const/16 v28, 0x4

    .line 965
    .line 966
    const/16 v29, 0x0

    .line 967
    .line 968
    const-string v25, "BackupsScanHelper"

    .line 969
    .line 970
    const/16 v27, 0x0

    .line 971
    .line 972
    invoke-static/range {v24 .. v29}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    instance-of v13, v0, Lyt;

    .line 976
    .line 977
    if-eqz v13, :cond_1b

    .line 978
    .line 979
    :goto_11
    goto :goto_10

    .line 980
    :cond_1b
    instance-of v13, v0, Lzt;

    .line 981
    .line 982
    if-eqz v13, :cond_1c

    .line 983
    .line 984
    goto :goto_11

    .line 985
    :cond_1c
    instance-of v0, v0, Lau;

    .line 986
    .line 987
    if-eqz v0, :cond_1e

    .line 988
    .line 989
    add-int/lit8 v11, v11, 0x1

    .line 990
    .line 991
    :cond_1d
    :goto_12
    const/4 v14, 0x1

    .line 992
    goto :goto_f

    .line 993
    :cond_1e
    invoke-static {}, Lq;->j()V

    .line 994
    .line 995
    .line 996
    const/4 v3, 0x0

    .line 997
    goto/16 :goto_18

    .line 998
    .line 999
    :cond_1f
    if-lez v3, :cond_20

    .line 1000
    .line 1001
    const-string v0, " readable metadata files"

    .line 1002
    .line 1003
    invoke-static {v3, v12, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-static {v4}, Lsz8;->A(Landroid/content/Context;)I

    .line 1008
    .line 1009
    .line 1010
    move-result v2

    .line 1011
    invoke-static {v2, v4, v0}, Lorg/swiftapps/swiftbackup/common/Const;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1016
    .line 1017
    .line 1018
    :cond_20
    const-string v0, "- Failed reading "

    .line 1019
    .line 1020
    const-string v2, " metadata files"

    .line 1021
    .line 1022
    invoke-static {v8, v0, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    if-lez v8, :cond_21

    .line 1027
    .line 1028
    goto :goto_13

    .line 1029
    :cond_21
    const/4 v0, 0x0

    .line 1030
    :goto_13
    const-string v2, " metadata files belong to some other user account"

    .line 1031
    .line 1032
    invoke-static {v11, v12, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    if-lez v11, :cond_22

    .line 1037
    .line 1038
    goto :goto_14

    .line 1039
    :cond_22
    const/4 v2, 0x0

    .line 1040
    :goto_14
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v24

    .line 1048
    const/16 v28, 0x0

    .line 1049
    .line 1050
    const/16 v29, 0x3e

    .line 1051
    .line 1052
    const-string v25, "\n"

    .line 1053
    .line 1054
    const/16 v26, 0x0

    .line 1055
    .line 1056
    const/16 v27, 0x0

    .line 1057
    .line 1058
    invoke-static/range {v24 .. v29}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1063
    .line 1064
    .line 1065
    move-result v2

    .line 1066
    if-lez v2, :cond_19

    .line 1067
    .line 1068
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v4}, Lsz8;->r(Landroid/content/Context;)I

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 1076
    .line 1077
    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    invoke-static {v4}, Lsz8;->A(Landroid/content/Context;)I

    .line 1085
    .line 1086
    .line 1087
    move-result v8

    .line 1088
    invoke-static {v8, v4, v0}, Lorg/swiftapps/swiftbackup/common/Const;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    const/16 v11, 0x11

    .line 1100
    .line 1101
    invoke-virtual {v7, v3, v2, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_16

    .line 1105
    :goto_15
    const-string v0, "- No metadata xml files"

    .line 1106
    .line 1107
    invoke-static {v4}, Lsz8;->A(Landroid/content/Context;)I

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    invoke-static {v2, v4, v0}, Lorg/swiftapps/swiftbackup/common/Const;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1116
    .line 1117
    .line 1118
    :goto_16
    move-object/from16 v2, v20

    .line 1119
    .line 1120
    move-object/from16 v3, v21

    .line 1121
    .line 1122
    move-object/from16 v8, v22

    .line 1123
    .line 1124
    move/from16 v0, v23

    .line 1125
    .line 1126
    goto/16 :goto_4

    .line 1127
    .line 1128
    :cond_23
    :goto_17
    move-object/from16 v22, v8

    .line 1129
    .line 1130
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1131
    .line 1132
    .line 1133
    move-object/from16 v2, v17

    .line 1134
    .line 1135
    move-object/from16 v8, v22

    .line 1136
    .line 1137
    const/4 v3, 0x0

    .line 1138
    goto/16 :goto_0

    .line 1139
    .line 1140
    :cond_24
    move-object/from16 v17, v2

    .line 1141
    .line 1142
    new-instance v0, Landroid/text/SpannedString;

    .line 1143
    .line 1144
    invoke-direct {v0, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1152
    .line 1153
    move-object/from16 v2, v17

    .line 1154
    .line 1155
    check-cast v2, Lqo0;

    .line 1156
    .line 1157
    new-instance v3, Loj;

    .line 1158
    .line 1159
    const/4 v4, 0x6

    .line 1160
    invoke-direct {v3, v4, v1, v2, v0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 1164
    .line 1165
    .line 1166
    sget-object v3, Lbe8;->a:Lbe8;

    .line 1167
    .line 1168
    :goto_18
    return-object v3

    .line 1169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
