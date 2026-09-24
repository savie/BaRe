.class public final synthetic Lzs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Lzs;->a:I

    iput-object p1, p0, Lzs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmj5;Llj5;)V
    .locals 0

    .line 1
    const/16 p2, 0xb

    .line 2
    .line 3
    iput p2, p0, Lzs;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lzs;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lzs;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object p0, p0, Lzs;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 14
    .line 15
    check-cast p1, Lgu8;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->V:Lgv7;

    .line 18
    .line 19
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lbs8;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lbs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 29
    .line 30
    iget-object v5, p0, Lbs8;->h:Lzx2;

    .line 31
    .line 32
    iget-object v5, v5, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    iget-object v6, p0, Lbs8;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    iget-object v7, p0, Lbs8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 37
    .line 38
    sget-object v8, Ldu8;->a:Ldu8;

    .line 39
    .line 40
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lbs8;->a(Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v7}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    instance-of v8, p1, Lcu8;

    .line 66
    .line 67
    if-eqz v8, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lbs8;->a(Ljava/lang/Integer;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lbs8;->i:Landroid/widget/TextView;

    .line 82
    .line 83
    const p1, 0x7f1303cc

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    instance-of v8, p1, Lfu8;

    .line 91
    .line 92
    if-eqz v8, :cond_3

    .line 93
    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Lfu8;

    .line 96
    .line 97
    iget-object v3, v3, Lfu8;->a:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {p0, v8}, Lbs8;->a(Ljava/lang/Integer;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lh71;

    .line 120
    .line 121
    invoke-static {v0, v3}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->V(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/List;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-direct {v1, v0, v3}, Lh71;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/ArrayList;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lhi4;

    .line 129
    .line 130
    invoke-direct {v0, v2, p0, p1}, Lhi4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v1, Lh71;->g:Lqt3;

    .line 134
    .line 135
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lbs8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 139
    .line 140
    const v1, 0x7f1301e2

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Ldj;

    .line 147
    .line 148
    const/16 v2, 0xf

    .line 149
    .line 150
    invoke-direct {v1, p0, v2}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lbs8;->g:Lcom/google/android/material/button/MaterialButton;

    .line 157
    .line 158
    iget-object v1, p0, Lbs8;->j:Lus8;

    .line 159
    .line 160
    iget-object v1, v1, Lus8;->b:Ldt8;

    .line 161
    .line 162
    invoke-interface {v1}, Ldt8;->c()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_2

    .line 167
    .line 168
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    const v1, 0x7f13045b

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lqi;

    .line 179
    .line 180
    const/4 v2, 0x4

    .line 181
    invoke-direct {v1, v2, p0, p1}, Lqi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    move-object v3, v4

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    const-string p0, "Unhandled view WifiCardState: "

    .line 190
    .line 191
    invoke-static {p1, p0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    return-object v3

    .line 195
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 196
    .line 197
    check-cast p1, Ljava/lang/Boolean;

    .line 198
    .line 199
    sget p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 200
    .line 201
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object p1, p1, Lyo7;->f:Lix6;

    .line 206
    .line 207
    invoke-virtual {p1}, Lzy4;->d()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    instance-of p1, p1, Luo7;

    .line 212
    .line 213
    if-nez p1, :cond_4

    .line 214
    .line 215
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    sget-object p1, Lzn4;->a:Lzn4;

    .line 220
    .line 221
    new-instance p1, Lwo7;

    .line 222
    .line 223
    invoke-direct {p1, p0, v3}, Lwo7;-><init>(Lyo7;Ljv1;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 227
    .line 228
    .line 229
    :cond_4
    return-object v4

    .line 230
    :pswitch_1
    check-cast p0, Lm37;

    .line 231
    .line 232
    check-cast p1, Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    new-instance v0, Lj47;

    .line 242
    .line 243
    invoke-direct {v0, p0, p1, v2}, Lj47;-><init>(Lq47;Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 247
    .line 248
    .line 249
    return-object v4

    .line 250
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 251
    .line 252
    check-cast p1, Ljava/lang/Boolean;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    sget p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 260
    .line 261
    .line 262
    return-object v4

    .line 263
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;

    .line 264
    .line 265
    check-cast p1, Landroid/content/Intent;

    .line 266
    .line 267
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->M:I

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    const/16 v0, 0x3eb

    .line 273
    .line 274
    invoke-virtual {p0, p1, v0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->O(Landroid/content/Intent;I)V

    .line 275
    .line 276
    .line 277
    return-object v4

    .line 278
    :pswitch_4
    check-cast p0, Lmj5;

    .line 279
    .line 280
    check-cast p1, Ljava/lang/Throwable;

    .line 281
    .line 282
    invoke-virtual {p0, v3}, Lmj5;->b(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    return-object v4

    .line 286
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 287
    .line 288
    check-cast p1, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 294
    .line 295
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->T()V

    .line 296
    .line 297
    .line 298
    return-object v4

    .line 299
    :pswitch_6
    check-cast p0, Lih4;

    .line 300
    .line 301
    check-cast p1, Ldy1;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const-class v0, Lih4;

    .line 307
    .line 308
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v3, "CorruptionException in "

    .line 319
    .line 320
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lih4;->a:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p0, " DataStore running in process "

    .line 329
    .line 330
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .line 346
    .line 347
    new-instance p0, Lij5;

    .line 348
    .line 349
    invoke-direct {p0, v2}, Lij5;-><init>(Z)V

    .line 350
    .line 351
    .line 352
    return-object p0

    .line 353
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 354
    .line 355
    check-cast p1, Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 358
    .line 359
    .line 360
    sget-object v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 361
    .line 362
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    const v0, 0x7f0a034d

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v0}, Lol5;->b(I)Lwk0;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    iget-object v0, p0, Lwk0;->e:Lyk0;

    .line 374
    .line 375
    iget-object v2, v0, Lyk0;->a:Lxk0;

    .line 376
    .line 377
    iput-object p1, v2, Lxk0;->L:Ljava/lang/Boolean;

    .line 378
    .line 379
    iget-object v0, v0, Lyk0;->b:Lxk0;

    .line 380
    .line 381
    iput-object p1, v0, Lxk0;->L:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 388
    .line 389
    .line 390
    return-object v4

    .line 391
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 392
    .line 393
    check-cast p1, Lbe8;

    .line 394
    .line 395
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 396
    .line 397
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    const-string v0, "signIn() called"

    .line 402
    .line 403
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    invoke-static {p0}, Lz85;->t(Lfu4;)Lxt4;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    new-instance v0, Lez3;

    .line 411
    .line 412
    invoke-direct {v0, p0, v3}, Lez3;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V

    .line 413
    .line 414
    .line 415
    const/4 p0, 0x3

    .line 416
    invoke-static {p1, v3, v0, p0}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 417
    .line 418
    .line 419
    return-object v4

    .line 420
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 421
    .line 422
    check-cast p1, Ljava/lang/String;

    .line 423
    .line 424
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 425
    .line 426
    if-eqz p1, :cond_6

    .line 427
    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-nez v0, :cond_5

    .line 433
    .line 434
    goto :goto_2

    .line 435
    :cond_5
    move v0, v1

    .line 436
    goto :goto_3

    .line 437
    :cond_6
    :goto_2
    move v0, v2

    .line 438
    :goto_3
    xor-int/2addr v0, v2

    .line 439
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 444
    .line 445
    iget-boolean v5, v5, Lyb4;->q:Z

    .line 446
    .line 447
    if-eq v5, v0, :cond_7

    .line 448
    .line 449
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget-object v0, v0, Lt52;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    new-array v5, v1, [Ljava/lang/Class;

    .line 459
    .line 460
    invoke-virtual {p0, v0, v5}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 461
    .line 462
    .line 463
    :cond_7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    if-eqz p1, :cond_8

    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    if-nez v5, :cond_9

    .line 474
    .line 475
    :cond_8
    move v1, v2

    .line 476
    :cond_9
    xor-int/2addr v1, v2

    .line 477
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->w0()V

    .line 495
    .line 496
    .line 497
    return-object v4

    .line 498
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 499
    .line 500
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 501
    .line 502
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    invoke-virtual {p0, p1, v2}, Lqq1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;I)V

    .line 512
    .line 513
    .line 514
    return-object v4

    .line 515
    :pswitch_b
    check-cast p0, Lsj1;

    .line 516
    .line 517
    check-cast p1, Ljava/lang/Integer;

    .line 518
    .line 519
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 524
    .line 525
    if-eqz v0, :cond_a

    .line 526
    .line 527
    const-string v1, "s3_chunk_size"

    .line 528
    .line 529
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0}, Lsj1;->w()V

    .line 537
    .line 538
    .line 539
    return-object v4

    .line 540
    :cond_a
    const-string p0, "editor"

    .line 541
    .line 542
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v3

    .line 546
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;

    .line 547
    .line 548
    check-cast p1, Lfm7;

    .line 549
    .line 550
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->O:I

    .line 551
    .line 552
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N:Lgv7;

    .line 553
    .line 554
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Lo51;

    .line 559
    .line 560
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Lo51;

    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0, p1, v1}, Lgm7;->w(Lfm7;Z)V

    .line 579
    .line 580
    .line 581
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->M:Lgv7;

    .line 582
    .line 583
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 588
    .line 589
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 590
    .line 591
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    xor-int/2addr p1, v2

    .line 596
    invoke-static {p0, p1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 597
    .line 598
    .line 599
    return-object v4

    .line 600
    :pswitch_d
    check-cast p0, Ldy7;

    .line 601
    .line 602
    check-cast p1, Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {p0, p1}, Ldy7;->a(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    return-object v4

    .line 608
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 609
    .line 610
    check-cast p1, Ljava/lang/Integer;

    .line 611
    .line 612
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    add-int/2addr p1, v2

    .line 617
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 618
    .line 619
    const-string v1, "mAdapter"

    .line 620
    .line 621
    if-eqz v0, :cond_d

    .line 622
    .line 623
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 624
    .line 625
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v0, p1}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    .line 632
    .line 633
    const/16 v2, 0xa

    .line 634
    .line 635
    invoke-static {p1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .line 641
    .line 642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    if-eqz v2, :cond_b

    .line 651
    .line 652
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    check-cast v2, Lji;

    .line 657
    .line 658
    invoke-virtual {v2}, Lji;->getItemId()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    goto :goto_4

    .line 666
    :cond_b
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 667
    .line 668
    if-eqz p0, :cond_c

    .line 669
    .line 670
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    invoke-virtual {p0, p1}, Lgm7;->t(Ljava/util/Set;)V

    .line 675
    .line 676
    .line 677
    return-object v4

    .line 678
    :cond_c
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw v3

    .line 682
    :cond_d
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    throw v3

    .line 686
    :pswitch_f
    check-cast p0, Ldt;

    .line 687
    .line 688
    check-cast p1, Ll10;

    .line 689
    .line 690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    iget-object p1, p1, Ll10;->b:Lnd3;

    .line 694
    .line 695
    sget-object v0, Ltd3;->Selected:Ltd3;

    .line 696
    .line 697
    if-ne p1, v0, :cond_17

    .line 698
    .line 699
    sget-object p1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 700
    .line 701
    if-eqz p1, :cond_16

    .line 702
    .line 703
    const-string v0, "selected_labels_filter"

    .line 704
    .line 705
    sget-object v2, Lsv2;->a:Lsv2;

    .line 706
    .line 707
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    if-nez p1, :cond_e

    .line 712
    .line 713
    goto :goto_5

    .line 714
    :cond_e
    move-object v2, p1

    .line 715
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    .line 716
    .line 717
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .line 719
    .line 720
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    :cond_f
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    if-eqz v2, :cond_10

    .line 729
    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    check-cast v2, Ljava/lang/String;

    .line 735
    .line 736
    sget-object v5, Llr4;->a:Llr4;

    .line 737
    .line 738
    invoke-static {v2}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    if-eqz v2, :cond_f

    .line 743
    .line 744
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    goto :goto_6

    .line 748
    :cond_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-nez v0, :cond_11

    .line 753
    .line 754
    goto :goto_7

    .line 755
    :cond_11
    move-object p1, v3

    .line 756
    :goto_7
    if-eqz p1, :cond_12

    .line 757
    .line 758
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    goto :goto_8

    .line 763
    :cond_12
    move-object p1, v3

    .line 764
    :goto_8
    if-eqz p1, :cond_15

    .line 765
    .line 766
    new-instance v0, Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .line 770
    .line 771
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    :cond_13
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    if-eqz v2, :cond_14

    .line 780
    .line 781
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    check-cast v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 786
    .line 787
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    if-eqz v2, :cond_13

    .line 792
    .line 793
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    goto :goto_9

    .line 797
    :cond_14
    new-array p1, v1, [Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    move-object v3, p1

    .line 804
    check-cast v3, [Ljava/lang/String;

    .line 805
    .line 806
    :cond_15
    const/16 p1, 0x65

    .line 807
    .line 808
    const/16 v0, 0x12

    .line 809
    .line 810
    invoke-static {p0, p1, v3, v1, v0}, Lus2;->E(Lk28;I[Ljava/lang/String;ZI)V

    .line 811
    .line 812
    .line 813
    goto :goto_a

    .line 814
    :cond_16
    const-string p0, "prefs"

    .line 815
    .line 816
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw v3

    .line 820
    :cond_17
    invoke-virtual {p0}, Ldt;->e0()V

    .line 821
    .line 822
    .line 823
    :goto_a
    return-object v4

    .line 824
    nop

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
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
