.class public final synthetic Lah;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lah;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lah;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lah;->a:I

    .line 4
    .line 5
    const-string v2, "Missing required view with ID: "

    .line 6
    .line 7
    const v3, 0x7f0a042d

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lzn3;

    .line 19
    .line 20
    const-string v1, "compression_level_folders"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_0
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lln3;

    .line 33
    .line 34
    new-instance v1, Lao3;

    .line 35
    .line 36
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 37
    .line 38
    check-cast v0, Lmn3;

    .line 39
    .line 40
    iget-object v0, v0, Lmn3;->f:Lcp1;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lao3;-><init>(Lcp1;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_1
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 49
    .line 50
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lkm3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_2
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lrj3;

    .line 62
    .line 63
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 64
    .line 65
    check-cast v0, Lsj3;

    .line 66
    .line 67
    iget-object v0, v0, Lsj3;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 68
    .line 69
    return-object v0

    .line 70
    :pswitch_3
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lkj3;

    .line 73
    .line 74
    new-instance v1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 75
    .line 76
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v1, v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;-><init>(Lq63;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :pswitch_4
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljc3;

    .line 87
    .line 88
    iget-boolean v0, v0, Ljc3;->o:Z

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :pswitch_5
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lsb3;

    .line 98
    .line 99
    new-instance v1, Lwa3;

    .line 100
    .line 101
    iget-object v0, v0, Lsb3;->a:Lokhttp3/OkHttpClient;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Lwa3;-><init>(Lokhttp3/OkHttpClient;)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :pswitch_6
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lx92;

    .line 110
    .line 111
    new-instance v1, Lqo5;

    .line 112
    .line 113
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v1, v0, v4, v4}, Lqo5;-><init>(Lk28;ZZ)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_7
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 124
    .line 125
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$OYhwB46TeeE95vp-UZIRG4p_SnE(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;)Lbe8;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :pswitch_8
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 133
    .line 134
    sget v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const v1, 0x7f0d0063

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const v1, 0x7f0a00e2

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    move-object v9, v4

    .line 155
    check-cast v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 156
    .line 157
    if-eqz v9, :cond_0

    .line 158
    .line 159
    const v1, 0x7f0a01b6

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 167
    .line 168
    if-eqz v4, :cond_0

    .line 169
    .line 170
    const v1, 0x7f0a020e

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    move-object v10, v4

    .line 178
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 179
    .line 180
    if-eqz v10, :cond_0

    .line 181
    .line 182
    const v1, 0x7f0a0215

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    move-object v11, v4

    .line 190
    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    .line 191
    .line 192
    if-eqz v11, :cond_0

    .line 193
    .line 194
    const v1, 0x7f0a0217

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    move-object v12, v4

    .line 202
    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    .line 203
    .line 204
    if-eqz v12, :cond_0

    .line 205
    .line 206
    const v1, 0x7f0a0302

    .line 207
    .line 208
    .line 209
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 214
    .line 215
    if-eqz v4, :cond_0

    .line 216
    .line 217
    const v1, 0x7f0a03a8

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 225
    .line 226
    if-eqz v4, :cond_0

    .line 227
    .line 228
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    move-object v13, v1

    .line 233
    check-cast v13, Landroidx/core/widget/NestedScrollView;

    .line 234
    .line 235
    if-eqz v13, :cond_1

    .line 236
    .line 237
    const v3, 0x7f0a04c7

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    move-object v14, v1

    .line 245
    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    .line 246
    .line 247
    if-eqz v14, :cond_1

    .line 248
    .line 249
    const v3, 0x7f0a04d4

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 257
    .line 258
    if-eqz v1, :cond_1

    .line 259
    .line 260
    const v3, 0x7f0a04da

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 268
    .line 269
    if-eqz v1, :cond_1

    .line 270
    .line 271
    const v3, 0x7f0a051e

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    move-object v15, v1

    .line 279
    check-cast v15, Landroid/widget/TextView;

    .line 280
    .line 281
    if-eqz v15, :cond_1

    .line 282
    .line 283
    const v3, 0x7f0a054b

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Landroid/widget/TextView;

    .line 291
    .line 292
    if-eqz v1, :cond_1

    .line 293
    .line 294
    const v3, 0x7f0a05a0

    .line 295
    .line 296
    .line 297
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    move-object/from16 v16, v1

    .line 302
    .line 303
    check-cast v16, Landroid/widget/TextView;

    .line 304
    .line 305
    if-eqz v16, :cond_1

    .line 306
    .line 307
    new-instance v7, Lov1;

    .line 308
    .line 309
    move-object v8, v0

    .line 310
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 311
    .line 312
    invoke-direct/range {v7 .. v16}, Lov1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 313
    .line 314
    .line 315
    move-object v6, v7

    .line 316
    goto :goto_0

    .line 317
    :cond_0
    move v3, v1

    .line 318
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_0
    return-object v6

    .line 334
    :pswitch_9
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Llr1;

    .line 337
    .line 338
    const-string v1, "config_restore_runtime_permissions"

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    return-object v0

    .line 348
    :pswitch_a
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 351
    .line 352
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    if-eqz v0, :cond_2

    .line 359
    .line 360
    const-string v1, "extra_config_settings"

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    :cond_2
    check-cast v6, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 367
    .line 368
    if-nez v6, :cond_3

    .line 369
    .line 370
    new-instance v7, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 371
    .line 372
    const v24, 0xffff

    .line 373
    .line 374
    .line 375
    const/16 v25, 0x0

    .line 376
    .line 377
    const/4 v8, 0x0

    .line 378
    const/4 v9, 0x0

    .line 379
    const/4 v10, 0x0

    .line 380
    const/4 v11, 0x0

    .line 381
    const/4 v12, 0x0

    .line 382
    const/4 v13, 0x0

    .line 383
    const/4 v14, 0x0

    .line 384
    const/4 v15, 0x0

    .line 385
    const/16 v16, 0x0

    .line 386
    .line 387
    const/16 v17, 0x0

    .line 388
    .line 389
    const/16 v18, 0x0

    .line 390
    .line 391
    const/16 v19, 0x0

    .line 392
    .line 393
    const/16 v20, 0x0

    .line 394
    .line 395
    const/16 v21, 0x0

    .line 396
    .line 397
    const/16 v22, 0x0

    .line 398
    .line 399
    const/16 v23, 0x0

    .line 400
    .line 401
    invoke-direct/range {v7 .. v25}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 402
    .line 403
    .line 404
    move-object v6, v7

    .line 405
    :cond_3
    return-object v6

    .line 406
    :pswitch_b
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 409
    .line 410
    if-eqz v0, :cond_4

    .line 411
    .line 412
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->validate()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    :cond_4
    sget-object v0, Lbr1;->a:Lbr1;

    .line 417
    .line 418
    invoke-virtual {v0, v6}, Lbr1;->d(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V

    .line 419
    .line 420
    .line 421
    new-instance v0, Lbh;

    .line 422
    .line 423
    const/16 v1, 0xe

    .line 424
    .line 425
    invoke-direct {v0, v6, v1}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 426
    .line 427
    .line 428
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 429
    .line 430
    .line 431
    sget-object v0, Lbr1;->c:Lzc2;

    .line 432
    .line 433
    invoke-virtual {v0, v6}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 434
    .line 435
    .line 436
    sget-object v0, Lbe8;->a:Lbe8;

    .line 437
    .line 438
    return-object v0

    .line 439
    :pswitch_c
    sget-object v1, Lpv2;->a:Lpv2;

    .line 440
    .line 441
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v0, Lsl1;

    .line 444
    .line 445
    iget-object v0, v0, Lsl1;->a:Ljava/util/LinkedHashMap;

    .line 446
    .line 447
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 448
    .line 449
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 450
    .line 451
    .line 452
    const-string v0, "900"

    .line 453
    .line 454
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_6

    .line 462
    .line 463
    if-eq v0, v4, :cond_5

    .line 464
    .line 465
    goto :goto_1

    .line 466
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    goto :goto_1

    .line 496
    :cond_6
    move-object v2, v1

    .line 497
    :goto_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 498
    .line 499
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 500
    .line 501
    .line 502
    const-string v2, "50"

    .line 503
    .line 504
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    if-eqz v2, :cond_8

    .line 512
    .line 513
    if-eq v2, v4, :cond_7

    .line 514
    .line 515
    move-object v1, v0

    .line 516
    goto :goto_2

    .line 517
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Ljava/util/Map$Entry;

    .line 530
    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    return-object v0

    .line 555
    :pswitch_d
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, [B

    .line 558
    .line 559
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 560
    .line 561
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 562
    .line 563
    .line 564
    return-object v1

    .line 565
    :pswitch_e
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 568
    .line 569
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 570
    .line 571
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const v1, 0x7f0d0051

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    const v1, 0x7f0a003e

    .line 583
    .line 584
    .line 585
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    move-object v9, v4

    .line 590
    check-cast v9, Landroid/widget/LinearLayout;

    .line 591
    .line 592
    if-eqz v9, :cond_9

    .line 593
    .line 594
    const v1, 0x7f0a00a9

    .line 595
    .line 596
    .line 597
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    if-eqz v4, :cond_9

    .line 602
    .line 603
    invoke-static {v4}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 604
    .line 605
    .line 606
    move-result-object v10

    .line 607
    const v1, 0x7f0a00f3

    .line 608
    .line 609
    .line 610
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    move-object v11, v4

    .line 615
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 616
    .line 617
    if-eqz v11, :cond_9

    .line 618
    .line 619
    const v1, 0x7f0a00fd

    .line 620
    .line 621
    .line 622
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    move-object v12, v4

    .line 627
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 628
    .line 629
    if-eqz v12, :cond_9

    .line 630
    .line 631
    const v1, 0x7f0a0117

    .line 632
    .line 633
    .line 634
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    move-object v13, v4

    .line 639
    check-cast v13, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 640
    .line 641
    if-eqz v13, :cond_9

    .line 642
    .line 643
    const v1, 0x7f0a0118

    .line 644
    .line 645
    .line 646
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    move-object v14, v4

    .line 651
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 652
    .line 653
    if-eqz v14, :cond_9

    .line 654
    .line 655
    const v1, 0x7f0a011f

    .line 656
    .line 657
    .line 658
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    move-object v15, v4

    .line 663
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 664
    .line 665
    if-eqz v15, :cond_9

    .line 666
    .line 667
    const v1, 0x7f0a012c

    .line 668
    .line 669
    .line 670
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    move-object/from16 v16, v4

    .line 675
    .line 676
    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 677
    .line 678
    if-eqz v16, :cond_9

    .line 679
    .line 680
    const v1, 0x7f0a0133

    .line 681
    .line 682
    .line 683
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    move-object/from16 v17, v4

    .line 688
    .line 689
    check-cast v17, Lcom/google/android/material/button/MaterialButton;

    .line 690
    .line 691
    if-eqz v17, :cond_9

    .line 692
    .line 693
    move-object v8, v0

    .line 694
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 695
    .line 696
    const v1, 0x7f0a01e0

    .line 697
    .line 698
    .line 699
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v18

    .line 703
    if-eqz v18, :cond_9

    .line 704
    .line 705
    const v1, 0x7f0a02c4

    .line 706
    .line 707
    .line 708
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    move-object/from16 v19, v4

    .line 713
    .line 714
    check-cast v19, Landroid/widget/ImageView;

    .line 715
    .line 716
    if-eqz v19, :cond_9

    .line 717
    .line 718
    const v1, 0x7f0a02c6

    .line 719
    .line 720
    .line 721
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    move-object/from16 v20, v4

    .line 726
    .line 727
    check-cast v20, Landroid/widget/ImageView;

    .line 728
    .line 729
    if-eqz v20, :cond_9

    .line 730
    .line 731
    const v1, 0x7f0a03ad

    .line 732
    .line 733
    .line 734
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 735
    .line 736
    .line 737
    move-result-object v4

    .line 738
    move-object/from16 v21, v4

    .line 739
    .line 740
    check-cast v21, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 741
    .line 742
    if-eqz v21, :cond_9

    .line 743
    .line 744
    const v1, 0x7f0a03b1

    .line 745
    .line 746
    .line 747
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 752
    .line 753
    if-eqz v4, :cond_9

    .line 754
    .line 755
    const v1, 0x7f0a03b3

    .line 756
    .line 757
    .line 758
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 763
    .line 764
    if-eqz v4, :cond_9

    .line 765
    .line 766
    const v1, 0x7f0a03b4

    .line 767
    .line 768
    .line 769
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 774
    .line 775
    if-eqz v4, :cond_9

    .line 776
    .line 777
    const v1, 0x7f0a03bf

    .line 778
    .line 779
    .line 780
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    move-object/from16 v22, v4

    .line 785
    .line 786
    check-cast v22, Landroidx/recyclerview/widget/RecyclerView;

    .line 787
    .line 788
    if-eqz v22, :cond_9

    .line 789
    .line 790
    const v1, 0x7f0a03c2

    .line 791
    .line 792
    .line 793
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 798
    .line 799
    if-eqz v4, :cond_9

    .line 800
    .line 801
    const v1, 0x7f0a03c3

    .line 802
    .line 803
    .line 804
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    move-object/from16 v23, v4

    .line 809
    .line 810
    check-cast v23, Landroidx/core/widget/NestedScrollView;

    .line 811
    .line 812
    if-eqz v23, :cond_9

    .line 813
    .line 814
    const v1, 0x7f0a03c7

    .line 815
    .line 816
    .line 817
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    move-object/from16 v24, v4

    .line 822
    .line 823
    check-cast v24, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 824
    .line 825
    if-eqz v24, :cond_9

    .line 826
    .line 827
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    move-object/from16 v25, v1

    .line 832
    .line 833
    check-cast v25, Landroidx/core/widget/NestedScrollView;

    .line 834
    .line 835
    if-eqz v25, :cond_a

    .line 836
    .line 837
    const v3, 0x7f0a04af

    .line 838
    .line 839
    .line 840
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 845
    .line 846
    if-eqz v1, :cond_a

    .line 847
    .line 848
    const v3, 0x7f0a051b

    .line 849
    .line 850
    .line 851
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    move-object/from16 v26, v1

    .line 856
    .line 857
    check-cast v26, Landroid/widget/TextView;

    .line 858
    .line 859
    if-eqz v26, :cond_a

    .line 860
    .line 861
    const v3, 0x7f0a0569

    .line 862
    .line 863
    .line 864
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    move-object/from16 v27, v1

    .line 869
    .line 870
    check-cast v27, Landroid/widget/TextView;

    .line 871
    .line 872
    if-eqz v27, :cond_a

    .line 873
    .line 874
    const v3, 0x7f0a057b

    .line 875
    .line 876
    .line 877
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    move-object/from16 v28, v1

    .line 882
    .line 883
    check-cast v28, Landroid/widget/TextView;

    .line 884
    .line 885
    if-eqz v28, :cond_a

    .line 886
    .line 887
    const v3, 0x7f0a057c

    .line 888
    .line 889
    .line 890
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    move-object/from16 v29, v1

    .line 895
    .line 896
    check-cast v29, Landroid/widget/TextView;

    .line 897
    .line 898
    if-eqz v29, :cond_a

    .line 899
    .line 900
    const v3, 0x7f0a0580

    .line 901
    .line 902
    .line 903
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    move-object/from16 v30, v1

    .line 908
    .line 909
    check-cast v30, Landroid/widget/TextView;

    .line 910
    .line 911
    if-eqz v30, :cond_a

    .line 912
    .line 913
    const v3, 0x7f0a0581

    .line 914
    .line 915
    .line 916
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    move-object/from16 v31, v1

    .line 921
    .line 922
    check-cast v31, Landroid/widget/TextView;

    .line 923
    .line 924
    if-eqz v31, :cond_a

    .line 925
    .line 926
    const v3, 0x7f0a0582

    .line 927
    .line 928
    .line 929
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    move-object/from16 v32, v1

    .line 934
    .line 935
    check-cast v32, Landroid/widget/TextView;

    .line 936
    .line 937
    if-eqz v32, :cond_a

    .line 938
    .line 939
    const v3, 0x7f0a0583

    .line 940
    .line 941
    .line 942
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    move-object/from16 v33, v1

    .line 947
    .line 948
    check-cast v33, Landroid/widget/TextView;

    .line 949
    .line 950
    if-eqz v33, :cond_a

    .line 951
    .line 952
    const v3, 0x7f0a0584

    .line 953
    .line 954
    .line 955
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    check-cast v1, Landroid/widget/TextView;

    .line 960
    .line 961
    if-eqz v1, :cond_a

    .line 962
    .line 963
    const v3, 0x7f0a05b7

    .line 964
    .line 965
    .line 966
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    move-object/from16 v34, v1

    .line 971
    .line 972
    check-cast v34, Landroid/widget/TextView;

    .line 973
    .line 974
    if-eqz v34, :cond_a

    .line 975
    .line 976
    const v3, 0x7f0a05b8

    .line 977
    .line 978
    .line 979
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    move-object/from16 v35, v1

    .line 984
    .line 985
    check-cast v35, Landroid/widget/TextView;

    .line 986
    .line 987
    if-eqz v35, :cond_a

    .line 988
    .line 989
    new-instance v7, Lbe1;

    .line 990
    .line 991
    invoke-direct/range {v7 .. v35}, Lbe1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 992
    .line 993
    .line 994
    move-object v6, v7

    .line 995
    goto :goto_3

    .line 996
    :cond_9
    move v3, v1

    .line 997
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    :goto_3
    return-object v6

    .line 1013
    :pswitch_f
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1014
    .line 1015
    move-object v3, v0

    .line 1016
    check-cast v3, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1017
    .line 1018
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1019
    .line 1020
    new-instance v0, Lac1;

    .line 1021
    .line 1022
    new-instance v1, Lxf;

    .line 1023
    .line 1024
    const/4 v7, 0x0

    .line 1025
    const/4 v8, 0x1

    .line 1026
    const/4 v2, 0x1

    .line 1027
    const-class v4, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1028
    .line 1029
    const-string v5, "onSelectedCloudConnectClick"

    .line 1030
    .line 1031
    const-string v6, "onSelectedCloudConnectClick(Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectItem;)V"

    .line 1032
    .line 1033
    invoke-direct/range {v1 .. v8}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1034
    .line 1035
    .line 1036
    invoke-direct {v0, v3, v1}, Lac1;-><init>(Lil0;Lxf;)V

    .line 1037
    .line 1038
    .line 1039
    return-object v0

    .line 1040
    :pswitch_10
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v0, Lsa1;

    .line 1043
    .line 1044
    iput-boolean v5, v0, Lsa1;->N:Z

    .line 1045
    .line 1046
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1047
    .line 1048
    return-object v0

    .line 1049
    :pswitch_11
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 1052
    .line 1053
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 1054
    .line 1055
    new-instance v1, Laj0;

    .line 1056
    .line 1057
    const/4 v2, 0x3

    .line 1058
    invoke-direct {v1, v0, v2}, Laj0;-><init>(Lil0;I)V

    .line 1059
    .line 1060
    .line 1061
    return-object v1

    .line 1062
    :pswitch_12
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v0, Lqk0;

    .line 1065
    .line 1066
    iget-object v0, v0, Lqk0;->w:Lgv7;

    .line 1067
    .line 1068
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    check-cast v0, Ljava/util/List;

    .line 1073
    .line 1074
    if-eqz v0, :cond_b

    .line 1075
    .line 1076
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    move-object v6, v0

    .line 1081
    check-cast v6, Lgm;

    .line 1082
    .line 1083
    :cond_b
    return-object v6

    .line 1084
    :pswitch_13
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1087
    .line 1088
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 1089
    .line 1090
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    iget-object v0, v0, La30;->e:Lcom/l4digital/fastscroll/FastScroller;

    .line 1095
    .line 1096
    return-object v0

    .line 1097
    :pswitch_14
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1100
    .line 1101
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1102
    .line 1103
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    iget-object v0, v0, Lg20;->e:Lcom/l4digital/fastscroll/FastScroller;

    .line 1108
    .line 1109
    return-object v0

    .line 1110
    :pswitch_15
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1111
    .line 1112
    check-cast v0, Lqx;

    .line 1113
    .line 1114
    invoke-static {v0}, Lqx;->g(Lqx;)J

    .line 1115
    .line 1116
    .line 1117
    move-result-wide v0

    .line 1118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    return-object v0

    .line 1123
    :pswitch_16
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v0, Lxw;

    .line 1126
    .line 1127
    invoke-virtual {v0}, Lxw;->w()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    return-object v0

    .line 1136
    :pswitch_17
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Ldt;

    .line 1139
    .line 1140
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 1141
    .line 1142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1143
    .line 1144
    .line 1145
    invoke-static {v0}, Ly13;->H(Landroid/app/Activity;)V

    .line 1146
    .line 1147
    .line 1148
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1149
    .line 1150
    return-object v0

    .line 1151
    :pswitch_18
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1152
    .line 1153
    check-cast v0, Lyl;

    .line 1154
    .line 1155
    iget-object v1, v0, Lyl;->e:Lgv7;

    .line 1156
    .line 1157
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    check-cast v1, Ljava/lang/Number;

    .line 1162
    .line 1163
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 1164
    .line 1165
    .line 1166
    move-result-wide v1

    .line 1167
    iget-object v0, v0, Lyl;->g:Lgv7;

    .line 1168
    .line 1169
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    check-cast v0, Ljava/lang/Number;

    .line 1174
    .line 1175
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 1176
    .line 1177
    .line 1178
    move-result-wide v3

    .line 1179
    add-long/2addr v3, v1

    .line 1180
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    return-object v0

    .line 1185
    :pswitch_19
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1186
    .line 1187
    check-cast v0, Lvl;

    .line 1188
    .line 1189
    invoke-virtual {v0}, Lvl;->i()Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    return-object v0

    .line 1198
    :pswitch_1a
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1199
    .line 1200
    check-cast v0, Lgl;

    .line 1201
    .line 1202
    iget-object v0, v0, Lgl;->c:Lgv7;

    .line 1203
    .line 1204
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    check-cast v0, Lyo5;

    .line 1209
    .line 1210
    return-object v0

    .line 1211
    :pswitch_1b
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1212
    .line 1213
    check-cast v0, Lhk;

    .line 1214
    .line 1215
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1220
    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    const-string v0, ".libs"

    .line 1230
    .line 1231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    return-object v0

    .line 1243
    :pswitch_1c
    iget-object v0, v0, Lah;->b:Ljava/lang/Object;

    .line 1244
    .line 1245
    check-cast v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;

    .line 1246
    .line 1247
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->a(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lhh;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    return-object v0

    .line 1252
    nop

    .line 1253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
