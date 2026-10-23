.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    instance-of p1, p2, Lcom/jcraft/jsch/AgentIdentity;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, " not available for identity "

    .line 31
    .line 32
    invoke-static {p0, p3}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p1, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/Session;Ljava/util/Vector;Ljava/util/List;Ljava/util/List;)Z
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 8
    .line 9
    iget v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 10
    .line 11
    iget v5, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 12
    .line 13
    if-lt v4, v5, :cond_1

    .line 14
    .line 15
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 16
    goto/16 :goto_1b

    .line 17
    .line 18
    :cond_1
    const-string v4, "enable_pubkey_auth_query"

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string v5, "yes"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v7, "try_additional_pubkey_algorithms"

    .line 31
    .line 32
    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v8, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v9, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const-string v12, "ssh-rsa-cert-v01@openssh.com"

    .line 64
    .line 65
    const-string v13, "ssh-rsa"

    .line 66
    .line 67
    if-eqz v11, :cond_6

    .line 68
    .line 69
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-nez v13, :cond_5

    .line 80
    .line 81
    const-string v13, "rsa-sha2-256"

    .line 82
    .line 83
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-nez v13, :cond_5

    .line 88
    .line 89
    const-string v13, "rsa-sha2-512"

    .line 90
    .line 91
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-nez v13, :cond_5

    .line 96
    .line 97
    const-string v13, "ssh-rsa-sha224@ssh.com"

    .line 98
    .line 99
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-nez v13, :cond_5

    .line 104
    .line 105
    const-string v13, "ssh-rsa-sha256@ssh.com"

    .line 106
    .line 107
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-nez v13, :cond_5

    .line 112
    .line 113
    const-string v13, "ssh-rsa-sha384@ssh.com"

    .line 114
    .line 115
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-nez v13, :cond_5

    .line 120
    .line 121
    const-string v13, "ssh-rsa-sha512@ssh.com"

    .line 122
    .line 123
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_2

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_4

    .line 135
    .line 136
    const-string v12, "rsa-sha2-256-cert-v01@openssh.com"

    .line 137
    .line 138
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_4

    .line 143
    .line 144
    const-string v12, "rsa-sha2-512-cert-v01@openssh.com"

    .line 145
    .line 146
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_3

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    :goto_2
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    :goto_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    iget-object v10, v0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 166
    .line 167
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    invoke-static {v10, v11}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    if-eqz v14, :cond_0

    .line 182
    .line 183
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    check-cast v14, Lcom/jcraft/jsch/Identity;

    .line 188
    .line 189
    iget v15, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 190
    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    iget v6, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 194
    .line 195
    if-lt v15, v6, :cond_7

    .line 196
    .line 197
    move/from16 v9, v16

    .line 198
    .line 199
    goto/16 :goto_1b

    .line 200
    .line 201
    :cond_7
    const/4 v15, 0x5

    .line 202
    :goto_5
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    const/16 p2, 0x5

    .line 207
    .line 208
    const-string v6, "publickey"

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    if-eqz v17, :cond_b

    .line 213
    .line 214
    move-object/from16 v17, v3

    .line 215
    .line 216
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 217
    .line 218
    if-eqz v3, :cond_a

    .line 219
    .line 220
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_9

    .line 225
    .line 226
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 227
    .line 228
    move/from16 v19, v4

    .line 229
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    move/from16 v20, v5

    .line 233
    .line 234
    const-string v5, "Passphrase for "

    .line 235
    .line 236
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-interface {v3, v4}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 258
    .line 259
    invoke-direct {v0, v6}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_9
    move/from16 v19, v4

    .line 264
    .line 265
    move/from16 v20, v5

    .line 266
    .line 267
    :goto_6
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 268
    .line 269
    invoke-interface {v3}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-eqz v3, :cond_c

    .line 274
    .line 275
    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    .line 276
    .line 277
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    goto :goto_7

    .line 284
    :cond_a
    const-string v0, "USERAUTH fail"

    .line 285
    .line 286
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return v16

    .line 290
    :cond_b
    move-object/from16 v17, v3

    .line 291
    .line 292
    move/from16 v19, v4

    .line 293
    .line 294
    move/from16 v20, v5

    .line 295
    .line 296
    :cond_c
    move-object/from16 v3, v18

    .line 297
    .line 298
    :goto_7
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_e

    .line 303
    .line 304
    if-eqz v3, :cond_d

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_d
    move-object/from16 p3, v3

    .line 308
    .line 309
    move-object/from16 v21, v11

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_e
    :goto_8
    invoke-interface {v14, v3}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_d

    .line 317
    .line 318
    if-eqz v3, :cond_11

    .line 319
    .line 320
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 321
    .line 322
    if-nez v4, :cond_f

    .line 323
    .line 324
    invoke-virtual/range {v17 .. v17}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    :cond_f
    instance-of v4, v4, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 329
    .line 330
    if-eqz v4, :cond_11

    .line 331
    .line 332
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 333
    .line 334
    if-nez v4, :cond_10

    .line 335
    .line 336
    invoke-virtual/range {v17 .. v17}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    :cond_10
    check-cast v4, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 341
    .line 342
    iget-object v5, v4, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->b:Ljava/util/Vector;

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 345
    .line 346
    .line 347
    move-result v15

    .line 348
    if-lez v15, :cond_11

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    move-object/from16 p3, v3

    .line 355
    .line 356
    move-object/from16 v21, v11

    .line 357
    .line 358
    move/from16 v3, v16

    .line 359
    .line 360
    :goto_9
    array-length v11, v15

    .line 361
    if-ge v3, v11, :cond_12

    .line 362
    .line 363
    aget-object v11, v15, v3

    .line 364
    .line 365
    check-cast v11, Lcom/jcraft/jsch/Identity;

    .line 366
    .line 367
    invoke-virtual {v5, v11}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v11}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a(Lcom/jcraft/jsch/Identity;)V

    .line 371
    .line 372
    .line 373
    add-int/lit8 v3, v3, 0x1

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_11
    move-object/from16 p3, v3

    .line 377
    .line 378
    move-object/from16 v21, v11

    .line 379
    .line 380
    :cond_12
    move-object/from16 v3, p3

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :goto_a
    invoke-static/range {p3 .. p3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 384
    .line 385
    .line 386
    add-int/lit8 v15, v15, -0x1

    .line 387
    .line 388
    if-nez v15, :cond_37

    .line 389
    .line 390
    move-object/from16 v3, v18

    .line 391
    .line 392
    :goto_b
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->getAlgName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    const/4 v5, 0x1

    .line 404
    if-eqz v4, :cond_13

    .line 405
    .line 406
    new-instance v4, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_13
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-eqz v4, :cond_14

    .line 417
    .line 418
    new-instance v4, Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_14
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    if-eqz v4, :cond_15

    .line 429
    .line 430
    new-instance v4, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_15
    move-object/from16 v4, v18

    .line 440
    .line 441
    :goto_c
    if-eqz v4, :cond_16

    .line 442
    .line 443
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    if-eqz v11, :cond_17

    .line 448
    .line 449
    :cond_16
    move-object/from16 v26, v7

    .line 450
    .line 451
    move-object/from16 v27, v8

    .line 452
    .line 453
    move-object/from16 v29, v9

    .line 454
    .line 455
    goto/16 :goto_1a

    .line 456
    .line 457
    :cond_17
    :goto_d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_36

    .line 462
    .line 463
    iget v3, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 464
    .line 465
    iget v11, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 466
    .line 467
    if-ge v3, v11, :cond_36

    .line 468
    .line 469
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    const-string v11, ")"

    .line 474
    .line 475
    const-string v15, "ssh-connection"

    .line 476
    .line 477
    if-eqz v3, :cond_21

    .line 478
    .line 479
    if-eqz v19, :cond_21

    .line 480
    .line 481
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v23

    .line 485
    const/16 v24, 0x33

    .line 486
    .line 487
    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 488
    .line 489
    .line 490
    move-result v25

    .line 491
    if-eqz v25, :cond_20

    .line 492
    .line 493
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v25

    .line 497
    move-object/from16 v5, v25

    .line 498
    .line 499
    check-cast v5, Ljava/lang/String;

    .line 500
    .line 501
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 502
    .line 503
    .line 504
    invoke-static {v5, v2, v14, v1}, Lcom/jcraft/jsch/UserAuthPublicKey;->b(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z

    .line 505
    .line 506
    .line 507
    move-result v25

    .line 508
    if-eqz v25, :cond_18

    .line 509
    .line 510
    goto :goto_e

    .line 511
    :cond_18
    move-object/from16 v25, v4

    .line 512
    .line 513
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 514
    .line 515
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 516
    .line 517
    .line 518
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 519
    .line 520
    move-object/from16 v26, v7

    .line 521
    .line 522
    const/16 v7, 0x32

    .line 523
    .line 524
    invoke-virtual {v4, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 525
    .line 526
    .line 527
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 528
    .line 529
    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 530
    .line 531
    .line 532
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 533
    .line 534
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 535
    .line 536
    move-object/from16 v27, v8

    .line 537
    .line 538
    invoke-virtual {v15, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    invoke-virtual {v4, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 543
    .line 544
    .line 545
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 546
    .line 547
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    invoke-virtual {v4, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 552
    .line 553
    .line 554
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 555
    .line 556
    move/from16 v8, v16

    .line 557
    .line 558
    invoke-virtual {v4, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 559
    .line 560
    .line 561
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 562
    .line 563
    invoke-static {v5, v7}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    invoke-virtual {v4, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 568
    .line 569
    .line 570
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 571
    .line 572
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    array-length v7, v3

    .line 576
    invoke-virtual {v4, v3, v8, v7}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 577
    .line 578
    .line 579
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 580
    .line 581
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 582
    .line 583
    .line 584
    :goto_f
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 585
    .line 586
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 587
    .line 588
    .line 589
    iput-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 590
    .line 591
    iget-object v7, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 592
    .line 593
    aget-byte v7, v7, p2

    .line 594
    .line 595
    and-int/lit16 v7, v7, 0xff

    .line 596
    .line 597
    const/16 v8, 0x3c

    .line 598
    .line 599
    if-ne v7, v8, :cond_1a

    .line 600
    .line 601
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    const/4 v8, 0x0

    .line 606
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-eqz v4, :cond_19

    .line 611
    .line 612
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    new-instance v8, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    move-object/from16 v28, v3

    .line 625
    .line 626
    const-string v3, " preauth success"

    .line 627
    .line 628
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    const/4 v8, 0x0

    .line 636
    invoke-interface {v4, v8, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 637
    .line 638
    .line 639
    goto :goto_10

    .line 640
    :cond_19
    move-object/from16 v28, v3

    .line 641
    .line 642
    :goto_10
    new-instance v3, Ljava/util/ArrayList;

    .line 643
    .line 644
    const/4 v4, 0x1

    .line 645
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    :goto_11
    move-object/from16 v29, v9

    .line 652
    .line 653
    const/16 v8, 0x3c

    .line 654
    .line 655
    goto/16 :goto_13

    .line 656
    .line 657
    :cond_1a
    move-object/from16 v28, v3

    .line 658
    .line 659
    const/16 v3, 0x33

    .line 660
    .line 661
    const/4 v8, 0x0

    .line 662
    if-ne v7, v3, :cond_1c

    .line 663
    .line 664
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-eqz v3, :cond_1b

    .line 673
    .line 674
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v5, " preauth failure"

    .line 687
    .line 688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 696
    .line 697
    .line 698
    :cond_1b
    move-object/from16 v29, v9

    .line 699
    .line 700
    goto :goto_12

    .line 701
    :cond_1c
    const/16 v3, 0x35

    .line 702
    .line 703
    if-ne v7, v3, :cond_1e

    .line 704
    .line 705
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 706
    .line 707
    .line 708
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 709
    .line 710
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 711
    .line 712
    .line 713
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 714
    .line 715
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 716
    .line 717
    .line 718
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 719
    .line 720
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 725
    .line 726
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 727
    .line 728
    .line 729
    array-length v4, v3

    .line 730
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 731
    .line 732
    new-instance v8, Ljava/lang/String;

    .line 733
    .line 734
    move-object/from16 v29, v9

    .line 735
    .line 736
    const/4 v9, 0x0

    .line 737
    invoke-direct {v8, v3, v9, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 738
    .line 739
    .line 740
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 741
    .line 742
    if-eqz v3, :cond_1d

    .line 743
    .line 744
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    :cond_1d
    move-object/from16 v3, v28

    .line 748
    .line 749
    move-object/from16 v9, v29

    .line 750
    .line 751
    goto/16 :goto_f

    .line 752
    .line 753
    :cond_1e
    move-object/from16 v29, v9

    .line 754
    .line 755
    const/4 v9, 0x0

    .line 756
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-interface {v3, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-eqz v3, :cond_1f

    .line 765
    .line 766
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v5, " preauth failure command ("

    .line 779
    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    invoke-interface {v3, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 794
    .line 795
    .line 796
    :cond_1f
    :goto_12
    move/from16 v24, v7

    .line 797
    .line 798
    move-object/from16 v4, v25

    .line 799
    .line 800
    move-object/from16 v7, v26

    .line 801
    .line 802
    move-object/from16 v8, v27

    .line 803
    .line 804
    move-object/from16 v3, v28

    .line 805
    .line 806
    move-object/from16 v9, v29

    .line 807
    .line 808
    const/16 v16, 0x0

    .line 809
    .line 810
    goto/16 :goto_e

    .line 811
    .line 812
    :cond_20
    move-object/from16 v28, v3

    .line 813
    .line 814
    move-object/from16 v25, v4

    .line 815
    .line 816
    move-object/from16 v26, v7

    .line 817
    .line 818
    move-object/from16 v27, v8

    .line 819
    .line 820
    move-object/from16 v3, v18

    .line 821
    .line 822
    move/from16 v7, v24

    .line 823
    .line 824
    goto/16 :goto_11

    .line 825
    .line 826
    :goto_13
    if-eq v7, v8, :cond_22

    .line 827
    .line 828
    :goto_14
    move-object/from16 v3, v17

    .line 829
    .line 830
    move/from16 v4, v19

    .line 831
    .line 832
    move/from16 v5, v20

    .line 833
    .line 834
    move-object/from16 v11, v21

    .line 835
    .line 836
    move-object/from16 v7, v26

    .line 837
    .line 838
    move-object/from16 v8, v27

    .line 839
    .line 840
    move-object/from16 v9, v29

    .line 841
    .line 842
    goto/16 :goto_4

    .line 843
    .line 844
    :cond_21
    move-object/from16 v28, v3

    .line 845
    .line 846
    move-object/from16 v25, v4

    .line 847
    .line 848
    move-object/from16 v26, v7

    .line 849
    .line 850
    move-object/from16 v27, v8

    .line 851
    .line 852
    move-object/from16 v29, v9

    .line 853
    .line 854
    move-object/from16 v3, v18

    .line 855
    .line 856
    :cond_22
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    if-eqz v4, :cond_23

    .line 861
    .line 862
    goto :goto_14

    .line 863
    :cond_23
    if-nez v28, :cond_24

    .line 864
    .line 865
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 866
    .line 867
    .line 868
    move-result-object v4

    .line 869
    goto :goto_15

    .line 870
    :cond_24
    move-object/from16 v4, v28

    .line 871
    .line 872
    :goto_15
    if-nez v4, :cond_25

    .line 873
    .line 874
    goto :goto_14

    .line 875
    :cond_25
    if-nez v3, :cond_26

    .line 876
    .line 877
    move-object/from16 v3, v25

    .line 878
    .line 879
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 880
    .line 881
    .line 882
    move-result v5

    .line 883
    if-eqz v5, :cond_27

    .line 884
    .line 885
    goto :goto_14

    .line 886
    :cond_27
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v5

    .line 894
    if-eqz v5, :cond_35

    .line 895
    .line 896
    iget v5, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 897
    .line 898
    iget v7, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 899
    .line 900
    if-ge v5, v7, :cond_35

    .line 901
    .line 902
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v5

    .line 906
    check-cast v5, Ljava/lang/String;

    .line 907
    .line 908
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 909
    .line 910
    .line 911
    invoke-static {v5, v2, v14, v1}, Lcom/jcraft/jsch/UserAuthPublicKey;->b(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z

    .line 912
    .line 913
    .line 914
    move-result v7

    .line 915
    if-eqz v7, :cond_28

    .line 916
    .line 917
    goto :goto_16

    .line 918
    :cond_28
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 919
    .line 920
    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    .line 921
    .line 922
    .line 923
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 924
    .line 925
    const/16 v8, 0x32

    .line 926
    .line 927
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 928
    .line 929
    .line 930
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 931
    .line 932
    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 933
    .line 934
    .line 935
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 936
    .line 937
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 938
    .line 939
    invoke-virtual {v15, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 940
    .line 941
    .line 942
    move-result-object v8

    .line 943
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 944
    .line 945
    .line 946
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 947
    .line 948
    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 953
    .line 954
    .line 955
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 956
    .line 957
    const/4 v8, 0x1

    .line 958
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 959
    .line 960
    .line 961
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 962
    .line 963
    invoke-static {v5, v9}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 964
    .line 965
    .line 966
    move-result-object v8

    .line 967
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 968
    .line 969
    .line 970
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 971
    .line 972
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    array-length v8, v4

    .line 976
    const/4 v9, 0x0

    .line 977
    invoke-virtual {v7, v4, v9, v8}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 978
    .line 979
    .line 980
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->e:[B

    .line 981
    .line 982
    array-length v8, v7

    .line 983
    add-int/lit8 v9, v8, 0x4

    .line 984
    .line 985
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 986
    .line 987
    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 988
    .line 989
    add-int/2addr v2, v9

    .line 990
    add-int/lit8 v2, v2, -0x5

    .line 991
    .line 992
    new-array v2, v2, [B

    .line 993
    .line 994
    move-object/from16 v23, v3

    .line 995
    .line 996
    ushr-int/lit8 v3, v8, 0x18

    .line 997
    .line 998
    int-to-byte v3, v3

    .line 999
    const/16 v16, 0x0

    .line 1000
    .line 1001
    aput-byte v3, v2, v16

    .line 1002
    .line 1003
    ushr-int/lit8 v3, v8, 0x10

    .line 1004
    .line 1005
    int-to-byte v3, v3

    .line 1006
    const/16 v22, 0x1

    .line 1007
    .line 1008
    aput-byte v3, v2, v22

    .line 1009
    .line 1010
    ushr-int/lit8 v3, v8, 0x8

    .line 1011
    .line 1012
    int-to-byte v3, v3

    .line 1013
    const/16 v24, 0x2

    .line 1014
    .line 1015
    aput-byte v3, v2, v24

    .line 1016
    .line 1017
    const/16 v24, 0x3

    .line 1018
    .line 1019
    int-to-byte v3, v8

    .line 1020
    aput-byte v3, v2, v24

    .line 1021
    .line 1022
    const/4 v3, 0x4

    .line 1023
    move-object/from16 v24, v4

    .line 1024
    .line 1025
    const/4 v4, 0x0

    .line 1026
    invoke-static {v7, v4, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1027
    .line 1028
    .line 1029
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1030
    .line 1031
    iget-object v7, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 1032
    .line 1033
    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    .line 1034
    .line 1035
    add-int/lit8 v3, v3, -0x5

    .line 1036
    .line 1037
    move/from16 v8, p2

    .line 1038
    .line 1039
    invoke-static {v7, v8, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1040
    .line 1041
    .line 1042
    invoke-interface {v14, v2, v5}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    if-nez v2, :cond_2a

    .line 1047
    .line 1048
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    if-eqz v2, :cond_29

    .line 1057
    .line 1058
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v2

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    const-string v5, " signature failure"

    .line 1071
    .line 1072
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v3

    .line 1079
    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    :cond_29
    move-object/from16 v2, p4

    .line 1083
    .line 1084
    move-object/from16 v3, v23

    .line 1085
    .line 1086
    move-object/from16 v4, v24

    .line 1087
    .line 1088
    const/16 p2, 0x5

    .line 1089
    .line 1090
    goto/16 :goto_16

    .line 1091
    .line 1092
    :cond_2a
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1093
    .line 1094
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    array-length v7, v2

    .line 1098
    invoke-virtual {v3, v2, v4, v7}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 1099
    .line 1100
    .line 1101
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 1102
    .line 1103
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_2b
    :goto_17
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1107
    .line 1108
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 1109
    .line 1110
    .line 1111
    iput-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1112
    .line 1113
    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 1114
    .line 1115
    const/4 v8, 0x5

    .line 1116
    aget-byte v3, v3, v8

    .line 1117
    .line 1118
    and-int/lit16 v3, v3, 0xff

    .line 1119
    .line 1120
    const/16 v4, 0x34

    .line 1121
    .line 1122
    if-ne v3, v4, :cond_2d

    .line 1123
    .line 1124
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    const/4 v8, 0x0

    .line 1129
    invoke-interface {v0, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1130
    .line 1131
    .line 1132
    move-result v0

    .line 1133
    if-eqz v0, :cond_2c

    .line 1134
    .line 1135
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    const-string v2, " auth success"

    .line 1148
    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v1

    .line 1156
    invoke-interface {v0, v8, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    const/16 v22, 0x1

    .line 1160
    .line 1161
    return v22

    .line 1162
    :cond_2c
    const/16 v22, 0x1

    .line 1163
    .line 1164
    return v22

    .line 1165
    :cond_2d
    const/16 v4, 0x35

    .line 1166
    .line 1167
    if-ne v3, v4, :cond_2e

    .line 1168
    .line 1169
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1170
    .line 1171
    .line 1172
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1173
    .line 1174
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1175
    .line 1176
    .line 1177
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1178
    .line 1179
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1180
    .line 1181
    .line 1182
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1183
    .line 1184
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1185
    .line 1186
    .line 1187
    move-result-object v2

    .line 1188
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1189
    .line 1190
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1191
    .line 1192
    .line 1193
    array-length v3, v2

    .line 1194
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1195
    .line 1196
    new-instance v9, Ljava/lang/String;

    .line 1197
    .line 1198
    const/4 v4, 0x0

    .line 1199
    invoke-direct {v9, v2, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 1203
    .line 1204
    if-eqz v2, :cond_2b

    .line 1205
    .line 1206
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    goto :goto_17

    .line 1210
    :cond_2e
    const/16 v4, 0x33

    .line 1211
    .line 1212
    if-ne v3, v4, :cond_33

    .line 1213
    .line 1214
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1215
    .line 1216
    .line 1217
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1218
    .line 1219
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1220
    .line 1221
    .line 1222
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1223
    .line 1224
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1225
    .line 1226
    .line 1227
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1228
    .line 1229
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 1234
    .line 1235
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1236
    .line 1237
    .line 1238
    move-result v3

    .line 1239
    if-nez v3, :cond_32

    .line 1240
    .line 1241
    iget v2, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 1242
    .line 1243
    const/16 v22, 0x1

    .line 1244
    .line 1245
    add-int/lit8 v2, v2, 0x1

    .line 1246
    .line 1247
    iput v2, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 1248
    .line 1249
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    const/4 v9, 0x0

    .line 1254
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v2

    .line 1258
    if-eqz v2, :cond_2f

    .line 1259
    .line 1260
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v2

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    const-string v5, " auth failure"

    .line 1273
    .line 1274
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    :cond_2f
    iget v2, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 1285
    .line 1286
    iget v3, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 1287
    .line 1288
    if-lt v2, v3, :cond_30

    .line 1289
    .line 1290
    goto/16 :goto_0

    .line 1291
    .line 1292
    :cond_30
    if-eqz v20, :cond_31

    .line 1293
    .line 1294
    goto :goto_19

    .line 1295
    :cond_31
    :goto_18
    move-object/from16 v2, p4

    .line 1296
    .line 1297
    goto/16 :goto_14

    .line 1298
    .line 1299
    :cond_32
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 1300
    .line 1301
    array-length v1, v2

    .line 1302
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1303
    .line 1304
    new-instance v4, Ljava/lang/String;

    .line 1305
    .line 1306
    const/4 v9, 0x0

    .line 1307
    invoke-direct {v4, v2, v9, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-direct {v0, v4}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    throw v0

    .line 1314
    :cond_33
    const/4 v9, 0x0

    .line 1315
    const/16 v22, 0x1

    .line 1316
    .line 1317
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v2

    .line 1325
    if-eqz v2, :cond_34

    .line 1326
    .line 1327
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    .line 1339
    const-string v5, " auth failure command ("

    .line 1340
    .line 1341
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    :cond_34
    :goto_19
    move-object/from16 v2, p4

    .line 1358
    .line 1359
    move/from16 p2, v8

    .line 1360
    .line 1361
    move-object/from16 v3, v23

    .line 1362
    .line 1363
    move-object/from16 v4, v24

    .line 1364
    .line 1365
    goto/16 :goto_16

    .line 1366
    .line 1367
    :cond_35
    move/from16 v8, p2

    .line 1368
    .line 1369
    const/16 v22, 0x1

    .line 1370
    .line 1371
    move-object/from16 v2, p4

    .line 1372
    .line 1373
    move/from16 p2, v8

    .line 1374
    .line 1375
    move/from16 v5, v22

    .line 1376
    .line 1377
    move-object/from16 v4, v25

    .line 1378
    .line 1379
    move-object/from16 v7, v26

    .line 1380
    .line 1381
    move-object/from16 v8, v27

    .line 1382
    .line 1383
    move-object/from16 v9, v29

    .line 1384
    .line 1385
    const/16 v16, 0x0

    .line 1386
    .line 1387
    goto/16 :goto_d

    .line 1388
    .line 1389
    :cond_36
    move-object/from16 v26, v7

    .line 1390
    .line 1391
    move-object/from16 v27, v8

    .line 1392
    .line 1393
    move-object/from16 v29, v9

    .line 1394
    .line 1395
    goto :goto_18

    .line 1396
    :goto_1a
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    const/4 v9, 0x0

    .line 1401
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v2

    .line 1405
    if-eqz v2, :cond_31

    .line 1406
    .line 1407
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v2

    .line 1411
    const-string v4, " cannot be used as public key type for identity "

    .line 1412
    .line 1413
    invoke-static {v3, v4}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    invoke-interface {v14}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v4

    .line 1421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v3

    .line 1428
    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    goto/16 :goto_18

    .line 1432
    .line 1433
    :cond_37
    move-object/from16 v2, p4

    .line 1434
    .line 1435
    move-object/from16 v3, v17

    .line 1436
    .line 1437
    move/from16 v4, v19

    .line 1438
    .line 1439
    move/from16 v5, v20

    .line 1440
    .line 1441
    move-object/from16 v11, v21

    .line 1442
    .line 1443
    goto/16 :goto_5

    .line 1444
    .line 1445
    :goto_1b
    return v9
.end method

.method public final start(Lcom/jcraft/jsch/Session;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "No server-sig-algs found, using PubkeyAcceptedAlgorithms = "

    .line 2
    .line 3
    const-string v1, "Signature algorithms unavailable for non-agent identities = "

    .line 4
    .line 5
    const-string v2, "PubkeyAcceptedAlgorithms = "

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 8
    .line 9
    .line 10
    iget-object v3, p1, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget-object v3, p1, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    invoke-interface {v3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    monitor-enter v3

    .line 25
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-gtz v4, :cond_1

    .line 31
    .line 32
    monitor-exit v3

    .line 33
    return v5

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    const-string v4, "PubkeyAcceptedAlgorithms"

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v6, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v6, v5, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v2, p1, Lcom/jcraft/jsch/Session;->s0:[Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    array-length v6, v2

    .line 77
    if-lez v6, :cond_3

    .line 78
    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 85
    .line 86
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v6, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v6, v5, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    monitor-exit v3

    .line 136
    return v5

    .line 137
    :cond_5
    iget-object v4, p1, Lcom/jcraft/jsch/Session;->Z:[Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v4, :cond_d

    .line 140
    .line 141
    array-length v6, v4

    .line 142
    if-lez v6, :cond_d

    .line 143
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v6, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_9

    .line 163
    .line 164
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Ljava/lang/String;

    .line 169
    .line 170
    array-length v9, v4

    .line 171
    move v10, v5

    .line 172
    :goto_2
    if-ge v10, v9, :cond_8

    .line 173
    .line 174
    aget-object v11, v4, v10

    .line 175
    .line 176
    invoke-static {v8}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    if-nez v13, :cond_7

    .line 185
    .line 186
    if-eqz v12, :cond_6

    .line 187
    .line 188
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-eqz v11, :cond_6

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    :goto_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_a

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_a

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v8, "PubkeyAcceptedAlgorithms in server-sig-algs = "

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-interface {v4, v5, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-nez v4, :cond_b

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_b

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v8, "PubkeyAcceptedAlgorithms not in server-sig-algs = "

    .line 272
    .line 273
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-interface {v4, v5, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-nez v4, :cond_e

    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_e

    .line 297
    .line 298
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/jcraft/jsch/UserAuthPublicKey;->a(Lcom/jcraft/jsch/Session;Ljava/util/Vector;Ljava/util/List;Ljava/util/List;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_c

    .line 303
    .line 304
    const/4 p0, 0x1

    .line 305
    monitor-exit v3

    .line 306
    return p0

    .line 307
    :cond_c
    invoke-virtual {p0, p1, v3, v6, v2}, Lcom/jcraft/jsch/UserAuthPublicKey;->a(Lcom/jcraft/jsch/Session;Ljava/util/Vector;Ljava/util/List;Ljava/util/List;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    monitor-exit v3

    .line 312
    return p0

    .line 313
    :cond_d
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-eqz v4, :cond_e

    .line 322
    .line 323
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-interface {v4, v5, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_e
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/jcraft/jsch/UserAuthPublicKey;->a(Lcom/jcraft/jsch/Session;Ljava/util/Vector;Ljava/util/List;Ljava/util/List;)Z

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    monitor-exit v3

    .line 347
    return p0

    .line 348
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    throw p0
.end method
