.class public final synthetic Lg7;
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
    iput p2, p0, Lg7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg7;->b:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget p1, p0, Lg7;->a:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lg7;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->a:Loy8;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    monitor-exit p1

    .line 18
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lw01;

    .line 26
    .line 27
    invoke-virtual {p0}, Lw01;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    check-cast p0, Lm37;

    .line 40
    .line 41
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    new-instance v3, Lj38;

    .line 50
    .line 51
    invoke-direct {v3, p1}, Lj38;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lj38;->l(I)V

    .line 55
    .line 56
    .line 57
    iput v2, v3, Lj38;->e:I

    .line 58
    .line 59
    iput v2, v3, Lj38;->b:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->b()Ljava/util/Calendar;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/16 v4, 0xb

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/16 v4, 0xc

    .line 81
    .line 82
    if-lt p1, v4, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move v1, v2

    .line 86
    :goto_0
    iput v1, v3, Lj38;->e:I

    .line 87
    .line 88
    iput p1, v3, Lj38;->b:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->b()Ljava/util/Calendar;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {v3, p1}, Lj38;->l(I)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lj95;

    .line 111
    .line 112
    invoke-direct {p1}, Lj95;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v4, "TIME_PICKER_TIME_MODEL"

    .line 121
    .line 122
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "TIME_PICKER_TITLE_RES"

    .line 126
    .line 127
    const v4, 0x7f13053e

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    const-string v3, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    .line 134
    .line 135
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    const-string v3, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    .line 139
    .line 140
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    const-string v3, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    .line 144
    .line 145
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroidx/fragment/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "time_picker_dialog"

    .line 160
    .line 161
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/h;->k(Landroidx/fragment/app/z;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lce1;

    .line 165
    .line 166
    invoke-direct {v1, v0, p1, p0}, Lce1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p1, Lj95;->I:Ljava/util/LinkedHashSet;

    .line 170
    .line 171
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_3
    check-cast p0, Lcy5;

    .line 176
    .line 177
    iget-object p1, p0, Lcy5;->f:Landroid/widget/EditText;

    .line 178
    .line 179
    if-nez p1, :cond_1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v0, p0, Lcy5;->f:Landroid/widget/EditText;

    .line 187
    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 195
    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_2
    move v1, v2

    .line 200
    :goto_1
    iget-object v0, p0, Lcy5;->f:Landroid/widget/EditText;

    .line 201
    .line 202
    if-eqz v1, :cond_3

    .line 203
    .line 204
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    if-ltz p1, :cond_4

    .line 216
    .line 217
    iget-object v0, p0, Lcy5;->f:Landroid/widget/EditText;

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 220
    .line 221
    .line 222
    :cond_4
    invoke-virtual {p0}, Lqw2;->p()V

    .line 223
    .line 224
    .line 225
    :goto_3
    return-void

    .line 226
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 227
    .line 228
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 229
    .line 230
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 239
    .line 240
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 241
    .line 242
    new-instance p1, Lrj3;

    .line 243
    .line 244
    const/16 v0, 0x1a

    .line 245
    .line 246
    invoke-direct {p1, p0, v1, v3, v0}, Lrj3;-><init>(Lil0;ZLorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;I)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Lps;

    .line 250
    .line 251
    const/4 v1, 0x3

    .line 252
    invoke-direct {v0, p0, v1}, Lps;-><init>(Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lrj3;->k(Lqt3;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_6
    check-cast p0, Lsc3;

    .line 260
    .line 261
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 262
    .line 263
    .line 264
    new-instance p1, Lck;

    .line 265
    .line 266
    const/16 v0, 0x10

    .line 267
    .line 268
    invoke-direct {p1, p0, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 269
    .line 270
    .line 271
    const-wide/16 v0, 0x12c

    .line 272
    .line 273
    invoke-static {v0, v1, p1}, Lzn4;->f(JLbt3;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 278
    .line 279
    sget p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 280
    .line 281
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->K:Ll90;

    .line 282
    .line 283
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/a;

    .line 288
    .line 289
    sget-object v0, Lzn4;->a:Lzn4;

    .line 290
    .line 291
    new-instance v0, Lbh;

    .line 292
    .line 293
    const/16 v1, 0x12

    .line 294
    .line 295
    invoke-direct {v0, p1, v1}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 296
    .line 297
    .line 298
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    if-eqz p1, :cond_5

    .line 310
    .line 311
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    move-object v3, p1

    .line 318
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 319
    .line 320
    :cond_5
    if-eqz v3, :cond_6

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-virtual {v3, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 327
    .line 328
    .line 329
    :cond_6
    return-void

    .line 330
    :pswitch_8
    check-cast p0, Luj1;

    .line 331
    .line 332
    iget-object p1, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 333
    .line 334
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_7

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_7
    sget-object v1, Ltb1;->a:Ltb1;

    .line 342
    .line 343
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const v2, 0x7f1301e0

    .line 348
    .line 349
    .line 350
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    const v3, 0x7f1301e1

    .line 362
    .line 363
    .line 364
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    new-instance v4, Lcv;

    .line 376
    .line 377
    invoke-direct {v4, v0, p0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-static {p1, v2, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 381
    .line 382
    .line 383
    :goto_4
    return-void

    .line 384
    :pswitch_9
    check-cast p0, Llh;

    .line 385
    .line 386
    invoke-virtual {p0}, Llh;->invoke()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_a
    check-cast p0, Lgg1;

    .line 391
    .line 392
    sget-object p1, Ltb1;->a:Ltb1;

    .line 393
    .line 394
    const-string p1, "cloud_manual_delete_warning_shown"

    .line 395
    .line 396
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 397
    .line 398
    if-eqz v0, :cond_8

    .line 399
    .line 400
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    const-class v0, Landroid/widget/TextView;

    .line 412
    .line 413
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Lil0;->y([Ljava/lang/Class;)V

    .line 418
    .line 419
    .line 420
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 421
    .line 422
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    check-cast p0, Lhg1;

    .line 426
    .line 427
    iget-object p0, p0, Lhg1;->f:Lyf1;

    .line 428
    .line 429
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 432
    .line 433
    const/16 p1, 0x8

    .line 434
    .line 435
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :cond_8
    const-string p0, "editor"

    .line 440
    .line 441
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v3

    .line 445
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 446
    .line 447
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 448
    .line 449
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O:Lgv7;

    .line 450
    .line 451
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 456
    .line 457
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 462
    .line 463
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 464
    .line 465
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :pswitch_d
    check-cast p0, Luy;

    .line 470
    .line 471
    sget-object p1, Lxy;->Right:Lxy;

    .line 472
    .line 473
    sget-object v0, Luy$a;->Secondary:Luy$a;

    .line 474
    .line 475
    invoke-virtual {p0, p1, v0}, Luy;->m(Lxy;Luy$a;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_e
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    if-eqz p0, :cond_9

    .line 486
    .line 487
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    :cond_9
    return-void

    .line 491
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 492
    .line 493
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 494
    .line 495
    if-nez p1, :cond_a

    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_a
    iget-object p1, p1, Lag;->a:Ljava/lang/String;

    .line 499
    .line 500
    if-nez p1, :cond_b

    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_b
    new-instance v0, Landroid/content/Intent;

    .line 504
    .line 505
    const-class v2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 506
    .line 507
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .line 509
    .line 510
    const-string v2, "detail_launched_from_shortcut"

    .line 511
    .line 512
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 527
    .line 528
    .line 529
    :goto_5
    return-void

    .line 530
    :pswitch_10
    check-cast p0, Lo7;

    .line 531
    .line 532
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 533
    .line 534
    .line 535
    move-result-object p0

    .line 536
    new-instance p1, Lkn3;

    .line 537
    .line 538
    const/16 v0, 0x9

    .line 539
    .line 540
    invoke-direct {p1, p0, v0}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 541
    .line 542
    .line 543
    const v0, 0x7f130506

    .line 544
    .line 545
    .line 546
    invoke-static {p0, v0, p1, v3}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    nop

    .line 551
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
