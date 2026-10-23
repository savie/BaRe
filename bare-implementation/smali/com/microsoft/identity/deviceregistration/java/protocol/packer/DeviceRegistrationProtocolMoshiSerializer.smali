.class public final Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DeviceRegistrationProtocol::",
        "Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer<",
        "TDeviceRegistrationProtocol;>;"
    }
.end annotation


# static fields
.field private static final moshi:Lnh5;


# instance fields
.field private final deviceRegistrationProtocolJsonAdapter:Lqi4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqi4;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lkh5;

    .line 2
    .line 3
    invoke-direct {v0}, Lkh5;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lkh5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    const-string v3, "com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecord"

    .line 13
    .line 14
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-string v5, "Labels must be unique."

    .line 19
    .line 20
    if-nez v4, :cond_17

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    const-class v2, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string v2, "com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecordWithAccount"

    .line 41
    .line 42
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_16

    .line 47
    .line 48
    new-instance v5, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    const-class v3, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecordWithAccount;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v3, Lj26;

    .line 67
    .line 68
    invoke-direct {v3, v5, v2}, Lj26;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iget v2, v0, Lkh5;->a:I

    .line 72
    .line 73
    add-int/lit8 v4, v2, 0x1

    .line 74
    .line 75
    iput v4, v0, Lkh5;->a:I

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v8, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer$UUIDAdapter;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const-class v4, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer$UUIDAdapter;

    .line 96
    .line 97
    move-object v13, v4

    .line 98
    :goto_0
    const-class v5, Ljava/lang/Object;

    .line 99
    .line 100
    if-eq v13, v5, :cond_13

    .line 101
    .line 102
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    array-length v15, v14

    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    move/from16 v5, v16

    .line 110
    .line 111
    :goto_1
    if-ge v5, v15, :cond_12

    .line 112
    .line 113
    aget-object v9, v14, v5

    .line 114
    .line 115
    const-class v6, Ls48;

    .line 116
    .line 117
    invoke-virtual {v9, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    const-string v7, "Nullable"

    .line 122
    .line 123
    const-class v10, Lqi4;

    .line 124
    .line 125
    const/4 v11, 0x1

    .line 126
    const-string v12, "\n    "

    .line 127
    .line 128
    move-object/from16 v17, v12

    .line 129
    .line 130
    const-string v12, "Unexpected signature for "

    .line 131
    .line 132
    move-object/from16 v18, v12

    .line 133
    .line 134
    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 135
    .line 136
    if-eqz v6, :cond_8

    .line 137
    .line 138
    invoke-virtual {v9, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 139
    .line 140
    .line 141
    move-object/from16 v19, v13

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 152
    .line 153
    .line 154
    move-result-object v20

    .line 155
    move/from16 v21, v11

    .line 156
    .line 157
    array-length v11, v6

    .line 158
    move-object/from16 v22, v4

    .line 159
    .line 160
    const/4 v4, 0x2

    .line 161
    if-lt v11, v4, :cond_3

    .line 162
    .line 163
    aget-object v11, v6, v16

    .line 164
    .line 165
    const-class v4, Ldn4;

    .line 166
    .line 167
    if-ne v11, v4, :cond_3

    .line 168
    .line 169
    if-ne v13, v12, :cond_3

    .line 170
    .line 171
    array-length v4, v6

    .line 172
    const/4 v11, 0x2

    .line 173
    :goto_2
    if-ge v11, v4, :cond_2

    .line 174
    .line 175
    move/from16 v23, v4

    .line 176
    .line 177
    aget-object v4, v6, v11

    .line 178
    .line 179
    move/from16 v24, v5

    .line 180
    .line 181
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 182
    .line 183
    if-nez v5, :cond_0

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_0
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-eq v4, v10, :cond_1

    .line 193
    .line 194
    :goto_3
    move-object v5, v7

    .line 195
    move-object/from16 v25, v10

    .line 196
    .line 197
    move-object/from16 v28, v12

    .line 198
    .line 199
    move-object/from16 v26, v17

    .line 200
    .line 201
    move-object/from16 v27, v18

    .line 202
    .line 203
    move/from16 v4, v21

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 207
    .line 208
    move/from16 v4, v23

    .line 209
    .line 210
    move/from16 v5, v24

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_2
    move/from16 v24, v5

    .line 214
    .line 215
    aget-object v4, v20, v21

    .line 216
    .line 217
    invoke-static {v4}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-instance v5, Lz9;

    .line 222
    .line 223
    aget-object v11, v6, v21

    .line 224
    .line 225
    move-object v13, v10

    .line 226
    array-length v10, v6

    .line 227
    move-object v6, v11

    .line 228
    const/4 v11, 0x2

    .line 229
    move-object/from16 v20, v12

    .line 230
    .line 231
    const/4 v12, 0x1

    .line 232
    move-object/from16 v25, v13

    .line 233
    .line 234
    move-object/from16 v26, v17

    .line 235
    .line 236
    move-object/from16 v27, v18

    .line 237
    .line 238
    move-object/from16 v28, v20

    .line 239
    .line 240
    move-object v13, v7

    .line 241
    move-object v7, v4

    .line 242
    move/from16 v4, v21

    .line 243
    .line 244
    invoke-direct/range {v5 .. v12}, Lda;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v20, v1

    .line 248
    .line 249
    move-object v4, v13

    .line 250
    move-object/from16 v18, v14

    .line 251
    .line 252
    move/from16 v17, v15

    .line 253
    .line 254
    move-object/from16 v1, v28

    .line 255
    .line 256
    goto/16 :goto_8

    .line 257
    .line 258
    :cond_3
    move/from16 v24, v5

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :goto_4
    array-length v7, v6

    .line 262
    if-ne v7, v4, :cond_7

    .line 263
    .line 264
    move-object/from16 v7, v28

    .line 265
    .line 266
    if-eq v13, v7, :cond_7

    .line 267
    .line 268
    sget-object v10, Lyh8;->a:Ljava/util/Set;

    .line 269
    .line 270
    invoke-interface {v9}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-static {v10}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    aget-object v11, v20, v16

    .line 279
    .line 280
    invoke-static {v11}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    aget-object v12, v20, v16

    .line 285
    .line 286
    array-length v4, v12

    .line 287
    move-object/from16 v20, v7

    .line 288
    .line 289
    move/from16 v7, v16

    .line 290
    .line 291
    :goto_5
    if-ge v7, v4, :cond_5

    .line 292
    .line 293
    aget-object v17, v12, v7

    .line 294
    .line 295
    invoke-interface/range {v17 .. v17}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    move-result-object v17

    .line 299
    move/from16 v18, v4

    .line 300
    .line 301
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_4

    .line 310
    .line 311
    move-object v7, v11

    .line 312
    const/4 v11, 0x1

    .line 313
    :goto_6
    move-object v4, v5

    .line 314
    goto :goto_7

    .line 315
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 316
    .line 317
    move/from16 v4, v18

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_5
    move-object v7, v11

    .line 321
    move/from16 v11, v16

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :goto_7
    new-instance v5, Laa;

    .line 325
    .line 326
    aget-object v12, v6, v16

    .line 327
    .line 328
    move/from16 v17, v15

    .line 329
    .line 330
    move-object v15, v10

    .line 331
    array-length v10, v6

    .line 332
    move-object/from16 v18, v14

    .line 333
    .line 334
    move-object v14, v7

    .line 335
    move-object/from16 v29, v20

    .line 336
    .line 337
    move-object/from16 v20, v1

    .line 338
    .line 339
    move-object/from16 v1, v29

    .line 340
    .line 341
    move-object/from16 v29, v12

    .line 342
    .line 343
    move-object v12, v6

    .line 344
    move-object/from16 v6, v29

    .line 345
    .line 346
    invoke-direct/range {v5 .. v15}, Laa;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    .line 347
    .line 348
    .line 349
    :goto_8
    iget-object v6, v5, Lda;->a:Ljava/lang/reflect/Type;

    .line 350
    .line 351
    iget-object v7, v5, Lda;->b:Ljava/util/Set;

    .line 352
    .line 353
    invoke-static {v2, v6, v7}, Lea;->b(Ljava/util/ArrayList;Ljava/lang/reflect/Type;Ljava/util/Set;)Lda;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    if-nez v6, :cond_6

    .line 358
    .line 359
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-object/from16 v13, v26

    .line 363
    .line 364
    move-object/from16 v5, v27

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v1, "Conflicting @ToJson methods:\n    "

    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v6, Lda;->d:Ljava/lang/reflect/Method;

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v1, v5, Lda;->d:Ljava/lang/reflect/Method;

    .line 380
    .line 381
    move-object/from16 v13, v26

    .line 382
    .line 383
    invoke-static {v0, v13, v1}, Ld6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :cond_7
    const-string v0, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n"

    .line 388
    .line 389
    move-object/from16 v5, v27

    .line 390
    .line 391
    invoke-static {v9, v0, v5}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :cond_8
    move-object/from16 v20, v1

    .line 396
    .line 397
    move-object/from16 v22, v4

    .line 398
    .line 399
    move/from16 v24, v5

    .line 400
    .line 401
    move-object v4, v7

    .line 402
    move-object/from16 v25, v10

    .line 403
    .line 404
    move-object v1, v12

    .line 405
    move-object/from16 v19, v13

    .line 406
    .line 407
    move-object/from16 v13, v17

    .line 408
    .line 409
    move-object/from16 v5, v18

    .line 410
    .line 411
    move-object/from16 v18, v14

    .line 412
    .line 413
    move/from16 v17, v15

    .line 414
    .line 415
    :goto_9
    const-class v6, Lts3;

    .line 416
    .line 417
    invoke-virtual {v9, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-eqz v6, :cond_11

    .line 422
    .line 423
    const/4 v6, 0x1

    .line 424
    invoke-virtual {v9, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    sget-object v10, Lyh8;->a:Ljava/util/Set;

    .line 432
    .line 433
    invoke-interface {v9}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-static {v10}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 438
    .line 439
    .line 440
    move-result-object v10

    .line 441
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    array-length v14, v12

    .line 450
    if-lt v14, v6, :cond_a

    .line 451
    .line 452
    aget-object v6, v12, v16

    .line 453
    .line 454
    const-class v14, Lbn4;

    .line 455
    .line 456
    if-ne v6, v14, :cond_a

    .line 457
    .line 458
    if-eq v7, v1, :cond_a

    .line 459
    .line 460
    array-length v6, v12

    .line 461
    const/4 v14, 0x1

    .line 462
    :goto_a
    if-ge v14, v6, :cond_c

    .line 463
    .line 464
    aget-object v15, v12, v14

    .line 465
    .line 466
    move/from16 v23, v6

    .line 467
    .line 468
    instance-of v6, v15, Ljava/lang/reflect/ParameterizedType;

    .line 469
    .line 470
    if-nez v6, :cond_9

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_9
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 474
    .line 475
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    move-object/from16 v15, v25

    .line 480
    .line 481
    if-eq v6, v15, :cond_b

    .line 482
    .line 483
    :cond_a
    :goto_b
    move-object v6, v7

    .line 484
    move-object v7, v10

    .line 485
    goto :goto_c

    .line 486
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 487
    .line 488
    move-object/from16 v25, v15

    .line 489
    .line 490
    move/from16 v6, v23

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_c
    new-instance v5, Lba;

    .line 494
    .line 495
    move-object v6, v7

    .line 496
    move-object v7, v10

    .line 497
    array-length v10, v12

    .line 498
    const/4 v11, 0x1

    .line 499
    const/4 v12, 0x1

    .line 500
    invoke-direct/range {v5 .. v12}, Lda;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    .line 501
    .line 502
    .line 503
    move-object v1, v13

    .line 504
    goto :goto_f

    .line 505
    :goto_c
    array-length v10, v12

    .line 506
    const/4 v14, 0x1

    .line 507
    if-ne v10, v14, :cond_10

    .line 508
    .line 509
    if-eq v6, v1, :cond_10

    .line 510
    .line 511
    aget-object v1, v11, v16

    .line 512
    .line 513
    invoke-static {v1}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    aget-object v5, v11, v16

    .line 518
    .line 519
    array-length v10, v5

    .line 520
    move/from16 v11, v16

    .line 521
    .line 522
    :goto_d
    if-ge v11, v10, :cond_e

    .line 523
    .line 524
    aget-object v15, v5, v11

    .line 525
    .line 526
    invoke-interface {v15}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    move-result-object v15

    .line 530
    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v15

    .line 534
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v15

    .line 538
    if-eqz v15, :cond_d

    .line 539
    .line 540
    move v11, v14

    .line 541
    goto :goto_e

    .line 542
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 543
    .line 544
    goto :goto_d

    .line 545
    :cond_e
    move/from16 v11, v16

    .line 546
    .line 547
    :goto_e
    new-instance v5, Lca;

    .line 548
    .line 549
    array-length v10, v12

    .line 550
    move-object/from16 v26, v13

    .line 551
    .line 552
    move-object v13, v6

    .line 553
    move-object v15, v7

    .line 554
    move-object v14, v1

    .line 555
    move-object/from16 v1, v26

    .line 556
    .line 557
    invoke-direct/range {v5 .. v15}, Lca;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    .line 558
    .line 559
    .line 560
    :goto_f
    iget-object v4, v5, Lda;->a:Ljava/lang/reflect/Type;

    .line 561
    .line 562
    iget-object v6, v5, Lda;->b:Ljava/util/Set;

    .line 563
    .line 564
    invoke-static {v3, v4, v6}, Lea;->b(Ljava/util/ArrayList;Ljava/lang/reflect/Type;Ljava/util/Set;)Lda;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    if-nez v4, :cond_f

    .line 569
    .line 570
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    goto :goto_10

    .line 574
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v2, "Conflicting @FromJson methods:\n    "

    .line 577
    .line 578
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget-object v2, v4, Lda;->d:Ljava/lang/reflect/Method;

    .line 582
    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    iget-object v2, v5, Lda;->d:Ljava/lang/reflect/Method;

    .line 587
    .line 588
    invoke-static {v0, v1, v2}, Ld6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :cond_10
    const-string v0, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n"

    .line 593
    .line 594
    invoke-static {v9, v0, v5}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    return-void

    .line 598
    :cond_11
    :goto_10
    add-int/lit8 v5, v24, 0x1

    .line 599
    .line 600
    move/from16 v15, v17

    .line 601
    .line 602
    move-object/from16 v14, v18

    .line 603
    .line 604
    move-object/from16 v13, v19

    .line 605
    .line 606
    move-object/from16 v1, v20

    .line 607
    .line 608
    move-object/from16 v4, v22

    .line 609
    .line 610
    goto/16 :goto_1

    .line 611
    .line 612
    :cond_12
    move-object/from16 v20, v1

    .line 613
    .line 614
    move-object/from16 v22, v4

    .line 615
    .line 616
    move-object/from16 v19, v13

    .line 617
    .line 618
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    move-result-object v13

    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :cond_13
    move-object/from16 v20, v1

    .line 625
    .line 626
    move-object/from16 v22, v4

    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-eqz v1, :cond_15

    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-nez v1, :cond_14

    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    const-string v1, "Expected at least one @ToJson or @FromJson method on "

    .line 646
    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :cond_15
    :goto_11
    new-instance v1, Lea;

    .line 656
    .line 657
    invoke-direct {v1, v2, v3}, Lea;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 658
    .line 659
    .line 660
    iget v2, v0, Lkh5;->a:I

    .line 661
    .line 662
    add-int/lit8 v3, v2, 0x1

    .line 663
    .line 664
    iput v3, v0, Lkh5;->a:I

    .line 665
    .line 666
    move-object/from16 v3, v20

    .line 667
    .line 668
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    new-instance v1, Lnh5;

    .line 672
    .line 673
    invoke-direct {v1, v0}, Lnh5;-><init>(Lkh5;)V

    .line 674
    .line 675
    .line 676
    sput-object v1, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->moshi:Lnh5;

    .line 677
    .line 678
    return-void

    .line 679
    :cond_16
    invoke-static {v5}, Lc6;->f(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :cond_17
    invoke-static {v5}, Lc6;->f(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDeviceRegistrationProtocol;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->moshi:Lnh5;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lnh5;->a(Ljava/lang/Class;)Lqi4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->deviceRegistrationProtocolJsonAdapter:Lqi4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final deserialize([B)Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TDeviceRegistrationProtocol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "json_parse_failure"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const-string v2, "DeviceRegistrationProtocolMoshiSerializer:deserialize"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/String;

    .line 9
    .line 10
    sget-object v4, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->deviceRegistrationProtocolJsonAdapter:Lqi4;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lqi4;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p0, "The protocol cannot be unpacked"

    .line 27
    .line 28
    invoke-static {v2, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "Protocol is null"

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string p1, "Failed to convert json to DeviceRegistrationProtocol"

    .line 39
    .line 40
    invoke-static {v2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    const-string p0, "serializedProtocol is marked non-null but is null"

    .line 54
    .line 55
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method public final serialize(Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDeviceRegistrationProtocol;)[B"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->deviceRegistrationProtocolJsonAdapter:Lqi4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lqi4;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object p1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "protocol is marked non-null but is null"

    .line 17
    .line 18
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method
