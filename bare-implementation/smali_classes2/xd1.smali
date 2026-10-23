.class public final synthetic Lxd1;
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
    iput p2, p0, Lxd1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxd1;->b:Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget p1, p0, Lxd1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lxd1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 12
    .line 13
    sget p1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 14
    .line 15
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "saved_old_user_passwords"

    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    const-string v0, "saved_old_user_passwords_set"

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    check-cast p0, Lwa;

    .line 48
    .line 49
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 54
    .line 55
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 56
    .line 57
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v1, 0xa

    .line 64
    .line 65
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lzk3;

    .line 87
    .line 88
    iget-object v1, v1, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lh37;

    .line 95
    .line 96
    invoke-direct {p1, v0, v2}, Lh37;-><init>(Ljava/util/ArrayList;Z)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroid/content/Intent;

    .line 100
    .line 101
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v1, "EXTRA_RESULT"

    .line 105
    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const/4 p1, -0x1

    .line 110
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 118
    .line 119
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 120
    .line 121
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->R:Lgv7;

    .line 122
    .line 123
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 128
    .line 129
    if-eqz p1, :cond_1

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    .line 137
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    move-object v0, v1

    .line 147
    :goto_1
    if-eqz v0, :cond_2

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v1}, Ltb5;->j(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_3
    check-cast p0, Lj95;

    .line 165
    .line 166
    iget p1, p0, Lj95;->c0:I

    .line 167
    .line 168
    if-nez p1, :cond_3

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    move v0, v2

    .line 172
    :goto_2
    iput v0, p0, Lj95;->c0:I

    .line 173
    .line 174
    iget-object p1, p0, Lj95;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lj95;->l(Lcom/google/android/material/button/MaterialButton;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 181
    .line 182
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const/4 p1, 0x3

    .line 189
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_5
    check-cast p0, Lbt3;

    .line 194
    .line 195
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_6
    check-cast p0, Lrj3;

    .line 200
    .line 201
    invoke-static {}, Lq05;->getEntries()Ljx2;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lz3;

    .line 206
    .line 207
    invoke-virtual {p1}, Lz3;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    :goto_3
    move-object v1, p1

    .line 212
    check-cast v1, Lw3;

    .line 213
    .line 214
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Lq05;

    .line 225
    .line 226
    iget-object v3, p0, Lrj3;->a0:Ljava/util/List;

    .line 227
    .line 228
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    const/4 v4, 0x6

    .line 233
    invoke-virtual {v1, v4, v3}, Lq05;->setCheckedInExpansion(IZ)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->getEntries()Ljx2;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lz3;

    .line 242
    .line 243
    invoke-virtual {p1}, Lz3;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    :goto_4
    move-object v1, p1

    .line 248
    check-cast v1, Lw3;

    .line 249
    .line 250
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_6

    .line 255
    .line 256
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 261
    .line 262
    iget-object v3, p0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 263
    .line 264
    if-ne v1, v3, :cond_5

    .line 265
    .line 266
    move v3, v0

    .line 267
    goto :goto_5

    .line 268
    :cond_5
    move v3, v2

    .line 269
    :goto_5
    invoke-virtual {v1, v3}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->setCheckedInExpansion(Z)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_6
    iget-object p1, p0, Lrj3;->b0:Lqt3;

    .line 274
    .line 275
    if-eqz p1, :cond_7

    .line 276
    .line 277
    iget-object v0, p0, Lrj3;->a0:Ljava/util/List;

    .line 278
    .line 279
    iget-object v1, p0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 280
    .line 281
    invoke-interface {p1, v0, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :cond_7
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_7
    check-cast p0, Lpj2;

    .line 289
    .line 290
    iget-object p1, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 291
    .line 292
    new-instance v2, Ldk;

    .line 293
    .line 294
    const/16 v3, 0x15

    .line 295
    .line 296
    invoke-direct {v2, p0, v3}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-static {p1, v1, v2, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_8
    check-cast p0, Lx92;

    .line 304
    .line 305
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    new-instance p1, Lda2;

    .line 310
    .line 311
    invoke-direct {p1, v0, p0, v0}, Lda2;-><init>(ZLfa2;Z)V

    .line 312
    .line 313
    .line 314
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 319
    .line 320
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 321
    .line 322
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    if-eqz p1, :cond_9

    .line 335
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    :cond_8
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_a

    .line 350
    .line 351
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 356
    .line 357
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    if-eqz v3, :cond_8

    .line 362
    .line 363
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_9
    move-object v0, v1

    .line 368
    :cond_a
    sget-object p1, Lmp6;->a:Lmp6;

    .line 369
    .line 370
    invoke-static {}, Lmp6;->f()Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-nez p1, :cond_b

    .line 375
    .line 376
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 377
    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_b
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 381
    .line 382
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_c

    .line 387
    .line 388
    sget-object p1, Lzn4;->a:Lzn4;

    .line 389
    .line 390
    new-instance p1, Lb56;

    .line 391
    .line 392
    invoke-direct {p1, p0, v2}, Lb56;-><init>(Lk28;I)V

    .line 393
    .line 394
    .line 395
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_c
    new-instance p1, Landroid/content/Intent;

    .line 400
    .line 401
    const-class v2, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 402
    .line 403
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .line 405
    .line 406
    const-string v2, "extra_config_settings"

    .line 407
    .line 408
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    if-eqz v0, :cond_d

    .line 413
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .line 418
    .line 419
    :cond_d
    const-string v0, "extra_other_apply_data"

    .line 420
    .line 421
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    const/16 v0, 0x18

    .line 429
    .line 430
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 431
    .line 432
    .line 433
    :goto_7
    return-void

    .line 434
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 435
    .line 436
    sget p1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 437
    .line 438
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 443
    .line 444
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 445
    .line 446
    if-nez v0, :cond_e

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_e
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-nez v1, :cond_f

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_f
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->p(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_10

    .line 461
    .line 462
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 463
    .line 464
    const-wide/16 v2, 0x1

    .line 465
    .line 466
    add-long/2addr v0, v2

    .line 467
    iput-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 468
    .line 469
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    new-instance p0, Lvh1;

    .line 477
    .line 478
    const v0, 0x7f130180

    .line 479
    .line 480
    .line 481
    invoke-direct {p0, v0}, Lvh1;-><init>(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, p0}, Lix6;->k(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_10
    iget-object p0, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    const-wide/16 v2, 0x0

    .line 507
    .line 508
    move-wide v4, v2

    .line 509
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-eqz v6, :cond_12

    .line 514
    .line 515
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    check-cast v6, Lwa1;

    .line 520
    .line 521
    iget-wide v6, v6, Lwa1;->e:J

    .line 522
    .line 523
    cmp-long v8, v6, v2

    .line 524
    .line 525
    if-gez v8, :cond_11

    .line 526
    .line 527
    move-wide v6, v2

    .line 528
    :cond_11
    add-long/2addr v4, v6

    .line 529
    goto :goto_8

    .line 530
    :cond_12
    new-instance v0, Lsh1;

    .line 531
    .line 532
    invoke-direct {v0, p0, v4, v5, v1}, Lsh1;-><init>(Ljava/lang/String;JI)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    :goto_9
    return-void

    .line 539
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 540
    .line 541
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 542
    .line 543
    new-instance p1, Ldk;

    .line 544
    .line 545
    const/16 v0, 0xe

    .line 546
    .line 547
    invoke-direct {p1, p0, v0}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 548
    .line 549
    .line 550
    const v0, 0x7f130203

    .line 551
    .line 552
    .line 553
    invoke-static {p0, v0, p1, v1}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
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
