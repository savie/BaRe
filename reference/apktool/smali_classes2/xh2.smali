.class public abstract Lxh2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lzv1;

.field public final b:Ljq6;


# direct methods
.method public constructor <init>(Lzv1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxh2;->a:Lzv1;

    .line 5
    .line 6
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 7
    .line 8
    new-instance p1, Ljq6;

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljq6;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lxh2;->b:Ljq6;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(Lxh2;Ljava/util/ArrayList;Ljh6;)Z
    .locals 10

    .line 1
    const/4 v1, 0x1

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0, v0}, Lxh2;->b(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :goto_1
    iget-object v2, p0, Lxh2;->b:Ljq6;

    .line 41
    .line 42
    iput-object v0, v2, Ljq6;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p0}, Lxh2;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "deleteAppFromCloudSync: "

    .line 49
    .line 50
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    invoke-virtual {p0}, Lxh2;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v8, 0x4

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget v0, p2, Ljh6;->a:I

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    if-ge v0, v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lxh2;->d()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v8, 0x4

    .line 83
    const/4 v9, 0x0

    .line 84
    const-string v6, "Retrying delete file ids function"

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 91
    .line 92
    .line 93
    iget v0, p2, Ljh6;->a:I

    .line 94
    .line 95
    add-int/2addr v0, v1

    .line 96
    iput v0, p2, Ljh6;->a:I

    .line 97
    .line 98
    invoke-static {p0, p1, p2}, Lxh2;->a(Lxh2;Ljava/util/ArrayList;Ljh6;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 p0, 0x0

    .line 104
    :goto_2
    return p0
.end method


# virtual methods
.method public abstract b(Ljava/util/List;)Z
.end method

.method public final c()Ljq6;
    .locals 80

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 16
    .line 17
    sget-object v0, Lgz7;->WAITING:Lgz7;

    .line 18
    .line 19
    const-string v0, "Unable to delete "

    .line 20
    .line 21
    iget-object v3, v1, Lxh2;->a:Lzv1;

    .line 22
    .line 23
    instance-of v4, v3, Lid1;

    .line 24
    .line 25
    iget-object v5, v1, Lxh2;->b:Ljq6;

    .line 26
    .line 27
    if-eqz v4, :cond_14

    .line 28
    .line 29
    check-cast v3, Lid1;

    .line 30
    .line 31
    iget-object v0, v3, Lid1;->m:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_16

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_16

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    sget-object v7, Lre3;->a:Lzc2;

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getAppId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v7, v0}, Lre3;->a(Ljava/lang/String;Ljava/lang/String;)Lzc2;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, v3, Lid1;->n:Loy7;

    .line 78
    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-static {v0, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_13

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    move v10, v9

    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_1
    const/16 v11, 0xa

    .line 97
    .line 98
    if-ge v10, v11, :cond_11

    .line 99
    .line 100
    if-lez v10, :cond_0

    .line 101
    .line 102
    const-wide/16 v11, 0x7530

    .line 103
    .line 104
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 105
    .line 106
    .line 107
    :cond_0
    :try_start_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 108
    .line 109
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v9}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    instance-of v11, v0, Lsi1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    .line 119
    if-eqz v11, :cond_10

    .line 120
    .line 121
    const/16 v75, 0x3

    .line 122
    .line 123
    const/16 v76, 0x0

    .line 124
    .line 125
    move-object v9, v7

    .line 126
    const/4 v7, 0x0

    .line 127
    move-object v10, v8

    .line 128
    const/4 v8, 0x0

    .line 129
    move-object v11, v9

    .line 130
    const/4 v9, 0x0

    .line 131
    move-object v12, v10

    .line 132
    const/4 v10, 0x0

    .line 133
    move-object v13, v11

    .line 134
    const/4 v11, 0x0

    .line 135
    move-object v14, v12

    .line 136
    const/4 v12, 0x0

    .line 137
    move-object v15, v13

    .line 138
    const/4 v13, 0x0

    .line 139
    move-object/from16 v16, v14

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    move-object/from16 v17, v15

    .line 143
    .line 144
    const/4 v15, 0x0

    .line 145
    move-object/from16 v18, v16

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    move-object/from16 v19, v17

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    move-object/from16 v20, v18

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    move-object/from16 v21, v19

    .line 158
    .line 159
    const/16 v19, 0x0

    .line 160
    .line 161
    move-object/from16 v22, v20

    .line 162
    .line 163
    const/16 v20, 0x0

    .line 164
    .line 165
    move-object/from16 v23, v21

    .line 166
    .line 167
    const/16 v21, 0x0

    .line 168
    .line 169
    move-object/from16 v24, v22

    .line 170
    .line 171
    const/16 v22, 0x0

    .line 172
    .line 173
    move-object/from16 v25, v23

    .line 174
    .line 175
    const/16 v23, 0x0

    .line 176
    .line 177
    move-object/from16 v26, v24

    .line 178
    .line 179
    const/16 v24, 0x0

    .line 180
    .line 181
    move-object/from16 v27, v25

    .line 182
    .line 183
    const/16 v25, 0x0

    .line 184
    .line 185
    move-object/from16 v28, v26

    .line 186
    .line 187
    const/16 v26, 0x0

    .line 188
    .line 189
    move-object/from16 v29, v27

    .line 190
    .line 191
    const/16 v27, 0x0

    .line 192
    .line 193
    move-object/from16 v30, v28

    .line 194
    .line 195
    const/16 v28, 0x0

    .line 196
    .line 197
    move-object/from16 v31, v29

    .line 198
    .line 199
    const/16 v29, 0x0

    .line 200
    .line 201
    move-object/from16 v32, v30

    .line 202
    .line 203
    const/16 v30, 0x0

    .line 204
    .line 205
    move-object/from16 v33, v31

    .line 206
    .line 207
    const/16 v31, 0x0

    .line 208
    .line 209
    move-object/from16 v34, v32

    .line 210
    .line 211
    const/16 v32, 0x0

    .line 212
    .line 213
    move-object/from16 v35, v33

    .line 214
    .line 215
    const/16 v33, 0x0

    .line 216
    .line 217
    move-object/from16 v36, v34

    .line 218
    .line 219
    const/16 v34, 0x0

    .line 220
    .line 221
    move-object/from16 v37, v35

    .line 222
    .line 223
    const/16 v35, 0x0

    .line 224
    .line 225
    move-object/from16 v38, v36

    .line 226
    .line 227
    const/16 v36, 0x0

    .line 228
    .line 229
    move-object/from16 v39, v37

    .line 230
    .line 231
    const/16 v37, 0x0

    .line 232
    .line 233
    move-object/from16 v40, v38

    .line 234
    .line 235
    const/16 v38, 0x0

    .line 236
    .line 237
    move-object/from16 v41, v39

    .line 238
    .line 239
    const/16 v39, 0x0

    .line 240
    .line 241
    move-object/from16 v42, v40

    .line 242
    .line 243
    const/16 v40, 0x0

    .line 244
    .line 245
    move-object/from16 v43, v41

    .line 246
    .line 247
    const/16 v41, 0x0

    .line 248
    .line 249
    move-object/from16 v44, v42

    .line 250
    .line 251
    const/16 v42, 0x0

    .line 252
    .line 253
    move-object/from16 v45, v43

    .line 254
    .line 255
    const/16 v43, 0x0

    .line 256
    .line 257
    move-object/from16 v46, v44

    .line 258
    .line 259
    const/16 v44, 0x0

    .line 260
    .line 261
    move-object/from16 v47, v45

    .line 262
    .line 263
    const/16 v45, 0x0

    .line 264
    .line 265
    move-object/from16 v48, v46

    .line 266
    .line 267
    const/16 v46, 0x0

    .line 268
    .line 269
    move-object/from16 v49, v47

    .line 270
    .line 271
    const/16 v47, 0x0

    .line 272
    .line 273
    move-object/from16 v50, v48

    .line 274
    .line 275
    const/16 v48, 0x0

    .line 276
    .line 277
    move-object/from16 v51, v49

    .line 278
    .line 279
    const/16 v49, 0x0

    .line 280
    .line 281
    move-object/from16 v52, v50

    .line 282
    .line 283
    const/16 v50, 0x0

    .line 284
    .line 285
    move-object/from16 v53, v51

    .line 286
    .line 287
    const/16 v51, 0x0

    .line 288
    .line 289
    move-object/from16 v54, v52

    .line 290
    .line 291
    const/16 v52, 0x0

    .line 292
    .line 293
    move-object/from16 v55, v53

    .line 294
    .line 295
    const/16 v53, 0x0

    .line 296
    .line 297
    move-object/from16 v56, v54

    .line 298
    .line 299
    const/16 v54, 0x0

    .line 300
    .line 301
    move-object/from16 v57, v55

    .line 302
    .line 303
    const/16 v55, 0x0

    .line 304
    .line 305
    move-object/from16 v58, v56

    .line 306
    .line 307
    const/16 v56, 0x0

    .line 308
    .line 309
    move-object/from16 v59, v57

    .line 310
    .line 311
    const/16 v57, 0x0

    .line 312
    .line 313
    move-object/from16 v60, v58

    .line 314
    .line 315
    const/16 v58, 0x0

    .line 316
    .line 317
    move-object/from16 v61, v59

    .line 318
    .line 319
    const/16 v59, 0x0

    .line 320
    .line 321
    move-object/from16 v62, v60

    .line 322
    .line 323
    const/16 v60, 0x0

    .line 324
    .line 325
    move-object/from16 v63, v61

    .line 326
    .line 327
    const/16 v61, 0x0

    .line 328
    .line 329
    move-object/from16 v64, v62

    .line 330
    .line 331
    const/16 v62, 0x0

    .line 332
    .line 333
    move-object/from16 v65, v63

    .line 334
    .line 335
    const/16 v63, 0x0

    .line 336
    .line 337
    move-object/from16 v66, v64

    .line 338
    .line 339
    const/16 v64, 0x0

    .line 340
    .line 341
    move-object/from16 v67, v65

    .line 342
    .line 343
    const/16 v65, 0x0

    .line 344
    .line 345
    move-object/from16 v68, v66

    .line 346
    .line 347
    const/16 v66, 0x0

    .line 348
    .line 349
    move-object/from16 v69, v67

    .line 350
    .line 351
    const/16 v67, 0x0

    .line 352
    .line 353
    move-object/from16 v70, v68

    .line 354
    .line 355
    const/16 v68, 0x0

    .line 356
    .line 357
    move-object/from16 v71, v69

    .line 358
    .line 359
    const/16 v69, 0x0

    .line 360
    .line 361
    move-object/from16 v72, v70

    .line 362
    .line 363
    const/16 v70, 0x0

    .line 364
    .line 365
    move-object/from16 v73, v71

    .line 366
    .line 367
    const/16 v71, 0x0

    .line 368
    .line 369
    move-object/from16 v74, v72

    .line 370
    .line 371
    const/16 v72, 0x0

    .line 372
    .line 373
    move-object/from16 v77, v73

    .line 374
    .line 375
    const/16 v73, -0x1

    .line 376
    .line 377
    move-object/from16 v78, v74

    .line 378
    .line 379
    const/16 v74, -0x1

    .line 380
    .line 381
    move-object/from16 v79, v3

    .line 382
    .line 383
    move-object/from16 v3, v77

    .line 384
    .line 385
    move-object/from16 v2, v78

    .line 386
    .line 387
    invoke-static/range {v6 .. v76}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->copy$default(Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iget-object v7, v2, Loy7;->f:Ljava/util/List;

    .line 392
    .line 393
    iget-object v2, v2, Loy7;->f:Ljava/util/List;

    .line 394
    .line 395
    sget-object v8, Liu;->APP:Liu;

    .line 396
    .line 397
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_1

    .line 402
    .line 403
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeApkDetails()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeSplitsDetails()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeSharedLibsDetails()V

    .line 410
    .line 411
    .line 412
    :cond_1
    sget-object v7, Liu;->DATA:Liu;

    .line 413
    .line 414
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    if-eqz v9, :cond_2

    .line 419
    .line 420
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeDataDetails()V

    .line 421
    .line 422
    .line 423
    :cond_2
    sget-object v9, Liu;->EXTDATA:Liu;

    .line 424
    .line 425
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    if-eqz v10, :cond_3

    .line 430
    .line 431
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeExtDataDetails()V

    .line 432
    .line 433
    .line 434
    :cond_3
    sget-object v10, Liu;->MEDIA:Liu;

    .line 435
    .line 436
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    if-eqz v11, :cond_4

    .line 441
    .line 442
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeMediaDetails()V

    .line 443
    .line 444
    .line 445
    :cond_4
    sget-object v11, Liu;->EXPANSION:Liu;

    .line 446
    .line 447
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v12

    .line 451
    if-eqz v12, :cond_5

    .line 452
    .line 453
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeExpansionDetails()V

    .line 454
    .line 455
    .line 456
    :cond_5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    if-nez v12, :cond_6

    .line 461
    .line 462
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeSpecialDataDetails()V

    .line 463
    .line 464
    .line 465
    :cond_6
    if-nez v12, :cond_7

    .line 466
    .line 467
    invoke-virtual {v1}, Lxh2;->d()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const-string v13, "deleteAppFromCloudSync: Removing ref since all files removed"

    .line 472
    .line 473
    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    const/4 v13, 0x0

    .line 477
    invoke-static {v3, v13}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_7
    invoke-virtual {v1}, Lxh2;->d()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v13

    .line 485
    const-string v14, "deleteAppFromCloudSync: Some files removed, updating cloud details"

    .line 486
    .line 487
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    invoke-static {v3, v0}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 491
    .line 492
    .line 493
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_a

    .line 503
    .line 504
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    if-eqz v3, :cond_8

    .line 509
    .line 510
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    :cond_8
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsLink()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    if-eqz v3, :cond_9

    .line 518
    .line 519
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    :cond_9
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsLink()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    if-eqz v3, :cond_a

    .line 527
    .line 528
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    :cond_a
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    if-eqz v3, :cond_b

    .line 536
    .line 537
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataLink()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    if-eqz v3, :cond_b

    .line 542
    .line 543
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    :cond_b
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_c

    .line 551
    .line 552
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataLink()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    if-eqz v3, :cond_c

    .line 557
    .line 558
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    :cond_c
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-eqz v3, :cond_d

    .line 566
    .line 567
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaLink()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    if-eqz v3, :cond_d

    .line 572
    .line 573
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    :cond_d
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    if-eqz v2, :cond_e

    .line 581
    .line 582
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpLink()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    if-eqz v2, :cond_e

    .line 587
    .line 588
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    :cond_e
    if-nez v12, :cond_f

    .line 592
    .line 593
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSpecialDataLink()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    if-eqz v2, :cond_f

    .line 598
    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    :cond_f
    new-instance v2, Ljh6;

    .line 603
    .line 604
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-static {v1, v0, v2}, Lxh2;->a(Lxh2;Ljava/util/ArrayList;Ljh6;)Z

    .line 608
    .line 609
    .line 610
    move-object/from16 v3, v79

    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :cond_10
    move-object/from16 v79, v3

    .line 615
    .line 616
    move-object v3, v7

    .line 617
    move-object v2, v8

    .line 618
    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    .line 619
    .line 620
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;->getErrorMessage()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v11, "Unable to connect with the server: "

    .line 627
    .line 628
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    goto :goto_3

    .line 644
    :catch_1
    move-exception v0

    .line 645
    move-object/from16 v79, v3

    .line 646
    .line 647
    move-object v3, v7

    .line 648
    move-object v2, v8

    .line 649
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 650
    .line 651
    move-object v8, v2

    .line 652
    move-object v7, v3

    .line 653
    move-object/from16 v3, v79

    .line 654
    .line 655
    goto/16 :goto_1

    .line 656
    .line 657
    :cond_11
    if-eqz v0, :cond_12

    .line 658
    .line 659
    goto :goto_4

    .line 660
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 661
    .line 662
    const-string v1, "Failed action with tag=deleteAppFromCloudSync after retries=10"

    .line 663
    .line 664
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    :goto_4
    throw v0

    .line 668
    :cond_13
    invoke-static {}, Ld6;->o()V

    .line 669
    .line 670
    .line 671
    const/16 v77, 0x0

    .line 672
    .line 673
    return-object v77

    .line 674
    :cond_14
    instance-of v2, v3, Ljd1;

    .line 675
    .line 676
    if-eqz v2, :cond_17

    .line 677
    .line 678
    move-object v2, v3

    .line 679
    check-cast v2, Ljd1;

    .line 680
    .line 681
    iget-object v2, v2, Ljd1;->m:Ljava/util/List;

    .line 682
    .line 683
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-nez v2, :cond_16

    .line 688
    .line 689
    :try_start_2
    move-object v2, v3

    .line 690
    check-cast v2, Ljd1;

    .line 691
    .line 692
    iget-object v2, v2, Ljd1;->m:Ljava/util/List;

    .line 693
    .line 694
    invoke-virtual {v1, v2}, Lxh2;->b(Ljava/util/List;)Z

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    if-eqz v2, :cond_15

    .line 699
    .line 700
    goto :goto_5

    .line 701
    :cond_15
    new-instance v2, Ljava/io/IOException;

    .line 702
    .line 703
    check-cast v3, Ljd1;

    .line 704
    .line 705
    iget-object v3, v3, Ljd1;->m:Ljava/util/List;

    .line 706
    .line 707
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string v0, " cloud files"

    .line 720
    .line 721
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 732
    :catch_2
    move-exception v0

    .line 733
    iput-object v0, v5, Ljq6;->b:Ljava/lang/Object;

    .line 734
    .line 735
    invoke-virtual {v1}, Lxh2;->d()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    const-string v3, "executeTask: "

    .line 740
    .line 741
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    .line 743
    .line 744
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 745
    .line 746
    invoke-virtual {v1}, Lxh2;->d()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v7

    .line 750
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    const/4 v10, 0x4

    .line 759
    const/4 v11, 0x0

    .line 760
    const/4 v9, 0x0

    .line 761
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    :cond_16
    :goto_5
    sget-object v0, Lgz7;->WAITING:Lgz7;

    .line 765
    .line 766
    return-object v5

    .line 767
    :cond_17
    invoke-static {}, Lq;->j()V

    .line 768
    .line 769
    .line 770
    const/16 v77, 0x0

    .line 771
    .line 772
    return-object v77

    .line 773
    :cond_18
    const/16 v77, 0x0

    .line 774
    .line 775
    invoke-static {}, Ld6;->o()V

    .line 776
    .line 777
    .line 778
    return-object v77
.end method

.method public abstract d()Ljava/lang/String;
.end method
