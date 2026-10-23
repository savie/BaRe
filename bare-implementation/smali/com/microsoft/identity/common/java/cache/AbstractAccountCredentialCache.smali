.class public abstract Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected final mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 5
    .line 6
    return-void
.end method

.method public static getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 24

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    if-eqz p0, :cond_1e

    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    xor-int/lit8 v6, v5, 0x1

    .line 20
    .line 21
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    xor-int/lit8 v8, v7, 0x1

    .line 26
    .line 27
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    xor-int/lit8 v10, v9, 0x1

    .line 32
    .line 33
    invoke-static/range {p4 .. p4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    xor-int/lit8 v12, v11, 0x1

    .line 38
    .line 39
    invoke-static/range {p5 .. p5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    xor-int/lit8 v14, v13, 0x1

    .line 44
    .line 45
    invoke-static/range {p6 .. p6}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    move/from16 v16, v4

    .line 50
    .line 51
    xor-int/lit8 v4, v15, 0x1

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    const/16 v18, 0x1

    .line 56
    .line 57
    move/from16 v19, v5

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    move/from16 v5, v18

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move/from16 v5, v17

    .line 65
    .line 66
    :goto_0
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v20

    .line 72
    if-nez v20, :cond_1

    .line 73
    .line 74
    move/from16 v20, v7

    .line 75
    .line 76
    sget-object v7, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 77
    .line 78
    if-ne v0, v7, :cond_2

    .line 79
    .line 80
    move/from16 v7, v18

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move/from16 v20, v7

    .line 84
    .line 85
    :cond_2
    move/from16 v7, v17

    .line 86
    .line 87
    :goto_1
    invoke-static/range {p11 .. p11}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v17

    .line 91
    invoke-static/range {p10 .. p10}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v18

    .line 95
    xor-int/lit8 v0, v18, 0x1

    .line 96
    .line 97
    move/from16 v21, v9

    .line 98
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    move/from16 v22, v11

    .line 102
    .line 103
    const-string v11, "Credential lookup filtered by home_account_id? ["

    .line 104
    .line 105
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, "]\nCredential lookup filtered by realm? ["

    .line 112
    .line 113
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v6, "]\nCredential lookup filtered by target? ["

    .line 120
    .line 121
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, "]\nCredential lookup filtered by clientId? ["

    .line 128
    .line 129
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v6, "]\nCredential lookup filtered by applicationIdentifier? ["

    .line 136
    .line 137
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, "]\nCredential lookup filtered by mamEnrollmentIdentifier? ["

    .line 144
    .line 145
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, "]\nCredential lookup filtered by credential type? ["

    .line 152
    .line 153
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v4, "]\nCredential lookup filtered by auth scheme? ["

    .line 160
    .line 161
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v4, "]\nCredential lookup filtered by requested claims? ["

    .line 168
    .line 169
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, "]"

    .line 176
    .line 177
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v4, "AbstractAccountCredentialCache"

    .line 185
    .line 186
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_1d

    .line 203
    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 209
    .line 210
    if-nez v19, :cond_3

    .line 211
    .line 212
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    move-object/from16 v10, p1

    .line 217
    .line 218
    invoke-static {v10, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_4

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_3
    move-object/from16 v10, p1

    .line 226
    .line 227
    :cond_4
    if-nez v16, :cond_5

    .line 228
    .line 229
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    move-object/from16 v11, p2

    .line 234
    .line 235
    invoke-static {v11, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-nez v9, :cond_6

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_5
    move-object/from16 v11, p2

    .line 243
    .line 244
    :cond_6
    if-eqz v5, :cond_7

    .line 245
    .line 246
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-static {v9, v12}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-nez v9, :cond_7

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_7
    if-nez v22, :cond_8

    .line 262
    .line 263
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    move-object/from16 v12, p4

    .line 268
    .line 269
    invoke-static {v12, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-nez v9, :cond_9

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_8
    move-object/from16 v12, p4

    .line 277
    .line 278
    :cond_9
    if-nez v13, :cond_b

    .line 279
    .line 280
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 281
    .line 282
    if-eqz v9, :cond_a

    .line 283
    .line 284
    move-object v9, v8

    .line 285
    check-cast v9, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 286
    .line 287
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getApplicationIdentifier()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    move-object/from16 v14, p5

    .line 292
    .line 293
    invoke-static {v14, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-nez v9, :cond_c

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_a
    move-object/from16 v14, p5

    .line 301
    .line 302
    const-string v9, "Query specified applicationIdentifier match, but credential type does not have application identifier"

    .line 303
    .line 304
    invoke-static {v4, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_b
    move-object/from16 v14, p5

    .line 309
    .line 310
    :cond_c
    :goto_3
    if-nez v15, :cond_e

    .line 311
    .line 312
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 313
    .line 314
    if-eqz v9, :cond_d

    .line 315
    .line 316
    move-object v9, v8

    .line 317
    check-cast v9, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 318
    .line 319
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getMamEnrollmentIdentifier()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    move/from16 v23, v5

    .line 324
    .line 325
    move-object/from16 v5, p6

    .line 326
    .line 327
    invoke-static {v5, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-nez v9, :cond_f

    .line 332
    .line 333
    :goto_4
    move/from16 v5, v23

    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_d
    move/from16 v23, v5

    .line 338
    .line 339
    move-object/from16 v5, p6

    .line 340
    .line 341
    const-string v9, "Query specified mamEnrollmentIdentifier match, but credential type does not have MAM enrollment identifier"

    .line 342
    .line 343
    invoke-static {v4, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_e
    move/from16 v23, v5

    .line 348
    .line 349
    move-object/from16 v5, p6

    .line 350
    .line 351
    :cond_f
    :goto_5
    if-nez v20, :cond_11

    .line 352
    .line 353
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 354
    .line 355
    if-eqz v9, :cond_10

    .line 356
    .line 357
    move-object v9, v8

    .line 358
    check-cast v9, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 359
    .line 360
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    invoke-static {v1, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    if-nez v9, :cond_11

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_10
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 372
    .line 373
    if-eqz v9, :cond_11

    .line 374
    .line 375
    move-object v9, v8

    .line 376
    check-cast v9, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 377
    .line 378
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->getRealm()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static {v1, v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    if-nez v9, :cond_11

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_11
    if-nez v21, :cond_14

    .line 390
    .line 391
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 392
    .line 393
    if-eqz v9, :cond_12

    .line 394
    .line 395
    move-object v9, v8

    .line 396
    check-cast v9, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 397
    .line 398
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    invoke-static {v2, v9}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->targetsIntersect(Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    if-nez v9, :cond_14

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_12
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 410
    .line 411
    if-eqz v9, :cond_13

    .line 412
    .line 413
    move-object v9, v8

    .line 414
    check-cast v9, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 415
    .line 416
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getTarget()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    invoke-static {v2, v9}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->targetsIntersect(Ljava/lang/String;Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-nez v9, :cond_14

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_13
    const-string v9, "Query specified target-match, but no target to match."

    .line 428
    .line 429
    invoke-static {v4, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :cond_14
    if-eqz v7, :cond_17

    .line 433
    .line 434
    instance-of v9, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 435
    .line 436
    if-eqz v9, :cond_17

    .line 437
    .line 438
    move-object v9, v8

    .line 439
    check-cast v9, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 440
    .line 441
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    if-eqz v9, :cond_15

    .line 446
    .line 447
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    :cond_15
    const-string v1, "pop"

    .line 452
    .line 453
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_16

    .line 458
    .line 459
    const-string v1, "PoP_With_Client_Key"

    .line 460
    .line 461
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-nez v1, :cond_17

    .line 466
    .line 467
    const-string v1, "PoP"

    .line 468
    .line 469
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_17

    .line 474
    .line 475
    const-string v1, "PoP_Pregenerated"

    .line 476
    .line 477
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_17

    .line 482
    .line 483
    :goto_6
    move-object/from16 v1, p7

    .line 484
    .line 485
    goto/16 :goto_4

    .line 486
    .line 487
    :cond_16
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_17

    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_17
    if-nez v17, :cond_18

    .line 495
    .line 496
    instance-of v1, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 497
    .line 498
    if-eqz v1, :cond_18

    .line 499
    .line 500
    move-object v1, v8

    .line 501
    check-cast v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 502
    .line 503
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getKid()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    move-object/from16 v9, p11

    .line 508
    .line 509
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-nez v1, :cond_19

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_18
    move-object/from16 v9, p11

    .line 517
    .line 518
    :cond_19
    if-eqz v18, :cond_1a

    .line 519
    .line 520
    move-object/from16 v2, p10

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_1a
    instance-of v1, v8, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 524
    .line 525
    if-eqz v1, :cond_1b

    .line 526
    .line 527
    move-object v1, v8

    .line 528
    check-cast v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 529
    .line 530
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRequestedClaims()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    move-object/from16 v2, p10

    .line 535
    .line 536
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-nez v1, :cond_1c

    .line 541
    .line 542
    :goto_7
    move-object/from16 v1, p7

    .line 543
    .line 544
    move-object/from16 v2, p8

    .line 545
    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :cond_1b
    move-object/from16 v2, p10

    .line 549
    .line 550
    const-string v1, "Query specified requested_claims-match, but attempted to match with non-AT credential type."

    .line 551
    .line 552
    invoke-static {v4, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :cond_1c
    :goto_8
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_1d
    return-object v0

    .line 560
    :cond_1e
    const-string v0, "allCredentials is marked non-null but is null"

    .line 561
    .line 562
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    const/4 v0, 0x0

    .line 566
    return-object v0
.end method

.method public static getTargetClassForCredentialType(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;)Ljava/lang/Class;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    if-eq p1, v1, :cond_3

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const-string p1, "Could not match CredentialType to class. Did you forget to update this method with a new type?"

    .line 27
    .line 28
    const-string v1, "AbstractAccountCredentialCache"

    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Sought key was: ["

    .line 38
    .line 39
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "]"

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-object v0

    .line 58
    :cond_1
    const-class p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    const-class p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    const-class p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_4
    const-class p0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_5
    const-string p0, "targetType is marked non-null but is null"

    .line 71
    .line 72
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public static targetsIntersect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "\\s+"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    array-length v3, p0

    .line 35
    move v4, v0

    .line 36
    :goto_0
    if-ge v4, v3, :cond_0

    .line 37
    .line 38
    aget-object v5, p0, v4

    .line 39
    .line 40
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    array-length p0, p1

    .line 53
    :goto_1
    if-ge v0, p0, :cond_1

    .line 54
    .line 55
    aget-object v3, p1, v0

    .line 56
    .line 57
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    .line 70
    .line 71
    invoke-interface {v1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_2
    const-string p0, "credentialTarget is marked non-null but is null"

    .line 83
    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0

    .line 88
    :cond_3
    const-string p0, "targetToMatch is marked non-null but is null"

    .line 89
    .line 90
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v0
.end method


# virtual methods
.method public abstract getAccounts()Ljava/util/ArrayList;
.end method

.method public abstract getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract getCredentials()Ljava/util/ArrayList;
.end method

.method public abstract getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
.end method

.method public abstract getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
.end method

.method public abstract getCredentialsFilteredBy(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract getCredentialsFilteredBy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract removeAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Z
.end method

.method public abstract removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z
.end method

.method public abstract saveAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
.end method

.method public abstract saveCredential(Lcom/microsoft/identity/common/java/dto/Credential;)V
.end method
