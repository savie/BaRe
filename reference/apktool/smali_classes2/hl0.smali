.class public final synthetic Lhl0;
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
    iput p7, p0, Lhl0;->a:I

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
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lhl0;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljy8;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljy8;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :pswitch_0
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Lux5;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lby5;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lby5;->j(Lux5;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_1
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/i;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/settings/i;->e:Lgv7;

    .line 46
    .line 47
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 50
    .line 51
    iget-boolean v4, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->S:Z

    .line 52
    .line 53
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->M:Lgv7;

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    const-class v4, Landroid/widget/TextView;

    .line 58
    .line 59
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v4}, Lil0;->y([Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 v4, 0x0

    .line 67
    iput-boolean v4, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->S:Z

    .line 68
    .line 69
    iget-object v7, v1, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 70
    .line 71
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N:Lgv7;

    .line 72
    .line 73
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lorg/swiftapps/swiftbackup/settings/h;

    .line 78
    .line 79
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 84
    .line 85
    invoke-static {v8, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    new-instance v9, Lk00;

    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x3

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    const-class v12, Lorg/swiftapps/swiftbackup/settings/k;

    .line 100
    .line 101
    const-string v13, "onStrategyClicked"

    .line 102
    .line 103
    const-string v14, "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V"

    .line 104
    .line 105
    invoke-direct/range {v9 .. v16}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    const/16 v11, 0x18

    .line 110
    .line 111
    invoke-static/range {v6 .. v11}, Lorg/swiftapps/swiftbackup/settings/h;->b(Lorg/swiftapps/swiftbackup/settings/h;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Leh2;I)V

    .line 112
    .line 113
    .line 114
    iget-object v13, v1, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 115
    .line 116
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O:Lgv7;

    .line 117
    .line 118
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    move-object v12, v6

    .line 123
    check-cast v12, Lorg/swiftapps/swiftbackup/settings/h;

    .line 124
    .line 125
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 130
    .line 131
    invoke-static {v6, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    new-instance v15, Lxf;

    .line 136
    .line 137
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 138
    .line 139
    .line 140
    move-result-object v17

    .line 141
    const/16 v21, 0x0

    .line 142
    .line 143
    const/16 v22, 0x5

    .line 144
    .line 145
    const/16 v16, 0x1

    .line 146
    .line 147
    const-class v18, Lorg/swiftapps/swiftbackup/settings/k;

    .line 148
    .line 149
    const-string v19, "onStrategyClicked"

    .line 150
    .line 151
    const-string v20, "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V"

    .line 152
    .line 153
    invoke-direct/range {v15 .. v22}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    new-instance v6, Leh2;

    .line 157
    .line 158
    const/4 v7, 0x3

    .line 159
    invoke-direct {v6, v7, v13, v0}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const/16 v17, 0x10

    .line 163
    .line 164
    move-object/from16 v16, v6

    .line 165
    .line 166
    invoke-static/range {v12 .. v17}, Lorg/swiftapps/swiftbackup/settings/h;->b(Lorg/swiftapps/swiftbackup/settings/h;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Leh2;I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 170
    .line 171
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P:Lgv7;

    .line 172
    .line 173
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    move-object/from16 v18, v6

    .line 178
    .line 179
    check-cast v18, Lorg/swiftapps/swiftbackup/settings/h;

    .line 180
    .line 181
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 186
    .line 187
    invoke-static {v3, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v20

    .line 191
    new-instance v21, Lcj2;

    .line 192
    .line 193
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    const/4 v14, 0x0

    .line 198
    const/4 v15, 0x4

    .line 199
    const/4 v9, 0x1

    .line 200
    const-class v11, Lorg/swiftapps/swiftbackup/settings/k;

    .line 201
    .line 202
    const-string v12, "onStrategyClicked"

    .line 203
    .line 204
    const-string v13, "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V"

    .line 205
    .line 206
    move-object/from16 v8, v21

    .line 207
    .line 208
    invoke-direct/range {v8 .. v15}, Lcj2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 209
    .line 210
    .line 211
    new-instance v3, Lnj2;

    .line 212
    .line 213
    invoke-direct {v3, v7, v1, v0}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    new-instance v6, Ljj2;

    .line 217
    .line 218
    const/4 v7, 0x4

    .line 219
    invoke-direct {v6, v7, v1, v0}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    move-object/from16 v19, v1

    .line 223
    .line 224
    move-object/from16 v22, v3

    .line 225
    .line 226
    move-object/from16 v23, v6

    .line 227
    .line 228
    invoke-virtual/range {v18 .. v23}, Lorg/swiftapps/swiftbackup/settings/h;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Lmt3;Lmt3;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 240
    .line 241
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_2

    .line 246
    .line 247
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 248
    .line 249
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/4 v3, 0x1

    .line 254
    if-nez v1, :cond_1

    .line 255
    .line 256
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_1

    .line 261
    .line 262
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_1

    .line 267
    .line 268
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isPremium()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-ne v1, v3, :cond_1

    .line 273
    .line 274
    invoke-virtual {v0, v4}, Lil0;->A(Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v0, v3}, Lil0;->A(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v0, v4}, Lil0;->A(Z)V

    .line 283
    .line 284
    .line 285
    :goto_0
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->Q:Lgv7;

    .line 286
    .line 287
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 292
    .line 293
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 302
    .line 303
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    xor-int/lit8 v4, v3, 0x1

    .line 308
    .line 309
    invoke-static {v1, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 310
    .line 311
    .line 312
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-nez v5, :cond_3

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    if-nez v3, :cond_4

    .line 324
    .line 325
    const/16 v3, 0xff

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_4
    const/16 v3, 0x80

    .line 329
    .line 330
    :goto_1
    invoke-virtual {v5, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 341
    .line 342
    .line 343
    new-instance v3, Lxi5;

    .line 344
    .line 345
    invoke-direct {v3, v4, v0}, Lxi5;-><init>(ZLorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .line 350
    .line 351
    :goto_2
    return-object v2

    .line 352
    :pswitch_2
    move-object/from16 v1, p1

    .line 353
    .line 354
    check-cast v1, Lbt3;

    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v0, Lzn4;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 367
    .line 368
    .line 369
    return-object v2

    .line 370
    :pswitch_3
    move-object/from16 v1, p1

    .line 371
    .line 372
    check-cast v1, Ljava/lang/Boolean;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/intro/d;->k(Z)V

    .line 383
    .line 384
    .line 385
    return-object v2

    .line 386
    :pswitch_4
    move-object/from16 v1, p1

    .line 387
    .line 388
    check-cast v1, Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 396
    .line 397
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 403
    .line 404
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    const/4 v8, 0x4

    .line 409
    const/4 v9, 0x0

    .line 410
    const-string v6, "Showing SMB data encryption required dialog"

    .line 411
    .line 412
    const/4 v7, 0x0

    .line 413
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    const v3, 0x7f1301d9

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    const/16 v4, 0x8

    .line 424
    .line 425
    invoke-static {v0, v3, v1, v4}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 426
    .line 427
    .line 428
    return-object v2

    .line 429
    :pswitch_5
    move-object/from16 v1, p1

    .line 430
    .line 431
    check-cast v1, Lf00;

    .line 432
    .line 433
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v0, Lil0;

    .line 436
    .line 437
    iget-object v0, v0, Lil0;->H:Lgv7;

    .line 438
    .line 439
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lw45;

    .line 444
    .line 445
    if-eqz v1, :cond_5

    .line 446
    .line 447
    iget v3, v1, Lf00;->b:I

    .line 448
    .line 449
    invoke-virtual {v0, v3}, Lw45;->l(I)V

    .line 450
    .line 451
    .line 452
    iget v1, v1, Lf00;->a:I

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Lw45;->m(I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-nez v1, :cond_6

    .line 462
    .line 463
    invoke-virtual {v0}, Lw45;->show()V

    .line 464
    .line 465
    .line 466
    const v1, 0x102000b

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v1}, Lho;->findViewById(I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Landroid/widget/TextView;

    .line 474
    .line 475
    if-eqz v0, :cond_6

    .line 476
    .line 477
    const/high16 v1, 0x41580000    # 13.5f

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_5
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 484
    .line 485
    .line 486
    :cond_6
    :goto_3
    return-object v2

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
