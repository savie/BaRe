.class public final synthetic Lbh;
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
    iput p2, p0, Lbh;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbh;->b:Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Lbh;->a:I

    .line 2
    .line 3
    const v1, 0x7f0a00a9

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lbh;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 14
    .line 15
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1, v2, v2}, Lokhttp3/internal/http2/Http2Writer;->m(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_0
    check-cast p0, La14;

    .line 37
    .line 38
    iget-object p0, p0, La14;->p:Lgv7;

    .line 39
    .line 40
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lb14;

    .line 45
    .line 46
    iget-object p0, p0, Lb14;->b:Lfe;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 50
    .line 51
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Loo3;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_2
    check-cast p0, Lln3;

    .line 61
    .line 62
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 63
    .line 64
    check-cast p0, Lmn3;

    .line 65
    .line 66
    iget-object p0, p0, Lmn3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 70
    .line 71
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const v0, 0x7f0d00b0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-static {v0}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const v1, 0x7f0a00ec

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v7, v0

    .line 102
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    if-eqz v7, :cond_0

    .line 105
    .line 106
    const v1, 0x7f0a0120

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v8, v0

    .line 114
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 115
    .line 116
    if-eqz v8, :cond_0

    .line 117
    .line 118
    const v1, 0x7f0a020f

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object v9, v0

    .line 126
    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 127
    .line 128
    if-eqz v9, :cond_0

    .line 129
    .line 130
    const v1, 0x7f0a0213

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v10, v0

    .line 138
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 139
    .line 140
    if-eqz v10, :cond_0

    .line 141
    .line 142
    const v1, 0x7f0a04c8

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move-object v11, v0

    .line 150
    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 151
    .line 152
    if-eqz v11, :cond_0

    .line 153
    .line 154
    const v1, 0x7f0a04cb

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object v12, v0

    .line 162
    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 163
    .line 164
    if-eqz v12, :cond_0

    .line 165
    .line 166
    const v1, 0x7f0a04cc

    .line 167
    .line 168
    .line 169
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    if-eqz v13, :cond_0

    .line 174
    .line 175
    new-instance v4, Lkm3;

    .line 176
    .line 177
    move-object v5, p0

    .line 178
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 179
    .line 180
    invoke-direct/range {v4 .. v13}, Lkm3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    move-object v3, v4

    .line 184
    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string v0, "Missing required view with ID: "

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_1
    return-object v3

    .line 203
    :pswitch_4
    check-cast p0, Lkl3;

    .line 204
    .line 205
    iget-object p0, p0, Lkl3;->c:Ldm3;

    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v0, Lfj;

    .line 211
    .line 212
    const/16 v1, 0x19

    .line 213
    .line 214
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 218
    .line 219
    .line 220
    sget-object p0, Lbe8;->a:Lbe8;

    .line 221
    .line 222
    return-object p0

    .line 223
    :pswitch_5
    check-cast p0, Lqk3;

    .line 224
    .line 225
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 226
    .line 227
    check-cast p0, Lrk3;

    .line 228
    .line 229
    iget-object p0, p0, Lrk3;->b:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 230
    .line 231
    return-object p0

    .line 232
    :pswitch_6
    check-cast p0, Lrj3;

    .line 233
    .line 234
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 235
    .line 236
    check-cast p0, Lsj3;

    .line 237
    .line 238
    iget-object p0, p0, Lsj3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_7
    check-cast p0, Lkj3;

    .line 242
    .line 243
    invoke-virtual {p0}, Lkj3;->b()Lq63;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    const-string v0, "metadata.json"

    .line 248
    .line 249
    invoke-virtual {p0, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :pswitch_8
    check-cast p0, Lx92;

    .line 255
    .line 256
    sget v0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->S:I

    .line 257
    .line 258
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    new-instance v0, Landroid/content/Intent;

    .line 263
    .line 264
    const-class v1, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;

    .line 265
    .line 266
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    .line 271
    .line 272
    sget-object p0, Lbe8;->a:Lbe8;

    .line 273
    .line 274
    return-object p0

    .line 275
    :pswitch_9
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 276
    .line 277
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$Wk2wV1qTJBl56nji4Ebk_U1kGKY(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lbe8;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    return-object p0

    .line 282
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/a;

    .line 283
    .line 284
    const v0, 0x7f13042d

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0}, Lqo0;->h(I)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/a;->e:Lzc2;

    .line 291
    .line 292
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 293
    .line 294
    invoke-static {v0, v1}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    sget-object v1, Lze3;->b:Lze3;

    .line 299
    .line 300
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    .line 306
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 307
    .line 308
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v1, "Synced"

    .line 313
    .line 314
    sget-object v2, Lzn4;->a:Lzn4;

    .line 315
    .line 316
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_1
    instance-of v1, v0, Lye3;

    .line 321
    .line 322
    if-eqz v1, :cond_2

    .line 323
    .line 324
    check-cast v0, Lye3;

    .line 325
    .line 326
    iget-object v0, v0, Lye3;->b:Lwc2;

    .line 327
    .line 328
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 329
    .line 330
    const-string v1, "Error while saving details: "

    .line 331
    .line 332
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 337
    .line 338
    iget-object v3, p0, La55;->b:Ljava/lang/String;

    .line 339
    .line 340
    const/4 v6, 0x4

    .line 341
    const/4 v7, 0x0

    .line 342
    const/4 v5, 0x0

    .line 343
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 347
    .line 348
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    sget-object v1, Lzn4;->a:Lzn4;

    .line 353
    .line 354
    invoke-static {v0, v4}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :goto_2
    invoke-virtual {p0}, Lqo0;->f()V

    .line 358
    .line 359
    .line 360
    sget-object v3, Lbe8;->a:Lbe8;

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 364
    .line 365
    .line 366
    :goto_3
    return-object v3

    .line 367
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 368
    .line 369
    sget v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 370
    .line 371
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    iget-object p0, p0, Lov1;->p:Landroid/widget/TextView;

    .line 376
    .line 377
    return-object p0

    .line 378
    :pswitch_c
    check-cast p0, Lcd;

    .line 379
    .line 380
    const-string v0, ":memory:"

    .line 381
    .line 382
    invoke-virtual {p0, v0}, Lcd;->open(Ljava/lang/String;)Lfw6;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    return-object p0

    .line 387
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 388
    .line 389
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 390
    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    const-string v0, "extra_other_apply_data"

    .line 396
    .line 397
    if-eqz p0, :cond_3

    .line 398
    .line 399
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :cond_3
    return-object v3

    .line 404
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 405
    .line 406
    sget-object v1, Lbr1;->a:Lbr1;

    .line 407
    .line 408
    monitor-enter v1

    .line 409
    if-nez p0, :cond_4

    .line 410
    .line 411
    :try_start_1
    sget-object p0, Lbr1;->g:Lgv7;

    .line 412
    .line 413
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    check-cast p0, Lq63;

    .line 418
    .line 419
    invoke-virtual {p0}, Lq63;->h()Z

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :catchall_0
    move-exception v0

    .line 424
    move-object p0, v0

    .line 425
    goto :goto_5

    .line 426
    :cond_4
    sget-object v0, Lbr1;->g:Lgv7;

    .line 427
    .line 428
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    check-cast v3, Lq63;

    .line 433
    .line 434
    invoke-static {v3}, Lio4;->g(Lq63;)V

    .line 435
    .line 436
    .line 437
    sget-object v3, Lw14;->a:Lgv7;

    .line 438
    .line 439
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lq63;

    .line 444
    .line 445
    invoke-static {p0, v0, v2}, Lw14;->g(Ljava/lang/Object;Lq63;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .line 447
    .line 448
    :goto_4
    monitor-exit v1

    .line 449
    sget-object p0, Lbe8;->a:Lbe8;

    .line 450
    .line 451
    return-object p0

    .line 452
    :goto_5
    monitor-exit v1

    .line 453
    throw p0

    .line 454
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 455
    .line 456
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 457
    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    const v0, 0x7f0d0061

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-eqz v0, :cond_5

    .line 474
    .line 475
    invoke-static {v0}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    const v1, 0x7f0a00f5

    .line 480
    .line 481
    .line 482
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    move-object v7, v0

    .line 487
    check-cast v7, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 488
    .line 489
    if-eqz v7, :cond_5

    .line 490
    .line 491
    move-object v5, p0

    .line 492
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 493
    .line 494
    const v1, 0x7f0a0209

    .line 495
    .line 496
    .line 497
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_5

    .line 502
    .line 503
    invoke-static {v0}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    const v1, 0x7f0a03a8

    .line 508
    .line 509
    .line 510
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    move-object v9, v0

    .line 515
    check-cast v9, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 516
    .line 517
    if-eqz v9, :cond_5

    .line 518
    .line 519
    const v1, 0x7f0a03bf

    .line 520
    .line 521
    .line 522
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    move-object v10, v0

    .line 527
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 528
    .line 529
    if-eqz v10, :cond_5

    .line 530
    .line 531
    new-instance v4, Lnr1;

    .line 532
    .line 533
    invoke-direct/range {v4 .. v10}, Lnr1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lzx2;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 534
    .line 535
    .line 536
    move-object v3, v4

    .line 537
    goto :goto_6

    .line 538
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    const-string v0, "Missing required view with ID: "

    .line 547
    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :goto_6
    return-object v3

    .line 556
    :pswitch_10
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 557
    .line 558
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 559
    .line 560
    new-instance v0, Lj30;

    .line 561
    .line 562
    invoke-direct {v0, p0}, Lj30;-><init>(Lil0;)V

    .line 563
    .line 564
    .line 565
    return-object v0

    .line 566
    :pswitch_11
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 567
    .line 568
    sget v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 569
    .line 570
    new-instance v0, Lge1;

    .line 571
    .line 572
    invoke-direct {v0, p0}, Lge1;-><init>(Lil0;)V

    .line 573
    .line 574
    .line 575
    return-object v0

    .line 576
    :pswitch_12
    check-cast p0, Lqk0;

    .line 577
    .line 578
    iget-object p0, p0, Lqk0;->x:Lgv7;

    .line 579
    .line 580
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    check-cast p0, Ljava/util/List;

    .line 585
    .line 586
    if-eqz p0, :cond_6

    .line 587
    .line 588
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    move-object v3, p0

    .line 593
    check-cast v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 594
    .line 595
    :cond_6
    return-object v3

    .line 596
    :pswitch_13
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 597
    .line 598
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 599
    .line 600
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    iget-object p0, p0, La30;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 605
    .line 606
    return-object p0

    .line 607
    :pswitch_14
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 608
    .line 609
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 610
    .line 611
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    iget-object p0, p0, Lg20;->b:Lx00;

    .line 616
    .line 617
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 620
    .line 621
    return-object p0

    .line 622
    :pswitch_15
    check-cast p0, Lqx;

    .line 623
    .line 624
    invoke-static {p0}, Lqx;->q(Lqx;)Z

    .line 625
    .line 626
    .line 627
    move-result p0

    .line 628
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    return-object p0

    .line 633
    :pswitch_16
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 634
    .line 635
    const-string v0, "show_system_apps"

    .line 636
    .line 637
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 638
    .line 639
    .line 640
    move-result-object p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 645
    .line 646
    return-object p0

    .line 647
    :pswitch_17
    check-cast p0, Lxw;

    .line 648
    .line 649
    invoke-virtual {p0}, Lxw;->w()Z

    .line 650
    .line 651
    .line 652
    move-result p0

    .line 653
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    return-object p0

    .line 658
    :pswitch_18
    check-cast p0, Lzl;

    .line 659
    .line 660
    iget-object p0, p0, Lzl;->b:Lji;

    .line 661
    .line 662
    invoke-virtual {p0}, Lji;->getSizeInfo()Lqx;

    .line 663
    .line 664
    .line 665
    move-result-object p0

    .line 666
    if-eqz p0, :cond_7

    .line 667
    .line 668
    invoke-virtual {p0}, Lqx;->getExternalObbSize()J

    .line 669
    .line 670
    .line 671
    move-result-wide v0

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    :cond_7
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 677
    .line 678
    .line 679
    move-result-wide v0

    .line 680
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 681
    .line 682
    .line 683
    move-result-object p0

    .line 684
    return-object p0

    .line 685
    :pswitch_19
    check-cast p0, Lvl;

    .line 686
    .line 687
    invoke-virtual {p0}, Lvl;->i()Z

    .line 688
    .line 689
    .line 690
    move-result p0

    .line 691
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 692
    .line 693
    .line 694
    move-result-object p0

    .line 695
    return-object p0

    .line 696
    :pswitch_1a
    check-cast p0, Lhk;

    .line 697
    .line 698
    invoke-virtual {p0}, Lhk;->e()Lq63;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    iget-object p0, p0, Lhk;->b:Ljava/lang/String;

    .line 703
    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string p0, ".dat"

    .line 713
    .line 714
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    return-object p0

    .line 726
    :pswitch_1b
    check-cast p0, Lrj;

    .line 727
    .line 728
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 729
    .line 730
    .line 731
    move-result-object p0

    .line 732
    iget-object p0, p0, Lsj;->n:Landroid/widget/TextView;

    .line 733
    .line 734
    return-object p0

    .line 735
    :pswitch_1c
    check-cast p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;

    .line 736
    .line 737
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->b(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lpg;

    .line 738
    .line 739
    .line 740
    move-result-object p0

    .line 741
    return-object p0

    .line 742
    nop

    .line 743
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
