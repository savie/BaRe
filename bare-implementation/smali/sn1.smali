.class public final synthetic Lsn1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;
.implements Ler5;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lv51;
.implements Lhm6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lsn1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lsn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lgw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lgw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgw3;->d()Laj6;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lsn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpw2;

    .line 4
    .line 5
    iget-object p0, p0, Lpw2;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lwx3;->E(Lcom/google/android/material/internal/CheckableImageButton;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lsn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lxe8;->a:Lxe8;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lxe8;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "Unable to create instance of "

    .line 14
    .line 15
    const-string v2, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 16
    .line 17
    invoke-static {p0, v1, v2}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lsn1;->a:I

    .line 6
    .line 7
    iget-object v0, v0, Lsn1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 13
    .line 14
    sget v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->d:I

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-class v4, Lcom/google/firebase/FirebaseApp;

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    move-object v6, v4

    .line 27
    check-cast v6, Lcom/google/firebase/FirebaseApp;

    .line 28
    .line 29
    const-class v4, Lqg3;

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lqg3;

    .line 36
    .line 37
    const-class v5, Laz1;

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Lpp0;->h(Ljava/lang/Class;)Llu5;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-class v7, Lab;

    .line 44
    .line 45
    invoke-virtual {v1, v7}, Lpp0;->h(Ljava/lang/Class;)Llu5;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const-class v8, Lvg3;

    .line 50
    .line 51
    invoke-virtual {v1, v8}, Lpp0;->h(Ljava/lang/Class;)Llu5;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-object v9, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lnc6;

    .line 56
    .line 57
    invoke-virtual {v1, v9}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    iget-object v10, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lnc6;

    .line 64
    .line 65
    invoke-virtual {v1, v10}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lnc6;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    const-string v1, ""

    .line 80
    .line 81
    const-string v11, "FirebaseCrashlytics"

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    new-instance v14, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v15, "Initializing Firebase Crashlytics 20.0.6 for "

    .line 94
    .line 95
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    const/4 v15, 0x0

    .line 106
    invoke-static {v11, v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    move-object v14, v15

    .line 110
    new-instance v15, Ls02;

    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    move-object/from16 p0, v14

    .line 122
    .line 123
    new-instance v14, Lo02;

    .line 124
    .line 125
    invoke-direct {v14, v9}, Lo02;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 126
    .line 127
    .line 128
    iput-object v14, v15, Ls02;->a:Ljava/lang/Object;

    .line 129
    .line 130
    new-instance v14, Lo02;

    .line 131
    .line 132
    invoke-direct {v14, v9}, Lo02;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 133
    .line 134
    .line 135
    iput-object v14, v15, Ls02;->b:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 138
    .line 139
    .line 140
    new-instance v9, Lo02;

    .line 141
    .line 142
    invoke-direct {v9, v10}, Lo02;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 143
    .line 144
    .line 145
    iput-object v9, v15, Ls02;->c:Ljava/lang/Object;

    .line 146
    .line 147
    new-instance v9, Lca3;

    .line 148
    .line 149
    invoke-direct {v9, v12}, Lca3;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    new-instance v10, Lka2;

    .line 153
    .line 154
    invoke-direct {v10, v6}, Lka2;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 155
    .line 156
    .line 157
    new-instance v14, Lk94;

    .line 158
    .line 159
    invoke-direct {v14, v12, v13, v4, v10}, Lk94;-><init>(Landroid/content/Context;Ljava/lang/String;Lqg3;Lka2;)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lcz1;

    .line 163
    .line 164
    invoke-direct {v4, v5}, Lcz1;-><init>(Llu5;)V

    .line 165
    .line 166
    .line 167
    new-instance v5, Ldb;

    .line 168
    .line 169
    invoke-direct {v5, v7}, Ldb;-><init>(Llu5;)V

    .line 170
    .line 171
    .line 172
    new-instance v13, Loy1;

    .line 173
    .line 174
    invoke-direct {v13, v10, v9}, Loy1;-><init>(Lka2;Lca3;)V

    .line 175
    .line 176
    .line 177
    sget-object v7, Lch3;->a:Lch3;

    .line 178
    .line 179
    const-string v7, "Subscriber "

    .line 180
    .line 181
    move-wide/from16 v26, v2

    .line 182
    .line 183
    const-string v2, "FirebaseSessions"

    .line 184
    .line 185
    sget-object v3, Lh97;->a:Lh97;

    .line 186
    .line 187
    sget-object v16, Lch3;->a:Lch3;

    .line 188
    .line 189
    move-object/from16 p1, v4

    .line 190
    .line 191
    invoke-static {v3}, Lch3;->a(Lh97;)Lah3;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    move-object/from16 v16, v6

    .line 196
    .line 197
    iget-object v6, v4, Lah3;->b:Loy1;

    .line 198
    .line 199
    if-eqz v6, :cond_0

    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, " already registered."

    .line 210
    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :goto_0
    move-object/from16 v21, v14

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_0
    iput-object v13, v4, Lah3;->b:Loy1;

    .line 225
    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, " registered."

    .line 235
    .line 236
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    iget-object v2, v4, Lah3;->a:Ljava/util/concurrent/CountDownLatch;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :goto_1
    new-instance v14, Lnh;

    .line 253
    .line 254
    const/16 v2, 0xc

    .line 255
    .line 256
    invoke-direct {v14, v8, v2}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    new-instance v2, Lzy1;

    .line 260
    .line 261
    move-object/from16 v19, v10

    .line 262
    .line 263
    new-instance v10, Lbb;

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-direct {v10, v5, v3}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    move-object v4, v11

    .line 270
    new-instance v11, Lcb;

    .line 271
    .line 272
    invoke-direct {v11, v5}, Lcb;-><init>(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v8, p1

    .line 276
    .line 277
    move-object v5, v2

    .line 278
    move-object v3, v12

    .line 279
    move-object/from16 v6, v16

    .line 280
    .line 281
    move-object/from16 v7, v21

    .line 282
    .line 283
    move-object/from16 v2, p0

    .line 284
    .line 285
    move-object v12, v9

    .line 286
    move-object/from16 v9, v19

    .line 287
    .line 288
    invoke-direct/range {v5 .. v15}, Lzy1;-><init>(Lcom/google/firebase/FirebaseApp;Lk94;Lcz1;Lka2;Lbb;Lcb;Lca3;Loy1;Lnh;Ls02;)V

    .line 289
    .line 290
    .line 291
    move-object v6, v12

    .line 292
    move-object v7, v5

    .line 293
    move-object v5, v15

    .line 294
    iget-object v8, v7, Lzy1;->p:Ls02;

    .line 295
    .line 296
    invoke-virtual/range {v16 .. v16}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-virtual {v10}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    const-string v10, "com.google.firebase.crashlytics.mapping_file_id"

    .line 305
    .line 306
    const-string v11, "string"

    .line 307
    .line 308
    invoke-static {v3, v10, v11}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-nez v10, :cond_1

    .line 313
    .line 314
    const-string v10, "com.crashlytics.android.build_id"

    .line 315
    .line 316
    invoke-static {v3, v10, v11}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v10

    .line 320
    :cond_1
    if-eqz v10, :cond_2

    .line 321
    .line 322
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    goto :goto_2

    .line 331
    :cond_2
    move-object v15, v2

    .line 332
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v11, "com.google.firebase.crashlytics.build_ids_lib"

    .line 338
    .line 339
    const-string v12, "array"

    .line 340
    .line 341
    invoke-static {v3, v11, v12}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    const-string v13, "com.google.firebase.crashlytics.build_ids_arch"

    .line 346
    .line 347
    invoke-static {v3, v13, v12}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    const-string v2, "com.google.firebase.crashlytics.build_ids_build_id"

    .line 352
    .line 353
    invoke-static {v3, v2, v12}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v11, :cond_3

    .line 358
    .line 359
    if-eqz v13, :cond_3

    .line 360
    .line 361
    if-nez v2, :cond_4

    .line 362
    .line 363
    :cond_3
    move-object/from16 v29, v8

    .line 364
    .line 365
    move-object/from16 v28, v9

    .line 366
    .line 367
    move-object/from16 v18, v14

    .line 368
    .line 369
    goto/16 :goto_6

    .line 370
    .line 371
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    array-length v13, v11

    .line 396
    move-object/from16 v28, v9

    .line 397
    .line 398
    array-length v9, v2

    .line 399
    if-ne v13, v9, :cond_5

    .line 400
    .line 401
    array-length v9, v12

    .line 402
    array-length v13, v2

    .line 403
    if-eq v9, v13, :cond_6

    .line 404
    .line 405
    :cond_5
    move-object/from16 v29, v8

    .line 406
    .line 407
    move-object/from16 v18, v14

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_6
    const/4 v9, 0x0

    .line 411
    :goto_3
    array-length v13, v2

    .line 412
    if-ge v9, v13, :cond_7

    .line 413
    .line 414
    new-instance v13, Lcx0;

    .line 415
    .line 416
    move/from16 v17, v9

    .line 417
    .line 418
    aget-object v9, v11, v17

    .line 419
    .line 420
    move-object/from16 v18, v14

    .line 421
    .line 422
    aget-object v14, v12, v17

    .line 423
    .line 424
    move-object/from16 v29, v8

    .line 425
    .line 426
    aget-object v8, v2, v17

    .line 427
    .line 428
    invoke-direct {v13, v9, v14, v8}, Lcx0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    add-int/lit8 v9, v17, 0x1

    .line 435
    .line 436
    move-object/from16 v14, v18

    .line 437
    .line 438
    move-object/from16 v8, v29

    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_7
    move-object/from16 v29, v8

    .line 442
    .line 443
    move-object/from16 v18, v14

    .line 444
    .line 445
    :cond_8
    :goto_4
    const/4 v8, 0x3

    .line 446
    :cond_9
    const/4 v14, 0x0

    .line 447
    goto :goto_7

    .line 448
    :goto_5
    const-string v8, "Lengths did not match: %d %d %d"

    .line 449
    .line 450
    array-length v9, v11

    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    array-length v11, v12

    .line 456
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    array-length v2, v2

    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    filled-new-array {v9, v11, v2}, [Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    const/4 v8, 0x3

    .line 474
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-eqz v9, :cond_8

    .line 479
    .line 480
    const/4 v14, 0x0

    .line 481
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .line 483
    .line 484
    goto :goto_4

    .line 485
    :goto_6
    const-string v8, "Could not find resources: %d %d %d"

    .line 486
    .line 487
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    filled-new-array {v9, v11, v2}, [Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    const/4 v8, 0x3

    .line 508
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    if-eqz v9, :cond_9

    .line 513
    .line 514
    const/4 v14, 0x0

    .line 515
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .line 517
    .line 518
    :goto_7
    const-string v2, "Mapping file ID is: "

    .line 519
    .line 520
    invoke-static {v2, v15}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 525
    .line 526
    .line 527
    move-result v9

    .line 528
    if-eqz v9, :cond_a

    .line 529
    .line 530
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .line 532
    .line 533
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v8

    .line 541
    if-eqz v8, :cond_c

    .line 542
    .line 543
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    check-cast v8, Lcx0;

    .line 548
    .line 549
    iget-object v9, v8, Lcx0;->a:Ljava/lang/String;

    .line 550
    .line 551
    iget-object v11, v8, Lcx0;->b:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v8, v8, Lcx0;->c:Ljava/lang/String;

    .line 554
    .line 555
    const-string v12, "Build id for "

    .line 556
    .line 557
    const-string v13, " on "

    .line 558
    .line 559
    const-string v14, ": "

    .line 560
    .line 561
    invoke-static {v12, v9, v13, v11, v14}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    const/4 v9, 0x3

    .line 573
    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 574
    .line 575
    .line 576
    move-result v11

    .line 577
    if-eqz v11, :cond_b

    .line 578
    .line 579
    const/4 v14, 0x0

    .line 580
    invoke-static {v4, v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .line 582
    .line 583
    goto :goto_8

    .line 584
    :cond_c
    const/4 v9, 0x3

    .line 585
    new-instance v2, Loe;

    .line 586
    .line 587
    invoke-direct {v2, v3}, Loe;-><init>(Landroid/content/Context;)V

    .line 588
    .line 589
    .line 590
    move-object/from16 v17, v2

    .line 591
    .line 592
    move-object v12, v3

    .line 593
    move v8, v9

    .line 594
    move-object/from16 v16, v10

    .line 595
    .line 596
    move-object/from16 v14, v18

    .line 597
    .line 598
    move-object/from16 v13, v21

    .line 599
    .line 600
    :try_start_0
    invoke-static/range {v12 .. v17}, Lcq;->a(Landroid/content/Context;Lk94;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Loe;)Lcq;

    .line 601
    .line 602
    .line 603
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 604
    move-object v3, v12

    .line 605
    move-object/from16 v21, v13

    .line 606
    .line 607
    new-instance v9, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string v10, "Installer package name is: "

    .line 610
    .line 611
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v10, v2, Lcq;->d:Ljava/lang/String;

    .line 615
    .line 616
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v9

    .line 623
    const/4 v10, 0x2

    .line 624
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 625
    .line 626
    .line 627
    move-result v11

    .line 628
    if-eqz v11, :cond_d

    .line 629
    .line 630
    const/4 v11, 0x0

    .line 631
    invoke-static {v4, v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .line 633
    .line 634
    :cond_d
    new-instance v9, Lma2;

    .line 635
    .line 636
    const/16 v11, 0x9

    .line 637
    .line 638
    invoke-direct {v9, v11}, Lma2;-><init>(I)V

    .line 639
    .line 640
    .line 641
    iget-object v11, v2, Lcq;->f:Ljava/lang/String;

    .line 642
    .line 643
    iget-object v12, v2, Lcq;->g:Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual/range {v21 .. v21}, Lk94;->d()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v13

    .line 649
    new-instance v15, Lfo8;

    .line 650
    .line 651
    const/16 v10, 0x12

    .line 652
    .line 653
    invoke-direct {v15, v10}, Lfo8;-><init>(I)V

    .line 654
    .line 655
    .line 656
    new-instance v10, Ls79;

    .line 657
    .line 658
    const/16 v8, 0x8

    .line 659
    .line 660
    invoke-direct {v10, v15, v8}, Ls79;-><init>(Ljava/lang/Object;I)V

    .line 661
    .line 662
    .line 663
    new-instance v8, Lkm8;

    .line 664
    .line 665
    invoke-direct {v8, v6}, Lkm8;-><init>(Lca3;)V

    .line 666
    .line 667
    .line 668
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 669
    .line 670
    const-string v6, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/"

    .line 671
    .line 672
    move-object/from16 v31, v8

    .line 673
    .line 674
    const-string v8, "/settings"

    .line 675
    .line 676
    invoke-static {v6, v14, v8}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    new-instance v8, Lig9;

    .line 681
    .line 682
    invoke-direct {v8, v6, v9}, Lig9;-><init>(Ljava/lang/String;Lma2;)V

    .line 683
    .line 684
    .line 685
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 686
    .line 687
    sget-object v9, Lk94;->h:Ljava/lang/String;

    .line 688
    .line 689
    move-object/from16 v32, v8

    .line 690
    .line 691
    const-string v8, ""

    .line 692
    .line 693
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 698
    .line 699
    move-object/from16 v33, v10

    .line 700
    .line 701
    const-string v10, ""

    .line 702
    .line 703
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v8

    .line 707
    const-string v10, "/"

    .line 708
    .line 709
    invoke-static {v6, v10, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v18

    .line 713
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 714
    .line 715
    const-string v8, ""

    .line 716
    .line 717
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v19

    .line 721
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 722
    .line 723
    const-string v8, ""

    .line 724
    .line 725
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v20

    .line 729
    const-string v6, "com.google.firebase.crashlytics.mapping_file_id"

    .line 730
    .line 731
    const-string v8, "string"

    .line 732
    .line 733
    invoke-static {v3, v6, v8}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    if-nez v6, :cond_e

    .line 738
    .line 739
    const-string v6, "com.crashlytics.android.build_id"

    .line 740
    .line 741
    invoke-static {v3, v6, v8}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    :cond_e
    if-eqz v6, :cond_f

    .line 746
    .line 747
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    goto :goto_9

    .line 756
    :cond_f
    const/4 v6, 0x0

    .line 757
    :goto_9
    filled-new-array {v6, v14, v12, v11}, [Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v6

    .line 761
    new-instance v8, Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .line 765
    .line 766
    const/4 v9, 0x0

    .line 767
    :goto_a
    const/4 v10, 0x4

    .line 768
    if-ge v9, v10, :cond_11

    .line 769
    .line 770
    aget-object v10, v6, v9

    .line 771
    .line 772
    move-object/from16 v34, v3

    .line 773
    .line 774
    if-eqz v10, :cond_10

    .line 775
    .line 776
    const-string v3, "-"

    .line 777
    .line 778
    invoke-virtual {v10, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 783
    .line 784
    invoke-virtual {v3, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 792
    .line 793
    move-object/from16 v3, v34

    .line 794
    .line 795
    goto :goto_a

    .line 796
    :cond_11
    move-object/from16 v34, v3

    .line 797
    .line 798
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 799
    .line 800
    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 811
    .line 812
    .line 813
    move-result v8

    .line 814
    if-eqz v8, :cond_12

    .line 815
    .line 816
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v8

    .line 820
    check-cast v8, Ljava/lang/String;

    .line 821
    .line 822
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    goto :goto_b

    .line 826
    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    if-lez v6, :cond_13

    .line 835
    .line 836
    invoke-static {v3}, Ljm1;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    move-object/from16 v22, v3

    .line 841
    .line 842
    goto :goto_c

    .line 843
    :cond_13
    const/16 v22, 0x0

    .line 844
    .line 845
    :goto_c
    const/4 v3, 0x1

    .line 846
    if-eqz v13, :cond_14

    .line 847
    .line 848
    goto :goto_d

    .line 849
    :cond_14
    move v10, v3

    .line 850
    :goto_d
    invoke-static {v10}, Lxs1;->c(I)I

    .line 851
    .line 852
    .line 853
    move-result v25

    .line 854
    new-instance v16, Lsa7;

    .line 855
    .line 856
    move-object/from16 v24, v11

    .line 857
    .line 858
    move-object/from16 v23, v12

    .line 859
    .line 860
    move-object/from16 v17, v14

    .line 861
    .line 862
    invoke-direct/range {v16 .. v25}, Lsa7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk94;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 863
    .line 864
    .line 865
    move-object/from16 v14, v16

    .line 866
    .line 867
    new-instance v37, Lf80;

    .line 868
    .line 869
    move-object/from16 v19, v28

    .line 870
    .line 871
    move-object/from16 v17, v31

    .line 872
    .line 873
    move-object/from16 v18, v32

    .line 874
    .line 875
    move-object/from16 v16, v33

    .line 876
    .line 877
    move-object/from16 v13, v34

    .line 878
    .line 879
    move-object/from16 v12, v37

    .line 880
    .line 881
    invoke-direct/range {v12 .. v19}, Lf80;-><init>(Landroid/content/Context;Lsa7;Lfo8;Ls79;Lkm8;Lig9;Lka2;)V

    .line 882
    .line 883
    .line 884
    iget-object v6, v12, Lf80;->i:Ljava/io/Serializable;

    .line 885
    .line 886
    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 887
    .line 888
    iget-object v8, v12, Lf80;->h:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 891
    .line 892
    iget-object v9, v12, Lf80;->a:Ljava/lang/Object;

    .line 893
    .line 894
    check-cast v9, Landroid/content/Context;

    .line 895
    .line 896
    const-string v10, "com.google.firebase.crashlytics"

    .line 897
    .line 898
    const/4 v11, 0x0

    .line 899
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 900
    .line 901
    .line 902
    move-result-object v9

    .line 903
    const-string v10, "existing_instance_identifier"

    .line 904
    .line 905
    invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    iget-object v9, v12, Lf80;->b:Ljava/lang/Object;

    .line 910
    .line 911
    check-cast v9, Lsa7;

    .line 912
    .line 913
    iget-object v9, v9, Lsa7;->f:Ljava/lang/String;

    .line 914
    .line 915
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-eqz v1, :cond_15

    .line 920
    .line 921
    invoke-virtual {v12, v3}, Lf80;->b(I)Lfa7;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    if-eqz v1, :cond_15

    .line 926
    .line 927
    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v5

    .line 934
    check-cast v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 935
    .line 936
    invoke-virtual {v5, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    const/4 v14, 0x0

    .line 940
    invoke-static {v14}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    goto :goto_e

    .line 945
    :cond_15
    const/4 v9, 0x3

    .line 946
    invoke-virtual {v12, v9}, Lf80;->b(I)Lfa7;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    if-eqz v1, :cond_16

    .line 951
    .line 952
    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    check-cast v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 960
    .line 961
    invoke-virtual {v6, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    :cond_16
    iget-object v1, v12, Lf80;->g:Ljava/lang/Object;

    .line 965
    .line 966
    check-cast v1, Lka2;

    .line 967
    .line 968
    iget-object v6, v1, Lka2;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 969
    .line 970
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 971
    .line 972
    .line 973
    move-result-object v6

    .line 974
    iget-object v8, v1, Lka2;->c:Ljava/lang/Object;

    .line 975
    .line 976
    monitor-enter v8

    .line 977
    :try_start_1
    iget-object v1, v1, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 978
    .line 979
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    invoke-static {v6, v1}, Lnc8;->V(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    iget-object v6, v5, Ls02;->a:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v6, Lo02;

    .line 991
    .line 992
    new-instance v8, Loe;

    .line 993
    .line 994
    const/16 v9, 0xe

    .line 995
    .line 996
    const/4 v11, 0x0

    .line 997
    invoke-direct {v8, v12, v5, v9, v11}, Loe;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1, v6, v8}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    :goto_e
    new-instance v5, Lq;

    .line 1005
    .line 1006
    const/16 v6, 0xa

    .line 1007
    .line 1008
    invoke-direct {v5, v6}, Lq;-><init>(I)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1012
    .line 1013
    .line 1014
    iget-object v0, v7, Lzy1;->j:Lca3;

    .line 1015
    .line 1016
    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 1017
    .line 1018
    iget-object v5, v7, Lzy1;->a:Landroid/content/Context;

    .line 1019
    .line 1020
    const-string v6, "com.crashlytics.RequireBuildId"

    .line 1021
    .line 1022
    if-eqz v5, :cond_18

    .line 1023
    .line 1024
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v8

    .line 1028
    if-eqz v8, :cond_18

    .line 1029
    .line 1030
    const-string v9, "bool"

    .line 1031
    .line 1032
    invoke-static {v5, v6, v9}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v9

    .line 1036
    if-lez v9, :cond_17

    .line 1037
    .line 1038
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v6

    .line 1042
    goto :goto_f

    .line 1043
    :cond_17
    const-string v8, "string"

    .line 1044
    .line 1045
    invoke-static {v5, v6, v8}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    move-result v6

    .line 1049
    if-lez v6, :cond_18

    .line 1050
    .line 1051
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v6

    .line 1055
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v6

    .line 1059
    goto :goto_f

    .line 1060
    :cond_18
    move v6, v3

    .line 1061
    :goto_f
    iget-object v8, v2, Lcq;->b:Ljava/lang/String;

    .line 1062
    .line 1063
    const-string v9, "."

    .line 1064
    .line 1065
    const-string v10, ".     |  |"

    .line 1066
    .line 1067
    if-nez v6, :cond_19

    .line 1068
    .line 1069
    const-string v1, "Configured not to require a build ID."

    .line 1070
    .line 1071
    const/4 v6, 0x2

    .line 1072
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v6

    .line 1076
    if-eqz v6, :cond_1a

    .line 1077
    .line 1078
    const/4 v14, 0x0

    .line 1079
    invoke-static {v4, v1, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .line 1081
    .line 1082
    goto :goto_10

    .line 1083
    :cond_19
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v6

    .line 1087
    if-nez v6, :cond_1f

    .line 1088
    .line 1089
    :cond_1a
    :goto_10
    new-instance v1, Lpy0;

    .line 1090
    .line 1091
    invoke-direct {v1}, Lpy0;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    iget-object v1, v1, Lpy0;->a:Ljava/lang/String;

    .line 1095
    .line 1096
    :try_start_2
    new-instance v6, Lyf1;

    .line 1097
    .line 1098
    const-string v8, "crash_marker"

    .line 1099
    .line 1100
    const/4 v9, 0x3

    .line 1101
    invoke-direct {v6, v9, v8, v0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    iput-object v6, v7, Lzy1;->f:Lyf1;

    .line 1105
    .line 1106
    new-instance v6, Lyf1;

    .line 1107
    .line 1108
    const-string v8, "initialization_marker"

    .line 1109
    .line 1110
    invoke-direct {v6, v9, v8, v0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    .line 1112
    .line 1113
    iput-object v6, v7, Lzy1;->e:Lyf1;

    .line 1114
    .line 1115
    new-instance v6, Li75;

    .line 1116
    .line 1117
    move-object/from16 v8, v29

    .line 1118
    .line 1119
    invoke-direct {v6, v1, v0, v8}, Li75;-><init>(Ljava/lang/String;Lca3;Ls02;)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v9, Lot9;

    .line 1123
    .line 1124
    invoke-direct {v9, v0}, Lot9;-><init>(Lca3;)V

    .line 1125
    .line 1126
    .line 1127
    new-instance v0, Loe;

    .line 1128
    .line 1129
    new-instance v10, Lsl4;

    .line 1130
    .line 1131
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    new-array v11, v3, [Luk7;

    .line 1135
    .line 1136
    const/4 v13, 0x0

    .line 1137
    aput-object v10, v11, v13

    .line 1138
    .line 1139
    invoke-direct {v0, v11}, Loe;-><init>([Luk7;)V

    .line 1140
    .line 1141
    .line 1142
    iget-object v10, v7, Lzy1;->o:Lnh;

    .line 1143
    .line 1144
    iget-object v10, v10, Lnh;->b:Ljava/lang/Object;

    .line 1145
    .line 1146
    check-cast v10, Llu5;

    .line 1147
    .line 1148
    new-instance v11, Lc6;

    .line 1149
    .line 1150
    const/16 v13, 0xb

    .line 1151
    .line 1152
    invoke-direct {v11, v13}, Lc6;-><init>(I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v10, v11}, Llu5;->a(Lig2;)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v10, v7, Lzy1;->a:Landroid/content/Context;

    .line 1159
    .line 1160
    iget-object v11, v7, Lzy1;->i:Lk94;

    .line 1161
    .line 1162
    iget-object v13, v7, Lzy1;->j:Lca3;

    .line 1163
    .line 1164
    iget-object v14, v7, Lzy1;->c:Lc00;

    .line 1165
    .line 1166
    iget-object v15, v7, Lzy1;->m:Loy1;

    .line 1167
    .line 1168
    iget-object v3, v7, Lzy1;->p:Ls02;

    .line 1169
    .line 1170
    move-object/from16 v36, v0

    .line 1171
    .line 1172
    move-object/from16 v33, v2

    .line 1173
    .line 1174
    move-object/from16 v40, v3

    .line 1175
    .line 1176
    move-object/from16 v35, v6

    .line 1177
    .line 1178
    move-object/from16 v34, v9

    .line 1179
    .line 1180
    move-object/from16 v30, v10

    .line 1181
    .line 1182
    move-object/from16 v31, v11

    .line 1183
    .line 1184
    move-object/from16 v37, v12

    .line 1185
    .line 1186
    move-object/from16 v32, v13

    .line 1187
    .line 1188
    move-object/from16 v38, v14

    .line 1189
    .line 1190
    move-object/from16 v39, v15

    .line 1191
    .line 1192
    invoke-static/range {v30 .. v40}, Lca3;->e(Landroid/content/Context;Lk94;Lca3;Lcq;Lot9;Li75;Loe;Lf80;Lc00;Loy1;Ls02;)Lca3;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v39

    .line 1196
    move-object/from16 v12, v37

    .line 1197
    .line 1198
    new-instance v30, Lsy1;

    .line 1199
    .line 1200
    iget-object v0, v7, Lzy1;->a:Landroid/content/Context;

    .line 1201
    .line 1202
    iget-object v2, v7, Lzy1;->i:Lk94;

    .line 1203
    .line 1204
    iget-object v3, v7, Lzy1;->b:Lka2;

    .line 1205
    .line 1206
    iget-object v6, v7, Lzy1;->j:Lca3;

    .line 1207
    .line 1208
    iget-object v9, v7, Lzy1;->f:Lyf1;

    .line 1209
    .line 1210
    iget-object v10, v7, Lzy1;->n:Lcz1;

    .line 1211
    .line 1212
    iget-object v11, v7, Lzy1;->l:Lcb;

    .line 1213
    .line 1214
    iget-object v13, v7, Lzy1;->m:Loy1;

    .line 1215
    .line 1216
    iget-object v14, v7, Lzy1;->p:Ls02;

    .line 1217
    .line 1218
    move-object/from16 v31, v0

    .line 1219
    .line 1220
    move-object/from16 v32, v2

    .line 1221
    .line 1222
    move-object/from16 v40, v10

    .line 1223
    .line 1224
    move-object/from16 v41, v11

    .line 1225
    .line 1226
    move-object/from16 v42, v13

    .line 1227
    .line 1228
    move-object/from16 v43, v14

    .line 1229
    .line 1230
    move-object/from16 v36, v33

    .line 1231
    .line 1232
    move-object/from16 v38, v34

    .line 1233
    .line 1234
    move-object/from16 v37, v35

    .line 1235
    .line 1236
    move-object/from16 v33, v3

    .line 1237
    .line 1238
    move-object/from16 v34, v6

    .line 1239
    .line 1240
    move-object/from16 v35, v9

    .line 1241
    .line 1242
    invoke-direct/range {v30 .. v43}, Lsy1;-><init>(Landroid/content/Context;Lk94;Lka2;Lca3;Lyf1;Lcq;Li75;Lot9;Lca3;Laz1;Leb;Loy1;Ls02;)V

    .line 1243
    .line 1244
    .line 1245
    move-object/from16 v0, v30

    .line 1246
    .line 1247
    iput-object v0, v7, Lzy1;->h:Lsy1;

    .line 1248
    .line 1249
    iget-object v0, v7, Lzy1;->e:Lyf1;

    .line 1250
    .line 1251
    iget-object v2, v0, Lyf1;->c:Ljava/lang/Object;

    .line 1252
    .line 1253
    check-cast v2, Lca3;

    .line 1254
    .line 1255
    iget-object v0, v0, Lyf1;->b:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v0, Ljava/lang/String;

    .line 1258
    .line 1259
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1260
    .line 1261
    .line 1262
    new-instance v3, Ljava/io/File;

    .line 1263
    .line 1264
    iget-object v2, v2, Lca3;->c:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v2, Ljava/io/File;

    .line 1267
    .line 1268
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    iget-object v2, v8, Ls02;->a:Ljava/lang/Object;

    .line 1276
    .line 1277
    check-cast v2, Lo02;

    .line 1278
    .line 1279
    iget-object v2, v2, Lo02;->a:Ljava/util/concurrent/ExecutorService;

    .line 1280
    .line 1281
    new-instance v3, Lq80;

    .line 1282
    .line 1283
    const/4 v6, 0x1

    .line 1284
    invoke-direct {v3, v7, v6}, Lq80;-><init>(Ljava/lang/Object;I)V

    .line 1285
    .line 1286
    .line 1287
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1291
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1292
    .line 1293
    const-wide/16 v9, 0x3

    .line 1294
    .line 1295
    invoke-interface {v2, v9, v10, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v2

    .line 1299
    check-cast v2, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1300
    .line 1301
    :try_start_4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1302
    .line 1303
    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v2

    .line 1307
    iput-boolean v2, v7, Lzy1;->g:Z

    .line 1308
    .line 1309
    goto :goto_11

    .line 1310
    :catch_0
    const/4 v11, 0x0

    .line 1311
    iput-boolean v11, v7, Lzy1;->g:Z

    .line 1312
    .line 1313
    :goto_11
    iget-object v2, v7, Lzy1;->h:Lsy1;

    .line 1314
    .line 1315
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    iget-object v6, v2, Lsy1;->e:Ls02;

    .line 1320
    .line 1321
    iget-object v6, v6, Ls02;->a:Ljava/lang/Object;

    .line 1322
    .line 1323
    check-cast v6, Lo02;

    .line 1324
    .line 1325
    new-instance v9, Lav1;

    .line 1326
    .line 1327
    const/4 v10, 0x1

    .line 1328
    invoke-direct {v9, v10, v2, v1}, Lav1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v6, v9}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 1332
    .line 1333
    .line 1334
    new-instance v1, Lkm5;

    .line 1335
    .line 1336
    const/4 v6, 0x7

    .line 1337
    invoke-direct {v1, v2, v6}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 1338
    .line 1339
    .line 1340
    new-instance v6, Lm02;

    .line 1341
    .line 1342
    iget-object v9, v2, Lsy1;->j:Laz1;

    .line 1343
    .line 1344
    invoke-direct {v6, v1, v12, v3, v9}, Lm02;-><init>(Lkm5;Lf80;Ljava/lang/Thread$UncaughtExceptionHandler;Laz1;)V

    .line 1345
    .line 1346
    .line 1347
    iput-object v6, v2, Lsy1;->n:Lm02;

    .line 1348
    .line 1349
    invoke-static {v6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1350
    .line 1351
    .line 1352
    if-eqz v0, :cond_1d

    .line 1353
    .line 1354
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1355
    .line 1356
    invoke-virtual {v5, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1357
    .line 1358
    .line 1359
    move-result v0

    .line 1360
    if-nez v0, :cond_1b

    .line 1361
    .line 1362
    const-string v0, "connectivity"

    .line 1363
    .line 1364
    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1369
    .line 1370
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    if-eqz v0, :cond_1d

    .line 1375
    .line 1376
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v0

    .line 1380
    if-eqz v0, :cond_1d

    .line 1381
    .line 1382
    :cond_1b
    const-string v0, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 1383
    .line 1384
    const/4 v8, 0x3

    .line 1385
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1386
    .line 1387
    .line 1388
    move-result v1

    .line 1389
    if-eqz v1, :cond_1c

    .line 1390
    .line 1391
    const/4 v14, 0x0

    .line 1392
    invoke-static {v4, v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .line 1394
    .line 1395
    :cond_1c
    invoke-virtual {v7, v12}, Lzy1;->b(Lf80;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1396
    .line 1397
    .line 1398
    goto :goto_13

    .line 1399
    :catch_1
    move-exception v0

    .line 1400
    goto :goto_12

    .line 1401
    :cond_1d
    const-string v0, "Successfully configured exception handler."

    .line 1402
    .line 1403
    const/4 v9, 0x3

    .line 1404
    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    if-eqz v1, :cond_1e

    .line 1409
    .line 1410
    const/4 v14, 0x0

    .line 1411
    invoke-static {v4, v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    .line 1413
    .line 1414
    :cond_1e
    iget-object v0, v8, Ls02;->a:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v0, Lo02;

    .line 1417
    .line 1418
    new-instance v1, Lty1;

    .line 1419
    .line 1420
    const/4 v11, 0x0

    .line 1421
    invoke-direct {v1, v11, v7, v12}, Lty1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v0, v1}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 1425
    .line 1426
    .line 1427
    goto :goto_13

    .line 1428
    :goto_12
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    .line 1429
    .line 1430
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    .line 1432
    .line 1433
    const/4 v14, 0x0

    .line 1434
    iput-object v14, v7, Lzy1;->h:Lsy1;

    .line 1435
    .line 1436
    :goto_13
    new-instance v15, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 1437
    .line 1438
    invoke-direct {v15, v7}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Lzy1;)V

    .line 1439
    .line 1440
    .line 1441
    goto :goto_14

    .line 1442
    :cond_1f
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    .line 1444
    .line 1445
    const-string v0, ".     |  | "

    .line 1446
    .line 1447
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .line 1452
    .line 1453
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .line 1455
    .line 1456
    const-string v0, ".   \\ |  | /"

    .line 1457
    .line 1458
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    .line 1460
    .line 1461
    const-string v0, ".    \\    /"

    .line 1462
    .line 1463
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .line 1465
    .line 1466
    const-string v0, ".     \\  /"

    .line 1467
    .line 1468
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    .line 1470
    .line 1471
    const-string v0, ".      \\/"

    .line 1472
    .line 1473
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    .line 1475
    .line 1476
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .line 1478
    .line 1479
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    .line 1484
    .line 1485
    const-string v0, ".      /\\"

    .line 1486
    .line 1487
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    .line 1489
    .line 1490
    const-string v0, ".     /  \\"

    .line 1491
    .line 1492
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .line 1494
    .line 1495
    const-string v0, ".    /    \\"

    .line 1496
    .line 1497
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    .line 1499
    .line 1500
    const-string v0, ".   / |  | \\"

    .line 1501
    .line 1502
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    .line 1504
    .line 1505
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    .line 1507
    .line 1508
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .line 1510
    .line 1511
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .line 1513
    .line 1514
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    .line 1516
    .line 1517
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    const/4 v15, 0x0

    .line 1521
    goto :goto_15

    .line 1522
    :catchall_0
    move-exception v0

    .line 1523
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1524
    throw v0

    .line 1525
    :catch_2
    move-exception v0

    .line 1526
    const-string v1, "Error retrieving app package info."

    .line 1527
    .line 1528
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1529
    .line 1530
    .line 1531
    const/4 v15, 0x0

    .line 1532
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1533
    .line 1534
    .line 1535
    move-result-wide v0

    .line 1536
    sub-long v0, v0, v26

    .line 1537
    .line 1538
    const-wide/16 v2, 0x10

    .line 1539
    .line 1540
    cmp-long v2, v0, v2

    .line 1541
    .line 1542
    if-lez v2, :cond_20

    .line 1543
    .line 1544
    const-string v2, "Initializing Crashlytics blocked main for "

    .line 1545
    .line 1546
    const-string v3, " ms"

    .line 1547
    .line 1548
    invoke-static {v2, v3, v0, v1}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    const/4 v8, 0x3

    .line 1553
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    if-eqz v1, :cond_20

    .line 1558
    .line 1559
    const/4 v14, 0x0

    .line 1560
    invoke-static {v4, v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    .line 1562
    .line 1563
    :cond_20
    :goto_15
    return-object v15

    .line 1564
    :pswitch_0
    return-object v0

    .line 1565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lsn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/gms/tasks/Task;

    .line 10
    .line 11
    return-object p0
.end method
