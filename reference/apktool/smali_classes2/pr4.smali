.class public final synthetic Lpr4;
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
    iput p2, p0, Lpr4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpr4;->b:Ljava/lang/Object;

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
    .locals 10

    .line 1
    iget v0, p0, Lpr4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lpr4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Liu8;

    .line 11
    .line 12
    new-instance v0, Lus8;

    .line 13
    .line 14
    invoke-virtual {p0}, Liu8;->k()Landroid/net/wifi/WifiManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lus8;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 23
    .line 24
    sget v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O()V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    check-cast p0, Lrf8;

    .line 33
    .line 34
    sget-object v0, Ltb1;->a:Ltb1;

    .line 35
    .line 36
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v2, p0, Lrf8;->a:Lq63;

    .line 43
    .line 44
    iget-object v3, p0, Lrf8;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Lrf8;->c:Z

    .line 54
    .line 55
    const-string v4, ")"

    .line 56
    .line 57
    if-eqz p0, :cond_0

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, " ("

    .line 62
    .line 63
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_0
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, " (id-"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lq63;->m()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v0, "wal"

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    const-string p0, ".png"

    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_2
    check-cast p0, Lpa7;

    .line 131
    .line 132
    const-string v0, "cloud_backups"

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 143
    .line 144
    sget v0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Z:I

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lga7;->a(Landroid/view/LayoutInflater;)Lga7;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 156
    .line 157
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    iget-object p0, p0, Ls37;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    return-object p0

    .line 166
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 167
    .line 168
    sget v0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    iget-object p0, p0, Lp36;->f:Landroid/widget/ImageView;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_6
    check-cast p0, Lmv5;

    .line 178
    .line 179
    iget-object v0, p0, Lmv5;->a:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_4

    .line 186
    .line 187
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 188
    .line 189
    const/4 v8, 0x4

    .line 190
    const/4 v9, 0x0

    .line 191
    const-string v5, "PCloudClientProvider"

    .line 192
    .line 193
    const-string v6, "Empty token"

    .line 194
    .line 195
    const/4 v7, 0x0

    .line 196
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    new-instance v3, Lof6;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    sget-object v4, Lof6;->c:Lokhttp3/HttpUrl;

    .line 205
    .line 206
    iput-object v4, v3, Lof6;->b:Lokhttp3/HttpUrl;

    .line 207
    .line 208
    new-instance v4, Lq80;

    .line 209
    .line 210
    invoke-direct {v4, v0, v1}, Lq80;-><init>(Ljava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lt5;

    .line 214
    .line 215
    invoke-direct {v0, v4}, Lt5;-><init>(Lq80;)V

    .line 216
    .line 217
    .line 218
    iput-object v0, v3, Lof6;->a:Lt5;

    .line 219
    .line 220
    iget-object p0, p0, Lmv5;->b:Ljava/lang/String;

    .line 221
    .line 222
    const-string v0, "https://"

    .line 223
    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    :try_start_0
    invoke-static {v0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 229
    .line 230
    .line 231
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_1

    .line 233
    :catch_0
    move-object v0, v2

    .line 234
    :goto_1
    if-eqz v0, :cond_5

    .line 235
    .line 236
    iput-object v0, v3, Lof6;->b:Lokhttp3/HttpUrl;

    .line 237
    .line 238
    new-instance v2, Lcom/pcloud/sdk/internal/a;

    .line 239
    .line 240
    invoke-direct {v2, v3}, Lcom/pcloud/sdk/internal/a;-><init>(Lof6;)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    const-string v0, "\'"

    .line 245
    .line 246
    const-string v1, "\' is not a valid API host."

    .line 247
    .line 248
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_2
    return-object v2

    .line 256
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 257
    .line 258
    sget v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 259
    .line 260
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    iget-object p0, p0, Lbj5;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_8
    check-cast p0, Loi5;

    .line 268
    .line 269
    iget-boolean v0, p0, Loi5;->f:Z

    .line 270
    .line 271
    iget-object v3, p0, Loi5;->k:Ljava/lang/String;

    .line 272
    .line 273
    iget-boolean v4, p0, Loi5;->e:Z

    .line 274
    .line 275
    const/4 v5, 0x1

    .line 276
    if-nez v4, :cond_6

    .line 277
    .line 278
    if-eqz v0, :cond_7

    .line 279
    .line 280
    :cond_6
    move v1, v5

    .line 281
    :cond_7
    iget-boolean v4, p0, Loi5;->d:Z

    .line 282
    .line 283
    if-nez v4, :cond_9

    .line 284
    .line 285
    if-nez v0, :cond_8

    .line 286
    .line 287
    const-string p0, "Ranged downloads are not available for this cloud provider. Using a single download stream."

    .line 288
    .line 289
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :cond_8
    const-string p0, "Ranged downloads are not available for this cloud provider."

    .line 295
    .line 296
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_5

    .line 300
    .line 301
    :cond_9
    invoke-static {}, Lho6;->A()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-nez v4, :cond_a

    .line 306
    .line 307
    if-nez v1, :cond_a

    .line 308
    .line 309
    const-string p0, "Multithreaded downloads disabled"

    .line 310
    .line 311
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_a
    iget-wide v6, p0, Loi5;->c:J

    .line 316
    .line 317
    const-wide/32 v8, 0x6400000

    .line 318
    .line 319
    .line 320
    cmp-long v4, v6, v8

    .line 321
    .line 322
    if-ltz v4, :cond_b

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_b
    if-nez v1, :cond_c

    .line 326
    .line 327
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    sget-object v0, Lp93;->a:Lp93;

    .line 332
    .line 333
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v2, "Multithreaded download disabled below "

    .line 348
    .line 349
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v0, ". Current file: "

    .line 356
    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_c
    :goto_3
    iget-object p0, p0, Loi5;->G:Lgv7;

    .line 372
    .line 373
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    check-cast p0, Ljava/lang/Boolean;

    .line 378
    .line 379
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 380
    .line 381
    .line 382
    move-result p0

    .line 383
    if-nez p0, :cond_e

    .line 384
    .line 385
    if-nez v0, :cond_d

    .line 386
    .line 387
    const-string p0, "Random writes are unavailable for the output path. Using a single download stream."

    .line 388
    .line 389
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_d
    const-string p0, "Random writes are unavailable for the output path."

    .line 394
    .line 395
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_e
    if-eqz v1, :cond_f

    .line 400
    .line 401
    const/4 v5, 0x2

    .line 402
    :cond_f
    invoke-static {}, Lho6;->t()I

    .line 403
    .line 404
    .line 405
    move-result p0

    .line 406
    if-ge p0, v5, :cond_10

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_10
    move v5, p0

    .line 410
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :goto_5
    return-object v2

    .line 415
    :pswitch_9
    check-cast p0, Lcf5;

    .line 416
    .line 417
    const-string v0, "messages_backup_mms"

    .line 418
    .line 419
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 427
    .line 428
    return-object p0

    .line 429
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 430
    .line 431
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 432
    .line 433
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    iget-object p0, p0, Lzx2;->d:Landroid/widget/ImageView;

    .line 438
    .line 439
    return-object p0

    .line 440
    :pswitch_b
    check-cast p0, Lis4;

    .line 441
    .line 442
    invoke-virtual {p0}, Lis4;->a()Ljava/util/Locale;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lis4;->a()Ljava/util/Locale;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-virtual {v0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :pswitch_c
    check-cast p0, Lfs4;

    .line 456
    .line 457
    const-string v0, "skip_disk_space_checks"

    .line 458
    .line 459
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 467
    .line 468
    return-object p0

    .line 469
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 470
    .line 471
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 472
    .line 473
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    iget-object p0, p0, Lrr4;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 478
    .line 479
    return-object p0

    .line 480
    nop

    .line 481
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
