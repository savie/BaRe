.class public final synthetic Lh00;
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
    iput p2, p0, Lh00;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh00;->b:Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget p1, p0, Lh00;->a:I

    .line 2
    .line 3
    const v0, 0x7f140160

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object p0, p0, Lh00;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lto8;

    .line 15
    .line 16
    iget-object p1, p0, Lto8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 17
    .line 18
    new-instance v0, Lmo3;

    .line 19
    .line 20
    const/16 v1, 0x11

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v2, v0, v3}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 30
    .line 31
    sget-object p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const v1, 0x7f1302a6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v3, 0x7f130307

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const v4, 0x7f1300cc

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v3, Lhv1;

    .line 81
    .line 82
    invoke-direct {v3, p0, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Ls35;

    .line 86
    .line 87
    invoke-direct {v4, p0, v0, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 88
    .line 89
    .line 90
    const v0, 0x7f1304f0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Lv75;->v(I)V

    .line 94
    .line 95
    .line 96
    check-cast v1, [Ljava/lang/CharSequence;

    .line 97
    .line 98
    new-instance v0, Llu;

    .line 99
    .line 100
    const/4 v2, 0x3

    .line 101
    invoke-direct {v0, v2, p0, p1}, Llu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, v4, Lva;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lra;

    .line 107
    .line 108
    iput-object v1, p0, Lra;->p:[Ljava/lang/CharSequence;

    .line 109
    .line 110
    iput-object v0, p0, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    .line 112
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 117
    .line 118
    sget p1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 119
    .line 120
    new-instance p1, Lgs2;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lgs2;-><init>(Lil0;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lpr4;

    .line 126
    .line 127
    const/16 v4, 0xd

    .line 128
    .line 129
    invoke-direct {v1, p0, v4}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    iget-object v4, p1, Lgs2;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    .line 136
    const v5, 0x7f1303f7

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p1, Lgs2;->d:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 152
    .line 153
    const/16 v5, 0x81

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 159
    .line 160
    .line 161
    new-instance v6, Lq52;

    .line 162
    .line 163
    const/4 v7, 0x2

    .line 164
    invoke-direct {v6, p1, v7}, Lq52;-><init>(Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    .line 169
    .line 170
    iget-object v4, p1, Lgs2;->e:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 173
    .line 174
    const v6, 0x7f1301b2

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v4, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 185
    .line 186
    .line 187
    iget-object v4, p1, Lgs2;->f:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 190
    .line 191
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 192
    .line 193
    .line 194
    invoke-static {v4}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 195
    .line 196
    .line 197
    new-instance v5, Lr52;

    .line 198
    .line 199
    invoke-direct {v5, p1, v3}, Lr52;-><init>(Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Lhv1;

    .line 206
    .line 207
    invoke-direct {v3, p0, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 208
    .line 209
    .line 210
    new-instance v4, Ls35;

    .line 211
    .line 212
    invoke-direct {v4, p0, v0, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p1, Lgs2;->b:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Lnh;

    .line 218
    .line 219
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 222
    .line 223
    iget-object v0, v4, Lva;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v0, Lra;

    .line 226
    .line 227
    iput-object p0, v0, Lra;->s:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    iget-object v0, p1, Lgs2;->g:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 236
    .line 237
    new-instance v2, Lbh8;

    .line 238
    .line 239
    invoke-direct {v2, p1, v1, p0}, Lbh8;-><init>(Lgs2;Lpr4;Lwa;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p1, Lgs2;->h:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 248
    .line 249
    new-instance v1, Ldj;

    .line 250
    .line 251
    const/16 v2, 0xe

    .line 252
    .line 253
    invoke-direct {v1, p0, v2}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lgs2;->c()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_2
    check-cast p0, Lm37;

    .line 264
    .line 265
    invoke-virtual {p0}, Lm37;->q()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 270
    .line 271
    sget p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 272
    .line 273
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->L:Lgv7;

    .line 274
    .line 275
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 286
    .line 287
    iget-boolean p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c:Z

    .line 288
    .line 289
    xor-int/2addr p1, v3

    .line 290
    invoke-virtual {p0, p1, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 295
    .line 296
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 297
    .line 298
    const-class p1, Landroid/widget/TextView;

    .line 299
    .line 300
    filled-new-array {p1}, [Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lil0;->y([Ljava/lang/Class;)V

    .line 305
    .line 306
    .line 307
    iput-boolean v3, p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T:Z

    .line 308
    .line 309
    invoke-virtual {p0, v3}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T(Z)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_6
    check-cast p0, Lwa;

    .line 314
    .line 315
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 320
    .line 321
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 322
    .line 323
    if-eqz p1, :cond_1

    .line 324
    .line 325
    invoke-virtual {p1}, Lgm7;->b()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-lez p1, :cond_0

    .line 330
    .line 331
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 336
    .line 337
    .line 338
    :cond_0
    return-void

    .line 339
    :cond_1
    const-string p0, "mAdapter"

    .line 340
    .line 341
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 346
    .line 347
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 348
    .line 349
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 350
    .line 351
    invoke-static {p0}, Lx13;->R(Lk28;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 356
    .line 357
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 358
    .line 359
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->O()Lar4;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object p1, p1, Lar4;->h:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 364
    .line 365
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {p1, v0}, Ly13;->z(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    sget-object v0, Llr4;->a:Llr4;

    .line 373
    .line 374
    monitor-enter v0

    .line 375
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    sget-object v1, Lzn4;->a:Lzn4;

    .line 379
    .line 380
    new-instance v1, Lgr4;

    .line 381
    .line 382
    invoke-direct {v1, p1, v3}, Lgr4;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;I)V

    .line 383
    .line 384
    .line 385
    invoke-static {v1}, Lzn4;->c(Lbt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .line 387
    .line 388
    monitor-exit v0

    .line 389
    new-instance v0, Landroid/content/Intent;

    .line 390
    .line 391
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v1, "extra_created_label_id"

    .line 395
    .line 396
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const/4 v1, -0x1

    .line 405
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :catchall_0
    move-exception p0

    .line 420
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    throw p0

    .line 422
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 423
    .line 424
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 425
    .line 426
    sget-object p1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 427
    .line 428
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    iget-object p1, p1, Lw44;->c:Lx44;

    .line 433
    .line 434
    iget-object p1, p1, Lx44;->d:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 437
    .line 438
    new-instance v0, Landroid/graphics/Rect;

    .line 439
    .line 440
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v2, Landroid/content/Intent;

    .line 444
    .line 445
    const-class v3, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 446
    .line 447
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_2

    .line 455
    .line 456
    const-string p1, "source_bounds"

    .line 457
    .line 458
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 459
    .line 460
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 461
    .line 462
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 463
    .line 464
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 465
    .line 466
    filled-new-array {v3, v4, v5, v0}, [I

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_b
    check-cast p0, Lsr1;

    .line 481
    .line 482
    invoke-virtual {p0, v3}, Lol1;->j(Z)V

    .line 483
    .line 484
    .line 485
    iget-object p0, p0, Lsr1;->f:Lrm;

    .line 486
    .line 487
    invoke-virtual {p0}, Lrm;->invoke()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 492
    .line 493
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 494
    .line 495
    sget-object p1, Lmp6;->a:Lmp6;

    .line 496
    .line 497
    invoke-static {}, Lmp6;->f()Z

    .line 498
    .line 499
    .line 500
    move-result p1

    .line 501
    if-nez p1, :cond_3

    .line 502
    .line 503
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 504
    .line 505
    .line 506
    goto :goto_0

    .line 507
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 508
    .line 509
    const-class v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 510
    .line 511
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 515
    .line 516
    .line 517
    :goto_0
    return-void

    .line 518
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 519
    .line 520
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 521
    .line 522
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p0}, Lhf1;->l()V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 531
    .line 532
    sget p1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 533
    .line 534
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    invoke-virtual {p0}, Lq00;->j()V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
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
