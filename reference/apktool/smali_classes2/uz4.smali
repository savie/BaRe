.class public final Luz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ldd1;Ljava/lang/String;ZIILbt3;)Lzz4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p3, p4}, Lyz4;->b(Ldd1;Ljava/lang/String;II)Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 p4, 0x0

    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p5}, Lbt3;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Lzz4;

    .line 27
    .line 28
    invoke-static {p1}, Lyz4;->c(Ljava/lang/String;)Lvz4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p4, p1, Lvz4;->a:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    invoke-direct {p2, p0, p4}, Lzz4;-><init>(Ldd1;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :cond_2
    :goto_0
    return-object p4
.end method

.method public static b(Ljh1;)Lzz4;
    .locals 10

    .line 1
    sget-object v2, Ldz5;->a:Ldz5;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 4
    .line 5
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    new-instance v0, Lqz4;

    .line 24
    .line 25
    const-string v5, "grantLocalNetworkPermissionWithRootOrShizuku()Z"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const-class v3, Ldz5;

    .line 30
    .line 31
    const-string v4, "grantLocalNetworkPermissionWithRootOrShizuku"

    .line 32
    .line 33
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljh1;->g()Ldd1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {p0}, Luz4;->e(Ljh1;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    move v5, v7

    .line 48
    move v6, v8

    .line 49
    move v7, v9

    .line 50
    move-object v8, v0

    .line 51
    invoke-static/range {v3 .. v8}, Luz4;->a(Ldd1;Ljava/lang/String;ZIILbt3;)Lzz4;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static c(Ldd1;Ljava/lang/String;Lfd1;Ljava/lang/Integer;Ljava/lang/Exception;ZIILbt3;Lrt3;)Lzz4;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhc1;

    .line 5
    .line 6
    const/4 v7, 0x2

    .line 7
    invoke-direct {v0, v7}, Lhc1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lh77;->y0(Ljava/lang/Exception;Lmt3;)Lf77;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lf77;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Throwable;

    .line 30
    .line 31
    instance-of v2, v1, Ljava/net/ConnectException;

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    if-nez v2, :cond_5

    .line 35
    .line 36
    instance-of v2, v1, Ljava/net/SocketException;

    .line 37
    .line 38
    if-nez v2, :cond_5

    .line 39
    .line 40
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    instance-of v2, v1, Ljava/net/UnknownHostException;

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, ""

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    move-object v2, v3

    .line 57
    :cond_1
    const-string v4, "timeout"

    .line 58
    .line 59
    invoke-static {v2, v4, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    move-object v2, v3

    .line 72
    :cond_2
    const-string v4, "EPERM"

    .line 73
    .line 74
    invoke-static {v2, v4, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    move-object v2, v3

    .line 87
    :cond_3
    const-string v4, "EACCES"

    .line 88
    .line 89
    invoke-static {v2, v4, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move-object v3, v1

    .line 103
    :goto_0
    const-string v1, "permission denied"

    .line 104
    .line 105
    invoke-static {v3, v1, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    :cond_5
    move-object v1, p0

    .line 112
    move-object v2, p1

    .line 113
    move v3, p5

    .line 114
    move/from16 v4, p6

    .line 115
    .line 116
    move/from16 v5, p7

    .line 117
    .line 118
    move-object/from16 v6, p8

    .line 119
    .line 120
    invoke-static/range {v1 .. v6}, Luz4;->a(Ldd1;Ljava/lang/String;ZIILbt3;)Lzz4;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_6
    sget-object v0, Lyz4;->a:Ljava/util/Set;

    .line 128
    .line 129
    const/16 v0, 0x25

    .line 130
    .line 131
    move/from16 v4, p6

    .line 132
    .line 133
    if-lt v4, v0, :cond_19

    .line 134
    .line 135
    move/from16 v5, p7

    .line 136
    .line 137
    if-lt v5, v0, :cond_19

    .line 138
    .line 139
    if-nez p5, :cond_19

    .line 140
    .line 141
    sget-object v0, Lyz4;->b:Ljava/util/LinkedHashSet;

    .line 142
    .line 143
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_19

    .line 148
    .line 149
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    :cond_7
    :goto_1
    move-object v3, v8

    .line 156
    goto/16 :goto_b

    .line 157
    .line 158
    :cond_8
    invoke-static {p1}, Lyz4;->c(Ljava/lang/String;)Lvz4;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_9
    const/high16 v2, 0x10000

    .line 166
    .line 167
    if-eqz p3, :cond_b

    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-gt v9, v3, :cond_a

    .line 174
    .line 175
    if-ge v3, v2, :cond_a

    .line 176
    .line 177
    move-object v3, p3

    .line 178
    goto :goto_2

    .line 179
    :cond_a
    move-object v3, v8

    .line 180
    :goto_2
    if-eqz v3, :cond_b

    .line 181
    .line 182
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :cond_b
    iget-object v3, v0, Lvz4;->b:Ljava/lang/Integer;

    .line 189
    .line 190
    if-eqz v3, :cond_c

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-gt v9, v4, :cond_c

    .line 197
    .line 198
    if-ge v4, v2, :cond_c

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_c
    move-object v3, v8

    .line 202
    :goto_4
    if-eqz v3, :cond_d

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_d
    if-eqz p2, :cond_e

    .line 206
    .line 207
    invoke-virtual {p2}, Lfd1;->getDefPort()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    goto :goto_5

    .line 216
    :cond_e
    move-object v2, v8

    .line 217
    :goto_5
    if-eqz v2, :cond_f

    .line 218
    .line 219
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    goto/16 :goto_a

    .line 224
    .line 225
    :cond_f
    iget-object v2, v0, Lvz4;->c:Ljava/lang/String;

    .line 226
    .line 227
    sget-object v3, Lxz4;->a:[I

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    aget v3, v3, v4

    .line 234
    .line 235
    if-eq v3, v9, :cond_15

    .line 236
    .line 237
    if-eq v3, v7, :cond_14

    .line 238
    .line 239
    const/4 v4, 0x3

    .line 240
    if-eq v3, v4, :cond_12

    .line 241
    .line 242
    const/4 v4, 0x4

    .line 243
    if-eq v3, v4, :cond_10

    .line 244
    .line 245
    const/4 v4, 0x5

    .line 246
    if-eq v3, v4, :cond_10

    .line 247
    .line 248
    move-object v2, v8

    .line 249
    goto :goto_9

    .line 250
    :cond_10
    sget-object v3, Lfd1;->HTTP:Lfd1;

    .line 251
    .line 252
    invoke-virtual {v3}, Lfd1;->getScheme()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v2, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_11

    .line 261
    .line 262
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    goto :goto_7

    .line 267
    :cond_11
    sget-object v2, Lfd1;->HTTPS:Lfd1;

    .line 268
    .line 269
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    goto :goto_9

    .line 278
    :cond_12
    sget-object v3, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 279
    .line 280
    invoke-virtual {v3}, Lfd1;->getScheme()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v2, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_13

    .line 289
    .line 290
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    goto :goto_8

    .line 295
    :cond_13
    sget-object v2, Lfd1;->FTP:Lfd1;

    .line 296
    .line 297
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    goto :goto_9

    .line 306
    :cond_14
    sget-object v2, Lfd1;->SFTP:Lfd1;

    .line 307
    .line 308
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    goto :goto_9

    .line 317
    :cond_15
    sget-object v2, Lfd1;->SMB:Lfd1;

    .line 318
    .line 319
    invoke-virtual {v2}, Lfd1;->getDefPort()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    :goto_9
    if-eqz v2, :cond_7

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :goto_a
    new-instance v3, Lwz4;

    .line 331
    .line 332
    iget-object v0, v0, Lvz4;->a:Ljava/lang/String;

    .line 333
    .line 334
    invoke-direct {v3, v0, v2}, Lwz4;-><init>(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    :goto_b
    if-nez v3, :cond_16

    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_16
    :try_start_0
    iget-object v0, v3, Lwz4;->a:Ljava/lang/String;

    .line 341
    .line 342
    iget v2, v3, Lwz4;->b:I

    .line 343
    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    const/16 v4, 0x1f4

    .line 349
    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    move-object/from16 v5, p9

    .line 355
    .line 356
    invoke-interface {v5, v0, v2, v4}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .line 364
    .line 365
    goto :goto_c

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    new-instance v2, Lbn6;

    .line 368
    .line 369
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    move-object v0, v2

    .line 373
    :goto_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 374
    .line 375
    instance-of v4, v0, Lbn6;

    .line 376
    .line 377
    if-eqz v4, :cond_17

    .line 378
    .line 379
    move-object v0, v2

    .line 380
    :cond_17
    check-cast v0, Ljava/lang/Boolean;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_19

    .line 387
    .line 388
    invoke-interface/range {p8 .. p8}, Lbt3;->invoke()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_18

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_18
    new-instance v0, Lzz4;

    .line 402
    .line 403
    iget-object v2, v3, Lwz4;->a:Ljava/lang/String;

    .line 404
    .line 405
    invoke-direct {v0, p0, v2}, Lzz4;-><init>(Ldd1;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-object v0

    .line 409
    :cond_19
    :goto_d
    return-object v8
.end method

.method public static d(Ljh1;Ljava/lang/Exception;)Lzz4;
    .locals 13

    .line 1
    sget-object v2, Ldz5;->a:Ldz5;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 4
    .line 5
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    new-instance v0, Lm92;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    const-class v3, Ldz5;

    .line 29
    .line 30
    const-string v4, "grantLocalNetworkPermissionWithRootOrShizuku"

    .line 31
    .line 32
    const-string v5, "grantLocalNetworkPermissionWithRootOrShizuku()Z"

    .line 33
    .line 34
    invoke-direct/range {v0 .. v7}, Lm92;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lsz4;

    .line 38
    .line 39
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v6, "isLocalNetworkTcpBlockedByPermission(Ljava/lang/String;II)Z"

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v2, 0x3

    .line 47
    const-class v4, Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 48
    .line 49
    const-string v5, "isLocalNetworkTcpBlockedByPermission"

    .line 50
    .line 51
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    instance-of v2, p0, Lmj1;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    move-object v2, p0

    .line 63
    check-cast v2, Lmj1;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v2, v3

    .line 67
    :goto_0
    if-nez v2, :cond_1

    .line 68
    .line 69
    :goto_1
    move-object v2, v3

    .line 70
    move-object v4, v2

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v2}, Lmj1;->m()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_3

    .line 77
    .line 78
    invoke-virtual {v2}, Lmj1;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v2}, Lmj1;->k()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v2}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move-object v4, v3

    .line 97
    :goto_2
    invoke-interface {p0}, Ljh1;->g()Ldd1;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-nez v5, :cond_5

    .line 108
    .line 109
    :cond_4
    invoke-static {p0}, Luz4;->e(Ljh1;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :cond_5
    if-eqz v2, :cond_6

    .line 114
    .line 115
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    move-object p0, v4

    .line 121
    :goto_3
    if-eqz v2, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object v6, v2

    .line 128
    :goto_4
    move-object v7, p1

    .line 129
    move-object v11, v0

    .line 130
    move-object v12, v1

    .line 131
    move-object v4, v5

    .line 132
    move-object v5, p0

    .line 133
    goto :goto_5

    .line 134
    :cond_7
    move-object v6, v4

    .line 135
    goto :goto_4

    .line 136
    :goto_5
    invoke-static/range {v3 .. v12}, Luz4;->c(Ldd1;Ljava/lang/String;Lfd1;Ljava/lang/Integer;Ljava/lang/Exception;ZIILbt3;Lrt3;)Lzz4;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method

.method public static e(Ljh1;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Lmj1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lmj1;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p0, v1

    .line 10
    :goto_0
    if-nez p0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lmj1;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lmj1;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lmj1;->k()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :goto_1
    return-object v1

    .line 33
    :cond_3
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
