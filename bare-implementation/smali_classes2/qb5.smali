.class public final synthetic Lqb5;
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
    iput p2, p0, Lqb5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqb5;->b:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lqb5;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lqb5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lxs8;

    .line 12
    .line 13
    iget-object v0, p0, Lxs8;->a:Landroid/widget/Toast;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    const v3, 0x7f130445

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lxs8;->a:Landroid/widget/Toast;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object v1

    .line 42
    :pswitch_0
    check-cast p0, Lcs8;

    .line 43
    .line 44
    new-instance v0, Ldj0;

    .line 45
    .line 46
    iget-object p0, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Ldj0;-><init>(Lil0;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 53
    .line 54
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 55
    .line 56
    new-instance v0, Lcs8;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lur8;->n:Lyr8;

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, p0, v1, v2}, Lcs8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Lyr8;Liu8;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 73
    .line 74
    sget v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object p0, p0, Lgh8;->e:Lcom/google/android/material/button/MaterialButton;

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_3
    check-cast p0, Lpa8;

    .line 84
    .line 85
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 86
    .line 87
    check-cast p0, Lqa8;

    .line 88
    .line 89
    iget-object p0, p0, Lqa8;->c:Lra8;

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_4
    check-cast p0, Lzn7;

    .line 93
    .line 94
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 95
    .line 96
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lzn7;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 106
    .line 107
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 108
    .line 109
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getPinnedQuickActions()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-lez v0, :cond_2

    .line 120
    .line 121
    move-object v2, p0

    .line 122
    :cond_2
    if-eqz v2, :cond_5

    .line 123
    .line 124
    const-string p0, ", "

    .line 125
    .line 126
    filled-new-array {p0}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const/4 v0, 0x6

    .line 131
    invoke-static {v2, p0, v0}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-static {}, Lyc6;->g()Ljava/util/Set;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    :goto_1
    invoke-static {p0}, Lyc6;->k(Ljava/util/Set;)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 188
    .line 189
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 190
    .line 191
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iget-object p0, p0, Lf37;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 199
    .line 200
    sget v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 201
    .line 202
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->L:Lgv7;

    .line 203
    .line 204
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    check-cast p0, Lth7;

    .line 209
    .line 210
    iget-object p0, p0, Lth7;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 214
    .line 215
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 216
    .line 217
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    iget-object p0, p0, Lc56;->c:Ld56;

    .line 222
    .line 223
    return-object p0

    .line 224
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 225
    .line 226
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 227
    .line 228
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->K:Lgv7;

    .line 229
    .line 230
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    check-cast p0, Loo5;

    .line 235
    .line 236
    iget-object p0, p0, Loo5;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 237
    .line 238
    return-object p0

    .line 239
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/i;

    .line 240
    .line 241
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 242
    .line 243
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 244
    .line 245
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 246
    .line 247
    filled-new-array {v0, v1, v2}, [Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_7

    .line 264
    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 270
    .line 271
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 276
    .line 277
    if-ne v2, v3, :cond_6

    .line 278
    .line 279
    return-object v1

    .line 280
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 281
    .line 282
    const-string v0, "Collection contains no element matching the predicate."

    .line 283
    .line 284
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 289
    .line 290
    sget v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    const v0, 0x7f0d0128

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    const v0, 0x7f0a00a9

    .line 305
    .line 306
    .line 307
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    if-eqz v1, :cond_8

    .line 312
    .line 313
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    const v0, 0x7f0a00e2

    .line 318
    .line 319
    .line 320
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    move-object v6, v1

    .line 325
    check-cast v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 326
    .line 327
    if-eqz v6, :cond_8

    .line 328
    .line 329
    const v0, 0x7f0a031f

    .line 330
    .line 331
    .line 332
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_8

    .line 337
    .line 338
    invoke-static {v1}, Lcj5;->a(Landroid/view/View;)Lcj5;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    const v0, 0x7f0a0320

    .line 343
    .line 344
    .line 345
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    if-eqz v1, :cond_8

    .line 350
    .line 351
    invoke-static {v1}, Lcj5;->a(Landroid/view/View;)Lcj5;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    const v0, 0x7f0a0321

    .line 356
    .line 357
    .line 358
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_8

    .line 363
    .line 364
    invoke-static {v1}, Lcj5;->a(Landroid/view/View;)Lcj5;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    const v0, 0x7f0a042d

    .line 369
    .line 370
    .line 371
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    move-object v10, v1

    .line 376
    check-cast v10, Landroidx/core/widget/NestedScrollView;

    .line 377
    .line 378
    if-eqz v10, :cond_8

    .line 379
    .line 380
    new-instance v3, Lbj5;

    .line 381
    .line 382
    move-object v4, p0

    .line 383
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 384
    .line 385
    invoke-direct/range {v3 .. v10}, Lbj5;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcj5;Lcj5;Lcj5;Landroidx/core/widget/NestedScrollView;)V

    .line 386
    .line 387
    .line 388
    move-object v2, v3

    .line 389
    goto :goto_2

    .line 390
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    const-string v0, "Missing required view with ID: "

    .line 399
    .line 400
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :goto_2
    return-object v2

    .line 408
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 409
    .line 410
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 411
    .line 412
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->Q:Lgv7;

    .line 413
    .line 414
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Lni7;

    .line 419
    .line 420
    iget-object p0, p0, Lni7;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 421
    .line 422
    return-object p0

    .line 423
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 424
    .line 425
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 426
    .line 427
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    iget-object p0, p0, Lub5;->f:Ld62;

    .line 432
    .line 433
    iget-object p0, p0, Ld62;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 434
    .line 435
    return-object p0

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
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
