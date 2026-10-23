.class public final synthetic Lrs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lrs;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    sget-object v6, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    iget-object p0, p0, Lrs;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    check-cast p2, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget p2, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P(Z)V

    .line 35
    .line 36
    .line 37
    return-object v6

    .line 38
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-virtual {p2}, Lbe5;->y()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0(Z)V

    .line 59
    .line 60
    .line 61
    return-object v6

    .line 62
    :cond_0
    const-string p0, "mAdapter"

    .line 63
    .line 64
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v5

    .line 68
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 69
    .line 70
    check-cast p1, Ls54;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object p2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Z(Ls54;)V

    .line 83
    .line 84
    .line 85
    return-object v6

    .line 86
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 87
    .line 88
    check-cast p1, Ljava/util/List;

    .line 89
    .line 90
    check-cast p2, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 91
    .line 92
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v0, Luy7;

    .line 101
    .line 102
    invoke-direct {v0, p1, p2, v4}, Luy7;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 106
    .line 107
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {p1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iget-object v4, v0, Luy7;->f:Ljava/util/List;

    .line 129
    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lzk3;

    .line 137
    .line 138
    new-instance v7, Lbo3;

    .line 139
    .line 140
    iget-object v2, v2, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 141
    .line 142
    iget-object v8, v0, Luy7;->g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 143
    .line 144
    invoke-direct {v7, v2, v4, v5, v8}, Lbo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    new-instance p1, Lb22;

    .line 152
    .line 153
    invoke-direct {p1, v1, p0, p2, v0}, Lb22;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Lji8;->r(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_2

    .line 161
    .line 162
    invoke-static {p0, v5, p1, v3}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p1}, Lb22;->invoke()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :goto_1
    return-object v6

    .line 170
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 171
    .line 172
    check-cast p1, Lbn3;

    .line 173
    .line 174
    check-cast p2, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget p2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    iget-object p0, p0, Lym3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-eqz p0, :cond_3

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->s0()Landroid/os/Parcelable;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    :cond_3
    sget-object p0, Lzn4;->a:Lzn4;

    .line 205
    .line 206
    new-instance p0, Ld32;

    .line 207
    .line 208
    invoke-direct {p0, v1, v5, p2, p1}, Ld32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 212
    .line 213
    .line 214
    return-object v6

    .line 215
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 216
    .line 217
    check-cast p1, Lrz0;

    .line 218
    .line 219
    check-cast p2, Ljava/lang/Integer;

    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    sget p2, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lx01;->V(Lrz0;)V

    .line 230
    .line 231
    .line 232
    return-object v6

    .line 233
    :pswitch_5
    check-cast p0, Lf30;

    .line 234
    .line 235
    check-cast p1, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    check-cast p2, Lji;

    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    iget-object p2, p0, Lf30;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 247
    .line 248
    invoke-virtual {p0}, Lgm7;->b()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-gt v0, v3, :cond_4

    .line 253
    .line 254
    goto/16 :goto_4

    .line 255
    .line 256
    :cond_4
    invoke-static {}, Ld30;->getEntries()Ljx2;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    check-cast v0, Lz3;

    .line 266
    .line 267
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    :goto_2
    move-object v7, v0

    .line 272
    check-cast v7, Lw3;

    .line 273
    .line 274
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-eqz v8, :cond_8

    .line 279
    .line 280
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    move-object v8, v7

    .line 285
    check-cast v8, Ld30;

    .line 286
    .line 287
    sget-object v9, Le30;->a:[I

    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    aget v8, v9, v8

    .line 294
    .line 295
    if-eq v8, v3, :cond_6

    .line 296
    .line 297
    const/4 v9, 0x2

    .line 298
    if-ne v8, v9, :cond_5

    .line 299
    .line 300
    invoke-virtual {p0}, Lgm7;->b()I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    sub-int/2addr v8, v3

    .line 305
    if-ne p1, v8, :cond_7

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_6
    if-nez p1, :cond_7

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_7
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_9

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_a

    .line 344
    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Ld30;

    .line 350
    .line 351
    invoke-virtual {v3}, Ld30;->getStringRes()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_a
    new-array v2, v4, [Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, [Ljava/lang/String;

    .line 370
    .line 371
    new-instance v2, Lhv1;

    .line 372
    .line 373
    const v3, 0x7f140160

    .line 374
    .line 375
    .line 376
    invoke-direct {v2, p2, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    new-instance v4, Ls35;

    .line 383
    .line 384
    invoke-direct {v4, p2, v3, v2, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 385
    .line 386
    .line 387
    check-cast v0, [Ljava/lang/CharSequence;

    .line 388
    .line 389
    new-instance p2, Lc30;

    .line 390
    .line 391
    invoke-direct {p2, v1, p0, p1}, Lc30;-><init>(Ljava/util/ArrayList;Lf30;I)V

    .line 392
    .line 393
    .line 394
    iget-object p0, v4, Lva;->b:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast p0, Lra;

    .line 397
    .line 398
    iput-object v0, p0, Lra;->p:[Ljava/lang/CharSequence;

    .line 399
    .line 400
    iput-object p2, p0, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    .line 402
    const p0, 0x7f1300f1

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, p0, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 409
    .line 410
    .line 411
    :goto_4
    move-object v5, v6

    .line 412
    :goto_5
    return-object v5

    .line 413
    :pswitch_6
    check-cast p0, Lws;

    .line 414
    .line 415
    check-cast p1, Lji;

    .line 416
    .line 417
    check-cast p2, Ljava/lang/Boolean;

    .line 418
    .line 419
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    iput-boolean v3, p0, Lws;->q:Z

    .line 426
    .line 427
    sget-object p0, Lv53;->a:Lv53;

    .line 428
    .line 429
    invoke-virtual {p0, p1, v3}, Lv53;->f(Lji;Z)V

    .line 430
    .line 431
    .line 432
    return-object v6

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
