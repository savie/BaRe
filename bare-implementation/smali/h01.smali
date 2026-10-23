.class public final synthetic Lh01;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh01;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh01;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lh01;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lh01;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    move-object v6, p1

    .line 15
    check-cast v6, Ljava/lang/CharSequence;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v0, 0x1

    .line 31
    if-ne p2, v0, :cond_2

    .line 32
    .line 33
    invoke-static {p0}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    const/4 p2, 0x4

    .line 40
    invoke-static {v6, p0, p1, v1, p2}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-gez p1, :cond_1

    .line 45
    .line 46
    :cond_0
    move-object p2, v3

    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lpw5;

    .line 54
    .line 55
    invoke-direct {p2, p1, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    new-instance p2, Lnd4;

    .line 61
    .line 62
    if-gez p1, :cond_3

    .line 63
    .line 64
    move p1, v1

    .line 65
    :cond_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {p2, p1, v2, v0}, Lld4;-><init>(III)V

    .line 70
    .line 71
    .line 72
    instance-of v0, v6, Ljava/lang/String;

    .line 73
    .line 74
    iget v2, p2, Lld4;->c:I

    .line 75
    .line 76
    iget p2, p2, Lld4;->b:I

    .line 77
    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    if-lez v2, :cond_4

    .line 81
    .line 82
    if-le p1, p2, :cond_5

    .line 83
    .line 84
    :cond_4
    if-gez v2, :cond_0

    .line 85
    .line 86
    if-gt p2, p1, :cond_0

    .line 87
    .line 88
    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move-object v5, v4

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    move-object v7, v6

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-virtual {v5, v1, v7, p1, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    move-object v4, v3

    .line 120
    :goto_1
    check-cast v4, Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance p2, Lpw5;

    .line 129
    .line 130
    invoke-direct {p2, p0, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    if-eq p1, p2, :cond_0

    .line 135
    .line 136
    add-int/2addr p1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_9
    if-lez v2, :cond_a

    .line 139
    .line 140
    if-le p1, p2, :cond_b

    .line 141
    .line 142
    :cond_a
    if-gez v2, :cond_0

    .line 143
    .line 144
    if-gt p2, p1, :cond_0

    .line 145
    .line 146
    :cond_b
    move v7, p1

    .line 147
    :goto_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_d

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object v4, v0

    .line 162
    check-cast v4, Ljava/lang/String;

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    const/4 v9, 0x0

    .line 170
    invoke-static/range {v4 .. v9}, Lnq7;->p0(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_d
    move-object v0, v3

    .line 178
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v0, :cond_e

    .line 181
    .line 182
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    new-instance p2, Lpw5;

    .line 187
    .line 188
    invoke-direct {p2, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_e
    if-eq v7, p2, :cond_0

    .line 193
    .line 194
    add-int/2addr v7, v2

    .line 195
    goto :goto_2

    .line 196
    :goto_4
    if-eqz p2, :cond_f

    .line 197
    .line 198
    iget-object p0, p2, Lpw5;->a:Ljava/lang/Object;

    .line 199
    .line 200
    iget-object p1, p2, Lpw5;->b:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance v3, Lpw5;

    .line 213
    .line 214
    invoke-direct {v3, p0, p1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_f
    return-object v3

    .line 218
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 219
    .line 220
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 221
    .line 222
    check-cast p2, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    sget p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-eqz p1, :cond_10

    .line 241
    .line 242
    iget-object p2, p0, Lzr4;->h:Ljava/util/Set;

    .line 243
    .line 244
    invoke-static {p2, p1}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iput-object p1, p0, Lzr4;->h:Ljava/util/Set;

    .line 249
    .line 250
    :cond_10
    sget-object p1, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 251
    .line 252
    invoke-virtual {p0, p1}, Lzr4;->k(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V

    .line 253
    .line 254
    .line 255
    return-object v2

    .line 256
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 257
    .line 258
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 259
    .line 260
    check-cast p2, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    sget p2, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p2}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    if-eqz p2, :cond_14

    .line 283
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    :cond_11
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_12

    .line 298
    .line 299
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    move-object v5, v4

    .line 304
    check-cast v5, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 305
    .line 306
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_11

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_12
    new-instance p2, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :cond_13
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_15

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    check-cast v4, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 344
    .line 345
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    if-eqz v4, :cond_13

    .line 350
    .line 351
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_14
    move-object p2, v3

    .line 356
    :cond_15
    sget-object v0, Lmp6;->a:Lmp6;

    .line 357
    .line 358
    invoke-static {}, Lmp6;->f()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_16

    .line 363
    .line 364
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 365
    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_16
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 369
    .line 370
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_17

    .line 375
    .line 376
    sget-object p1, Lzn4;->a:Lzn4;

    .line 377
    .line 378
    new-instance p1, Lb56;

    .line 379
    .line 380
    invoke-direct {p1, p0, v1}, Lb56;-><init>(Lk28;I)V

    .line 381
    .line 382
    .line 383
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_17
    new-instance v0, Landroid/content/Intent;

    .line 388
    .line 389
    const-class v1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 390
    .line 391
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .line 393
    .line 394
    const-string v1, "extra_config_settings"

    .line 395
    .line 396
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    if-eqz p2, :cond_18

    .line 401
    .line 402
    new-instance v3, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    .line 406
    .line 407
    :cond_18
    const-string p2, "extra_other_apply_data"

    .line 408
    .line 409
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    const/16 p2, 0x18

    .line 417
    .line 418
    invoke-virtual {p0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    .line 420
    .line 421
    :goto_7
    return-object v2

    .line 422
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 423
    .line 424
    check-cast p1, Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    check-cast p2, Ljava/lang/Boolean;

    .line 431
    .line 432
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 436
    .line 437
    if-eqz p2, :cond_19

    .line 438
    .line 439
    invoke-virtual {p2}, Lm01;->y()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->b0(Z)V

    .line 443
    .line 444
    .line 445
    return-object v2

    .line 446
    :cond_19
    const-string p0, "mAdapter"

    .line 447
    .line 448
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v3

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
