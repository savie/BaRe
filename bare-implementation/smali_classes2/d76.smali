.class public final synthetic Ld76;
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

    .line 11
    iput p2, p0, Ld76;->a:I

    iput-object p1, p0, Ld76;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0x1c

    .line 2
    .line 3
    iput p2, p0, Ld76;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ld76;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Ld76;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Ld76;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 12
    .line 13
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lrr4;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 23
    .line 24
    sget-object v1, Llr4;->a:Llr4;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    :try_start_0
    sget-object v0, Llr4;->g:Lgv7;

    .line 30
    .line 31
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lq63;

    .line 36
    .line 37
    invoke-virtual {v3}, Lq63;->t()Lq63;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lq63;->j()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    invoke-static {v3}, Lq63;->E(Lq63;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :goto_0
    sget-object v3, Lw14;->a:Lgv7;

    .line 58
    .line 59
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lq63;

    .line 64
    .line 65
    invoke-static {p0, v0, v2}, Lw14;->g(Ljava/lang/Object;Lq63;Z)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object p0, Llr4;->g:Lgv7;

    .line 70
    .line 71
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lq63;

    .line 76
    .line 77
    invoke-virtual {p0}, Lq63;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_1
    monitor-exit v1

    .line 81
    sget-object p0, Lbe8;->a:Lbe8;

    .line 82
    .line 83
    return-object p0

    .line 84
    :goto_2
    monitor-exit v1

    .line 85
    throw p0

    .line 86
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 87
    .line 88
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget-object p0, p0, Lyq4;->n:Lur;

    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_2
    check-cast p0, La14;

    .line 98
    .line 99
    iget-object p0, p0, La14;->p:Lgv7;

    .line 100
    .line 101
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lb14;

    .line 106
    .line 107
    iget-object p0, p0, Lb14;->c:Lcom/google/android/material/button/MaterialButton;

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_3
    check-cast p0, Lkp3;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lio1;->getViewModelStore()Lyl8;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0}, Lio1;->getDefaultViewModelCreationExtras()Lej5;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance v4, Llj3;

    .line 132
    .line 133
    invoke-direct {v4, v1, v2, v0}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lkp3;->d:Lto3;

    .line 137
    .line 138
    if-eqz p0, :cond_2

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-class v0, Lnp3;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v4, v0, p0}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Lnp3;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_2
    const-string p0, "section"

    .line 161
    .line 162
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v3

    .line 166
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 167
    .line 168
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 169
    .line 170
    new-instance v0, Lml3;

    .line 171
    .line 172
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v1, v1, Lil3;->d:Ljl3;

    .line 177
    .line 178
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {v0, p0, v1, v2}, Lml3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Ljl3;Ldm3;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :pswitch_5
    check-cast p0, Lqk3;

    .line 187
    .line 188
    new-instance v0, Lok3;

    .line 189
    .line 190
    invoke-direct {v0, p0}, Lok3;-><init>(Lqk3;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 195
    .line 196
    sget-object v0, Lsf1;->g:Lsf1;

    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v0, p0}, Ldv;->d(Ljava/lang/String;)Ljl0;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_7
    check-cast p0, Lkj3;

    .line 210
    .line 211
    iget-object p0, p0, Lkj3;->a:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    sget-object v0, Ld45;->b:Ld45;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_3

    .line 226
    .line 227
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {p0}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    return-object p0

    .line 263
    :cond_3
    const-string p0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 264
    .line 265
    invoke-static {v2, p0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    throw p0

    .line 270
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 271
    .line 272
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 273
    .line 274
    new-instance v0, Lgj2;

    .line 275
    .line 276
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v1, v1, Ldj2;->e:Lhj2;

    .line 281
    .line 282
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-direct {v0, p0, v1, v2}, Lgj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lhj2;Lmk2;)V

    .line 287
    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_9
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 291
    .line 292
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$0jRwbJBqQnMvA0jbhiCLiy9nLpI(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)Lbe8;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    return-object p0

    .line 297
    :pswitch_a
    check-cast p0, Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    return-object p0

    .line 304
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 305
    .line 306
    sget v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 307
    .line 308
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    iget-object p0, p0, Lov1;->n:Landroid/widget/TextView;

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 316
    .line 317
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 318
    .line 319
    new-instance v0, Ltq1;

    .line 320
    .line 321
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->Q:Lgv7;

    .line 322
    .line 323
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Lfr1;

    .line 328
    .line 329
    iget-object v1, v1, Lfr1;->c:Lny1;

    .line 330
    .line 331
    invoke-virtual {p0}, Lk28;->v()Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    invoke-direct {v0, v1, p0}, Ltq1;-><init>(Lny1;Z)V

    .line 336
    .line 337
    .line 338
    return-object v0

    .line 339
    :pswitch_d
    move-object v4, p0

    .line 340
    check-cast v4, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 341
    .line 342
    sget-object p0, Lbe8;->a:Lbe8;

    .line 343
    .line 344
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 345
    .line 346
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_4

    .line 351
    .line 352
    :goto_3
    move-object v3, p0

    .line 353
    goto :goto_4

    .line 354
    :cond_4
    invoke-static {v4, v2}, Lsq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_6

    .line 359
    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 361
    .line 362
    .line 363
    move-result-wide v5

    .line 364
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    const/16 v10, 0xf

    .line 369
    .line 370
    const/4 v11, 0x0

    .line 371
    const/4 v5, 0x0

    .line 372
    const/4 v6, 0x0

    .line 373
    const/4 v7, 0x0

    .line 374
    const/4 v8, 0x0

    .line 375
    invoke-static/range {v4 .. v11}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-object v2, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 380
    .line 381
    if-nez v2, :cond_5

    .line 382
    .line 383
    new-instance v2, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 384
    .line 385
    invoke-direct {v2, v3, v1, v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 386
    .line 387
    .line 388
    :cond_5
    invoke-virtual {v2, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->put(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;)V

    .line 389
    .line 390
    .line 391
    sget-object v0, Lbr1;->a:Lbr1;

    .line 392
    .line 393
    new-instance v0, Lah;

    .line 394
    .line 395
    const/16 v1, 0x11

    .line 396
    .line 397
    invoke-direct {v0, v2, v1}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 398
    .line 399
    .line 400
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_6
    const-string p0, "ConfigRepo.saveConfig: Invalid params: "

    .line 405
    .line 406
    invoke-static {v4, p0}, Lc6;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :goto_4
    return-object v3

    .line 410
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 411
    .line 412
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 413
    .line 414
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->O()Lnr1;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    iget-object p0, p0, Lnr1;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 419
    .line 420
    return-object p0

    .line 421
    :pswitch_f
    check-cast p0, Lio1;

    .line 422
    .line 423
    invoke-static {p0}, Lio1;->g(Lio1;)Lat3;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_10
    check-cast p0, Lsj1;

    .line 429
    .line 430
    const-string v0, "parallel_cloud_transfers"

    .line 431
    .line 432
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 440
    .line 441
    return-object p0

    .line 442
    :pswitch_11
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 443
    .line 444
    sget v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 445
    .line 446
    new-instance v0, Lf75;

    .line 447
    .line 448
    const/16 v1, 0x3e

    .line 449
    .line 450
    invoke-direct {v0, p0, v1}, Lf75;-><init>(Lk28;I)V

    .line 451
    .line 452
    .line 453
    return-object v0

    .line 454
    :pswitch_12
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;

    .line 455
    .line 456
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->O:I

    .line 457
    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    const v0, 0x7f0d004c

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    const v0, 0x7f0a00a9

    .line 470
    .line 471
    .line 472
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    if-eqz v1, :cond_8

    .line 477
    .line 478
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    move-object v1, p0

    .line 483
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 484
    .line 485
    const v2, 0x7f0a03bf

    .line 486
    .line 487
    .line 488
    invoke-static {p0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 493
    .line 494
    if-eqz v4, :cond_7

    .line 495
    .line 496
    new-instance v3, Lk51;

    .line 497
    .line 498
    invoke-direct {v3, v1, v0, v4}, Lk51;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 499
    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_7
    move v0, v2

    .line 503
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    const-string v0, "Missing required view with ID: "

    .line 512
    .line 513
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :goto_5
    return-object v3

    .line 521
    :pswitch_13
    check-cast p0, Lcom/android/billingclient/api/Purchase;

    .line 522
    .line 523
    sget-object v0, Lwq0;->a:Lwq0;

    .line 524
    .line 525
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    const/4 v8, 0x0

    .line 530
    const/16 v9, 0x3f

    .line 531
    .line 532
    const/4 v5, 0x0

    .line 533
    const/4 v6, 0x0

    .line 534
    const/4 v7, 0x0

    .line 535
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    iget-object v4, p0, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 540
    .line 541
    const-string v5, "orderId"

    .line 542
    .line 543
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-eqz v6, :cond_9

    .line 552
    .line 553
    goto :goto_6

    .line 554
    :cond_9
    move-object v3, v5

    .line 555
    :goto_6
    const-string v5, "purchaseState"

    .line 556
    .line 557
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    const/4 v6, 0x4

    .line 562
    if-eq v5, v6, :cond_a

    .line 563
    .line 564
    move v5, v1

    .line 565
    goto :goto_7

    .line 566
    :cond_a
    const/4 v5, 0x2

    .line 567
    :goto_7
    const-string v6, "New purchase: sku="

    .line 568
    .line 569
    const-string v7, ", orderId="

    .line 570
    .line 571
    const-string v8, ", state="

    .line 572
    .line 573
    invoke-static {v6, v0, v7, v3, v8}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 585
    .line 586
    const-string v7, "BillingManager"

    .line 587
    .line 588
    const/4 v10, 0x4

    .line 589
    const/4 v11, 0x0

    .line 590
    const/4 v9, 0x0

    .line 591
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    sget-object v0, Lwb6;->Companion:Lwb6$a;

    .line 595
    .line 596
    invoke-virtual {v0, p0}, Lwb6$a;->from(Lcom/android/billingclient/api/Purchase;)Lwb6;

    .line 597
    .line 598
    .line 599
    move-result-object p0

    .line 600
    invoke-virtual {p0}, Lwb6;->getPurchaseStateEnum()Lwb6$b;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sget-object v3, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 605
    .line 606
    if-ne v0, v3, :cond_b

    .line 607
    .line 608
    sget-object v3, Lwq0;->c:Lex6;

    .line 609
    .line 610
    sget-object v5, Lpq0;->a:Lpq0;

    .line 611
    .line 612
    invoke-virtual {v3, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    const-string v3, "acknowledged"

    .line 616
    .line 617
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-nez v3, :cond_b

    .line 622
    .line 623
    const-string v3, "purchaseToken"

    .line 624
    .line 625
    const-string v5, "token"

    .line 626
    .line 627
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    const-string v4, "BillingManager"

    .line 639
    .line 640
    const-string v5, "acknowledgePurchase"

    .line 641
    .line 642
    new-instance v6, Lix;

    .line 643
    .line 644
    invoke-direct {v6, v3, v1}, Lix;-><init>(Ljava/lang/String;I)V

    .line 645
    .line 646
    .line 647
    const/16 v3, 0x8

    .line 648
    .line 649
    invoke-static {v4, v5, v1, v6, v3}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    check-cast v1, Lyq0;

    .line 654
    .line 655
    :cond_b
    new-instance v1, Lhq0;

    .line 656
    .line 657
    invoke-direct {v1, v2, v0, v8}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-static {p0, v1}, Lwq0;->g(Lwb6;Lhq0;)V

    .line 661
    .line 662
    .line 663
    sget-object p0, Lbe8;->a:Lbe8;

    .line 664
    .line 665
    return-object p0

    .line 666
    :pswitch_14
    check-cast p0, Lqk0;

    .line 667
    .line 668
    iget-object p0, p0, Lqk0;->h:Lji;

    .line 669
    .line 670
    invoke-virtual {p0}, Lji;->getLocalBackups()Ljava/util/List;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    return-object p0

    .line 675
    :pswitch_15
    check-cast p0, Lj30;

    .line 676
    .line 677
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 678
    .line 679
    check-cast p0, Ls20;

    .line 680
    .line 681
    iget-object p0, p0, Ls20;->b:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 682
    .line 683
    return-object p0

    .line 684
    :pswitch_16
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 685
    .line 686
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 687
    .line 688
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    iget-object p0, p0, Lg20;->d:Ley2;

    .line 693
    .line 694
    return-object p0

    .line 695
    :pswitch_17
    check-cast p0, Lt10;

    .line 696
    .line 697
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 698
    .line 699
    check-cast p0, Lkm;

    .line 700
    .line 701
    iget-object p0, p0, Lkm;->b:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 702
    .line 703
    return-object p0

    .line 704
    :pswitch_18
    check-cast p0, Lqx;

    .line 705
    .line 706
    invoke-static {p0}, Lqx;->c(Lqx;)Z

    .line 707
    .line 708
    .line 709
    move-result p0

    .line 710
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 711
    .line 712
    .line 713
    move-result-object p0

    .line 714
    return-object p0

    .line 715
    :pswitch_19
    check-cast p0, Lam;

    .line 716
    .line 717
    iget-object v0, p0, Lam;->b:Lji;

    .line 718
    .line 719
    invoke-virtual {v0}, Lji;->getSizeInfo()Lqx;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    if-eqz v0, :cond_c

    .line 724
    .line 725
    iget-boolean p0, p0, Lam;->c:Z

    .line 726
    .line 727
    invoke-virtual {v0, p0}, Lqx;->getExtDataSize(Z)J

    .line 728
    .line 729
    .line 730
    move-result-wide v0

    .line 731
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    :cond_c
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 736
    .line 737
    .line 738
    move-result-wide v0

    .line 739
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    return-object p0

    .line 744
    :pswitch_1a
    check-cast p0, Lgl;

    .line 745
    .line 746
    iget-object p0, p0, Lgl;->e:Lgv7;

    .line 747
    .line 748
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object p0

    .line 752
    check-cast p0, Lo6;

    .line 753
    .line 754
    return-object p0

    .line 755
    :pswitch_1b
    check-cast p0, Lhk;

    .line 756
    .line 757
    invoke-virtual {p0}, Lhk;->e()Lq63;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    iget-object p0, p0, Lhk;->b:Ljava/lang/String;

    .line 762
    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const-string p0, ".extdat"

    .line 772
    .line 773
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 781
    .line 782
    .line 783
    move-result-object p0

    .line 784
    return-object p0

    .line 785
    :pswitch_1c
    check-cast p0, Lxq4;

    .line 786
    .line 787
    invoke-virtual {p0}, Lxq4;->invoke()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object p0

    .line 791
    check-cast p0, Lxr8;

    .line 792
    .line 793
    const-string v0, "Landroid/net/wifi/IWifiManager"

    .line 794
    .line 795
    const-string v2, "Landroid/content/pm/ParceledListSlice"

    .line 796
    .line 797
    const-string v4, "Lcom/android/wifi/x/com/android/modules/utils/"

    .line 798
    .line 799
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    sget-object v2, Lh44;->a:Lsun/misc/Unsafe;

    .line 804
    .line 805
    sget-object v2, Lb44;->a:Ljava/util/HashSet;

    .line 806
    .line 807
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 812
    .line 813
    .line 814
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    new-array v0, v0, [Ljava/lang/String;

    .line 819
    .line 820
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    invoke-static {v0}, Lh44;->b([Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_10

    .line 828
    .line 829
    const-string v0, "android.net.wifi.IWifiManager$Stub"

    .line 830
    .line 831
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    const-string v2, "android.net.wifi.IWifiManager"

    .line 836
    .line 837
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    move-result-object v2

    .line 841
    const-string v4, "asInterface"

    .line 842
    .line 843
    const-class v5, Landroid/os/IBinder;

    .line 844
    .line 845
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    const-string v4, "wifi"

    .line 854
    .line 855
    invoke-static {v4}, Lqv7;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    if-eqz v4, :cond_f

    .line 860
    .line 861
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    new-instance v5, Lme7;

    .line 865
    .line 866
    invoke-direct {v5, v4}, Lme7;-><init>(Landroid/os/IBinder;)V

    .line 867
    .line 868
    .line 869
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    :try_start_1
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 881
    if-eqz v0, :cond_d

    .line 882
    .line 883
    new-instance v1, Le76;

    .line 884
    .line 885
    invoke-direct {v1, v0, v2, p0}, Le76;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lxr8;)V

    .line 886
    .line 887
    .line 888
    return-object v1

    .line 889
    :cond_d
    new-instance p0, Landroid/os/RemoteException;

    .line 890
    .line 891
    const-string v0, "Wi-Fi service interface unavailable"

    .line 892
    .line 893
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    throw p0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    move-object p0, v0

    .line 899
    :goto_8
    nop

    .line 900
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 901
    .line 902
    if-eqz v0, :cond_e

    .line 903
    .line 904
    move-object v0, p0

    .line 905
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 906
    .line 907
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    if-eqz v1, :cond_e

    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 914
    .line 915
    .line 916
    move-result-object p0

    .line 917
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    .line 919
    .line 920
    goto :goto_8

    .line 921
    :cond_e
    throw p0

    .line 922
    :cond_f
    new-instance p0, Landroid/os/RemoteException;

    .line 923
    .line 924
    const-string v0, "Wi-Fi service unavailable"

    .line 925
    .line 926
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    throw p0

    .line 930
    :cond_10
    new-instance p0, Ljava/lang/ReflectiveOperationException;

    .line 931
    .line 932
    const-string v0, "Unable to install hidden API exemptions"

    .line 933
    .line 934
    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    throw p0

    .line 938
    nop

    .line 939
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
