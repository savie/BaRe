.class public final Ll62;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lm62;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lm62;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll62;->a:Lm62;

    .line 2
    .line 3
    iput-object p2, p0, Ll62;->b:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 4
    .line 5
    iput-boolean p3, p0, Ll62;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Ll62;->d:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Ll62;

    .line 2
    .line 3
    iget-boolean v3, p0, Ll62;->c:Z

    .line 4
    .line 5
    iget-boolean v4, p0, Ll62;->d:Z

    .line 6
    .line 7
    iget-object v1, p0, Ll62;->a:Lm62;

    .line 8
    .line 9
    iget-object v2, p0, Ll62;->b:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Ll62;-><init>(Lm62;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZZLjv1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ll62;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ll62;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ll62;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 72

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f13042d

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Ll62;->a:Lm62;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Lqo0;->h(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v2, La55;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, ".checkRootExists"

    .line 17
    .line 18
    invoke-static {v0, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v3, v1, Ll62;->b:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 23
    .line 24
    if-eqz v3, :cond_3e

    .line 25
    .line 26
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lez v5, :cond_3e

    .line 35
    .line 36
    iget-object v6, v2, Lm62;->f:Ldd1;

    .line 37
    .line 38
    const-string v5, "cloudType"

    .line 39
    .line 40
    if-eqz v6, :cond_3d

    .line 41
    .line 42
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    sget-object v10, Ldz5;->a:Ldz5;

    .line 47
    .line 48
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 49
    .line 50
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v16

    .line 54
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 57
    .line 58
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 67
    .line 68
    new-instance v11, Luk;

    .line 69
    .line 70
    const/4 v14, 0x0

    .line 71
    const/4 v15, 0x2

    .line 72
    const/4 v9, 0x0

    .line 73
    move v12, v8

    .line 74
    move-object v8, v11

    .line 75
    const-class v11, Ldz5;

    .line 76
    .line 77
    move v13, v12

    .line 78
    const-string v12, "grantLocalNetworkPermissionWithRootOrShizuku"

    .line 79
    .line 80
    move/from16 v17, v13

    .line 81
    .line 82
    const-string v13, "grantLocalNetworkPermissionWithRootOrShizuku()Z"

    .line 83
    .line 84
    invoke-direct/range {v8 .. v15}, Luk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    move-object v11, v8

    .line 88
    move-object v12, v10

    .line 89
    move/from16 v8, v16

    .line 90
    .line 91
    move/from16 v10, v17

    .line 92
    .line 93
    move/from16 v9, v23

    .line 94
    .line 95
    invoke-static/range {v6 .. v11}, Luz4;->a(Ldd1;Ljava/lang/String;ZIILbt3;)Lzz4;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const v7, 0x7f13010d

    .line 100
    .line 101
    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    iget-boolean v8, v1, Ll62;->c:Z

    .line 105
    .line 106
    const-string v27, ""

    .line 107
    .line 108
    if-eqz v6, :cond_1

    .line 109
    .line 110
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 111
    .line 112
    iget-object v0, v2, La55;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v3, "checkRootExists: "

    .line 119
    .line 120
    invoke-static {v3, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v19

    .line 124
    const/16 v21, 0x4

    .line 125
    .line 126
    const/16 v22, 0x0

    .line 127
    .line 128
    const/16 v20, 0x0

    .line 129
    .line 130
    move-object/from16 v18, v0

    .line 131
    .line 132
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 144
    .line 145
    move-object/from16 v1, v27

    .line 146
    .line 147
    :cond_0
    sget-object v3, Lzn4;->a:Lzn4;

    .line 148
    .line 149
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    move v4, v8

    .line 153
    goto/16 :goto_1c

    .line 154
    .line 155
    :cond_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v6}, Lai8;->i(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_2

    .line 164
    .line 165
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 166
    .line 167
    iget-object v0, v2, La55;->b:Ljava/lang/String;

    .line 168
    .line 169
    const/16 v21, 0x4

    .line 170
    .line 171
    const/16 v22, 0x0

    .line 172
    .line 173
    const-string v19, "Not connected to a WiFi network"

    .line 174
    .line 175
    const/16 v20, 0x0

    .line 176
    .line 177
    move-object/from16 v18, v0

    .line 178
    .line 179
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0, v7}, Lai8;->m(Landroid/content/Context;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    iget-object v6, v2, Lm62;->e:Lmj1;

    .line 191
    .line 192
    const-string v9, "cloudService"

    .line 193
    .line 194
    if-eqz v6, :cond_3c

    .line 195
    .line 196
    invoke-virtual {v6, v3}, Lmj1;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 197
    .line 198
    .line 199
    iget-object v6, v2, Lm62;->e:Lmj1;

    .line 200
    .line 201
    if-eqz v6, :cond_3b

    .line 202
    .line 203
    iget-boolean v10, v1, Ll62;->d:Z

    .line 204
    .line 205
    invoke-interface {v6, v10}, Ljh1;->d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 210
    .line 211
    iget-object v10, v2, La55;->b:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v11, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v13, "checkRootExists.LoginResult: "

    .line 216
    .line 217
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v19

    .line 227
    const/16 v21, 0x4

    .line 228
    .line 229
    const/16 v22, 0x0

    .line 230
    .line 231
    const/16 v20, 0x0

    .line 232
    .line 233
    move-object/from16 v18, v10

    .line 234
    .line 235
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    instance-of v10, v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 239
    .line 240
    if-eqz v10, :cond_1b

    .line 241
    .line 242
    iget-object v0, v2, Lm62;->e:Lmj1;

    .line 243
    .line 244
    if-eqz v0, :cond_1a

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Lmj1;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v2, Lm62;->e:Lmj1;

    .line 250
    .line 251
    if-eqz v0, :cond_19

    .line 252
    .line 253
    invoke-static {v0}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_3

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-nez v6, :cond_4

    .line 264
    .line 265
    :cond_3
    move/from16 v37, v8

    .line 266
    .line 267
    goto/16 :goto_c

    .line 268
    .line 269
    :cond_4
    const-string v6, "\'"

    .line 270
    .line 271
    const-string v10, "Unable to delete file at "

    .line 272
    .line 273
    const-string v12, "Deleting the test file at "

    .line 274
    .line 275
    const-string v13, "Test string content doesn\'t match downloaded string content! Test=\'"

    .line 276
    .line 277
    const-string v14, "Downloading file at "

    .line 278
    .line 279
    const-string v15, "File exists at "

    .line 280
    .line 281
    const-string v7, "Checking if the uploaded file exists at "

    .line 282
    .line 283
    const-string v11, "Testing uploading a small file ("

    .line 284
    .line 285
    iget-object v4, v2, La55;->b:Ljava/lang/String;

    .line 286
    .line 287
    move-object/from16 v25, v5

    .line 288
    .line 289
    const-string v5, ": testReadWrite"

    .line 290
    .line 291
    invoke-static {v4, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v18

    .line 295
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    sget-object v5, Lf51;->a:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 307
    .line 308
    move-object/from16 v26, v9

    .line 309
    .line 310
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 315
    .line 316
    .line 317
    move/from16 v37, v8

    .line 318
    .line 319
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, "/TestFile_"

    .line 328
    .line 329
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v0, ".txt"

    .line 336
    .line 337
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    array-length v8, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    move-object/from16 v31, v9

    .line 346
    .line 347
    int-to-long v8, v8

    .line 348
    move-object/from16 v38, v3

    .line 349
    .line 350
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v11, " B) at path \'"

    .line 359
    .line 360
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v11, "\' with content \'"

    .line 367
    .line 368
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v19

    .line 381
    const/16 v21, 0x4

    .line 382
    .line 383
    const/16 v22, 0x0

    .line 384
    .line 385
    const/16 v20, 0x0

    .line 386
    .line 387
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 391
    .line 392
    if-eqz v3, :cond_e

    .line 393
    .line 394
    invoke-interface {v3, v0}, Ljh1;->r(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_d

    .line 399
    .line 400
    const-string v19, "Starting upload..."

    .line 401
    .line 402
    const/16 v21, 0x4

    .line 403
    .line 404
    const/16 v22, 0x0

    .line 405
    .line 406
    const/16 v20, 0x0

    .line 407
    .line 408
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 412
    .line 413
    if-eqz v3, :cond_c

    .line 414
    .line 415
    new-instance v11, Lc62;

    .line 416
    .line 417
    new-instance v29, Luk;

    .line 418
    .line 419
    const-class v32, Lcy0;

    .line 420
    .line 421
    const-string v33, "inputStream"

    .line 422
    .line 423
    const-string v34, "inputStream([B)Ljava/io/ByteArrayInputStream;"

    .line 424
    .line 425
    const/16 v35, 0x1

    .line 426
    .line 427
    const/16 v36, 0x1

    .line 428
    .line 429
    const/16 v30, 0x0

    .line 430
    .line 431
    invoke-direct/range {v29 .. v36}, Luk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 432
    .line 433
    .line 434
    move-object/from16 v31, v0

    .line 435
    .line 436
    move-object/from16 v0, v29

    .line 437
    .line 438
    invoke-direct {v11, v0}, Lc62;-><init>(Lbt3;)V

    .line 439
    .line 440
    .line 441
    const/16 v34, 0x0

    .line 442
    .line 443
    move-object/from16 v29, v3

    .line 444
    .line 445
    move-wide/from16 v32, v8

    .line 446
    .line 447
    move-object/from16 v30, v11

    .line 448
    .line 449
    invoke-interface/range {v29 .. v34}, Ljh1;->e(Lc62;Ljava/lang/String;JLcz;)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v0, v31

    .line 453
    .line 454
    const-string v19, "Uploading likely successful"

    .line 455
    .line 456
    const/16 v21, 0x4

    .line 457
    .line 458
    const/16 v22, 0x0

    .line 459
    .line 460
    const/16 v20, 0x0

    .line 461
    .line 462
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v19

    .line 469
    const/16 v21, 0x4

    .line 470
    .line 471
    const/16 v22, 0x0

    .line 472
    .line 473
    const/16 v20, 0x0

    .line 474
    .line 475
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 479
    .line 480
    if-eqz v3, :cond_b

    .line 481
    .line 482
    invoke-interface {v3, v0}, Ljh1;->r(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-eqz v3, :cond_a

    .line 487
    .line 488
    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v19

    .line 492
    const/16 v21, 0x4

    .line 493
    .line 494
    const/16 v22, 0x0

    .line 495
    .line 496
    const/16 v20, 0x0

    .line 497
    .line 498
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v19

    .line 505
    const/16 v21, 0x4

    .line 506
    .line 507
    const/16 v22, 0x0

    .line 508
    .line 509
    const/16 v20, 0x0

    .line 510
    .line 511
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 515
    .line 516
    if-eqz v3, :cond_9

    .line 517
    .line 518
    const/4 v7, 0x0

    .line 519
    invoke-interface {v3, v0, v7}, Ljh1;->c(Ljava/lang/String;Lt15;)Ltc4;

    .line 520
    .line 521
    .line 522
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 523
    :try_start_4
    new-instance v7, Ljava/lang/String;

    .line 524
    .line 525
    iget-object v8, v3, Ltc4;->a:Ljava/io/InputStream;

    .line 526
    .line 527
    invoke-static {v8}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-direct {v7, v8, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    .line 533
    .line 534
    :try_start_5
    invoke-virtual {v3}, Ltc4;->close()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-eqz v3, :cond_8

    .line 542
    .line 543
    const-string v19, "Test string content matches the downloaded string content"

    .line 544
    .line 545
    const/16 v21, 0x4

    .line 546
    .line 547
    const/16 v22, 0x0

    .line 548
    .line 549
    const/16 v20, 0x0

    .line 550
    .line 551
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v19

    .line 558
    const/16 v21, 0x4

    .line 559
    .line 560
    const/16 v22, 0x0

    .line 561
    .line 562
    const/16 v20, 0x0

    .line 563
    .line 564
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 565
    .line 566
    .line 567
    move-object/from16 v30, v18

    .line 568
    .line 569
    :try_start_6
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 570
    .line 571
    if-eqz v3, :cond_7

    .line 572
    .line 573
    invoke-interface {v3, v0}, Ljh1;->j(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-object v3, v2, La55;->b:Ljava/lang/String;

    .line 577
    .line 578
    const-string v19, "Confirming if test file was deleted..."

    .line 579
    .line 580
    const/16 v21, 0x4

    .line 581
    .line 582
    const/16 v22, 0x0

    .line 583
    .line 584
    const/16 v20, 0x0

    .line 585
    .line 586
    move-object/from16 v18, v3

    .line 587
    .line 588
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v2, Lm62;->e:Lmj1;

    .line 592
    .line 593
    if-eqz v3, :cond_6

    .line 594
    .line 595
    invoke-interface {v3, v0}, Ljh1;->r(Ljava/lang/String;)Z

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    if-nez v3, :cond_5

    .line 600
    .line 601
    const-string v19, "Test file sucessfully deleted"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 602
    .line 603
    const/16 v21, 0x4

    .line 604
    .line 605
    const/16 v22, 0x0

    .line 606
    .line 607
    const/16 v20, 0x0

    .line 608
    .line 609
    move-object/from16 v18, v30

    .line 610
    .line 611
    :try_start_7
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    const-string v19, "Test successful"

    .line 615
    .line 616
    const/16 v21, 0x4

    .line 617
    .line 618
    const/16 v22, 0x0

    .line 619
    .line 620
    const/16 v20, 0x0

    .line 621
    .line 622
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    const/16 v16, 0x1

    .line 626
    .line 627
    goto/16 :goto_3

    .line 628
    .line 629
    :catch_0
    move-exception v0

    .line 630
    :goto_1
    move-object/from16 v32, v0

    .line 631
    .line 632
    goto/16 :goto_2

    .line 633
    .line 634
    :catch_1
    move-exception v0

    .line 635
    move-object/from16 v18, v30

    .line 636
    .line 637
    goto :goto_1

    .line 638
    :cond_5
    move-object/from16 v18, v30

    .line 639
    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string v0, "!"

    .line 649
    .line 650
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v3

    .line 667
    :cond_6
    move-object/from16 v18, v30

    .line 668
    .line 669
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    const/16 v28, 0x0

    .line 673
    .line 674
    throw v28

    .line 675
    :cond_7
    move-object/from16 v18, v30

    .line 676
    .line 677
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    const/16 v28, 0x0

    .line 681
    .line 682
    throw v28

    .line 683
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    const-string v3, "\', Downloaded=\'"

    .line 692
    .line 693
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 716
    :catchall_0
    move-exception v0

    .line 717
    move-object v4, v0

    .line 718
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 719
    :catchall_1
    move-exception v0

    .line 720
    :try_start_9
    invoke-static {v3, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 721
    .line 722
    .line 723
    throw v0

    .line 724
    :cond_9
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    const/16 v28, 0x0

    .line 728
    .line 729
    throw v28

    .line 730
    :cond_a
    const-string v0, "Exists check failed for test file! Either upload failed or server isn\'t allowing file read!"

    .line 731
    .line 732
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 733
    .line 734
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v3

    .line 738
    :cond_b
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    const/16 v28, 0x0

    .line 742
    .line 743
    throw v28

    .line 744
    :cond_c
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const/16 v28, 0x0

    .line 748
    .line 749
    throw v28

    .line 750
    :cond_d
    const-string v0, "Exists check returned true for a file that shouldn\'t exist on the server yet!"

    .line 751
    .line 752
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 753
    .line 754
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v3

    .line 758
    :cond_e
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    const/16 v28, 0x0

    .line 762
    .line 763
    throw v28
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 764
    :catch_2
    move-exception v0

    .line 765
    move-object/from16 v38, v3

    .line 766
    .line 767
    goto/16 :goto_1

    .line 768
    .line 769
    :catch_3
    move-exception v0

    .line 770
    move-object/from16 v38, v3

    .line 771
    .line 772
    move/from16 v37, v8

    .line 773
    .line 774
    goto/16 :goto_1

    .line 775
    .line 776
    :catch_4
    move-exception v0

    .line 777
    move-object/from16 v38, v3

    .line 778
    .line 779
    move/from16 v37, v8

    .line 780
    .line 781
    move-object/from16 v26, v9

    .line 782
    .line 783
    goto/16 :goto_1

    .line 784
    .line 785
    :goto_2
    sget-object v29, Lvr6;->INSTANCE:Lvr6;

    .line 786
    .line 787
    const/16 v34, 0x8

    .line 788
    .line 789
    const/16 v35, 0x0

    .line 790
    .line 791
    const-string v31, "Test failed"

    .line 792
    .line 793
    const/16 v33, 0x0

    .line 794
    .line 795
    move-object/from16 v30, v18

    .line 796
    .line 797
    invoke-static/range {v29 .. v35}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    :goto_3
    if-eqz v16, :cond_17

    .line 801
    .line 802
    if-nez v37, :cond_17

    .line 803
    .line 804
    :try_start_a
    iget-object v0, v2, Lm62;->e:Lmj1;

    .line 805
    .line 806
    if-eqz v0, :cond_f

    .line 807
    .line 808
    invoke-virtual/range {v38 .. v38}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-static {v0, v3}, Leh1;->c(Ljh1;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    move-object/from16 v49, v0

    .line 817
    .line 818
    goto :goto_5

    .line 819
    :catch_5
    move-exception v0

    .line 820
    move-object v6, v0

    .line 821
    goto :goto_4

    .line 822
    :cond_f
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    const/16 v28, 0x0

    .line 826
    .line 827
    throw v28
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 828
    :goto_4
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 829
    .line 830
    iget-object v4, v2, La55;->b:Ljava/lang/String;

    .line 831
    .line 832
    const/16 v8, 0x8

    .line 833
    .line 834
    const/4 v9, 0x0

    .line 835
    const-string v5, "Error while creating cloud service id"

    .line 836
    .line 837
    const/4 v7, 0x0

    .line 838
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    const/16 v49, 0x0

    .line 842
    .line 843
    :goto_5
    invoke-static/range {v49 .. v49}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 844
    .line 845
    .line 846
    move-result v16

    .line 847
    if-eqz v16, :cond_16

    .line 848
    .line 849
    const/16 v53, 0x3bff

    .line 850
    .line 851
    const/16 v54, 0x0

    .line 852
    .line 853
    iget-object v0, v1, Ll62;->b:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 854
    .line 855
    const/16 v39, 0x0

    .line 856
    .line 857
    const/16 v40, 0x0

    .line 858
    .line 859
    const/16 v41, 0x0

    .line 860
    .line 861
    const/16 v42, 0x0

    .line 862
    .line 863
    const/16 v43, 0x0

    .line 864
    .line 865
    const/16 v44, 0x0

    .line 866
    .line 867
    const/16 v45, 0x0

    .line 868
    .line 869
    const/16 v46, 0x0

    .line 870
    .line 871
    const/16 v47, 0x0

    .line 872
    .line 873
    const/16 v48, 0x0

    .line 874
    .line 875
    const/16 v50, 0x0

    .line 876
    .line 877
    const/16 v51, 0x0

    .line 878
    .line 879
    const/16 v52, 0x0

    .line 880
    .line 881
    move-object/from16 v38, v0

    .line 882
    .line 883
    invoke-static/range {v38 .. v54}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 884
    .line 885
    .line 886
    move-result-object v55

    .line 887
    move-object/from16 v1, v49

    .line 888
    .line 889
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 890
    .line 891
    iget-object v3, v2, Lm62;->f:Ldd1;

    .line 892
    .line 893
    if-eqz v3, :cond_15

    .line 894
    .line 895
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    .line 897
    .line 898
    const-string v0, "Can\'t save credentials, Invalid id = "

    .line 899
    .line 900
    if-nez v55, :cond_10

    .line 901
    .line 902
    goto/16 :goto_a

    .line 903
    .line 904
    :cond_10
    :try_start_b
    invoke-virtual/range {v55 .. v55}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 905
    .line 906
    .line 907
    move-result-object v4

    .line 908
    invoke-static {v4}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    if-eqz v4, :cond_14

    .line 913
    .line 914
    invoke-virtual/range {v55 .. v55}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    if-eqz v0, :cond_12

    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    if-lez v4, :cond_11

    .line 925
    .line 926
    goto :goto_6

    .line 927
    :cond_11
    const/4 v0, 0x0

    .line 928
    :goto_6
    if-eqz v0, :cond_12

    .line 929
    .line 930
    sget-object v4, Ly32;->a:Lgv7;

    .line 931
    .line 932
    invoke-static {v0}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    goto :goto_7

    .line 937
    :catch_6
    move-exception v0

    .line 938
    goto/16 :goto_9

    .line 939
    .line 940
    :cond_12
    const/4 v0, 0x0

    .line 941
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 942
    .line 943
    const-string v5, "cloud_creds_pswd_"

    .line 944
    .line 945
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v4

    .line 955
    invoke-static {v4, v0}, Lcz4;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual/range {v55 .. v55}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getKey()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    if-eqz v0, :cond_13

    .line 963
    .line 964
    sget-object v4, Lw14;->a:Lgv7;

    .line 965
    .line 966
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 967
    .line 968
    .line 969
    move-result-object v4

    .line 970
    invoke-virtual {v4, v0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    sget-object v4, Ly32;->a:Lgv7;

    .line 975
    .line 976
    invoke-static {v0}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    goto :goto_8

    .line 981
    :cond_13
    const/4 v4, 0x0

    .line 982
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 983
    .line 984
    const-string v5, "cloud_creds_pvt_key_"

    .line 985
    .line 986
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-static {v0, v4}, Lcz4;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    const/16 v70, 0x3e7f

    .line 1000
    .line 1001
    const/16 v71, 0x0

    .line 1002
    .line 1003
    const/16 v56, 0x0

    .line 1004
    .line 1005
    const/16 v57, 0x0

    .line 1006
    .line 1007
    const/16 v58, 0x0

    .line 1008
    .line 1009
    const/16 v59, 0x0

    .line 1010
    .line 1011
    const/16 v60, 0x0

    .line 1012
    .line 1013
    const/16 v61, 0x0

    .line 1014
    .line 1015
    const/16 v62, 0x0

    .line 1016
    .line 1017
    const/16 v63, 0x0

    .line 1018
    .line 1019
    const/16 v64, 0x0

    .line 1020
    .line 1021
    const/16 v65, 0x0

    .line 1022
    .line 1023
    const/16 v66, 0x0

    .line 1024
    .line 1025
    const/16 v67, 0x0

    .line 1026
    .line 1027
    const/16 v68, 0x0

    .line 1028
    .line 1029
    const/16 v69, 0x0

    .line 1030
    .line 1031
    invoke-static/range {v55 .. v71}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    sget-object v4, Lw14;->a:Lgv7;

    .line 1036
    .line 1037
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    const-class v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 1042
    .line 1043
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    const-string v5, "cloud_creds_"

    .line 1050
    .line 1051
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v4

    .line 1061
    invoke-static {v4, v0}, Lcz4;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_a

    .line 1065
    :cond_14
    invoke-virtual/range {v55 .. v55}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1091
    :goto_9
    const-string v4, "CloudCredentials"

    .line 1092
    .line 1093
    const-string v5, "saveCredentials"

    .line 1094
    .line 1095
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    .line 1097
    .line 1098
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 1099
    .line 1100
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    const-string v5, "saveCredentials: cloudType="

    .line 1107
    .line 1108
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    const-string v3, " msg="

    .line 1115
    .line 1116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v8

    .line 1126
    const/4 v10, 0x4

    .line 1127
    const/4 v11, 0x0

    .line 1128
    const-string v7, "CloudCredentials"

    .line 1129
    .line 1130
    const/4 v9, 0x0

    .line 1131
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_a

    .line 1135
    :cond_15
    invoke-static/range {v25 .. v25}, Lpe4;->F(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    const/16 v28, 0x0

    .line 1139
    .line 1140
    throw v28

    .line 1141
    :cond_16
    move-object/from16 v1, v49

    .line 1142
    .line 1143
    :goto_a
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 1144
    .line 1145
    iget-object v4, v2, La55;->b:Ljava/lang/String;

    .line 1146
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    const-string v5, "CloudServiceId = "

    .line 1150
    .line 1151
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    const/4 v7, 0x4

    .line 1162
    const/4 v8, 0x0

    .line 1163
    const/4 v6, 0x0

    .line 1164
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1165
    .line 1166
    .line 1167
    :cond_17
    :goto_b
    move/from16 v4, v37

    .line 1168
    .line 1169
    goto/16 :goto_1c

    .line 1170
    .line 1171
    :goto_c
    iget-object v1, v2, Lm62;->l:Lix6;

    .line 1172
    .line 1173
    if-nez v0, :cond_18

    .line 1174
    .line 1175
    move-object/from16 v0, v27

    .line 1176
    .line 1177
    :cond_18
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_b

    .line 1181
    :cond_19
    move-object/from16 v26, v9

    .line 1182
    .line 1183
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    const/16 v28, 0x0

    .line 1187
    .line 1188
    throw v28

    .line 1189
    :cond_1a
    move-object/from16 v26, v9

    .line 1190
    .line 1191
    const/16 v28, 0x0

    .line 1192
    .line 1193
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    throw v28

    .line 1197
    :cond_1b
    move-object/from16 v38, v3

    .line 1198
    .line 1199
    move-object/from16 v25, v5

    .line 1200
    .line 1201
    move/from16 v37, v8

    .line 1202
    .line 1203
    iget-object v1, v2, La55;->b:Ljava/lang/String;

    .line 1204
    .line 1205
    const/4 v4, 0x1

    .line 1206
    invoke-virtual {v3, v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl(Z)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v5

    .line 1210
    const-string v4, "Error while logging in with url = "

    .line 1211
    .line 1212
    invoke-static {v4, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v19

    .line 1216
    const/16 v21, 0x4

    .line 1217
    .line 1218
    const/16 v22, 0x0

    .line 1219
    .line 1220
    const/16 v20, 0x0

    .line 1221
    .line 1222
    move-object/from16 v18, v1

    .line 1223
    .line 1224
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    if-eqz v1, :cond_17

    .line 1232
    .line 1233
    iget-object v4, v2, La55;->b:Ljava/lang/String;

    .line 1234
    .line 1235
    invoke-static {v1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    const-string v7, "Error: "

    .line 1240
    .line 1241
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v19

    .line 1245
    const/16 v21, 0x4

    .line 1246
    .line 1247
    const/16 v22, 0x0

    .line 1248
    .line 1249
    const/16 v20, 0x0

    .line 1250
    .line 1251
    move-object/from16 v18, v4

    .line 1252
    .line 1253
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1254
    .line 1255
    .line 1256
    instance-of v4, v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 1257
    .line 1258
    if-eqz v4, :cond_1c

    .line 1259
    .line 1260
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    const v1, 0x7f1302d7

    .line 1265
    .line 1266
    .line 1267
    invoke-static {v0, v1}, Lai8;->m(Landroid/content/Context;I)V

    .line 1268
    .line 1269
    .line 1270
    goto :goto_b

    .line 1271
    :cond_1c
    instance-of v4, v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;

    .line 1272
    .line 1273
    if-eqz v4, :cond_1f

    .line 1274
    .line 1275
    instance-of v0, v1, Lmf8;

    .line 1276
    .line 1277
    if-eqz v0, :cond_1d

    .line 1278
    .line 1279
    move-object v4, v1

    .line 1280
    check-cast v4, Lmf8;

    .line 1281
    .line 1282
    goto :goto_d

    .line 1283
    :cond_1d
    const/4 v4, 0x0

    .line 1284
    :goto_d
    if-eqz v4, :cond_1e

    .line 1285
    .line 1286
    iget-object v0, v4, Lmf8;->a:Ljava/security/cert/X509Certificate;

    .line 1287
    .line 1288
    if-eqz v0, :cond_1e

    .line 1289
    .line 1290
    iget-object v1, v2, Lm62;->p:Lix6;

    .line 1291
    .line 1292
    new-instance v3, Lj62;

    .line 1293
    .line 1294
    move/from16 v4, v37

    .line 1295
    .line 1296
    invoke-direct {v3, v0, v4}, Lj62;-><init>(Ljava/security/cert/X509Certificate;Z)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    goto/16 :goto_1c

    .line 1303
    .line 1304
    :cond_1e
    move/from16 v4, v37

    .line 1305
    .line 1306
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    const v1, 0x7f130585

    .line 1311
    .line 1312
    .line 1313
    invoke-static {v0, v1}, Lai8;->m(Landroid/content/Context;I)V

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_1c

    .line 1317
    .line 1318
    :cond_1f
    move/from16 v4, v37

    .line 1319
    .line 1320
    instance-of v5, v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;

    .line 1321
    .line 1322
    if-eqz v5, :cond_21

    .line 1323
    .line 1324
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 1325
    .line 1326
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1327
    .line 1328
    .line 1329
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v1

    .line 1333
    const v3, 0x7f1304ea

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1341
    .line 1342
    .line 1343
    check-cast v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;

    .line 1344
    .line 1345
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;->getProperties()Ljava/util/List;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v1

    .line 1353
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v3

    .line 1357
    if-eqz v3, :cond_20

    .line 1358
    .line 1359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v3

    .line 1363
    check-cast v3, Lpw5;

    .line 1364
    .line 1365
    iget-object v5, v3, Lpw5;->a:Ljava/lang/Object;

    .line 1366
    .line 1367
    check-cast v5, Ljava/lang/String;

    .line 1368
    .line 1369
    iget-object v3, v3, Lpw5;->b:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v3, Ljava/lang/String;

    .line 1372
    .line 1373
    const-string v6, "\n\n"

    .line 1374
    .line 1375
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1376
    .line 1377
    .line 1378
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 1379
    .line 1380
    const/4 v7, 0x1

    .line 1381
    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1385
    .line 1386
    .line 1387
    move-result v8

    .line 1388
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    const-string v5, ": "

    .line 1397
    .line 1398
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v5

    .line 1405
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1409
    .line 1410
    .line 1411
    move-result v5

    .line 1412
    const/16 v9, 0x11

    .line 1413
    .line 1414
    invoke-virtual {v0, v6, v8, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1418
    .line 1419
    .line 1420
    goto :goto_e

    .line 1421
    :cond_20
    new-instance v1, Landroid/text/SpannedString;

    .line 1422
    .line 1423
    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1424
    .line 1425
    .line 1426
    iget-object v0, v2, Lm62;->q:Lix6;

    .line 1427
    .line 1428
    new-instance v3, Lh62;

    .line 1429
    .line 1430
    invoke-direct {v3, v1, v4}, Lh62;-><init>(Landroid/text/SpannedString;Z)V

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v0, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 1434
    .line 1435
    .line 1436
    goto/16 :goto_1c

    .line 1437
    .line 1438
    :cond_21
    instance-of v5, v6, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 1439
    .line 1440
    if-eqz v5, :cond_37

    .line 1441
    .line 1442
    iget-object v5, v2, Lm62;->f:Ldd1;

    .line 1443
    .line 1444
    if-eqz v5, :cond_36

    .line 1445
    .line 1446
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v18

    .line 1450
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v19

    .line 1454
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()Ljava/lang/Integer;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v20

    .line 1458
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v22

    .line 1462
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1471
    .line 1472
    new-instance v8, Lji1;

    .line 1473
    .line 1474
    const/4 v14, 0x0

    .line 1475
    const/4 v15, 0x2

    .line 1476
    const/4 v9, 0x0

    .line 1477
    const-class v11, Ldz5;

    .line 1478
    .line 1479
    move-object v10, v12

    .line 1480
    const-string v12, "grantLocalNetworkPermissionWithRootOrShizuku"

    .line 1481
    .line 1482
    const-string v13, "grantLocalNetworkPermissionWithRootOrShizuku()Z"

    .line 1483
    .line 1484
    invoke-direct/range {v8 .. v15}, Lji1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1485
    .line 1486
    .line 1487
    new-instance v9, Lrz4;

    .line 1488
    .line 1489
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v11

    .line 1493
    const-string v14, "isLocalNetworkTcpBlockedByPermission(Ljava/lang/String;II)Z"

    .line 1494
    .line 1495
    const/4 v15, 0x0

    .line 1496
    const/4 v10, 0x3

    .line 1497
    const-class v12, Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 1498
    .line 1499
    const-string v13, "isLocalNetworkTcpBlockedByPermission"

    .line 1500
    .line 1501
    invoke-direct/range {v9 .. v15}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1502
    .line 1503
    .line 1504
    move/from16 v24, v0

    .line 1505
    .line 1506
    move-object/from16 v21, v1

    .line 1507
    .line 1508
    move-object/from16 v17, v5

    .line 1509
    .line 1510
    move-object/from16 v25, v8

    .line 1511
    .line 1512
    move-object/from16 v26, v9

    .line 1513
    .line 1514
    invoke-static/range {v17 .. v26}, Luz4;->c(Ldd1;Ljava/lang/String;Lfd1;Ljava/lang/Integer;Ljava/lang/Exception;ZIILbt3;Lrt3;)Lzz4;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    move-object/from16 v5, v21

    .line 1519
    .line 1520
    instance-of v0, v5, Lvq6;

    .line 1521
    .line 1522
    if-eqz v0, :cond_22

    .line 1523
    .line 1524
    move-object v0, v5

    .line 1525
    check-cast v0, Lvq6;

    .line 1526
    .line 1527
    move-object v6, v0

    .line 1528
    goto :goto_f

    .line 1529
    :cond_22
    const/4 v6, 0x0

    .line 1530
    :goto_f
    if-eqz v6, :cond_30

    .line 1531
    .line 1532
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v7

    .line 1540
    :try_start_c
    const-string v0, "private_dns_mode"

    .line 1541
    .line 1542
    invoke-static {v7, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1546
    goto :goto_10

    .line 1547
    :catchall_2
    move-exception v0

    .line 1548
    new-instance v8, Lbn6;

    .line 1549
    .line 1550
    invoke-direct {v8, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 1551
    .line 1552
    .line 1553
    move-object v0, v8

    .line 1554
    :goto_10
    nop

    .line 1555
    instance-of v8, v0, Lbn6;

    .line 1556
    .line 1557
    if-eqz v8, :cond_23

    .line 1558
    .line 1559
    const/4 v0, 0x0

    .line 1560
    :cond_23
    move-object v8, v0

    .line 1561
    check-cast v8, Ljava/lang/String;

    .line 1562
    .line 1563
    :try_start_d
    const-string v0, "private_dns_specifier"

    .line 1564
    .line 1565
    invoke-static {v7, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1569
    goto :goto_11

    .line 1570
    :catchall_3
    move-exception v0

    .line 1571
    new-instance v7, Lbn6;

    .line 1572
    .line 1573
    invoke-direct {v7, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 1574
    .line 1575
    .line 1576
    move-object v0, v7

    .line 1577
    :goto_11
    nop

    .line 1578
    instance-of v7, v0, Lbn6;

    .line 1579
    .line 1580
    if-eqz v7, :cond_24

    .line 1581
    .line 1582
    const/4 v0, 0x0

    .line 1583
    :cond_24
    check-cast v0, Ljava/lang/String;

    .line 1584
    .line 1585
    if-eqz v8, :cond_25

    .line 1586
    .line 1587
    invoke-static {v8}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v7

    .line 1591
    if-nez v7, :cond_25

    .line 1592
    .line 1593
    move-object v12, v8

    .line 1594
    goto :goto_12

    .line 1595
    :cond_25
    const/4 v12, 0x0

    .line 1596
    :goto_12
    if-eqz v0, :cond_26

    .line 1597
    .line 1598
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v7

    .line 1602
    if-nez v7, :cond_26

    .line 1603
    .line 1604
    move-object v13, v0

    .line 1605
    goto :goto_13

    .line 1606
    :cond_26
    const/4 v13, 0x0

    .line 1607
    :goto_13
    iget-object v0, v6, Lvq6;->a:Ljava/lang/String;

    .line 1608
    .line 1609
    if-nez v0, :cond_27

    .line 1610
    .line 1611
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    :cond_27
    move-object v10, v0

    .line 1616
    new-instance v9, Li62;

    .line 1617
    .line 1618
    iget-object v11, v6, Lvq6;->b:Ljava/util/List;

    .line 1619
    .line 1620
    sget-object v3, Lov2;->a:Lov2;

    .line 1621
    .line 1622
    :try_start_e
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1623
    .line 1624
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v0

    .line 1628
    const-string v6, "connectivity"

    .line 1629
    .line 1630
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    instance-of v6, v0, Landroid/net/ConnectivityManager;

    .line 1635
    .line 1636
    if-eqz v6, :cond_28

    .line 1637
    .line 1638
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1639
    .line 1640
    goto :goto_14

    .line 1641
    :catchall_4
    move-exception v0

    .line 1642
    goto :goto_18

    .line 1643
    :cond_28
    const/4 v0, 0x0

    .line 1644
    :goto_14
    if-eqz v0, :cond_2a

    .line 1645
    .line 1646
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v6

    .line 1650
    if-nez v6, :cond_29

    .line 1651
    .line 1652
    goto :goto_15

    .line 1653
    :cond_29
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    if-nez v0, :cond_2b

    .line 1658
    .line 1659
    :cond_2a
    :goto_15
    move-object v6, v3

    .line 1660
    goto :goto_19

    .line 1661
    :cond_2b
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1666
    .line 1667
    .line 1668
    new-instance v6, Ljava/util/ArrayList;

    .line 1669
    .line 1670
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .line 1672
    .line 1673
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v0

    .line 1677
    :cond_2c
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1678
    .line 1679
    .line 1680
    move-result v7

    .line 1681
    if-eqz v7, :cond_2e

    .line 1682
    .line 1683
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v7

    .line 1687
    check-cast v7, Ljava/net/InetAddress;

    .line 1688
    .line 1689
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v7

    .line 1693
    if-eqz v7, :cond_2d

    .line 1694
    .line 1695
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v8

    .line 1699
    if-nez v8, :cond_2d

    .line 1700
    .line 1701
    goto :goto_17

    .line 1702
    :cond_2d
    const/4 v7, 0x0

    .line 1703
    :goto_17
    if-eqz v7, :cond_2c

    .line 1704
    .line 1705
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1706
    .line 1707
    .line 1708
    goto :goto_16

    .line 1709
    :goto_18
    new-instance v6, Lbn6;

    .line 1710
    .line 1711
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 1712
    .line 1713
    .line 1714
    :cond_2e
    :goto_19
    instance-of v0, v6, Lbn6;

    .line 1715
    .line 1716
    if-eqz v0, :cond_2f

    .line 1717
    .line 1718
    goto :goto_1a

    .line 1719
    :cond_2f
    move-object v3, v6

    .line 1720
    :goto_1a
    move-object v14, v3

    .line 1721
    check-cast v14, Ljava/util/List;

    .line 1722
    .line 1723
    invoke-direct/range {v9 .. v14}, Li62;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1724
    .line 1725
    .line 1726
    goto :goto_1b

    .line 1727
    :cond_30
    const/4 v9, 0x0

    .line 1728
    :goto_1b
    if-eqz v1, :cond_32

    .line 1729
    .line 1730
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1731
    .line 1732
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v1

    .line 1740
    if-nez v1, :cond_31

    .line 1741
    .line 1742
    move-object/from16 v1, v27

    .line 1743
    .line 1744
    :cond_31
    sget-object v3, Lzn4;->a:Lzn4;

    .line 1745
    .line 1746
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1747
    .line 1748
    .line 1749
    goto :goto_1c

    .line 1750
    :cond_32
    if-eqz v9, :cond_33

    .line 1751
    .line 1752
    iget-object v0, v2, Lm62;->s:Lix6;

    .line 1753
    .line 1754
    invoke-virtual {v0, v9}, Lix6;->k(Ljava/lang/Object;)V

    .line 1755
    .line 1756
    .line 1757
    goto :goto_1c

    .line 1758
    :cond_33
    instance-of v0, v5, Lei7;

    .line 1759
    .line 1760
    if-eqz v0, :cond_35

    .line 1761
    .line 1762
    iget-object v0, v2, Lm62;->m:Lix6;

    .line 1763
    .line 1764
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    if-nez v1, :cond_34

    .line 1769
    .line 1770
    move-object/from16 v1, v27

    .line 1771
    .line 1772
    :cond_34
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 1773
    .line 1774
    .line 1775
    goto :goto_1c

    .line 1776
    :cond_35
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1777
    .line 1778
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    invoke-static {v5}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v1

    .line 1786
    sget-object v3, Lzn4;->a:Lzn4;

    .line 1787
    .line 1788
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    goto :goto_1c

    .line 1792
    :cond_36
    invoke-static/range {v25 .. v25}, Lpe4;->F(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    const/16 v28, 0x0

    .line 1796
    .line 1797
    throw v28

    .line 1798
    :cond_37
    move-object v5, v1

    .line 1799
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    invoke-static {v5}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-static {v0, v1}, Lai8;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    :goto_1c
    if-eqz v4, :cond_39

    .line 1811
    .line 1812
    if-eqz v16, :cond_38

    .line 1813
    .line 1814
    const v7, 0x7f13010e

    .line 1815
    .line 1816
    .line 1817
    goto :goto_1d

    .line 1818
    :cond_38
    const v7, 0x7f13010d

    .line 1819
    .line 1820
    .line 1821
    :goto_1d
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1822
    .line 1823
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    invoke-static {v7}, Ldj7;->g(I)Ljava/lang/String;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v1

    .line 1831
    sget-object v3, Lzn4;->a:Lzn4;

    .line 1832
    .line 1833
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    :cond_39
    if-nez v4, :cond_3a

    .line 1837
    .line 1838
    if-eqz v16, :cond_3a

    .line 1839
    .line 1840
    iget-object v0, v2, Lm62;->h:Lix6;

    .line 1841
    .line 1842
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1843
    .line 1844
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 1845
    .line 1846
    .line 1847
    :cond_3a
    invoke-virtual {v2}, Lqo0;->f()V

    .line 1848
    .line 1849
    .line 1850
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1851
    .line 1852
    return-object v0

    .line 1853
    :cond_3b
    move-object/from16 v26, v9

    .line 1854
    .line 1855
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 1856
    .line 1857
    .line 1858
    const/16 v28, 0x0

    .line 1859
    .line 1860
    throw v28

    .line 1861
    :cond_3c
    move-object/from16 v26, v9

    .line 1862
    .line 1863
    const/16 v28, 0x0

    .line 1864
    .line 1865
    invoke-static/range {v26 .. v26}, Lpe4;->F(Ljava/lang/String;)V

    .line 1866
    .line 1867
    .line 1868
    throw v28

    .line 1869
    :cond_3d
    move-object/from16 v25, v5

    .line 1870
    .line 1871
    const/16 v28, 0x0

    .line 1872
    .line 1873
    invoke-static/range {v25 .. v25}, Lpe4;->F(Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    throw v28

    .line 1877
    :cond_3e
    const/16 v28, 0x0

    .line 1878
    .line 1879
    const-string v1, ": Invalid credentials!"

    .line 1880
    .line 1881
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v0

    .line 1885
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 1886
    .line 1887
    .line 1888
    return-object v28
.end method
