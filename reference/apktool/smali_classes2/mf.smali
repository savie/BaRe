.class public final synthetic Lmf;
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

    .line 1
    iput p2, p0, Lmf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget v0, p0, Lmf;->a:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Lmf;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lcs8;

    .line 14
    .line 15
    iget-object p0, p0, Lcs8;->b:Liu8;

    .line 16
    .line 17
    invoke-virtual {p0}, Liu8;->l()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, La47;

    .line 22
    .line 23
    iget-object p1, p0, La47;->f:Lev;

    .line 24
    .line 25
    iget-object v0, p0, La47;->q:Lid2;

    .line 26
    .line 27
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljd2;

    .line 55
    .line 56
    iget v1, v1, Ljd2;->a:I

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lev;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lho;

    .line 76
    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void

    .line 83
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 84
    .line 85
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 86
    .line 87
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 94
    .line 95
    sget p1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 102
    .line 103
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const v0, 0x7f1304a1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\n"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f130041

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "\n    \u2022 "

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const v0, 0x7f130040

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const v0, 0x7f13003c

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const v0, 0x7f13003d

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lb67;->e()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_2

    .line 220
    .line 221
    const v0, 0x7f1303e3

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :cond_2
    sget-object v0, Ldz5;->a:Ldz5;

    .line 244
    .line 245
    invoke-static {}, Ldz5;->j()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-static {v0}, Ldz5;->l(Z)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_3

    .line 254
    .line 255
    const v0, 0x7f13003e

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-instance v0, Lhv1;

    .line 282
    .line 283
    const v1, 0x7f140160

    .line 284
    .line 285
    .line 286
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 287
    .line 288
    .line 289
    new-instance v2, Ls35;

    .line 290
    .line 291
    invoke-direct {v2, p0, v1, v0, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 292
    .line 293
    .line 294
    const v0, 0x7f1304a2

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v0}, Lv75;->v(I)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v2, Lva;->b:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v0, Lra;

    .line 303
    .line 304
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 305
    .line 306
    new-instance p1, Lff4;

    .line 307
    .line 308
    invoke-direct {p1, p0}, Lff4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;)V

    .line 309
    .line 310
    .line 311
    const p0, 0x7f13029b

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    const p0, 0x7f1300f1

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, p0, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 328
    .line 329
    sget-object p1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 330
    .line 331
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->P:Ll90;

    .line 332
    .line 333
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    check-cast p1, Lx54;

    .line 338
    .line 339
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V:Lv54;

    .line 340
    .line 341
    iget-boolean p0, p0, Lv54;->i:Z

    .line 342
    .line 343
    xor-int/2addr p0, v3

    .line 344
    iget-boolean v0, p1, Lx54;->i:Z

    .line 345
    .line 346
    if-ne v0, p0, :cond_4

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_4
    iput-boolean p0, p1, Lx54;->i:Z

    .line 350
    .line 351
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 352
    .line 353
    if-eqz v0, :cond_5

    .line 354
    .line 355
    const-string v1, "home_search_show_system_apps"

    .line 356
    .line 357
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    .line 363
    .line 364
    iget-object p0, p1, Lx54;->h:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {p1, p0}, Lx54;->l(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :goto_1
    return-void

    .line 370
    :cond_5
    const-string p0, "editor"

    .line 371
    .line 372
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v4

    .line 376
    :pswitch_5
    check-cast p0, La14;

    .line 377
    .line 378
    invoke-virtual {p0, v2}, Lol1;->j(Z)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 383
    .line 384
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N:I

    .line 385
    .line 386
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    iget-object p1, p1, Lub5;->b:Lcom/google/android/material/button/MaterialButton;

    .line 391
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    if-eqz v0, :cond_6

    .line 397
    .line 398
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_6
    move-object v0, v4

    .line 408
    :goto_2
    if-eqz v0, :cond_7

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 415
    .line 416
    .line 417
    :cond_7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iget-object v0, p1, Lec3;->e:Lex6;

    .line 422
    .line 423
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    iget-object v1, v1, Lub5;->f:Ld62;

    .line 428
    .line 429
    iget-object v1, v1, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 430
    .line 431
    invoke-virtual {v1}, Llo;->getText()Landroid/text/Editable;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N()Lub5;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    iget-object p0, p0, Lub5;->k:Lx00;

    .line 452
    .line 453
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 456
    .line 457
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    sget-object v3, Lyb3;->a:Lyb3;

    .line 473
    .line 474
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_8

    .line 479
    .line 480
    goto :goto_3

    .line 481
    :cond_8
    iput-object v1, p1, Lec3;->h:Ljava/lang/String;

    .line 482
    .line 483
    iput-object p0, p1, Lec3;->i:Ljava/lang/String;

    .line 484
    .line 485
    const-string p0, ""

    .line 486
    .line 487
    iput-object p0, p1, Lec3;->j:Ljava/lang/String;

    .line 488
    .line 489
    invoke-virtual {v0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    const v0, 0x7f13042e

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v0}, Lqo0;->h(I)V

    .line 496
    .line 497
    .line 498
    sget-object v0, Lzn4;->a:Lzn4;

    .line 499
    .line 500
    iget-object v0, p1, Lec3;->g:Lfs7;

    .line 501
    .line 502
    new-instance v1, Ldc3;

    .line 503
    .line 504
    invoke-direct {v1, p1, p0, v4}, Ldc3;-><init>(Lec3;Ljava/lang/String;Ljv1;)V

    .line 505
    .line 506
    .line 507
    invoke-static {v0, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 508
    .line 509
    .line 510
    :goto_3
    return-void

    .line 511
    :pswitch_7
    check-cast p0, Lx92;

    .line 512
    .line 513
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    const-class p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 518
    .line 519
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_8
    check-cast p0, Ll01;

    .line 524
    .line 525
    iget-object p0, p0, Ll01;->C:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 526
    .line 527
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 532
    .line 533
    sget p1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 534
    .line 535
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    const p1, 0x7f13042d

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 543
    .line 544
    .line 545
    sget-object p1, Lzn4;->a:Lzn4;

    .line 546
    .line 547
    new-instance p1, Lwm;

    .line 548
    .line 549
    invoke-direct {p1, p0, v4, v3}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 550
    .line 551
    .line 552
    invoke-static {v4, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :pswitch_a
    move-object v8, p0

    .line 557
    check-cast v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 558
    .line 559
    iget-object p0, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->n0:Lgv7;

    .line 560
    .line 561
    iget-object p1, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 562
    .line 563
    iget-object v11, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->r0:Lkm5;

    .line 564
    .line 565
    const-string v0, "mAdapter"

    .line 566
    .line 567
    if-eqz p1, :cond_24

    .line 568
    .line 569
    iget-object p1, p1, Lgm7;->e:Lfm7;

    .line 570
    .line 571
    iget-object p1, p1, Lfm7;->b:Ljava/util/Set;

    .line 572
    .line 573
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    if-eqz p1, :cond_9

    .line 578
    .line 579
    const p0, 0x7f1304e3

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    sget-object p1, Lzn4;->a:Lzn4;

    .line 590
    .line 591
    new-instance p1, Lcv;

    .line 592
    .line 593
    const/16 v0, 0xe

    .line 594
    .line 595
    invoke-direct {p1, v0, v8, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_8

    .line 602
    .line 603
    :cond_9
    iget-object v6, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->f0:Ln10;

    .line 604
    .line 605
    if-eqz v6, :cond_18

    .line 606
    .line 607
    iget-object p1, v6, Ln10;->a:Ljava/lang/String;

    .line 608
    .line 609
    const-string v1, "Uninstall"

    .line 610
    .line 611
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-eqz v1, :cond_a

    .line 616
    .line 617
    iget p0, v6, Ln10;->p:I

    .line 618
    .line 619
    invoke-virtual {v8, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p0

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    new-instance p1, Lgj;

    .line 627
    .line 628
    const/16 v0, 0x8

    .line 629
    .line 630
    invoke-direct {p1, v8, v0}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 631
    .line 632
    .line 633
    invoke-static {v8, p0, v4, p1}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_8

    .line 637
    .line 638
    :cond_a
    const-string v1, "Delete backups"

    .line 639
    .line 640
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-eqz v1, :cond_b

    .line 645
    .line 646
    iget-boolean p0, v6, Ln10;->k:Z

    .line 647
    .line 648
    sget-object p1, Lzn4;->a:Lzn4;

    .line 649
    .line 650
    new-instance p1, Lb20;

    .line 651
    .line 652
    invoke-direct {p1, v8, p0, v4}, Lb20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;ZLjv1;)V

    .line 653
    .line 654
    .line 655
    invoke-static {v4, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 656
    .line 657
    .line 658
    goto/16 :goto_8

    .line 659
    .line 660
    :cond_b
    const-string v1, "Enable/Disable apps"

    .line 661
    .line 662
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-eqz v1, :cond_c

    .line 667
    .line 668
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->n0()V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_8

    .line 672
    .line 673
    :cond_c
    const-string v1, "Apply labels"

    .line 674
    .line 675
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_e

    .line 680
    .line 681
    new-instance p0, Ln97;

    .line 682
    .line 683
    iget-object p1, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 684
    .line 685
    if-eqz p1, :cond_d

    .line 686
    .line 687
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    new-instance v0, Lcz;

    .line 692
    .line 693
    invoke-direct {v0, v8, v3}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 694
    .line 695
    .line 696
    invoke-direct {p0, v8, p1, v0}, Ln97;-><init>(Landroid/app/Activity;Ljava/util/List;Lcz;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p0, v8, v2, v2}, Lol1;->F(Lk28;ZZ)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_8

    .line 703
    .line 704
    :cond_d
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    throw v4

    .line 708
    :cond_e
    const-string v1, "Export apps list"

    .line 709
    .line 710
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result p1

    .line 714
    if-eqz p1, :cond_f

    .line 715
    .line 716
    sget-object p0, Lzn4;->a:Lzn4;

    .line 717
    .line 718
    new-instance p0, Ld20;

    .line 719
    .line 720
    invoke-direct {p0, v8, v4}, Ld20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ljv1;)V

    .line 721
    .line 722
    .line 723
    invoke-static {v4, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 724
    .line 725
    .line 726
    goto/16 :goto_8

    .line 727
    .line 728
    :cond_f
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object p0

    .line 732
    move-object v7, p0

    .line 733
    check-cast v7, Lxi0;

    .line 734
    .line 735
    iget-object p0, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 736
    .line 737
    if-eqz p0, :cond_17

    .line 738
    .line 739
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    if-eqz p1, :cond_11

    .line 748
    .line 749
    :cond_10
    move v9, v2

    .line 750
    goto :goto_4

    .line 751
    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object p0

    .line 755
    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    if-eqz p1, :cond_10

    .line 760
    .line 761
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    check-cast p1, Lji;

    .line 766
    .line 767
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 768
    .line 769
    .line 770
    move-result p1

    .line 771
    if-nez p1, :cond_12

    .line 772
    .line 773
    move v9, v3

    .line 774
    :goto_4
    iget-object p0, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 775
    .line 776
    if-eqz p0, :cond_16

    .line 777
    .line 778
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 779
    .line 780
    .line 781
    move-result-object p0

    .line 782
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 783
    .line 784
    .line 785
    move-result p1

    .line 786
    if-eqz p1, :cond_14

    .line 787
    .line 788
    :cond_13
    move v10, v2

    .line 789
    goto :goto_5

    .line 790
    :cond_14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 795
    .line 796
    .line 797
    move-result p1

    .line 798
    if-eqz p1, :cond_13

    .line 799
    .line 800
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object p1

    .line 804
    check-cast p1, Lji;

    .line 805
    .line 806
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 807
    .line 808
    .line 809
    move-result p1

    .line 810
    if-eqz p1, :cond_15

    .line 811
    .line 812
    move v10, v3

    .line 813
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    sget-object p0, Lzn4;->a:Lzn4;

    .line 820
    .line 821
    new-instance v5, Lti0;

    .line 822
    .line 823
    const/4 v12, 0x0

    .line 824
    invoke-direct/range {v5 .. v12}, Lti0;-><init>(Ln10;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V

    .line 825
    .line 826
    .line 827
    invoke-static {v4, v5}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 828
    .line 829
    .line 830
    goto/16 :goto_8

    .line 831
    .line 832
    :cond_16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    throw v4

    .line 836
    :cond_17
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    throw v4

    .line 840
    :cond_18
    iget-object v6, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0:Lzc6;

    .line 841
    .line 842
    if-eqz v6, :cond_23

    .line 843
    .line 844
    iget-object p1, v6, Lzc6;->a:Ljava/lang/String;

    .line 845
    .line 846
    const-string v1, "ID_DELETE_BACKUPS_UNINSTALLED_APPS"

    .line 847
    .line 848
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-eqz v1, :cond_19

    .line 853
    .line 854
    iget-boolean p0, v6, Lzc6;->q:Z

    .line 855
    .line 856
    sget-object p1, Lzn4;->a:Lzn4;

    .line 857
    .line 858
    new-instance p1, Lb20;

    .line 859
    .line 860
    invoke-direct {p1, v8, p0, v4}, Lb20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;ZLjv1;)V

    .line 861
    .line 862
    .line 863
    invoke-static {v4, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 864
    .line 865
    .line 866
    goto/16 :goto_8

    .line 867
    .line 868
    :cond_19
    const-string v1, "ID_ENABLE_DISABLE_APPS_APPS"

    .line 869
    .line 870
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result p1

    .line 874
    if-eqz p1, :cond_1a

    .line 875
    .line 876
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->n0()V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_8

    .line 880
    .line 881
    :cond_1a
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object p0

    .line 885
    move-object v7, p0

    .line 886
    check-cast v7, Lxi0;

    .line 887
    .line 888
    iget-object p0, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 889
    .line 890
    if-eqz p0, :cond_22

    .line 891
    .line 892
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 893
    .line 894
    .line 895
    move-result-object p0

    .line 896
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    if-eqz p1, :cond_1c

    .line 901
    .line 902
    :cond_1b
    move v9, v2

    .line 903
    goto :goto_6

    .line 904
    :cond_1c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 905
    .line 906
    .line 907
    move-result-object p0

    .line 908
    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 909
    .line 910
    .line 911
    move-result p1

    .line 912
    if-eqz p1, :cond_1b

    .line 913
    .line 914
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object p1

    .line 918
    check-cast p1, Lji;

    .line 919
    .line 920
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 921
    .line 922
    .line 923
    move-result p1

    .line 924
    if-nez p1, :cond_1d

    .line 925
    .line 926
    move v9, v3

    .line 927
    :goto_6
    iget-object p0, v8, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 928
    .line 929
    if-eqz p0, :cond_21

    .line 930
    .line 931
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 932
    .line 933
    .line 934
    move-result-object p0

    .line 935
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 936
    .line 937
    .line 938
    move-result p1

    .line 939
    if-eqz p1, :cond_1f

    .line 940
    .line 941
    :cond_1e
    move v10, v2

    .line 942
    goto :goto_7

    .line 943
    :cond_1f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 944
    .line 945
    .line 946
    move-result-object p0

    .line 947
    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 948
    .line 949
    .line 950
    move-result p1

    .line 951
    if-eqz p1, :cond_1e

    .line 952
    .line 953
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object p1

    .line 957
    check-cast p1, Lji;

    .line 958
    .line 959
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 960
    .line 961
    .line 962
    move-result p1

    .line 963
    if-eqz p1, :cond_20

    .line 964
    .line 965
    move v10, v3

    .line 966
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    .line 971
    .line 972
    sget-object p0, Lzn4;->a:Lzn4;

    .line 973
    .line 974
    new-instance v5, Lui0;

    .line 975
    .line 976
    const/4 v12, 0x0

    .line 977
    invoke-direct/range {v5 .. v12}, Lui0;-><init>(Lzc6;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V

    .line 978
    .line 979
    .line 980
    invoke-static {v4, v5}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 981
    .line 982
    .line 983
    goto :goto_8

    .line 984
    :cond_21
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    throw v4

    .line 988
    :cond_22
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    throw v4

    .line 992
    :cond_23
    const-class p0, Ln10;

    .line 993
    .line 994
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object p0

    .line 998
    const-class p1, Lzc6;

    .line 999
    .line 1000
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p1

    .line 1004
    const-string v0, " & "

    .line 1005
    .line 1006
    const-string v1, " are null!"

    .line 1007
    .line 1008
    const-string v2, "No action found as both "

    .line 1009
    .line 1010
    invoke-static {v2, p0, v0, p1, v1}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p0

    .line 1014
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    :goto_8
    return-void

    .line 1018
    :cond_24
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    throw v4

    .line 1022
    :pswitch_b
    check-cast p0, Lt10;

    .line 1023
    .line 1024
    sget-object p1, Lmp6;->a:Lmp6;

    .line 1025
    .line 1026
    invoke-static {}, Lmp6;->f()Z

    .line 1027
    .line 1028
    .line 1029
    move-result p1

    .line 1030
    iget-object p0, p0, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 1031
    .line 1032
    if-eqz p1, :cond_25

    .line 1033
    .line 1034
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    const p1, 0x7f1302b0

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    .line 1046
    .line 1047
    invoke-static {p0, v4, p1, v1}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 1048
    .line 1049
    .line 1050
    goto :goto_9

    .line 1051
    :cond_25
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 1052
    .line 1053
    .line 1054
    :goto_9
    return-void

    .line 1055
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 1056
    .line 1057
    sget v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 1058
    .line 1059
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    new-instance v0, Lu45;

    .line 1063
    .line 1064
    const/16 v1, 0xc

    .line 1065
    .line 1066
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 1067
    .line 1068
    .line 1069
    const/high16 p1, 0x7f0f0000

    .line 1070
    .line 1071
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 1072
    .line 1073
    .line 1074
    new-instance p1, Lpf;

    .line 1075
    .line 1076
    invoke-direct {p1, p0, v2}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 1077
    .line 1078
    .line 1079
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Lu45;->j()V

    .line 1082
    .line 1083
    .line 1084
    return-void

    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
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
