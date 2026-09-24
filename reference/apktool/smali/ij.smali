.class public final synthetic Lij;
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
    iput p2, p0, Lij;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lij;->b:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lij;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lij;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 12
    .line 13
    check-cast p1, Lvq4;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget p2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, p1, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, v2}, Lv37;->j(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    check-cast p0, Lrj;

    .line 40
    .line 41
    iget-object v0, p0, Lrj;->f:Lji;

    .line 42
    .line 43
    iget-object v3, p0, Lrj;->e:Lk28;

    .line 44
    .line 45
    check-cast p1, Lpi;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lpi;->a()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 p2, 0x15

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    if-eq p1, p2, :cond_9

    .line 64
    .line 65
    const/16 p2, 0x16

    .line 66
    .line 67
    if-eq p1, p2, :cond_6

    .line 68
    .line 69
    const/16 p2, 0x1f

    .line 70
    .line 71
    if-eq p1, p2, :cond_5

    .line 72
    .line 73
    const/16 p2, 0x20

    .line 74
    .line 75
    if-eq p1, p2, :cond_4

    .line 76
    .line 77
    packed-switch p1, :pswitch_data_1

    .line 78
    .line 79
    .line 80
    packed-switch p1, :pswitch_data_2

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :pswitch_1
    sget p1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance p1, Landroid/content/Intent;

    .line 94
    .line 95
    const-class p2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 96
    .line 97
    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    const-string p2, "APP_PARCEL"

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    move v4, v2

    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :pswitch_2
    sget-object p1, Lv53;->a:Lv53;

    .line 116
    .line 117
    invoke-virtual {p1, v0, v4}, Lv53;->f(Lji;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lrj;->I()V

    .line 121
    .line 122
    .line 123
    :goto_1
    move v2, v4

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_3
    sget-object p1, Llr4;->a:Llr4;

    .line 127
    .line 128
    invoke-static {}, Llr4;->f()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_a

    .line 133
    .line 134
    new-instance p2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_1

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/String;

    .line 154
    .line 155
    sget-object v5, Llr4;->a:Llr4;

    .line 156
    .line 157
    invoke-static {v3}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_0

    .line 162
    .line 163
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_1
    invoke-static {p2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object p2, Llr4;->a:Llr4;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance p2, Lir4;

    .line 177
    .line 178
    invoke-direct {p2, v0, p1, v4}, Lir4;-><init>(Lji;Ljava/util/Set;Z)V

    .line 179
    .line 180
    .line 181
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :pswitch_4
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 195
    .line 196
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_2

    .line 201
    .line 202
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 203
    .line 204
    invoke-static {v3}, Lrs9;->u(Lk28;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_2
    sget-object p1, Llr4;->a:Llr4;

    .line 210
    .line 211
    invoke-static {}, Llr4;->g()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_3

    .line 216
    .line 217
    invoke-static {v3}, Lus2;->D(Lk28;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 223
    .line 224
    const-class p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 225
    .line 226
    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .line 228
    .line 229
    const-string p2, "labels_activity_mode"

    .line 230
    .line 231
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string p2, "labels_extra_app"

    .line 236
    .line 237
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :pswitch_5
    new-instance p1, Lnh;

    .line 250
    .line 251
    invoke-direct {p1, v3}, Lnh;-><init>(Lzm;)V

    .line 252
    .line 253
    .line 254
    new-instance p2, Lxh;

    .line 255
    .line 256
    invoke-direct {p2, v0}, Lxh;-><init>(Lji;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p2}, Lnh;->n(Lk55;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :pswitch_6
    sget-object p1, Lg00;->a:Lg00;

    .line 265
    .line 266
    invoke-static {v3, v0}, Lg00;->D(Lzm;Lji;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :pswitch_7
    new-instance p1, Lej;

    .line 272
    .line 273
    invoke-direct {p1, p0, v4}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    const p2, 0x7f1300ff

    .line 277
    .line 278
    .line 279
    invoke-static {v3, p2, p1}, Lorg/swiftapps/swiftbackup/common/Const;->J(Lio1;ILbt3;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :pswitch_8
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {v3, p1}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :pswitch_9
    sget-object p1, Lzn4;->a:Lzn4;

    .line 294
    .line 295
    new-instance p1, Lmj;

    .line 296
    .line 297
    invoke-direct {p1, p0, v5, v4}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 298
    .line 299
    .line 300
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :pswitch_a
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    new-instance p2, Landroid/content/Intent;

    .line 316
    .line 317
    const-string v0, "android.intent.action.DELETE"

    .line 318
    .line 319
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v0, "package:"

    .line 323
    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    new-instance p1, Ld11;

    .line 336
    .line 337
    const/16 v0, 0xe

    .line 338
    .line 339
    invoke-direct {p1, v0, v3, p2}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    const/16 p2, 0xa

    .line 343
    .line 344
    const-string v0, "Util"

    .line 345
    .line 346
    invoke-static {v0, v5, v2, p1, p2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :pswitch_b
    sget-object p1, Lzn4;->a:Lzn4;

    .line 352
    .line 353
    new-instance p1, Llj;

    .line 354
    .line 355
    invoke-direct {p1, p0, v5, v4}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 356
    .line 357
    .line 358
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 359
    .line 360
    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :pswitch_c
    sget-object p1, Lg00;->a:Lg00;

    .line 364
    .line 365
    invoke-static {v3, v0}, Lg00;->B(Lzm;Lji;)V

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_4
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Z:I

    .line 370
    .line 371
    invoke-static {v3}, Lbb9;->I(Landroid/app/Activity;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_5
    iget-object p1, p0, Lrj;->t:Lbt3;

    .line 376
    .line 377
    if-eqz p1, :cond_a

    .line 378
    .line 379
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_6
    sget-object p1, Lmp6;->a:Lmp6;

    .line 384
    .line 385
    invoke-static {}, Lmp6;->f()Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_7

    .line 390
    .line 391
    sget-boolean p1, Lhp0;->a:Z

    .line 392
    .line 393
    if-eqz p1, :cond_7

    .line 394
    .line 395
    sget-object p1, Lzn4;->a:Lzn4;

    .line 396
    .line 397
    new-instance p1, Lnj;

    .line 398
    .line 399
    invoke-direct {p1, p0, v5, v4}, Lnj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 400
    .line 401
    .line 402
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 403
    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_7
    invoke-static {}, Lb67;->b()Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-eqz p1, :cond_8

    .line 412
    .line 413
    sget-object p1, Lg00;->a:Lg00;

    .line 414
    .line 415
    invoke-static {v3, v0}, Lg00;->D(Lzm;Lji;)V

    .line 416
    .line 417
    .line 418
    goto :goto_3

    .line 419
    :cond_8
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/common/Const;->A(Landroid/content/Context;)V

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_9
    sget-object p1, Lzn4;->a:Lzn4;

    .line 424
    .line 425
    new-instance p1, Lpj;

    .line 426
    .line 427
    invoke-direct {p1, p0, v5, v4}, Lpj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 428
    .line 429
    .line 430
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 431
    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 436
    .line 437
    invoke-virtual {p0, v4}, Lol1;->j(Z)V

    .line 438
    .line 439
    .line 440
    :cond_b
    return-object v1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
