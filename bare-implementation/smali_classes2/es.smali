.class public final synthetic Les;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Les;->a:I

    iput-object p1, p0, Les;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnt8;Lpt8;)V
    .locals 0

    .line 1
    const/16 p1, 0x11

    .line 2
    .line 3
    iput p1, p0, Les;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Les;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Les;->a:I

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    const/16 v4, 0xb

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    const/16 v6, 0x10

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    iget-object v0, v0, Les;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lpt8;

    .line 24
    .line 25
    iget-object v1, v0, Lpt8;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, v0, Lpt8;->a:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lhc1;

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    invoke-direct {v2, v3}, Lhc1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lorg/swiftapps/swiftbackup/common/Const;->f(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    check-cast v0, Las8;

    .line 40
    .line 41
    iget-object v1, v0, Las8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 42
    .line 43
    new-instance v2, Las4;

    .line 44
    .line 45
    const/16 v3, 0x14

    .line 46
    .line 47
    invoke-direct {v2, v0, v3}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v9, v2, v8}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 55
    .line 56
    sget v1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 57
    .line 58
    new-instance v1, Lrh3;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lrh3;-><init>(Lil0;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lus5;

    .line 64
    .line 65
    invoke-direct {v2, v0, v5}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v1, Lrh3;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 71
    .line 72
    const v5, 0x7f1303e7

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v3, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lrh3;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 88
    .line 89
    const/16 v5, 0x81

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 95
    .line 96
    .line 97
    new-instance v5, Lp52;

    .line 98
    .line 99
    const/4 v6, 0x2

    .line 100
    invoke-direct {v5, v1, v6}, Lp52;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lhv1;

    .line 107
    .line 108
    const v5, 0x7f140160

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    new-instance v6, Ls35;

    .line 115
    .line 116
    invoke-direct {v6, v0, v5, v3, v9}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v1, Lrh3;->a:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljd6;

    .line 122
    .line 123
    iget-object v0, v0, Ljd6;->b:Landroidx/core/widget/NestedScrollView;

    .line 124
    .line 125
    iget-object v3, v6, Lva;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v3, Lra;

    .line 128
    .line 129
    iput-object v0, v3, Lra;->s:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v3, v1, Lrh3;->d:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 138
    .line 139
    new-instance v5, Lnq1;

    .line 140
    .line 141
    const/4 v6, 0x3

    .line 142
    invoke-direct {v5, v6, v1, v2, v0}, Lnq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v1, Lrh3;->e:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 151
    .line 152
    new-instance v3, Lxd1;

    .line 153
    .line 154
    invoke-direct {v3, v0, v4}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lrh3;->y()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 165
    .line 166
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 167
    .line 168
    sget-object v1, Lto3;->LOCAL:Lto3;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v2, Lto3;->CLOUD:Lto3;

    .line 174
    .line 175
    if-ne v1, v2, :cond_0

    .line 176
    .line 177
    sget-object v1, Ltb1;->a:Ltb1;

    .line 178
    .line 179
    invoke-static {}, Lqb1;->m()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    .line 185
    move-object v9, v2

    .line 186
    goto :goto_0

    .line 187
    :cond_0
    move-object v9, v1

    .line 188
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 189
    .line 190
    const-class v2, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 191
    .line 192
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .line 194
    .line 195
    const-string v2, "KEY_SECTION"

    .line 196
    .line 197
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_3
    check-cast v0, Lid6;

    .line 208
    .line 209
    iget-object v1, v0, Lid6;->f:Leh2;

    .line 210
    .line 211
    iget-object v2, v0, Lid6;->p:Lgd6;

    .line 212
    .line 213
    invoke-virtual {v2}, Lgm7;->l()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_2

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Lhd6;

    .line 241
    .line 242
    iget-object v4, v4, Lhd6;->a:Lzc6;

    .line 243
    .line 244
    iget v4, v4, Lzc6;->b:I

    .line 245
    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_2
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Leh2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v7}, Lol1;->j(Z)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_4
    check-cast v0, Lae5;

    .line 266
    .line 267
    iget-object v0, v0, Lae5;->B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 274
    .line 275
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-instance v2, Lu45;

    .line 281
    .line 282
    invoke-direct {v2, v0, v1, v3}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 283
    .line 284
    .line 285
    const v1, 0x7f0f000c

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v1}, Ll90;->f(I)V

    .line 289
    .line 290
    .line 291
    new-instance v1, Lrn1;

    .line 292
    .line 293
    const/4 v3, 0x5

    .line 294
    invoke-direct {v1, v0, v3}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 295
    .line 296
    .line 297
    iput-object v1, v2, Ll90;->e:Ljava/lang/Object;

    .line 298
    .line 299
    invoke-virtual {v2}, Lu45;->j()V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_6
    check-cast v0, Lj95;

    .line 304
    .line 305
    iget-object v2, v0, Lj95;->J:Ljava/util/LinkedHashSet;

    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_3

    .line 316
    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Landroid/view/View$OnClickListener;

    .line 322
    .line 323
    invoke-interface {v3, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_3
    invoke-virtual {v0, v7, v7}, Landroidx/fragment/app/h;->i(ZZ)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 332
    .line 333
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 334
    .line 335
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->a0()Llm3;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iget-object v1, v1, Llm3;->g:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 340
    .line 341
    if-eqz v1, :cond_4

    .line 342
    .line 343
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    if-eqz v1, :cond_4

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-lez v2, :cond_4

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_4
    move-object v1, v9

    .line 357
    :goto_3
    if-eqz v1, :cond_5

    .line 358
    .line 359
    new-instance v9, Lq63;

    .line 360
    .line 361
    invoke-direct {v9, v1, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 362
    .line 363
    .line 364
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .line 365
    .line 366
    const-class v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 367
    .line 368
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .line 370
    .line 371
    const-string v2, "extra_initial_folder"

    .line 372
    .line 373
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    const v2, 0xc0bbb

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :pswitch_8
    check-cast v0, Lrj2;

    .line 388
    .line 389
    iget-object v1, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 390
    .line 391
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->S:Lgv7;

    .line 392
    .line 393
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    move-object v12, v1

    .line 398
    check-cast v12, Lxi0;

    .line 399
    .line 400
    iget-object v13, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 401
    .line 402
    iget-object v0, v0, Lrj2;->c:Lmk2;

    .line 403
    .line 404
    invoke-virtual {v0}, Lmk2;->k()Lji;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    const-string v0, "prefs"

    .line 409
    .line 410
    const-string v1, "backup_app_cache"

    .line 411
    .line 412
    const-string v2, "KEY_BACKUP_APP_CACHE"

    .line 413
    .line 414
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 415
    .line 416
    if-eqz v3, :cond_6

    .line 417
    .line 418
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    goto :goto_4

    .line 423
    :cond_6
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v9
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :catch_0
    :goto_4
    :try_start_1
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 428
    .line 429
    if-eqz v2, :cond_7

    .line 430
    .line 431
    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    :catch_1
    move v14, v7

    .line 436
    goto :goto_5

    .line 437
    :cond_7
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v9
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    :goto_5
    iget-object v15, v13, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0:Lfu;

    .line 442
    .line 443
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    sget-object v0, Lzn4;->a:Lzn4;

    .line 450
    .line 451
    new-instance v10, Lsi0;

    .line 452
    .line 453
    const/16 v16, 0x0

    .line 454
    .line 455
    invoke-direct/range {v10 .. v16}, Lsi0;-><init>(Lji;Lxi0;Landroid/app/Activity;ZLri0;Ljv1;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v9, v10}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :pswitch_9
    check-cast v0, Lgj2;

    .line 463
    .line 464
    iget-object v0, v0, Lgj2;->b:Lmk2;

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    sget-object v1, Lzn4;->a:Lzn4;

    .line 470
    .line 471
    new-instance v1, Lgj;

    .line 472
    .line 473
    invoke-direct {v1, v0, v6}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 474
    .line 475
    .line 476
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_a
    check-cast v0, Lx92;

    .line 481
    .line 482
    sget-object v1, Lgg3;->a:Lgg3;

    .line 483
    .line 484
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    const v2, 0x7f130458

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    new-instance v4, Lej;

    .line 496
    .line 497
    invoke-direct {v4, v0, v6}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 498
    .line 499
    .line 500
    invoke-static {v1, v2, v9, v4, v3}, Lgg3;->h(Lsa1;Ljava/lang/Integer;Lah;Lej;I)Lwa;

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 505
    .line 506
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 507
    .line 508
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->G0:Lgv7;

    .line 509
    .line 510
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 515
    .line 516
    if-eqz v1, :cond_8

    .line 517
    .line 518
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    if-eqz v2, :cond_8

    .line 523
    .line 524
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 525
    .line 526
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    move-object v9, v2

    .line 531
    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 532
    .line 533
    :cond_8
    if-eqz v9, :cond_9

    .line 534
    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v9, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 540
    .line 541
    .line 542
    :cond_9
    invoke-virtual {v0, v8, v7}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->t0(ZZ)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 547
    .line 548
    sget v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 549
    .line 550
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    iget-object v0, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 555
    .line 556
    iget-object v1, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 557
    .line 558
    if-nez v1, :cond_a

    .line 559
    .line 560
    goto/16 :goto_6

    .line 561
    .line 562
    :cond_a
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_b

    .line 567
    .line 568
    goto/16 :goto_6

    .line 569
    .line 570
    :cond_b
    iget-boolean v2, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 571
    .line 572
    if-nez v2, :cond_c

    .line 573
    .line 574
    new-instance v1, Lvh1;

    .line 575
    .line 576
    const v2, 0x7f1303c5

    .line 577
    .line 578
    .line 579
    invoke-direct {v1, v2}, Lvh1;-><init>(I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_6

    .line 586
    .line 587
    :cond_c
    iget-object v12, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 588
    .line 589
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-nez v1, :cond_d

    .line 598
    .line 599
    iget-wide v1, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 600
    .line 601
    const-wide/16 v3, 0x1

    .line 602
    .line 603
    add-long/2addr v1, v3

    .line 604
    iput-wide v1, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 605
    .line 606
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v9, v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    new-instance v1, Lvh1;

    .line 614
    .line 615
    const v2, 0x7f130180

    .line 616
    .line 617
    .line 618
    invoke-direct {v1, v2}, Lvh1;-><init>(I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    goto :goto_6

    .line 625
    :cond_d
    :try_start_2
    sget-object v0, Ltb1;->a:Ltb1;

    .line 626
    .line 627
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 628
    .line 629
    .line 630
    move-result-object v15

    .line 631
    invoke-static {}, Lre3;->f()Lzc2;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    new-instance v8, Lkc;

    .line 636
    .line 637
    new-instance v1, Lkf;

    .line 638
    .line 639
    invoke-direct {v1, v0, v6}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 640
    .line 641
    .line 642
    new-instance v13, Lji1;

    .line 643
    .line 644
    const-class v16, Ltb1;

    .line 645
    .line 646
    const-string v17, "listAppFolderBackupFiles"

    .line 647
    .line 648
    const-string v18, "listAppFolderBackupFiles()Lorg/swiftapps/swiftbackup/cloud/orphans/CloudBackupFileListResult;"

    .line 649
    .line 650
    const/16 v19, 0x0

    .line 651
    .line 652
    const/16 v20, 0x0

    .line 653
    .line 654
    const/4 v14, 0x0

    .line 655
    invoke-direct/range {v13 .. v20}, Lji1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 656
    .line 657
    .line 658
    new-instance v0, Lc7;

    .line 659
    .line 660
    invoke-direct {v0, v15, v4}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 661
    .line 662
    .line 663
    sget-object v2, Lvg1;->d:Lgv7;

    .line 664
    .line 665
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    check-cast v2, Lvg1;

    .line 670
    .line 671
    invoke-direct {v8, v1, v13, v0, v2}, Lkc;-><init>(Lkf;Lji1;Lc7;Lvg1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 672
    .line 673
    .line 674
    iput-object v8, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->h:Lkc;

    .line 675
    .line 676
    iput-object v12, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->i:Ljava/lang/String;

    .line 677
    .line 678
    iget-wide v10, v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 679
    .line 680
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m()Lpw5;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    iget-object v1, v0, Lpw5;->a:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Ljava/lang/Number;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 689
    .line 690
    .line 691
    move-result-wide v13

    .line 692
    iget-object v0, v0, Lpw5;->b:Ljava/lang/Object;

    .line 693
    .line 694
    move-object v15, v0

    .line 695
    check-cast v15, Lqh4;

    .line 696
    .line 697
    new-instance v0, Lou;

    .line 698
    .line 699
    invoke-direct {v0, v9}, Lou;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v9, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 703
    .line 704
    .line 705
    sget-object v0, Lzn4;->a:Lzn4;

    .line 706
    .line 707
    new-instance v7, Lzh1;

    .line 708
    .line 709
    const/16 v16, 0x0

    .line 710
    .line 711
    invoke-direct/range {v7 .. v16}, Lzh1;-><init>(Lkc;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V

    .line 712
    .line 713
    .line 714
    invoke-static {v15, v7}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 715
    .line 716
    .line 717
    goto :goto_6

    .line 718
    :catch_2
    move-exception v0

    .line 719
    new-instance v1, Lw20;

    .line 720
    .line 721
    invoke-direct {v1, v9, v0}, Lw20;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;Ljava/lang/Exception;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v9, v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 725
    .line 726
    .line 727
    :goto_6
    return-void

    .line 728
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 729
    .line 730
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 731
    .line 732
    new-instance v1, Lak;

    .line 733
    .line 734
    const/16 v2, 0x8

    .line 735
    .line 736
    invoke-direct {v1, v0, v2}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 737
    .line 738
    .line 739
    invoke-static {v0, v9, v1, v8}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 740
    .line 741
    .line 742
    return-void

    .line 743
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 744
    .line 745
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 746
    .line 747
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 752
    .line 753
    sget v1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 754
    .line 755
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    iget-object v1, v1, Lq00;->f:Ln00;

    .line 760
    .line 761
    iget-object v1, v1, Ln00;->a:Lv00;

    .line 762
    .line 763
    if-nez v1, :cond_e

    .line 764
    .line 765
    goto :goto_7

    .line 766
    :cond_e
    invoke-static {v1}, Llg7;->b(Lv00;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    new-instance v2, Landroid/content/Intent;

    .line 771
    .line 772
    const-string v3, "android.intent.action.SEND"

    .line 773
    .line 774
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    const-string v3, "text/plain"

    .line 778
    .line 779
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    .line 781
    .line 782
    const-string v3, "android.intent.extra.SUBJECT"

    .line 783
    .line 784
    const-string v4, "Swift Backup app visibility diagnostics"

    .line 785
    .line 786
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    .line 788
    .line 789
    const-string v3, "android.intent.extra.TEXT"

    .line 790
    .line 791
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    const/high16 v3, 0x10000

    .line 799
    .line 800
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-nez v1, :cond_f

    .line 812
    .line 813
    const v1, 0x7f13006f

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 825
    .line 826
    .line 827
    goto :goto_7

    .line 828
    :cond_f
    sget-object v1, Lzn4;->a:Lzn4;

    .line 829
    .line 830
    new-instance v1, Lcv;

    .line 831
    .line 832
    const/16 v2, 0xe

    .line 833
    .line 834
    const-string v3, "No app found to handle this action"

    .line 835
    .line 836
    invoke-direct {v1, v2, v0, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 840
    .line 841
    .line 842
    :goto_7
    return-void

    .line 843
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 844
    .line 845
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 846
    .line 847
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 852
    .line 853
    .line 854
    return-void

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
