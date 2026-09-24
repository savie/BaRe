.class public abstract Lav;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;

.field public static final b:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqm;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgv7;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lav;->a:Lgv7;

    .line 13
    .line 14
    new-instance v0, Lpu;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lgv7;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lav;->b:Lgv7;

    .line 26
    .line 27
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lg55;Ljava/util/Set;Lfu;Z)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Leu;->allow:Leu;

    .line 7
    .line 8
    const-string v2, "android:get_usage_stats"

    .line 9
    .line 10
    invoke-static {p6, p0, v2, v1}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "Usage access"

    .line 17
    .line 18
    invoke-static {v2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v2, "android:request_install_packages"

    .line 27
    .line 28
    invoke-static {p6, p0, v2, v1}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string v2, "Install unknown apps"

    .line 35
    .line 36
    invoke-static {v2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 v2, 0x1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p1, v2, :cond_2

    .line 52
    .line 53
    const-string p1, "DND access"

    .line 54
    .line 55
    invoke-static {p1, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string p1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    const-string p1, "android:system_alert_window"

    .line 64
    .line 65
    invoke-static {p6, p0, p1, v1}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const-string p1, "Display over other apps"

    .line 72
    .line 73
    invoke-static {p1, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {p0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    const-string p1, "Battery optimization - Don\'t optimize"

    .line 88
    .line 89
    invoke-static {p1, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string p1, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_4
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, v2, :cond_5

    .line 104
    .line 105
    const-string p1, "Unrestricted data"

    .line 106
    .line 107
    invoke-static {p1, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    const-string p1, "RESTRICT_BACKGROUND_DATA_WHITELIST"

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_5
    const-string p1, "Denied"

    .line 116
    .line 117
    if-eqz p3, :cond_6

    .line 118
    .line 119
    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-ne p2, v2, :cond_6

    .line 124
    .line 125
    const-string p2, "Background data disabled"

    .line 126
    .line 127
    invoke-static {p2, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    const-string p2, "RESTRICT_BACKGROUND_DATA_BLACKLIST"

    .line 131
    .line 132
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    const-string p2, "android:run_any_in_background"

    .line 136
    .line 137
    sget-object p3, Leu;->ignore:Leu;

    .line 138
    .line 139
    invoke-static {p6, p0, p2, p3}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    const-string p2, "Run in background"

    .line 146
    .line 147
    invoke-static {p2, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    const-string p2, "RUN_IN_BACKGROUND_DISABLED"

    .line 151
    .line 152
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_7
    const-string p2, "android:write_settings"

    .line 156
    .line 157
    invoke-static {p6, p0, p2, v1}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_8

    .line 162
    .line 163
    const-string p2, "Modify system settings"

    .line 164
    .line 165
    invoke-static {p2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    const-string p2, "android.permission.WRITE_SETTINGS"

    .line 169
    .line 170
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_8
    const-string p2, "android:activate_vpn"

    .line 174
    .line 175
    invoke-static {p6, p0, p2, v1}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_9

    .line 180
    .line 181
    const-string p2, "Activate VPN"

    .line 182
    .line 183
    invoke-static {p2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 184
    .line 185
    .line 186
    const-string p2, "android.permission.BIND_VPN_SERVICE"

    .line 187
    .line 188
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_9
    sget-object p2, Lg00;->a:Lg00;

    .line 192
    .line 193
    invoke-static {}, Lb67;->a()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_a

    .line 198
    .line 199
    const/16 p2, 0x13

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_a
    const/16 p2, 0x12

    .line 203
    .line 204
    :goto_0
    sget-object p3, Lde7;->a:Ljava/util/LinkedHashMap;

    .line 205
    .line 206
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    sget-object v1, Lmp6;->a:Lmp6;

    .line 211
    .line 212
    invoke-static {}, Lmp6;->f()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v4, 0x0

    .line 217
    if-eqz v3, :cond_f

    .line 218
    .line 219
    const-string v3, "appwidget"

    .line 220
    .line 221
    invoke-static {v3}, Lde7;->a(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-nez v3, :cond_b

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_e

    .line 242
    .line 243
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    instance-of v6, v5, Ljava/lang/Integer;

    .line 248
    .line 249
    if-eqz v6, :cond_c

    .line 250
    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v7, " i32 "

    .line 254
    .line 255
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_c
    instance-of v6, v5, Ljava/lang/String;

    .line 270
    .line 271
    if-eqz v6, :cond_d

    .line 272
    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v7, " s16 "

    .line 276
    .line 277
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_d
    const-string p0, "ShellServiceCall: Type not provided for service call!"

    .line 292
    .line 293
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-object v4

    .line 297
    :cond_e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v4, "service call appwidget "

    .line 300
    .line 301
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string p2, " "

    .line 308
    .line 309
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    filled-new-array {p2}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    sget-object p3, Lip6;->SHIZUKU:Lip6;

    .line 324
    .line 325
    invoke-virtual {v1, p2, p3}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-static {p2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    move-object v4, p2

    .line 334
    check-cast v4, Ljava/lang/String;

    .line 335
    .line 336
    :cond_f
    :goto_2
    const/4 p2, 0x0

    .line 337
    if-eqz v4, :cond_10

    .line 338
    .line 339
    const-string p3, "Parcel(00000000 00000001"

    .line 340
    .line 341
    invoke-static {v4, p3, p2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 342
    .line 343
    .line 344
    move-result p2

    .line 345
    :cond_10
    if-eqz p2, :cond_11

    .line 346
    .line 347
    const-string p2, "Bind app widgets"

    .line 348
    .line 349
    invoke-static {p2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    const-string p2, "android.permission.BIND_APPWIDGET"

    .line 353
    .line 354
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    :cond_11
    invoke-static {}, Lb67;->c()Z

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    if-eqz p2, :cond_12

    .line 362
    .line 363
    const-string p2, "android:manage_external_storage"

    .line 364
    .line 365
    sget-object p3, Leu;->allow:Leu;

    .line 366
    .line 367
    invoke-static {p6, p0, p2, p3}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    if-eqz p2, :cond_12

    .line 372
    .line 373
    const-string p2, "All files access"

    .line 374
    .line 375
    invoke-static {p2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 376
    .line 377
    .line 378
    const-string p2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    :cond_12
    invoke-static {}, Lb67;->d()Z

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    if-eqz p2, :cond_13

    .line 388
    .line 389
    const-string p2, "android:schedule_exact_alarm"

    .line 390
    .line 391
    sget-object p3, Leu;->allow:Leu;

    .line 392
    .line 393
    invoke-static {p6, p0, p2, p3}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    if-eqz p2, :cond_13

    .line 398
    .line 399
    const-string p2, "Alarms & reminders"

    .line 400
    .line 401
    invoke-static {p2, p7}, Lav;->d(Ljava/lang/String;Z)V

    .line 402
    .line 403
    .line 404
    const-string p2, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 405
    .line 406
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    :cond_13
    if-eqz p5, :cond_16

    .line 410
    .line 411
    invoke-interface {p5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    if-ne p2, v2, :cond_16

    .line 416
    .line 417
    const-string p2, "MAGISK_HIDE"

    .line 418
    .line 419
    if-eqz p4, :cond_14

    .line 420
    .line 421
    invoke-interface {p4}, Lg55;->d()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p3

    .line 425
    goto :goto_3

    .line 426
    :cond_14
    move-object p3, p2

    .line 427
    :goto_3
    if-eqz p7, :cond_15

    .line 428
    .line 429
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 430
    .line 431
    const-string p4, "Special data: "

    .line 432
    .line 433
    const-string p5, " = Enabled"

    .line 434
    .line 435
    invoke-static {p4, p3, p5}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    const/4 v5, 0x4

    .line 440
    const/4 v6, 0x0

    .line 441
    const-string v2, "AppPermissionsHelper"

    .line 442
    .line 443
    const/4 v4, 0x0

    .line 444
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    :cond_16
    sget-object p2, Leu;->ignore:Leu;

    .line 451
    .line 452
    const-string p3, "android:change_wifi_state"

    .line 453
    .line 454
    invoke-static {p6, p0, p3, p2}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 455
    .line 456
    .line 457
    move-result p3

    .line 458
    if-eqz p3, :cond_17

    .line 459
    .line 460
    const-string p3, "Wi-Fi Control disabled"

    .line 461
    .line 462
    invoke-static {p3, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    :cond_17
    sget-object p3, Leu;->deny:Leu;

    .line 469
    .line 470
    const-string p4, "android:picture_in_picture"

    .line 471
    .line 472
    invoke-static {p6, p0, p4, p3}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 473
    .line 474
    .line 475
    move-result p4

    .line 476
    if-eqz p4, :cond_18

    .line 477
    .line 478
    const-string p4, "Picture-in-picture disabled"

    .line 479
    .line 480
    invoke-static {p4, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    :cond_18
    const-string p4, "android:turn_screen_on"

    .line 487
    .line 488
    invoke-static {p6, p0, p4, p3}, Lav;->b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z

    .line 489
    .line 490
    .line 491
    move-result p4

    .line 492
    if-eqz p4, :cond_19

    .line 493
    .line 494
    const-string p4, "Turn screen on disabled"

    .line 495
    .line 496
    invoke-static {p4, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    :cond_19
    filled-new-array {p3, p2}, [Leu;

    .line 503
    .line 504
    .line 505
    move-result-object p2

    .line 506
    invoke-static {p2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    const-string p3, "android:auto_revoke_permissions_if_unused"

    .line 511
    .line 512
    if-eqz p6, :cond_1a

    .line 513
    .line 514
    invoke-virtual {p6, p3}, Lfu;->b(Ljava/lang/String;)Leu;

    .line 515
    .line 516
    .line 517
    move-result-object p4

    .line 518
    if-nez p4, :cond_1b

    .line 519
    .line 520
    :cond_1a
    invoke-static {p0, p3}, Ll73;->n(Ljava/lang/String;Ljava/lang/String;)Leu;

    .line 521
    .line 522
    .line 523
    move-result-object p4

    .line 524
    :cond_1b
    invoke-static {p2, p4}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result p0

    .line 528
    if-eqz p0, :cond_1c

    .line 529
    .line 530
    const-string p0, "Pause app activity if unused disabled"

    .line 531
    .line 532
    invoke-static {p0, p1, p7}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    :cond_1c
    return-object v0
.end method

.method public static final b(Lfu;Ljava/lang/String;Ljava/lang/String;Leu;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lfu;->b(Ljava/lang/String;)Leu;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-ne p0, p3, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Ll73;->n(Ljava/lang/String;Ljava/lang/String;)Leu;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-ne p0, p3, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 4
    .line 5
    const-string p2, "Special permission: "

    .line 6
    .line 7
    const-string v1, " = "

    .line 8
    .line 9
    invoke-static {p2, p0, v1, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v1, "AppPermissionsHelper"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "Granted"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lav;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/util/Set;ZLg55;)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lqu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqu;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v2, Lgv7;

    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    const-string v5, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "set"

    const/4 v7, 0x4

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    .line 7
    sget-object v4, Leu;->allow:Leu;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:request_install_packages"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v4, "Install unknown apps"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    const-string v5, "android.permission.ACCESS_NOTIFICATION_POLICY"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_6

    if-eqz p2, :cond_0

    .line 15
    sget-boolean v4, Lg42;->a:Z

    .line 16
    invoke-static {}, Lb67;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    sget-object v4, Lg42;->F:Lgv7;

    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 19
    :cond_2
    sget-object v4, Lmp6;->a:Lmp6;

    .line 20
    sget-object v5, Lg42;->E:Lgv7;

    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 21
    const-string v7, "get"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 22
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 23
    sget-object v7, Lip6;->SHIZUKU:Lip6;

    .line 24
    invoke-virtual {v4, v6, v7}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 26
    invoke-static {v4, p0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-ne v6, v8, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    const-string v6, ":"

    .line 29
    invoke-static {v4, v6, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    :goto_1
    move-object v4, p0

    .line 30
    :goto_2
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 31
    const-string v6, "put"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 32
    const-string v6, " "

    .line 33
    invoke-static {v5, v6, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    :goto_3
    sget-object v5, Lmp6;->a:Lmp6;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lip6;->SHIZUKU:Lip6;

    invoke-virtual {v5, v4, v6}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 35
    :goto_4
    const-string v4, "DND access"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_6
    const-string v5, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p2, :cond_0

    .line 37
    invoke-static {p0, v1}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 38
    const-string v4, "Battery optimization - Don\'t optimize"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_7
    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p2, :cond_0

    .line 40
    sget-object v4, Leu;->allow:Leu;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:system_alert_window"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v4, "Display over other apps"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_8
    const-string v5, "android.permission.WRITE_SETTINGS"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p2, :cond_0

    .line 48
    sget-object v4, Leu;->allow:Leu;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:write_settings"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v4, "Modify system settings"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_9
    const-string v5, "android.permission.BIND_VPN_SERVICE"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p2, :cond_0

    .line 56
    sget-object v4, Leu;->allow:Leu;

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:activate_vpn"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v4, "Activate VPN"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_a
    const-string v5, "android.permission.BIND_APPWIDGET"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz p2, :cond_0

    .line 64
    sget-object v4, Lg00;->a:Lg00;

    .line 65
    sget-object v4, Lmp6;->a:Lmp6;

    .line 66
    sget-object v5, Lg42;->K:Lgv7;

    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 68
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 69
    sget-object v6, Lip6;->SHIZUKU:Lip6;

    .line 70
    invoke-virtual {v4, v5, v6}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 71
    const-string v4, "Bind app widgets"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_b
    const-string v5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz p2, :cond_0

    .line 73
    invoke-static {}, Lb67;->c()Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    .line 74
    :cond_c
    sget-object v4, Leu;->allow:Leu;

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:manage_external_storage"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v4, "All files access"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_d
    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz p2, :cond_0

    .line 82
    invoke-static {}, Lb67;->d()Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    .line 83
    :cond_e
    sget-object v4, Leu;->allow:Leu;

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:schedule_exact_alarm"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v4, "Alarms & reminders"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_f
    const-string v5, "RESTRICT_BACKGROUND_DATA_WHITELIST"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "add"

    const/4 v9, 0x2

    if-eqz v5, :cond_10

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 92
    sget-boolean v4, Lg42;->a:Z

    .line 93
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 94
    sget-object v5, Lg42;->I:Lgv7;

    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v4, "Unrestricted data"

    invoke-static {v4}, Lav;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_10
    const-string v5, "RESTRICT_BACKGROUND_DATA_BLACKLIST"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "Denied"

    if-eqz v5, :cond_11

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    sget-boolean v4, Lg42;->a:Z

    .line 101
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 102
    sget-object v5, Lg42;->J:Lgv7;

    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v4, "Background data disabled"

    invoke-static {v4, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_11
    const-string v5, "RUN_IN_BACKGROUND_DISABLED"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz p2, :cond_0

    .line 107
    sget-object v4, Leu;->ignore:Leu;

    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    sget-boolean v5, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android:run_any_in_background"

    filled-new-array {v6, p0, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v4, "Run in background"

    invoke-static {v4, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_12
    const-string v5, "MAGISK_HIDE"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz p2, :cond_0

    .line 115
    sget-object v4, Lmp6;->a:Lmp6;

    .line 116
    sget-boolean v4, Lmp6;->g:Z

    if-nez v4, :cond_13

    goto/16 :goto_0

    .line 117
    :cond_13
    invoke-static {}, Lmp6;->e()Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    if-nez p3, :cond_15

    goto/16 :goto_0

    .line 118
    :cond_15
    invoke-interface {p3}, Lg55;->c()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {p3}, Lg55;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    .line 119
    invoke-interface {p3}, Lg55;->e()V

    .line 120
    invoke-interface {p3}, Lg55;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    .line 121
    :cond_16
    invoke-interface {p3, p0}, Lg55;->b(Ljava/lang/String;)V

    .line 122
    invoke-interface {p3}, Lg55;->d()Ljava/lang/String;

    move-result-object v4

    .line 123
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    const-string v6, "Special data restored: "

    const-string v7, " = Enabled"

    .line 124
    invoke-static {v6, v4, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 125
    const-string v6, "AppPermissionsHelper"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 126
    :cond_17
    const-string v5, "Wi-Fi Control disabled"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    if-eqz p2, :cond_0

    .line 127
    sget-object v4, Leu;->ignore:Leu;

    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    sget-boolean v8, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android:change_wifi_state"

    filled-new-array {v6, p0, v9, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {v5, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_18
    const-string v5, "Picture-in-picture disabled"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz p2, :cond_0

    .line 135
    sget-object v4, Leu;->deny:Leu;

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    sget-boolean v8, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android:picture_in_picture"

    filled-new-array {v6, p0, v9, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v5, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_19
    const-string v5, "Turn screen on disabled"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eqz p2, :cond_0

    .line 143
    sget-object v4, Leu;->deny:Leu;

    .line 144
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    sget-boolean v8, Lg42;->a:Z

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android:turn_screen_on"

    filled-new-array {v6, p0, v9, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v5, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_1a
    const-string v5, "Pause app activity if unused disabled"

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 152
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 153
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    sget-object v8, Leu;->ignore:Leu;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    sget-boolean v9, Lg42;->a:Z

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    move-result-object v9

    const-string v11, "android:auto_revoke_permissions_if_unused"

    filled-new-array {v6, v4, v11, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v5, v10}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_1b
    sget-object v5, Lg00;->a:Lg00;

    invoke-static {}, Lg00;->i()I

    move-result v5

    .line 162
    invoke-static {}, Lb67;->e()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 163
    sget-boolean v6, Lg42;->a:Z

    invoke-static {v5, p0, v4}, Lg42;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-static {v5, p0, v4}, Lg42;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-static {v5, p0, v4}, Lg42;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v6, v7, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v5}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    .line 167
    :cond_1c
    sget-boolean v6, Lg42;->a:Z

    invoke-static {v5, p0, v4}, Lg42;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 169
    :goto_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 171
    const-string v5, "."

    .line 172
    invoke-static {v4, v5, v4}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v5, "Permission restored: "

    const-string v7, " = Granted"

    .line 174
    invoke-static {v5, v4, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 175
    const-string v7, "AppPermissionsHelper"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    :cond_1d
    invoke-static {v0}, Lav;->h(Ljava/util/ArrayList;)V

    .line 177
    invoke-static {v3}, Lav;->h(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const-string v1, "Special permission restored: "

    .line 4
    .line 5
    const-string v2, " = "

    .line 6
    .line 7
    invoke-static {v1, p0, v2, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v1, "AppPermissionsHelper"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Granted"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lav;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static h(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [Ljava/lang/String;

    .line 18
    .line 19
    array-length v1, p0

    .line 20
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, [Ljava/lang/String;

    .line 25
    .line 26
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static i(Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Lnu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnu;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lou;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lou;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    new-array v3, v3, [Lmt3;

    .line 14
    .line 15
    aput-object v0, v3, v1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v2, v3, v0

    .line 19
    .line 20
    invoke-static {v3}, Lms8;->m([Lmt3;)Lzm1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static j(Luu;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzu;->b:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const-string p0, "Granted"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    const-string p0, "Denied (Don\'t ask again)"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    const-string p0, "Denied"

    .line 30
    .line 31
    return-object p0
.end method
