.class public final synthetic Lmu3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lmu3;->a:I

    iput-object p2, p0, Lmu3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmu3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt15;Ljava/lang/String;Lli4;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    iput p3, p0, Lmu3;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmu3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lmu3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lmu3;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    iget-object v4, v0, Lmu3;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, v0, Lmu3;->b:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Lj57;

    .line 17
    .line 18
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Ly37;

    .line 23
    .line 24
    move-object/from16 v6, p2

    .line 25
    .line 26
    check-cast v6, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Ly37;->b:Lw37;

    .line 35
    .line 36
    iget-object v4, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 37
    .line 38
    iget-object v6, v0, Lj57;->m:Lm37;

    .line 39
    .line 40
    iget-object v7, v0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 41
    .line 42
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 47
    .line 48
    const/4 v10, 0x2

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x1

    .line 51
    const v13, 0x7f140160

    .line 52
    .line 53
    .line 54
    const/16 v14, 0xa

    .line 55
    .line 56
    const v15, 0x7f1300f1

    .line 57
    .line 58
    .line 59
    if-eqz v9, :cond_6

    .line 60
    .line 61
    sget-object v6, Li57;->b:[I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    aget v1, v6, v1

    .line 68
    .line 69
    packed-switch v1, :pswitch_data_1

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lq;->j()V

    .line 73
    .line 74
    .line 75
    :goto_0
    move-object v2, v5

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :pswitch_0
    new-instance v1, Lw47;

    .line 79
    .line 80
    invoke-direct {v1, v4, v12}, Lw47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_c

    .line 87
    .line 88
    :pswitch_1
    move-object v1, v4

    .line 89
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v3, Lv47;

    .line 96
    .line 97
    invoke-direct {v3, v4, v12}, Lv47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_c

    .line 104
    .line 105
    :pswitch_2
    move-object v1, v4

    .line 106
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 107
    .line 108
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getLocations()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v3, Lu47;

    .line 113
    .line 114
    invoke-direct {v3, v4, v12}, Lu47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_c

    .line 121
    .line 122
    :pswitch_3
    move-object v1, v4

    .line 123
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAppParts()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    new-instance v3, Lt47;

    .line 130
    .line 131
    invoke-direct {v3, v4, v12}, Lt47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v8, v1, v3}, Lj57;->y(ZLjava/util/List;Lmt3;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :pswitch_4
    move-object v1, v4

    .line 140
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 141
    .line 142
    new-instance v3, Lv47;

    .line 143
    .line 144
    invoke-direct {v3, v4, v11}, Lv47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 145
    .line 146
    .line 147
    if-nez v8, :cond_0

    .line 148
    .line 149
    goto/16 :goto_c

    .line 150
    .line 151
    :cond_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->getEntries()Ljx2;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const-string v6, "show_system_apps"

    .line 160
    .line 161
    :try_start_0
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 162
    .line 163
    if-eqz v8, :cond_1

    .line 164
    .line 165
    invoke-interface {v8, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    const-string v6, "prefs"

    .line 171
    .line 172
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    move v6, v11

    .line 177
    :goto_1
    if-nez v6, :cond_2

    .line 178
    .line 179
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->System:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 180
    .line 181
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_2
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAllowedApps()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 192
    .line 193
    invoke-direct {v8, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Lhv1;

    .line 197
    .line 198
    invoke-direct {v6, v7, v13}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v9, Ls35;

    .line 205
    .line 206
    invoke-direct {v9, v7, v13, v6, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 207
    .line 208
    .line 209
    const v6, 0x7f130033

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v6}, Lv75;->v(I)V

    .line 213
    .line 214
    .line 215
    new-instance v6, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-static {v4, v14}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_3

    .line 233
    .line 234
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    check-cast v12, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 239
    .line 240
    invoke-virtual {v12, v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->toDisplayString(Z)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_3
    new-array v7, v11, [Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    check-cast v6, [Ljava/lang/CharSequence;

    .line 255
    .line 256
    new-instance v7, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-static {v4, v14}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    if-eqz v12, :cond_4

    .line 274
    .line 275
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    check-cast v12, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 280
    .line 281
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAllowedApps()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_4
    invoke-static {v7}, Lel1;->r1(Ljava/util/ArrayList;)[Z

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    new-instance v7, Ld57;

    .line 302
    .line 303
    invoke-direct {v7, v4, v8}, Ld57;-><init>(Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v6, v1, v7}, Lv75;->o([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 307
    .line 308
    .line 309
    new-instance v1, Lib1;

    .line 310
    .line 311
    invoke-direct {v1, v10, v3, v8, v0}, Lib1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    const v0, 0x7f1303e6

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9, v15, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Ls35;->m()Lwa;

    .line 324
    .line 325
    .line 326
    goto/16 :goto_c

    .line 327
    .line 328
    :pswitch_5
    move-object v1, v4

    .line 329
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 330
    .line 331
    new-instance v6, Lc57;

    .line 332
    .line 333
    invoke-direct {v6, v4, v11}, Lc57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 334
    .line 335
    .line 336
    if-nez v8, :cond_5

    .line 337
    .line 338
    goto/16 :goto_c

    .line 339
    .line 340
    :cond_5
    new-instance v4, Lid6;

    .line 341
    .line 342
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getQuickActionIds()Ljava/util/Set;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    new-instance v8, Leh2;

    .line 347
    .line 348
    invoke-direct {v8, v3, v6, v0}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {v4, v7, v1, v8}, Lid6;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ljava/util/Set;Leh2;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v7, v5}, Lol1;->G(Lzm;Ljava/lang/Integer;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_c

    .line 358
    .line 359
    :cond_6
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 360
    .line 361
    if-eqz v9, :cond_a

    .line 362
    .line 363
    sget-object v3, Li57;->b:[I

    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    aget v1, v3, v1

    .line 370
    .line 371
    packed-switch v1, :pswitch_data_2

    .line 372
    .line 373
    .line 374
    invoke-static {}, Lq;->j()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :pswitch_6
    new-instance v1, La57;

    .line 380
    .line 381
    invoke-direct {v1, v4, v12}, La57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_c

    .line 388
    .line 389
    :pswitch_7
    move-object v1, v4

    .line 390
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 391
    .line 392
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    new-instance v3, Lz47;

    .line 397
    .line 398
    invoke-direct {v3, v4, v12}, Lz47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_c

    .line 405
    .line 406
    :pswitch_8
    move-object v1, v4

    .line 407
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 408
    .line 409
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    new-instance v3, Ly47;

    .line 414
    .line 415
    invoke-direct {v3, v4, v12}, Ly47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_c

    .line 422
    .line 423
    :pswitch_9
    move-object v1, v4

    .line 424
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 425
    .line 426
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts()Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    new-instance v3, Lx47;

    .line 431
    .line 432
    invoke-direct {v3, v4, v12}, Lx47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v8, v1, v3}, Lj57;->y(ZLjava/util/List;Lmt3;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_c

    .line 439
    .line 440
    :pswitch_a
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 441
    .line 442
    if-nez v8, :cond_7

    .line 443
    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :cond_7
    iput-object v4, v0, Lj57;->s:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 447
    .line 448
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 449
    .line 450
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelIds()Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    new-instance v1, Landroid/os/Bundle;

    .line 455
    .line 456
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    .line 458
    .line 459
    if-eqz v0, :cond_9

    .line 460
    .line 461
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_8

    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    .line 472
    .line 473
    const-string v0, "extra_selected_labels"

    .line 474
    .line 475
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 476
    .line 477
    .line 478
    :cond_9
    :goto_4
    iget-object v0, v6, Lm37;->e:Lcr3;

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_c

    .line 484
    .line 485
    :cond_a
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 486
    .line 487
    const/4 v3, 0x3

    .line 488
    if-eqz v9, :cond_14

    .line 489
    .line 490
    sget-object v6, Li57;->b:[I

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    aget v1, v6, v1

    .line 497
    .line 498
    packed-switch v1, :pswitch_data_3

    .line 499
    .line 500
    .line 501
    invoke-static {}, Lq;->j()V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_0

    .line 505
    .line 506
    :pswitch_b
    new-instance v1, Lc57;

    .line 507
    .line 508
    invoke-direct {v1, v4, v12}, Lc57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_c

    .line 515
    .line 516
    :pswitch_c
    move-object v1, v4

    .line 517
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 518
    .line 519
    new-instance v6, Ly47;

    .line 520
    .line 521
    invoke-direct {v6, v4, v10}, Ly47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 522
    .line 523
    .line 524
    if-nez v8, :cond_b

    .line 525
    .line 526
    goto/16 :goto_c

    .line 527
    .line 528
    :cond_b
    sget-object v4, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 529
    .line 530
    if-eqz v4, :cond_c

    .line 531
    .line 532
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getValues()Ljava/util/Collection;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    if-eqz v4, :cond_c

    .line 537
    .line 538
    invoke-static {v4}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    new-instance v8, Lcz3;

    .line 543
    .line 544
    invoke-direct {v8, v3}, Lcz3;-><init>(I)V

    .line 545
    .line 546
    .line 547
    invoke-static {v4, v8}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    goto :goto_5

    .line 552
    :cond_c
    move-object v3, v5

    .line 553
    :goto_5
    if-eqz v3, :cond_13

    .line 554
    .line 555
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    if-eqz v4, :cond_d

    .line 560
    .line 561
    goto/16 :goto_b

    .line 562
    .line 563
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    move v8, v11

    .line 568
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    if-eqz v9, :cond_f

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    check-cast v9, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 579
    .line 580
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getItemId()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v9

    .line 584
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getConfigId()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v9

    .line 592
    if-eqz v9, :cond_e

    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 596
    .line 597
    goto :goto_6

    .line 598
    :cond_f
    const/4 v8, -0x1

    .line 599
    :goto_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    if-ltz v8, :cond_10

    .line 604
    .line 605
    goto :goto_8

    .line 606
    :cond_10
    move-object v1, v5

    .line 607
    :goto_8
    if-eqz v1, :cond_11

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    goto :goto_9

    .line 614
    :cond_11
    move v1, v11

    .line 615
    :goto_9
    new-instance v4, Lhv1;

    .line 616
    .line 617
    invoke-direct {v4, v7, v13}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    new-instance v8, Ls35;

    .line 624
    .line 625
    invoke-direct {v8, v7, v13, v4, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 626
    .line 627
    .line 628
    const v4, 0x7f1301b0

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8, v4}, Lv75;->v(I)V

    .line 632
    .line 633
    .line 634
    new-instance v4, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-static {v3, v14}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .line 642
    .line 643
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v9

    .line 651
    if-eqz v9, :cond_12

    .line 652
    .line 653
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v9

    .line 657
    check-cast v9, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 658
    .line 659
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    goto :goto_a

    .line 667
    :cond_12
    new-array v7, v11, [Ljava/lang/String;

    .line 668
    .line 669
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    check-cast v4, [Ljava/lang/CharSequence;

    .line 674
    .line 675
    new-instance v7, Lmb1;

    .line 676
    .line 677
    invoke-direct {v7, v12, v3, v6, v0}, Lmb1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v8, v4, v1, v7}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v8, v15, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 687
    .line 688
    .line 689
    goto/16 :goto_c

    .line 690
    .line 691
    :cond_13
    :goto_b
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 692
    .line 693
    invoke-static {v7}, Ljb9;->f0(Lsa1;)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_c

    .line 697
    .line 698
    :cond_14
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 699
    .line 700
    if-eqz v9, :cond_15

    .line 701
    .line 702
    sget-object v3, Li57;->b:[I

    .line 703
    .line 704
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    aget v1, v3, v1

    .line 709
    .line 710
    packed-switch v1, :pswitch_data_4

    .line 711
    .line 712
    .line 713
    invoke-static {}, Lq;->j()V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :pswitch_d
    new-instance v1, Lb57;

    .line 719
    .line 720
    invoke-direct {v1, v4, v12}, Lb57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_c

    .line 727
    .line 728
    :pswitch_e
    move-object v1, v4

    .line 729
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 730
    .line 731
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    new-instance v3, Lcz;

    .line 736
    .line 737
    const/16 v5, 0x12

    .line 738
    .line 739
    invoke-direct {v3, v4, v5}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_c

    .line 746
    .line 747
    :pswitch_f
    move-object v1, v4

    .line 748
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 749
    .line 750
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getLocations()Ljava/util/List;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    new-instance v3, La57;

    .line 755
    .line 756
    invoke-direct {v3, v4, v10}, La57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_c

    .line 763
    .line 764
    :cond_15
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 765
    .line 766
    if-eqz v9, :cond_16

    .line 767
    .line 768
    sget-object v3, Li57;->b:[I

    .line 769
    .line 770
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    aget v1, v3, v1

    .line 775
    .line 776
    packed-switch v1, :pswitch_data_5

    .line 777
    .line 778
    .line 779
    invoke-static {}, Lq;->j()V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_0

    .line 783
    .line 784
    :pswitch_10
    new-instance v1, Ls47;

    .line 785
    .line 786
    invoke-direct {v1, v4, v11}, Ls47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_c

    .line 793
    .line 794
    :pswitch_11
    move-object v1, v4

    .line 795
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 796
    .line 797
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    new-instance v3, Ls47;

    .line 802
    .line 803
    invoke-direct {v3, v4, v10}, Ls47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 807
    .line 808
    .line 809
    goto/16 :goto_c

    .line 810
    .line 811
    :pswitch_12
    move-object v1, v4

    .line 812
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 813
    .line 814
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getLocations()Ljava/util/List;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    new-instance v3, Lv10;

    .line 819
    .line 820
    const/16 v5, 0x13

    .line 821
    .line 822
    invoke-direct {v3, v4, v5}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_c

    .line 829
    .line 830
    :cond_16
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 831
    .line 832
    if-eqz v9, :cond_17

    .line 833
    .line 834
    sget-object v3, Li57;->b:[I

    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    aget v1, v3, v1

    .line 841
    .line 842
    packed-switch v1, :pswitch_data_6

    .line 843
    .line 844
    .line 845
    invoke-static {}, Lq;->j()V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_0

    .line 849
    .line 850
    :pswitch_13
    new-instance v1, Lw47;

    .line 851
    .line 852
    invoke-direct {v1, v4, v11}, Lw47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 856
    .line 857
    .line 858
    goto/16 :goto_c

    .line 859
    .line 860
    :pswitch_14
    move-object v1, v4

    .line 861
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 862
    .line 863
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    new-instance v3, Lu47;

    .line 868
    .line 869
    invoke-direct {v3, v4, v11}, Lu47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_c

    .line 876
    .line 877
    :pswitch_15
    move-object v1, v4

    .line 878
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 879
    .line 880
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getLocations()Ljava/util/List;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    new-instance v3, Lt47;

    .line 885
    .line 886
    invoke-direct {v3, v4, v11}, Lt47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_c

    .line 893
    .line 894
    :cond_17
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 895
    .line 896
    if-eqz v9, :cond_18

    .line 897
    .line 898
    sget-object v3, Li57;->b:[I

    .line 899
    .line 900
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    aget v1, v3, v1

    .line 905
    .line 906
    packed-switch v1, :pswitch_data_7

    .line 907
    .line 908
    .line 909
    invoke-static {}, Lq;->j()V

    .line 910
    .line 911
    .line 912
    goto/16 :goto_0

    .line 913
    .line 914
    :pswitch_16
    new-instance v1, Lz47;

    .line 915
    .line 916
    invoke-direct {v1, v4, v11}, Lz47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_c

    .line 923
    .line 924
    :pswitch_17
    move-object v1, v4

    .line 925
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 926
    .line 927
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    new-instance v3, Ly47;

    .line 932
    .line 933
    invoke-direct {v3, v4, v11}, Ly47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 937
    .line 938
    .line 939
    goto/16 :goto_c

    .line 940
    .line 941
    :pswitch_18
    move-object v1, v4

    .line 942
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 943
    .line 944
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations()Ljava/util/List;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    new-instance v3, Lx47;

    .line 949
    .line 950
    invoke-direct {v3, v4, v11}, Lx47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 954
    .line 955
    .line 956
    goto/16 :goto_c

    .line 957
    .line 958
    :cond_18
    instance-of v9, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 959
    .line 960
    if-eqz v9, :cond_1a

    .line 961
    .line 962
    sget-object v9, Li57;->b:[I

    .line 963
    .line 964
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    aget v1, v9, v1

    .line 969
    .line 970
    packed-switch v1, :pswitch_data_8

    .line 971
    .line 972
    .line 973
    goto/16 :goto_c

    .line 974
    .line 975
    :pswitch_19
    if-eqz v8, :cond_1b

    .line 976
    .line 977
    move-object v1, v4

    .line 978
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 979
    .line 980
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    new-instance v5, Lrj3;

    .line 985
    .line 986
    const/16 v6, 0x8

    .line 987
    .line 988
    invoke-direct {v5, v7, v11, v1, v6}, Lrj3;-><init>(Lil0;ZLorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;I)V

    .line 989
    .line 990
    .line 991
    new-instance v1, Lqs;

    .line 992
    .line 993
    invoke-direct {v1, v3, v4, v0}, Lqs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v5, v1}, Lrj3;->k(Lqt3;)V

    .line 997
    .line 998
    .line 999
    goto/16 :goto_c

    .line 1000
    .line 1001
    :pswitch_1a
    move-object v1, v4

    .line 1002
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1003
    .line 1004
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v1

    .line 1008
    new-instance v3, Lhq0;

    .line 1009
    .line 1010
    const/4 v6, 0x4

    .line 1011
    invoke-direct {v3, v6, v4, v0}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    const v0, 0x7f130031

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    const v4, 0x7f1304e8

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    xor-int/2addr v1, v12

    .line 1040
    new-instance v4, Lhv1;

    .line 1041
    .line 1042
    invoke-direct {v4, v7, v13}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1043
    .line 1044
    .line 1045
    new-instance v6, Ls35;

    .line 1046
    .line 1047
    invoke-direct {v6, v7, v13, v4, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1048
    .line 1049
    .line 1050
    const v4, 0x7f13027f

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v6, v4}, Lv75;->v(I)V

    .line 1054
    .line 1055
    .line 1056
    new-array v4, v11, [Ljava/lang/String;

    .line 1057
    .line 1058
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    check-cast v0, [Ljava/lang/CharSequence;

    .line 1063
    .line 1064
    new-instance v4, Lvf3;

    .line 1065
    .line 1066
    invoke-direct {v4, v3, v12}, Lvf3;-><init>(Ljava/lang/Object;I)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v6, v0, v1, v4}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v6, v15, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 1076
    .line 1077
    .line 1078
    goto :goto_c

    .line 1079
    :pswitch_1b
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1080
    .line 1081
    iput-object v4, v0, Lj57;->t:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1082
    .line 1083
    new-instance v0, Landroid/os/Bundle;

    .line 1084
    .line 1085
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1086
    .line 1087
    .line 1088
    const-string v1, "EXTRA_BACKUP_ALL_FOLDERS"

    .line 1089
    .line 1090
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 1091
    .line 1092
    .line 1093
    move-result v3

    .line 1094
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1095
    .line 1096
    .line 1097
    new-instance v1, Ljava/util/ArrayList;

    .line 1098
    .line 1099
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    if-nez v3, :cond_19

    .line 1104
    .line 1105
    sget-object v3, Lov2;->a:Lov2;

    .line 1106
    .line 1107
    :cond_19
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1108
    .line 1109
    .line 1110
    const-string v3, "EXTRA_SELECTED_FOLDER_ITEMS"

    .line 1111
    .line 1112
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v1, v6, Lm37;->f:Lcr3;

    .line 1116
    .line 1117
    invoke-virtual {v1, v0}, Lcr3;->a(Ljava/lang/Object;)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_c

    .line 1121
    :pswitch_1c
    new-instance v1, Ls47;

    .line 1122
    .line 1123
    invoke-direct {v1, v4, v12}, Ls47;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0, v8, v4, v1}, Lj57;->A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_c

    .line 1130
    :pswitch_1d
    move-object v1, v4

    .line 1131
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1132
    .line 1133
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    new-instance v3, Lb57;

    .line 1138
    .line 1139
    invoke-direct {v3, v4, v11}, Lb57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v8, v1, v3}, Lj57;->B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_c

    .line 1146
    :pswitch_1e
    move-object v1, v4

    .line 1147
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1148
    .line 1149
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations()Ljava/util/List;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    new-instance v3, La57;

    .line 1154
    .line 1155
    invoke-direct {v3, v4, v11}, La57;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0, v8, v1, v3}, Lj57;->z(ZLjava/util/List;Lmt3;)V

    .line 1159
    .line 1160
    .line 1161
    goto :goto_c

    .line 1162
    :cond_1a
    invoke-static {}, Lq;->j()V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_0

    .line 1166
    .line 1167
    :cond_1b
    :goto_c
    :pswitch_1f
    return-object v2

    .line 1168
    :pswitch_20
    check-cast v0, Lt15;

    .line 1169
    .line 1170
    check-cast v4, Ljava/lang/String;

    .line 1171
    .line 1172
    move-object/from16 v1, p1

    .line 1173
    .line 1174
    check-cast v1, Lcom/jcraft/jsch/ChannelSftp;

    .line 1175
    .line 1176
    move-object/from16 v2, p2

    .line 1177
    .line 1178
    check-cast v2, Lcom/jcraft/jsch/Session;

    .line 1179
    .line 1180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    .line 1185
    .line 1186
    if-eqz v0, :cond_1c

    .line 1187
    .line 1188
    :try_start_1
    iget-wide v6, v0, Lt15;->a:J

    .line 1189
    .line 1190
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    iget-wide v4, v0, Lt15;->b:J

    .line 1195
    .line 1196
    sub-long/2addr v4, v6

    .line 1197
    const-wide/16 v6, 0x1

    .line 1198
    .line 1199
    add-long/2addr v4, v6

    .line 1200
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    new-instance v6, Ly4;

    .line 1205
    .line 1206
    invoke-direct {v6, v3}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 1207
    .line 1208
    .line 1209
    iput-object v6, v0, Ll5;->k:Ly4;

    .line 1210
    .line 1211
    invoke-virtual {v0, v4, v5}, Lvu0;->K(J)V

    .line 1212
    .line 1213
    .line 1214
    new-instance v3, Lwu0;

    .line 1215
    .line 1216
    invoke-direct {v3, v0}, Lwu0;-><init>(Lvu0;)V

    .line 1217
    .line 1218
    .line 1219
    goto :goto_d

    .line 1220
    :cond_1c
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v3

    .line 1224
    :goto_d
    new-instance v0, Ltc4;

    .line 1225
    .line 1226
    new-instance v4, Ll30;

    .line 1227
    .line 1228
    const/16 v5, 0x9

    .line 1229
    .line 1230
    invoke-direct {v4, v5, v1, v2}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1231
    .line 1232
    .line 1233
    const/4 v6, 0x4

    .line 1234
    invoke-direct {v0, v3, v4, v6}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    .line 1236
    .line 1237
    return-object v0

    .line 1238
    :catch_1
    move-exception v0

    .line 1239
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 1240
    .line 1241
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    const-string v3, "get: "

    .line 1246
    .line 1247
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    const/4 v5, 0x4

    .line 1252
    const/4 v6, 0x0

    .line 1253
    const-string v2, "JschService"

    .line 1254
    .line 1255
    const/4 v4, 0x0

    .line 1256
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    throw v0

    .line 1260
    :pswitch_21
    check-cast v0, Lpu3;

    .line 1261
    .line 1262
    check-cast v4, Ll86;

    .line 1263
    .line 1264
    move-object/from16 v1, p1

    .line 1265
    .line 1266
    check-cast v1, Ljava/lang/Long;

    .line 1267
    .line 1268
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1269
    .line 1270
    .line 1271
    move-result-wide v6

    .line 1272
    move-object/from16 v3, p2

    .line 1273
    .line 1274
    check-cast v3, Ljava/lang/Integer;

    .line 1275
    .line 1276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1277
    .line 1278
    .line 1279
    iget-object v3, v0, Lag8;->c:Lgz7;

    .line 1280
    .line 1281
    invoke-virtual {v3}, Lgz7;->isRunning()Z

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    if-eqz v3, :cond_1f

    .line 1286
    .line 1287
    invoke-static {v0, v1}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 1288
    .line 1289
    .line 1290
    iget-object v0, v4, Ll86;->b:Lbt3;

    .line 1291
    .line 1292
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    check-cast v0, Ljava/lang/Number;

    .line 1297
    .line 1298
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 1299
    .line 1300
    .line 1301
    move-result-wide v0

    .line 1302
    iget-wide v8, v4, Ll86;->e:J

    .line 1303
    .line 1304
    sub-long v8, v0, v8

    .line 1305
    .line 1306
    iget-wide v10, v4, Ll86;->a:J

    .line 1307
    .line 1308
    const-wide/16 v12, 0x0

    .line 1309
    .line 1310
    cmp-long v3, v10, v12

    .line 1311
    .line 1312
    if-lez v3, :cond_1d

    .line 1313
    .line 1314
    cmp-long v3, v6, v10

    .line 1315
    .line 1316
    if-ltz v3, :cond_1d

    .line 1317
    .line 1318
    goto :goto_e

    .line 1319
    :cond_1d
    iget-wide v10, v4, Ll86;->c:J

    .line 1320
    .line 1321
    cmp-long v3, v10, v12

    .line 1322
    .line 1323
    if-lez v3, :cond_1e

    .line 1324
    .line 1325
    cmp-long v3, v8, v10

    .line 1326
    .line 1327
    if-gez v3, :cond_1e

    .line 1328
    .line 1329
    goto :goto_f

    .line 1330
    :cond_1e
    :goto_e
    iput-wide v0, v4, Ll86;->e:J

    .line 1331
    .line 1332
    iget-object v0, v4, Ll86;->d:Lh86;

    .line 1333
    .line 1334
    invoke-virtual {v0, v6, v7}, Lh86;->a(J)J

    .line 1335
    .line 1336
    .line 1337
    move-result-wide v0

    .line 1338
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v5

    .line 1342
    :goto_f
    if-eqz v5, :cond_1f

    .line 1343
    .line 1344
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1345
    .line 1346
    .line 1347
    move-result-wide v0

    .line 1348
    cmp-long v0, v0, v12

    .line 1349
    .line 1350
    if-lez v0, :cond_1f

    .line 1351
    .line 1352
    sget-object v0, Lp93;->a:Lp93;

    .line 1353
    .line 1354
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    :cond_1f
    return-object v2

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1f
        :pswitch_1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_a
        :pswitch_1f
        :pswitch_1f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x6
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method
