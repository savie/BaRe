.class public final Leh1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "DO_NOT_DELETE_cloud_account_id_copy_"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const-string v2, ".json"

    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0, v0}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, v2}, Lnq7;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/DO_NOT_DELETE_cloud_account_id_copy_"

    .line 2
    .line 3
    const-string v1, ".json"

    .line 4
    .line 5
    invoke-static {p0, v0, p1, v1}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static c(Ljh1;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljh1;->g()Ldd1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lch1;->j:Lch1;

    .line 17
    .line 18
    sget-object v4, Lah1;->j:Lah1;

    .line 19
    .line 20
    sget-object v5, Lxg1;->g:Lxg1;

    .line 21
    .line 22
    sget-object v6, Lyg1;->g:Lyg1;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v7, "/DO_NOT_DELETE_cloud_account_id.json"

    .line 28
    .line 29
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    const-string v10, "getOrCreateCloudServiceId called. Id file relative path = "

    .line 36
    .line 37
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    const/4 v13, 0x4

    .line 42
    const/4 v14, 0x0

    .line 43
    const-string v10, "CloudOperationsImpl"

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v8}, Ljh1;->o(Ljava/lang/String;)Lih1;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    sget-object v15, Ldh1;->a:[I

    .line 54
    .line 55
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    aget v10, v15, v10

    .line 60
    .line 61
    const/4 v11, 0x2

    .line 62
    const/4 v12, 0x3

    .line 63
    const/4 v14, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    if-eq v10, v13, :cond_2

    .line 68
    .line 69
    if-eq v10, v11, :cond_1

    .line 70
    .line 71
    if-ne v10, v12, :cond_0

    .line 72
    .line 73
    if-eqz v1, :cond_2b

    .line 74
    .line 75
    invoke-static {v1}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2b

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 83
    .line 84
    .line 85
    return-object v16

    .line 86
    :cond_1
    move/from16 v17, v14

    .line 87
    .line 88
    move-object/from16 v21, v15

    .line 89
    .line 90
    move v15, v13

    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_2
    move v10, v13

    .line 94
    const/4 v13, 0x4

    .line 95
    move/from16 v17, v14

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    move/from16 v18, v10

    .line 99
    .line 100
    const-string v10, "CloudOperationsImpl"

    .line 101
    .line 102
    move/from16 v19, v11

    .line 103
    .line 104
    const-string v11, "getOrCreateCloudServiceId: Id already exists"

    .line 105
    .line 106
    move/from16 v20, v12

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    move-object/from16 v21, v15

    .line 110
    .line 111
    move/from16 v15, v18

    .line 112
    .line 113
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v8}, Leh1;->e(Ljh1;Ljava/lang/String;)Lwx3;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    instance-of v11, v10, Lzg1;

    .line 121
    .line 122
    if-eqz v11, :cond_9

    .line 123
    .line 124
    check-cast v10, Lzg1;

    .line 125
    .line 126
    iget-object v3, v10, Lzg1;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 127
    .line 128
    invoke-static {v1}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_4

    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v5, "getOrCreateCloudServiceId: Primary id "

    .line 151
    .line 152
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v5, " doesn\'t match saved id "

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const/4 v13, 0x4

    .line 171
    const/4 v14, 0x0

    .line 172
    const-string v10, "CloudOperationsImpl"

    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v2, v1, v3}, Leh1;->f(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_3

    .line 183
    .line 184
    goto/16 :goto_f

    .line 185
    .line 186
    :cond_3
    return-object v1

    .line 187
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v4, "getOrCreateCloudServiceId: CloudServiceId found = "

    .line 190
    .line 191
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    const/4 v13, 0x4

    .line 202
    const/4 v14, 0x0

    .line 203
    const-string v10, "CloudOperationsImpl"

    .line 204
    .line 205
    const/4 v12, 0x0

    .line 206
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v2, v1}, Leh1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Ljh1;->o(Ljava/lang/String;)Lih1;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    aget v4, v21, v4

    .line 226
    .line 227
    if-eq v4, v15, :cond_7

    .line 228
    .line 229
    const/4 v11, 0x2

    .line 230
    if-eq v4, v11, :cond_6

    .line 231
    .line 232
    const/4 v12, 0x3

    .line 233
    if-ne v4, v12, :cond_5

    .line 234
    .line 235
    const-string v0, "ensureCloudServiceIdCopyFile: Id file copy state unknown at path: "

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    const/4 v13, 0x4

    .line 242
    const/4 v14, 0x0

    .line 243
    const-string v10, "CloudOperationsImpl"

    .line 244
    .line 245
    const/4 v12, 0x0

    .line 246
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :goto_0
    move v13, v15

    .line 250
    goto :goto_1

    .line 251
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 252
    .line 253
    .line 254
    return-object v16

    .line 255
    :cond_6
    invoke-static {v0, v2, v3}, Leh1;->g(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    goto :goto_1

    .line 260
    :cond_7
    const/4 v13, 0x4

    .line 261
    const/4 v14, 0x0

    .line 262
    const-string v10, "CloudOperationsImpl"

    .line 263
    .line 264
    const-string v11, "ensureCloudServiceIdCopyFile: Id file copy already exists"

    .line 265
    .line 266
    const/4 v12, 0x0

    .line 267
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :goto_1
    if-nez v13, :cond_8

    .line 272
    .line 273
    goto/16 :goto_f

    .line 274
    .line 275
    :cond_8
    return-object v3

    .line 276
    :cond_9
    const/4 v11, 0x2

    .line 277
    const/4 v12, 0x3

    .line 278
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-eqz v13, :cond_2a

    .line 283
    .line 284
    const-string v10, "getOrCreateCloudServiceId: Invalid primary id content at "

    .line 285
    .line 286
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    const/4 v13, 0x4

    .line 291
    const/4 v14, 0x0

    .line 292
    move/from16 v19, v11

    .line 293
    .line 294
    move-object v11, v10

    .line 295
    const-string v10, "CloudOperationsImpl"

    .line 296
    .line 297
    move/from16 v20, v12

    .line 298
    .line 299
    const/4 v12, 0x0

    .line 300
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-eqz v10, :cond_b

    .line 308
    .line 309
    move-object/from16 v10, v16

    .line 310
    .line 311
    invoke-static {v0, v2, v1, v10}, Leh1;->f(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_a

    .line 316
    .line 317
    :goto_2
    const/16 v16, 0x0

    .line 318
    .line 319
    goto/16 :goto_f

    .line 320
    .line 321
    :cond_a
    return-object v1

    .line 322
    :cond_b
    move/from16 v17, v15

    .line 323
    .line 324
    :goto_3
    invoke-static {v1}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    if-eqz v10, :cond_13

    .line 329
    .line 330
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    invoke-static {v2, v10}, Leh1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-interface {v0, v10}, Ljh1;->o(Ljava/lang/String;)Lih1;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    aget v11, v21, v11

    .line 347
    .line 348
    sget-object v12, Lsv2;->a:Lsv2;

    .line 349
    .line 350
    if-eq v11, v15, :cond_e

    .line 351
    .line 352
    const/4 v13, 0x2

    .line 353
    if-eq v11, v13, :cond_d

    .line 354
    .line 355
    const/4 v15, 0x3

    .line 356
    if-ne v11, v15, :cond_c

    .line 357
    .line 358
    new-instance v5, Lbh1;

    .line 359
    .line 360
    invoke-direct {v5, v1, v12}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 361
    .line 362
    .line 363
    :goto_4
    move v12, v15

    .line 364
    goto/16 :goto_c

    .line 365
    .line 366
    :cond_c
    invoke-static {}, Lq;->j()V

    .line 367
    .line 368
    .line 369
    const/16 v16, 0x0

    .line 370
    .line 371
    return-object v16

    .line 372
    :cond_d
    const/4 v15, 0x3

    .line 373
    new-instance v5, Lbh1;

    .line 374
    .line 375
    sget-object v6, Lwg1;->Primary:Lwg1;

    .line 376
    .line 377
    sget-object v9, Lwg1;->Copy:Lwg1;

    .line 378
    .line 379
    filled-new-array {v6, v9}, [Lwg1;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-static {v6}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    invoke-direct {v5, v1, v6}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_e
    const/4 v15, 0x3

    .line 392
    invoke-static {v0, v10}, Leh1;->e(Ljh1;Ljava/lang/String;)Lwx3;

    .line 393
    .line 394
    .line 395
    move-result-object v11

    .line 396
    instance-of v13, v11, Lzg1;

    .line 397
    .line 398
    if-eqz v13, :cond_10

    .line 399
    .line 400
    check-cast v11, Lzg1;

    .line 401
    .line 402
    iget-object v5, v11, Lzg1;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 403
    .line 404
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_f

    .line 417
    .line 418
    sget-object v5, Lwg1;->Primary:Lwg1;

    .line 419
    .line 420
    invoke-static {v5}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    goto :goto_5

    .line 425
    :cond_f
    const-string v5, "recoverCloudServiceId: Id copy content doesn\'t match saved id at "

    .line 426
    .line 427
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    const/4 v13, 0x4

    .line 432
    const/4 v14, 0x0

    .line 433
    const-string v10, "CloudOperationsImpl"

    .line 434
    .line 435
    const/4 v12, 0x0

    .line 436
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    sget-object v5, Lwg1;->Primary:Lwg1;

    .line 440
    .line 441
    sget-object v6, Lwg1;->Copy:Lwg1;

    .line 442
    .line 443
    filled-new-array {v5, v6}, [Lwg1;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-static {v5}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    :goto_5
    new-instance v6, Lbh1;

    .line 452
    .line 453
    invoke-direct {v6, v1, v5}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 454
    .line 455
    .line 456
    move-object v5, v6

    .line 457
    goto :goto_4

    .line 458
    :cond_10
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-eqz v6, :cond_11

    .line 463
    .line 464
    new-instance v5, Lbh1;

    .line 465
    .line 466
    sget-object v6, Lwg1;->Primary:Lwg1;

    .line 467
    .line 468
    sget-object v9, Lwg1;->Copy:Lwg1;

    .line 469
    .line 470
    filled-new-array {v6, v9}, [Lwg1;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-static {v6}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-direct {v5, v1, v6}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 479
    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_11
    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_12

    .line 487
    .line 488
    new-instance v5, Lbh1;

    .line 489
    .line 490
    invoke-direct {v5, v1, v12}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_4

    .line 494
    .line 495
    :cond_12
    invoke-static {}, Lq;->j()V

    .line 496
    .line 497
    .line 498
    const/16 v16, 0x0

    .line 499
    .line 500
    return-object v16

    .line 501
    :cond_13
    const/4 v12, 0x3

    .line 502
    invoke-interface {v0, v2}, Ljh1;->q(Ljava/lang/String;)Lhh1;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    instance-of v9, v1, Lgh1;

    .line 507
    .line 508
    if-eqz v9, :cond_20

    .line 509
    .line 510
    check-cast v1, Lgh1;

    .line 511
    .line 512
    iget-object v1, v1, Lgh1;->a:Ljava/util/List;

    .line 513
    .line 514
    new-instance v9, Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    :cond_14
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v10

    .line 527
    if-eqz v10, :cond_15

    .line 528
    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v10

    .line 533
    move-object v11, v10

    .line 534
    check-cast v11, Lpg1;

    .line 535
    .line 536
    iget-object v11, v11, Lpg1;->a:Ljava/lang/String;

    .line 537
    .line 538
    invoke-static {v11}, Leh1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v11

    .line 542
    if-eqz v11, :cond_14

    .line 543
    .line 544
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    goto :goto_6

    .line 548
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    .line 549
    .line 550
    const/16 v10, 0xa

    .line 551
    .line 552
    invoke-static {v9, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    if-eqz v10, :cond_1b

    .line 568
    .line 569
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    check-cast v10, Lpg1;

    .line 574
    .line 575
    iget-object v11, v10, Lpg1;->a:Ljava/lang/String;

    .line 576
    .line 577
    const-string v13, "/"

    .line 578
    .line 579
    invoke-static {v2, v13, v11}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v11

    .line 583
    invoke-static {v0, v11}, Leh1;->e(Ljh1;Ljava/lang/String;)Lwx3;

    .line 584
    .line 585
    .line 586
    move-result-object v13

    .line 587
    instance-of v14, v13, Lzg1;

    .line 588
    .line 589
    if-eqz v14, :cond_18

    .line 590
    .line 591
    iget-object v10, v10, Lpg1;->a:Ljava/lang/String;

    .line 592
    .line 593
    invoke-static {v10}, Leh1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    if-eqz v10, :cond_17

    .line 598
    .line 599
    check-cast v13, Lzg1;

    .line 600
    .line 601
    iget-object v13, v13, Lzg1;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 602
    .line 603
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v14

    .line 607
    invoke-static {v14, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v10

    .line 611
    if-nez v10, :cond_16

    .line 612
    .line 613
    goto :goto_8

    .line 614
    :cond_16
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_17
    :goto_8
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 619
    .line 620
    const-string v1, "recoverCloudServiceId: Id file copy name/content mismatch: "

    .line 621
    .line 622
    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v20

    .line 626
    const/16 v22, 0x4

    .line 627
    .line 628
    const/16 v23, 0x0

    .line 629
    .line 630
    const-string v19, "CloudOperationsImpl"

    .line 631
    .line 632
    const/16 v21, 0x0

    .line 633
    .line 634
    invoke-static/range {v18 .. v23}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :goto_9
    move-object v5, v4

    .line 638
    goto/16 :goto_c

    .line 639
    .line 640
    :cond_18
    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-nez v1, :cond_1a

    .line 645
    .line 646
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_19

    .line 651
    .line 652
    goto :goto_a

    .line 653
    :cond_19
    invoke-static {}, Lq;->j()V

    .line 654
    .line 655
    .line 656
    const/16 v16, 0x0

    .line 657
    .line 658
    return-object v16

    .line 659
    :cond_1a
    :goto_a
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 660
    .line 661
    const-string v1, "recoverCloudServiceId: Invalid or unreadable id file copy: "

    .line 662
    .line 663
    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v20

    .line 667
    const/16 v22, 0x4

    .line 668
    .line 669
    const/16 v23, 0x0

    .line 670
    .line 671
    const-string v19, "CloudOperationsImpl"

    .line 672
    .line 673
    const/16 v21, 0x0

    .line 674
    .line 675
    invoke-static/range {v18 .. v23}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    goto :goto_9

    .line 679
    :cond_1b
    new-instance v5, Ljava/util/HashSet;

    .line 680
    .line 681
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 682
    .line 683
    .line 684
    new-instance v6, Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v9

    .line 697
    if-eqz v9, :cond_1d

    .line 698
    .line 699
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    move-object v10, v9

    .line 704
    check-cast v10, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 705
    .line 706
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v10

    .line 710
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v10

    .line 714
    if-eqz v10, :cond_1c

    .line 715
    .line 716
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_1f

    .line 725
    .line 726
    if-eq v1, v15, :cond_1e

    .line 727
    .line 728
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 729
    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    const-string v5, "recoverCloudServiceId: Multiple id file copies found: "

    .line 733
    .line 734
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v20

    .line 744
    const/16 v22, 0x4

    .line 745
    .line 746
    const/16 v23, 0x0

    .line 747
    .line 748
    const-string v19, "CloudOperationsImpl"

    .line 749
    .line 750
    const/16 v21, 0x0

    .line 751
    .line 752
    invoke-static/range {v18 .. v23}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    goto :goto_9

    .line 756
    :cond_1e
    new-instance v5, Lbh1;

    .line 757
    .line 758
    invoke-static {v6}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 763
    .line 764
    sget-object v6, Lwg1;->Primary:Lwg1;

    .line 765
    .line 766
    invoke-static {v6}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    invoke-direct {v5, v1, v6}, Lbh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)V

    .line 771
    .line 772
    .line 773
    goto :goto_c

    .line 774
    :cond_1f
    move-object v5, v3

    .line 775
    goto :goto_c

    .line 776
    :cond_20
    sget-object v5, Lfh1;->a:Lfh1;

    .line 777
    .line 778
    invoke-static {v1, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    if-eqz v1, :cond_29

    .line 783
    .line 784
    goto/16 :goto_9

    .line 785
    .line 786
    :goto_c
    instance-of v1, v5, Lbh1;

    .line 787
    .line 788
    if-eqz v1, :cond_22

    .line 789
    .line 790
    check-cast v5, Lbh1;

    .line 791
    .line 792
    iget-object v1, v5, Lbh1;->j:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 793
    .line 794
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 795
    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    const-string v4, "getOrCreateCloudServiceId: Recovered cloud id = "

    .line 799
    .line 800
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v8

    .line 810
    const/4 v10, 0x4

    .line 811
    const/4 v11, 0x0

    .line 812
    const-string v7, "CloudOperationsImpl"

    .line 813
    .line 814
    const/4 v9, 0x0

    .line 815
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    iget-object v3, v5, Lbh1;->k:Ljava/util/Set;

    .line 819
    .line 820
    invoke-static {v0, v2, v1, v3}, Leh1;->i(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)Z

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-nez v0, :cond_21

    .line 825
    .line 826
    goto/16 :goto_2

    .line 827
    .line 828
    :cond_21
    return-object v1

    .line 829
    :cond_22
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_23

    .line 834
    .line 835
    goto/16 :goto_2

    .line 836
    .line 837
    :cond_23
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    if-eqz v1, :cond_28

    .line 842
    .line 843
    if-eqz v17, :cond_24

    .line 844
    .line 845
    goto/16 :goto_2

    .line 846
    .line 847
    :cond_24
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->Companion:Llj1;

    .line 848
    .line 849
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    new-instance v13, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 853
    .line 854
    const/4 v1, 0x0

    .line 855
    const/4 v10, 0x0

    .line 856
    invoke-direct {v13, v1, v10, v12, v10}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 857
    .line 858
    .line 859
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 860
    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    const-string v3, "generateAndUploadCloudServiceIdFile: Generated id file: "

    .line 864
    .line 865
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v19

    .line 875
    const/16 v21, 0x4

    .line 876
    .line 877
    const/16 v22, 0x0

    .line 878
    .line 879
    const-string v18, "CloudOperationsImpl"

    .line 880
    .line 881
    const/16 v20, 0x0

    .line 882
    .line 883
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    const-string v3, "generateAndUploadCloudServiceIdFile: Uploading id file to "

    .line 891
    .line 892
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v19

    .line 896
    const-string v18, "CloudOperationsImpl"

    .line 897
    .line 898
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    invoke-static {v0, v1, v13}, Leh1;->h(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    if-nez v3, :cond_25

    .line 906
    .line 907
    const-string v0, "generateAndUploadCloudServiceIdFile: Failed uploading id file to "

    .line 908
    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v19

    .line 913
    const/16 v21, 0x4

    .line 914
    .line 915
    const/16 v22, 0x0

    .line 916
    .line 917
    const-string v18, "CloudOperationsImpl"

    .line 918
    .line 919
    const/16 v20, 0x0

    .line 920
    .line 921
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 922
    .line 923
    .line 924
    :goto_d
    const/4 v13, 0x0

    .line 925
    goto :goto_e

    .line 926
    :cond_25
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    invoke-static {v2, v3}, Leh1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    const-string v3, "generateAndUploadCloudServiceIdFile: Uploading copy of id file to "

    .line 935
    .line 936
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v19

    .line 940
    const/16 v21, 0x4

    .line 941
    .line 942
    const/16 v22, 0x0

    .line 943
    .line 944
    const-string v18, "CloudOperationsImpl"

    .line 945
    .line 946
    const/16 v20, 0x0

    .line 947
    .line 948
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    invoke-static {v0, v2, v13}, Leh1;->h(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 952
    .line 953
    .line 954
    move-result v0

    .line 955
    if-nez v0, :cond_26

    .line 956
    .line 957
    const-string v0, "generateAndUploadCloudServiceIdFile: Failed uploading copy of id file to "

    .line 958
    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v19

    .line 963
    const/16 v21, 0x4

    .line 964
    .line 965
    const/16 v22, 0x0

    .line 966
    .line 967
    const-string v18, "CloudOperationsImpl"

    .line 968
    .line 969
    const/16 v20, 0x0

    .line 970
    .line 971
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 972
    .line 973
    .line 974
    goto :goto_d

    .line 975
    :cond_26
    :goto_e
    invoke-static {v13}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    if-eqz v0, :cond_27

    .line 980
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    .line 982
    .line 983
    const-string v1, "getOrCreateCloudServiceId: Created cloud id file at "

    .line 984
    .line 985
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    const-string v1, " with value = "

    .line 992
    .line 993
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v16

    .line 1003
    const/16 v18, 0x4

    .line 1004
    .line 1005
    const/16 v19, 0x0

    .line 1006
    .line 1007
    const-string v15, "CloudOperationsImpl"

    .line 1008
    .line 1009
    move-object/from16 v14, v17

    .line 1010
    .line 1011
    const/16 v17, 0x0

    .line 1012
    .line 1013
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    :cond_27
    return-object v13

    .line 1017
    :cond_28
    invoke-static {}, Lq;->j()V

    .line 1018
    .line 1019
    .line 1020
    const/16 v16, 0x0

    .line 1021
    .line 1022
    return-object v16

    .line 1023
    :cond_29
    const/16 v16, 0x0

    .line 1024
    .line 1025
    invoke-static {}, Lq;->j()V

    .line 1026
    .line 1027
    .line 1028
    return-object v16

    .line 1029
    :cond_2a
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v0

    .line 1033
    if-eqz v0, :cond_2c

    .line 1034
    .line 1035
    if-eqz v1, :cond_2b

    .line 1036
    .line 1037
    invoke-static {v1}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_2b

    .line 1042
    .line 1043
    return-object v1

    .line 1044
    :cond_2b
    :goto_f
    return-object v16

    .line 1045
    :cond_2c
    invoke-static {}, Lq;->j()V

    .line 1046
    .line 1047
    .line 1048
    return-object v16
.end method

.method public static d(Ljh1;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CloudOperationsImpl"

    .line 5
    .line 6
    const-string v1, "getOrCreateMainFolder"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljh1;->g()Ldd1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :try_start_0
    invoke-interface {p0, v1}, Ljh1;->r(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "Exists check failed for folder /"

    .line 30
    .line 31
    const-string v3, ". Error="

    .line 32
    .line 33
    invoke-static {v2, v1, v3, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    const/4 v9, 0x0

    .line 41
    const-string v5, "CloudOperationsImpl"

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 52
    .line 53
    const-string v0, "Main folder "

    .line 54
    .line 55
    const-string v3, " not found, Creating..."

    .line 56
    .line 57
    invoke-static {v0, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v6, 0x4

    .line 62
    const/4 v7, 0x0

    .line 63
    const-string v3, "CloudOperationsImpl"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-interface {p0, v1}, Ljh1;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    move-object p0, v0

    .line 75
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 76
    .line 77
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v1, "Creation of main folder failed. Error="

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v4, 0x4

    .line 88
    const/4 v5, 0x0

    .line 89
    const-string v1, "CloudOperationsImpl"

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_1
    return-object v1
.end method

.method public static e(Ljh1;Ljava/lang/String;)Lwx3;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, p1, v0}, Ljh1;->c(Ljava/lang/String;Lt15;)Ltc4;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Ltc4;->a:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-static {v2}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {p0}, Ltc4;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 20
    .line 21
    .line 22
    :try_start_3
    sget-object p0, Lw14;->a:Lgv7;

    .line 23
    .line 24
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-class v2, Lfl4;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lfl4;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const-string v1, "id"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    instance-of v2, v1, Lkl4;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v1, v0

    .line 52
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lqj4;->o()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    move-object v3, p0

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    move-object v1, v0

    .line 74
    :goto_1
    if-eqz p0, :cond_3

    .line 75
    .line 76
    const-string v2, "version"

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    instance-of v2, p0, Lkl4;

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object p0, v0

    .line 90
    :goto_2
    if-eqz p0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lqj4;->f()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_3
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-lez p0, :cond_5

    .line 116
    .line 117
    new-instance p0, Lzg1;

    .line 118
    .line 119
    new-instance v2, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-direct {v2, v0, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;-><init>(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v2}, Lzg1;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :goto_3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 133
    .line 134
    const-string p0, "readCloudServiceIdFile: Invalid content at path="

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/16 v5, 0x8

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    const-string v1, "CloudOperationsImpl"

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_4
    sget-object p0, Lyg1;->g:Lyg1;

    .line 150
    .line 151
    return-object p0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    move-object p0, v0

    .line 154
    goto :goto_5

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    move-object v1, v0

    .line 157
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    :try_start_5
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 163
    :goto_5
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 164
    .line 165
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string v1, "readCloudServiceIdFile: path="

    .line 170
    .line 171
    const-string v2, " error="

    .line 172
    .line 173
    invoke-static {v1, p1, v2, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const/4 v4, 0x4

    .line 178
    const/4 v5, 0x0

    .line 179
    const-string v1, "CloudOperationsImpl"

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object p0, Lxg1;->g:Lxg1;

    .line 186
    .line 187
    return-object p0
.end method

.method public static f(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z
    .locals 7

    .line 1
    sget-object v0, Lwg1;->Primary:Lwg1;

    .line 2
    .line 3
    sget-object v1, Lwg1;->Copy:Lwg1;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lwg1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, p1, p2, v0}, Leh1;->i(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    const/4 p2, 0x1

    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "deleteCloudServiceIdCopyFile: Deleted stale id file copy at "

    .line 26
    .line 27
    invoke-virtual {p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p1, p3}, Leh1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljh1;->o(Ljava/lang/String;)Lih1;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    sget-object v2, Ldh1;->a:[I

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    aget p3, v2, p3

    .line 46
    .line 47
    if-eq p3, p2, :cond_4

    .line 48
    .line 49
    const/4 p0, 0x2

    .line 50
    if-eq p3, p0, :cond_3

    .line 51
    .line 52
    const/4 p0, 0x3

    .line 53
    if-ne p3, p0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_3
    :goto_0
    return p2

    .line 61
    :cond_4
    :try_start_0
    invoke-interface {p0, p1}, Ljh1;->j(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object p0, v1

    .line 65
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    const-string v2, "CloudOperationsImpl"

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v5, 0x4

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return p2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    move-object p0, v0

    .line 82
    move-object v3, p0

    .line 83
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 84
    .line 85
    const-string p0, "deleteCloudServiceIdCopyFile: Failed deleting stale id file copy at "

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/16 v5, 0x8

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    const-string v1, "CloudOperationsImpl"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return p2
.end method

.method public static g(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Leh1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 10
    .line 11
    const-string v1, "uploadCloudServiceIdCopyFile: Creating id file copy at "

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v1, "CloudOperationsImpl"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Leh1;->h(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const-string p2, "Failed creating a copy of the id file at path: "

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v1, "CloudOperationsImpl"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return p0
.end method

.method public static h(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lc62;

    .line 26
    .line 27
    new-instance v0, Lah;

    .line 28
    .line 29
    const/16 v2, 0xf

    .line 30
    .line 31
    invoke-direct {v0, p2, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0}, Lc62;-><init>(Lbt3;)V

    .line 35
    .line 36
    .line 37
    array-length p2, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    int-to-long v3, p2

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v0, p0

    .line 41
    move-object v2, p1

    .line 42
    :try_start_1
    invoke-interface/range {v0 .. v5}, Ljh1;->e(Lc62;Ljava/lang/String;JLcz;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :goto_0
    move-object p0, v0

    .line 49
    move-object v3, p0

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    move-object v2, p1

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    const-string p0, "uploadIdFile: Error when uploading id file to path: "

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/4 v8, 0x4

    .line 63
    const/4 v9, 0x0

    .line 64
    const-string v5, "CloudOperationsImpl"

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v4, v0

    .line 68
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/16 v5, 0x8

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const-string v1, "CloudOperationsImpl"

    .line 75
    .line 76
    const-string v2, "uploadIdFile"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method public static i(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/util/Set;)Z
    .locals 9

    .line 1
    const-string v0, "/DO_NOT_DELETE_cloud_account_id.json"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lwg1;->Primary:Lwg1;

    .line 8
    .line 9
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0, v0, p2}, Leh1;->h(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 23
    .line 24
    const-string p0, "Failed uploading recovered id file to path: "

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v7, 0x4

    .line 31
    const/4 v8, 0x0

    .line 32
    const-string v4, "CloudOperationsImpl"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    sget-object v0, Lwg1;->Copy:Lwg1;

    .line 40
    .line 41
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-static {p0, p1, p2}, Leh1;->g(Ljh1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return v2

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 56
    return p0
.end method
