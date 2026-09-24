.class public final Lff5;
.super Lpw6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Ljava/util/List;

.field public final p:Lq63;

.field public final q:Landroid/content/ContentResolver;

.field public final r:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lq63;)V
    .locals 3

    .line 1
    new-instance v0, Lxy7;

    .line 2
    .line 3
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 4
    .line 5
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, v2}, Lxy7;-><init>(Ljava/util/List;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ldf5;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "MessagesTask"

    .line 22
    .line 23
    iput-object v0, p0, Lff5;->m:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 26
    .line 27
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lff5;->q:Landroid/content/ContentResolver;

    .line 39
    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lff5;->r:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    iput-object p1, p0, Lff5;->o:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lqv1;

    .line 65
    .line 66
    invoke-virtual {v1}, Lqv1;->getMessageCount()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iput v0, p0, Lff5;->n:I

    .line 73
    .line 74
    iput-object p2, p0, Lff5;->p:Lq63;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lzy7;)V
    .locals 1

    .line 77
    new-instance v0, Ldf5;

    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0, p2, v0}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 80
    const-string p2, "MessagesTask"

    iput-object p2, p0, Lff5;->m:Ljava/lang/String;

    .line 81
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lff5;->q:Landroid/content/ContentResolver;

    .line 82
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lff5;->r:Ljava/util/LinkedHashMap;

    .line 83
    iput-object p1, p0, Lff5;->o:Ljava/util/List;

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqv1;

    invoke-virtual {v0}, Lqv1;->getMessageCount()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iput p2, p0, Lff5;->n:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lpw6;->a:Lcz7;

    .line 4
    .line 5
    instance-of v3, v2, Lxy7;

    .line 6
    .line 7
    const-string v4, "messages_backup_mms"

    .line 8
    .line 9
    const-string v5, "prefs"

    .line 10
    .line 11
    iget-object v6, v1, Lff5;->o:Ljava/util/List;

    .line 12
    .line 13
    iget-object v7, v1, Lpw6;->i:Lex6;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-object v0, v2

    .line 18
    check-cast v0, Lzy7;

    .line 19
    .line 20
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    const v12, 0x7f130086

    .line 27
    .line 28
    .line 29
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-virtual {v7, v11}, Lzy4;->i(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    check-cast v0, Lxy7;

    .line 37
    .line 38
    iget-boolean v11, v0, Lxy7;->f:Z

    .line 39
    .line 40
    if-eqz v11, :cond_1

    .line 41
    .line 42
    iget-object v0, v1, Lff5;->p:Lq63;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lff5;->q(Lq63;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    move-object/from16 v18, v5

    .line 51
    .line 52
    move-object/from16 v20, v6

    .line 53
    .line 54
    goto/16 :goto_12

    .line 55
    .line 56
    :cond_1
    iget-object v0, v0, Lxy7;->e:Ljava/util/List;

    .line 57
    .line 58
    iget-object v11, v1, Lpw6;->b:Ldz7;

    .line 59
    .line 60
    const-string v12, "startBackup"

    .line 61
    .line 62
    invoke-static {}, Lud5;->i()Lq63;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    invoke-virtual {v13}, Lq63;->j()Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-nez v14, :cond_2

    .line 71
    .line 72
    invoke-static {v13}, Lq63;->E(Lq63;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {}, Lud5;->i()Lq63;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    const-string v15, "conversations"

    .line 80
    .line 81
    invoke-virtual {v14, v15}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual {v14}, Lq63;->h()Z

    .line 86
    .line 87
    .line 88
    sget-object v15, Lw14;->a:Lgv7;

    .line 89
    .line 90
    const-class v15, Lqv1;

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-nez v9, :cond_18

    .line 110
    .line 111
    :try_start_0
    new-instance v9, Lq63;

    .line 112
    .line 113
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    const-string v8, "temp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 122
    .line 123
    move-object/from16 v18, v5

    .line 124
    .line 125
    const/4 v5, 0x2

    .line 126
    :try_start_1
    invoke-direct {v9, v10, v8, v5}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9}, Lq63;->h()Z

    .line 130
    .line 131
    .line 132
    new-instance v8, Ljava/io/OutputStreamWriter;

    .line 133
    .line 134
    const/4 v10, 0x1

    .line 135
    invoke-virtual {v9, v10}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-direct {v8, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lnn4;

    .line 147
    .line 148
    invoke-direct {v5, v8}, Lnn4;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 149
    .line 150
    .line 151
    :try_start_2
    const-string v8, "  "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 152
    .line 153
    :try_start_3
    sget-object v10, Lxq3;->e:Lxq3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    .line 155
    move-object/from16 v20, v6

    .line 156
    .line 157
    :try_start_4
    new-instance v6, Lxq3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 158
    .line 159
    move-object/from16 v21, v11

    .line 160
    .line 161
    :try_start_5
    iget-object v11, v10, Lxq3;->a:Ljava/lang/String;

    .line 162
    .line 163
    iget-boolean v10, v10, Lxq3;->c:Z

    .line 164
    .line 165
    invoke-direct {v6, v11, v8, v10}, Lxq3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v6}, Lnn4;->v(Lxq3;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lnn4;->g()V

    .line 172
    .line 173
    .line 174
    const-string v6, "items"

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Lnn4;->n(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Lnn4;->b()V

    .line 180
    .line 181
    .line 182
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_3

    .line 191
    .line 192
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    sget-object v10, Lw14;->a:Lgv7;

    .line 197
    .line 198
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-virtual {v10, v8, v15, v5}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    :goto_1
    move-object v6, v0

    .line 208
    goto/16 :goto_f

    .line 209
    .line 210
    :cond_3
    invoke-virtual {v5}, Lnn4;->j()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Lnn4;->m()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Lnn4;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    .line 218
    .line 219
    :try_start_6
    invoke-virtual {v5}, Lnn4;->close()V

    .line 220
    .line 221
    .line 222
    sget-object v5, Ly32;->a:Lgv7;

    .line 223
    .line 224
    sget-boolean v5, Ly32;->d:Z

    .line 225
    .line 226
    if-eqz v5, :cond_17

    .line 227
    .line 228
    const/4 v10, 0x1

    .line 229
    invoke-virtual {v9, v10}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v14, v10}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v5, v6}, Ly32;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 238
    .line 239
    .line 240
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 241
    if-eqz v5, :cond_17

    .line 242
    .line 243
    invoke-static {}, Lud5;->g()Lq63;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    :try_start_7
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 248
    .line 249
    if-eqz v6, :cond_4

    .line 250
    .line 251
    invoke-interface {v6, v4, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    goto :goto_2

    .line 256
    :cond_4
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v16
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_0

    .line 260
    :catch_0
    const/4 v6, 0x1

    .line 261
    :goto_2
    if-eqz v6, :cond_10

    .line 262
    .line 263
    invoke-virtual {v5}, Lq63;->j()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_f

    .line 268
    .line 269
    invoke-virtual {v5}, Lq63;->B()Ljava/util/ArrayList;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    if-eqz v6, :cond_10

    .line 274
    .line 275
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-eqz v8, :cond_5

    .line 280
    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_5
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 284
    .line 285
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_b

    .line 297
    .line 298
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    check-cast v10, Lqv1;

    .line 303
    .line 304
    invoke-virtual {v10}, Lqv1;->getMmsItemList()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    .line 309
    .line 310
    const/16 v14, 0xa

    .line 311
    .line 312
    invoke-static {v10, v14}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    if-eqz v14, :cond_6

    .line 328
    .line 329
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    check-cast v14, Lwg5;

    .line 334
    .line 335
    invoke-virtual {v14}, Lwg5;->getFile()Lq63;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    if-eqz v15, :cond_8

    .line 340
    .line 341
    invoke-virtual {v15}, Lq63;->p()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 346
    .line 347
    .line 348
    move-result v22

    .line 349
    if-lez v22, :cond_7

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_7
    move-object/from16 v15, v16

    .line 353
    .line 354
    :goto_4
    if-eqz v15, :cond_8

    .line 355
    .line 356
    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    :cond_8
    invoke-virtual {v14}, Lwg5;->getProperFileName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    if-eqz v14, :cond_a

    .line 364
    .line 365
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    if-lez v15, :cond_9

    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_9
    move-object/from16 v14, v16

    .line 373
    .line 374
    :goto_5
    if-eqz v14, :cond_a

    .line 375
    .line 376
    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v14

    .line 380
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 381
    .line 382
    .line 383
    move-result-object v14

    .line 384
    goto :goto_6

    .line 385
    :cond_a
    move-object/from16 v14, v16

    .line 386
    .line 387
    :goto_6
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    if-eqz v9, :cond_d

    .line 400
    .line 401
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    check-cast v9, Lq63;

    .line 406
    .line 407
    invoke-virtual {v9}, Lq63;->p()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    if-nez v10, :cond_c

    .line 416
    .line 417
    invoke-virtual {v9}, Lq63;->h()Z

    .line 418
    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_d
    invoke-virtual {v5}, Lq63;->B()Ljava/util/ArrayList;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    if-eqz v5, :cond_10

    .line 426
    .line 427
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    if-eqz v6, :cond_e

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_e
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    const-string v6, "startBackup: Found "

    .line 441
    .line 442
    const-string v8, " MMS data files of selected conversations"

    .line 443
    .line 444
    invoke-static {v5, v6, v8}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v24

    .line 448
    const/16 v26, 0x4

    .line 449
    .line 450
    const/16 v27, 0x0

    .line 451
    .line 452
    iget-object v5, v1, Lff5;->m:Ljava/lang/String;

    .line 453
    .line 454
    const/16 v25, 0x0

    .line 455
    .line 456
    move-object/from16 v23, v5

    .line 457
    .line 458
    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_f
    sget-object v28, Lvr6;->INSTANCE:Lvr6;

    .line 463
    .line 464
    const/16 v32, 0x4

    .line 465
    .line 466
    const/16 v33, 0x0

    .line 467
    .line 468
    iget-object v5, v1, Lff5;->m:Ljava/lang/String;

    .line 469
    .line 470
    const-string v30, "startBackup: MMS cached data directory not found"

    .line 471
    .line 472
    const/16 v31, 0x0

    .line 473
    .line 474
    move-object/from16 v29, v5

    .line 475
    .line 476
    invoke-static/range {v28 .. v33}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_10
    :goto_8
    invoke-static {v0}, Lji8;->t(Ljava/util/Collection;)Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_11

    .line 484
    .line 485
    sget-object v5, Lry5;->u:Ljava/lang/String;

    .line 486
    .line 487
    move-object/from16 v6, v16

    .line 488
    .line 489
    const/4 v5, 0x0

    .line 490
    invoke-static {v5, v6}, Lqy5;->f(ZLzn7;)Lry5;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    iget-object v8, v8, Lry5;->k:Ljava/lang/String;

    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_11
    move-object/from16 v6, v16

    .line 498
    .line 499
    const/4 v5, 0x0

    .line 500
    sget-object v8, Lry5;->u:Ljava/lang/String;

    .line 501
    .line 502
    invoke-static {v5, v6}, Lqy5;->f(ZLzn7;)Lry5;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    iget-object v8, v8, Lry5;->j:Ljava/lang/String;

    .line 507
    .line 508
    :goto_9
    sget-object v5, Lud5;->a:Lgv7;

    .line 509
    .line 510
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 515
    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 517
    .line 518
    .line 519
    move-result-wide v9

    .line 520
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 521
    .line 522
    .line 523
    move-result-object v23

    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v24

    .line 528
    iget v5, v1, Lff5;->n:I

    .line 529
    .line 530
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v25

    .line 534
    sget-object v5, Ltb1;->a:Ltb1;

    .line 535
    .line 536
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v26

    .line 540
    const-string v27, "msg"

    .line 541
    .line 542
    const-string v22, "v3"

    .line 543
    .line 544
    filled-new-array/range {v22 .. v27}, [Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    const/4 v9, 0x6

    .line 549
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    const-string v9, "%s.%d.%d.%s.%s.%s"

    .line 554
    .line 555
    invoke-static {v6, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    new-instance v6, Lq63;

    .line 560
    .line 561
    const/4 v9, 0x2

    .line 562
    invoke-direct {v6, v8, v5, v9}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    .line 564
    .line 565
    invoke-static {v6}, Lio4;->g(Lq63;)V

    .line 566
    .line 567
    .line 568
    invoke-static {}, Lyx5;->j()Lux5;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    invoke-static {v5}, Lyx5;->h(Lux5;)[C

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    :try_start_8
    sget-object v8, Lmz6;->a:Ljava/util/HashSet;

    .line 577
    .line 578
    const-string v8, "compression_level_msgs"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 579
    .line 580
    const/4 v9, -0x1

    .line 581
    :try_start_9
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 582
    .line 583
    if-eqz v10, :cond_12

    .line 584
    .line 585
    invoke-interface {v10, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    goto :goto_a

    .line 590
    :cond_12
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    const/16 v16, 0x0

    .line 594
    .line 595
    throw v16
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 596
    :catch_1
    :goto_a
    :try_start_a
    sget-object v8, Lxp1;->Companion:Lwp1;

    .line 597
    .line 598
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    const/4 v10, 0x0

    .line 606
    const/4 v11, 0x2

    .line 607
    :goto_b
    if-ge v10, v11, :cond_14

    .line 608
    .line 609
    aget-object v14, v8, v10

    .line 610
    .line 611
    invoke-virtual {v14}, Lxp1;->getLevel()I

    .line 612
    .line 613
    .line 614
    move-result v15

    .line 615
    if-ne v15, v9, :cond_13

    .line 616
    .line 617
    goto :goto_c

    .line 618
    :cond_13
    add-int/lit8 v10, v10, 0x1

    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_14
    const/4 v14, 0x0

    .line 622
    :goto_c
    if-nez v14, :cond_15

    .line 623
    .line 624
    sget-object v8, Lxp1;->Companion:Lwp1;

    .line 625
    .line 626
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 630
    .line 631
    .line 632
    move-result-object v14

    .line 633
    :cond_15
    const-string v8, "swiftbackup.messages.v3"

    .line 634
    .line 635
    invoke-static {v13, v6, v5, v14, v8}, Lmz6;->e(Lq63;Lq63;[CLxp1;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 636
    .line 637
    .line 638
    array-length v8, v5

    .line 639
    const/4 v9, 0x0

    .line 640
    invoke-static {v5, v9, v8, v9}, Ljava/util/Arrays;->fill([CIIC)V

    .line 641
    .line 642
    .line 643
    invoke-static {v9}, Lud5;->c(Z)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lpw6;->i()Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-nez v5, :cond_19

    .line 651
    .line 652
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 653
    .line 654
    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    if-eqz v0, :cond_19

    .line 659
    .line 660
    invoke-virtual {v1, v6}, Lff5;->q(Lq63;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_12

    .line 664
    .line 665
    :catchall_1
    move-exception v0

    .line 666
    goto :goto_d

    .line 667
    :catch_2
    move-exception v0

    .line 668
    move-object/from16 v25, v0

    .line 669
    .line 670
    :try_start_b
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 671
    .line 672
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 673
    .line 674
    new-instance v8, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v9, ": Failed to create SBA messages backup"

    .line 683
    .line 684
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v24

    .line 691
    const/16 v27, 0x8

    .line 692
    .line 693
    const/16 v28, 0x0

    .line 694
    .line 695
    const/16 v26, 0x0

    .line 696
    .line 697
    move-object/from16 v23, v0

    .line 698
    .line 699
    invoke-static/range {v22 .. v28}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 700
    .line 701
    .line 702
    array-length v0, v5

    .line 703
    const/4 v9, 0x0

    .line 704
    invoke-static {v5, v9, v0, v9}, Ljava/util/Arrays;->fill([CIIC)V

    .line 705
    .line 706
    .line 707
    move-object/from16 v11, v21

    .line 708
    .line 709
    check-cast v11, Ldf5;

    .line 710
    .line 711
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v11, v0}, Ldf5;->a(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    goto :goto_12

    .line 719
    :goto_d
    array-length v1, v5

    .line 720
    const/4 v9, 0x0

    .line 721
    invoke-static {v5, v9, v1, v9}, Ljava/util/Arrays;->fill([CIIC)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :catch_3
    move-exception v0

    .line 726
    goto :goto_11

    .line 727
    :catchall_2
    move-exception v0

    .line 728
    goto :goto_e

    .line 729
    :catchall_3
    move-exception v0

    .line 730
    move-object/from16 v20, v6

    .line 731
    .line 732
    goto :goto_e

    .line 733
    :catchall_4
    move-exception v0

    .line 734
    move-object/from16 v20, v6

    .line 735
    .line 736
    :goto_e
    move-object/from16 v21, v11

    .line 737
    .line 738
    goto/16 :goto_1

    .line 739
    .line 740
    :goto_f
    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 741
    :catchall_5
    move-exception v0

    .line 742
    :try_start_d
    invoke-static {v5, v6}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 743
    .line 744
    .line 745
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 746
    :catch_4
    move-exception v0

    .line 747
    :goto_10
    move-object/from16 v20, v6

    .line 748
    .line 749
    move-object/from16 v21, v11

    .line 750
    .line 751
    goto :goto_11

    .line 752
    :catch_5
    move-exception v0

    .line 753
    move-object/from16 v18, v5

    .line 754
    .line 755
    goto :goto_10

    .line 756
    :goto_11
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 757
    .line 758
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    if-nez v0, :cond_16

    .line 763
    .line 764
    const-string v0, ""

    .line 765
    .line 766
    :cond_16
    move-object v10, v0

    .line 767
    const/4 v12, 0x4

    .line 768
    const/4 v13, 0x0

    .line 769
    const-string v9, "GsonHelper"

    .line 770
    .line 771
    const/4 v11, 0x0

    .line 772
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    :cond_17
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 776
    .line 777
    const/16 v26, 0x4

    .line 778
    .line 779
    const/16 v27, 0x0

    .line 780
    .line 781
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 782
    .line 783
    const-string v24, "startBackup: Failed to save conversations!"

    .line 784
    .line 785
    const/16 v25, 0x0

    .line 786
    .line 787
    move-object/from16 v23, v0

    .line 788
    .line 789
    invoke-static/range {v22 .. v27}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    move-object/from16 v11, v21

    .line 793
    .line 794
    check-cast v11, Ldf5;

    .line 795
    .line 796
    invoke-virtual {v14}, Lq63;->v()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-virtual {v11, v0}, Ldf5;->a(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    goto :goto_12

    .line 804
    :cond_18
    invoke-static {}, Ld6;->o()V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :cond_19
    :goto_12
    instance-of v5, v2, Lyy7;

    .line 809
    .line 810
    if-eqz v5, :cond_3b

    .line 811
    .line 812
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 813
    .line 814
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    const v6, 0x7f130491

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v7, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    new-instance v6, Lxf5;

    .line 829
    .line 830
    invoke-direct {v6}, Lxf5;-><init>()V

    .line 831
    .line 832
    .line 833
    new-instance v0, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 843
    .line 844
    .line 845
    move-result v8

    .line 846
    if-eqz v8, :cond_1a

    .line 847
    .line 848
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v8

    .line 852
    check-cast v8, Lqv1;

    .line 853
    .line 854
    invoke-virtual {v8}, Lqv1;->getSmsItemList()Ljava/util/List;

    .line 855
    .line 856
    .line 857
    move-result-object v8

    .line 858
    invoke-static {v8, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 859
    .line 860
    .line 861
    goto :goto_13

    .line 862
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 863
    .line 864
    .line 865
    move-result-object v7

    .line 866
    const/4 v8, 0x0

    .line 867
    :cond_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    iget-object v9, v1, Lff5;->q:Landroid/content/ContentResolver;

    .line 872
    .line 873
    const-string v10, "thread_id"

    .line 874
    .line 875
    if-eqz v0, :cond_1f

    .line 876
    .line 877
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    move-object v11, v0

    .line 882
    check-cast v11, Lki7;

    .line 883
    .line 884
    sget-object v0, Lki7;->Companion:Lki7$a;

    .line 885
    .line 886
    invoke-virtual {v0, v11}, Lki7$a;->isSmsOnDevice(Lki7;)Z

    .line 887
    .line 888
    .line 889
    move-result v12

    .line 890
    if-eqz v12, :cond_1c

    .line 891
    .line 892
    goto :goto_15

    .line 893
    :cond_1c
    :try_start_e
    invoke-virtual {v6, v11}, Lxf5;->c(Ljava/lang/Object;)Landroid/content/ContentValues;

    .line 894
    .line 895
    .line 896
    move-result-object v12

    .line 897
    invoke-virtual {v11}, Lki7;->getAddress()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v13

    .line 901
    if-nez v13, :cond_1d

    .line 902
    .line 903
    goto :goto_15

    .line 904
    :cond_1d
    invoke-static {v13}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 905
    .line 906
    .line 907
    move-result-object v13

    .line 908
    invoke-virtual {v1, v13}, Lff5;->p(Ljava/util/Set;)Ljava/lang/Long;

    .line 909
    .line 910
    .line 911
    move-result-object v13

    .line 912
    if-eqz v13, :cond_1e

    .line 913
    .line 914
    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v0}, Lki7$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v9, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 922
    .line 923
    .line 924
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 925
    goto :goto_14

    .line 926
    :catch_6
    move-exception v0

    .line 927
    move-object/from16 v24, v0

    .line 928
    .line 929
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    .line 930
    .line 931
    const/16 v26, 0x8

    .line 932
    .line 933
    const/16 v27, 0x0

    .line 934
    .line 935
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 936
    .line 937
    const-string v23, "restoreSms"

    .line 938
    .line 939
    const/16 v25, 0x0

    .line 940
    .line 941
    move-object/from16 v22, v0

    .line 942
    .line 943
    invoke-static/range {v21 .. v27}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    const/4 v0, 0x0

    .line 947
    :goto_14
    if-nez v0, :cond_1e

    .line 948
    .line 949
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    .line 950
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    const-string v12, "restoreSms: Restoring failed for smsItem: "

    .line 954
    .line 955
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v23

    .line 965
    const/16 v25, 0x4

    .line 966
    .line 967
    const/16 v26, 0x0

    .line 968
    .line 969
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 970
    .line 971
    const/16 v24, 0x0

    .line 972
    .line 973
    move-object/from16 v22, v0

    .line 974
    .line 975
    invoke-static/range {v21 .. v26}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    :cond_1e
    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 979
    .line 980
    invoke-virtual {v1, v8}, Lpw6;->n(I)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1}, Lpw6;->i()Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    if-eqz v0, :cond_1b

    .line 988
    .line 989
    :cond_1f
    :try_start_f
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 990
    .line 991
    if-eqz v0, :cond_20

    .line 992
    .line 993
    const/4 v7, 0x1

    .line 994
    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    goto :goto_16

    .line 999
    :cond_20
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    const/16 v16, 0x0

    .line 1003
    .line 1004
    throw v16
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_7

    .line 1005
    :catch_7
    const/4 v0, 0x1

    .line 1006
    :goto_16
    if-nez v0, :cond_21

    .line 1007
    .line 1008
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    .line 1009
    .line 1010
    const/16 v25, 0x4

    .line 1011
    .line 1012
    const/16 v26, 0x0

    .line 1013
    .line 1014
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 1015
    .line 1016
    const-string v23, "startRestore: User has disabled MMS backup/restore"

    .line 1017
    .line 1018
    const/16 v24, 0x0

    .line 1019
    .line 1020
    move-object/from16 v22, v0

    .line 1021
    .line 1022
    invoke-static/range {v21 .. v26}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_2a

    .line 1026
    .line 1027
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .line 1031
    .line 1032
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v7

    .line 1040
    if-eqz v7, :cond_22

    .line 1041
    .line 1042
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v7

    .line 1046
    check-cast v7, Lqv1;

    .line 1047
    .line 1048
    invoke-virtual {v7}, Lqv1;->getMmsItemList()Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v7

    .line 1052
    invoke-static {v7, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 1053
    .line 1054
    .line 1055
    goto :goto_17

    .line 1056
    :cond_22
    new-instance v4, Ljava/util/ArrayList;

    .line 1057
    .line 1058
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    :cond_23
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    if-eqz v7, :cond_25

    .line 1070
    .line 1071
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v7

    .line 1075
    move-object v11, v7

    .line 1076
    check-cast v11, Lwg5;

    .line 1077
    .line 1078
    invoke-virtual {v11}, Lwg5;->getPartItems()Ljava/util/List;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v11

    .line 1082
    if-eqz v11, :cond_23

    .line 1083
    .line 1084
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v11

    .line 1088
    if-eqz v11, :cond_24

    .line 1089
    .line 1090
    goto :goto_18

    .line 1091
    :cond_24
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    goto :goto_18

    .line 1095
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v0

    .line 1103
    if-eqz v0, :cond_3b

    .line 1104
    .line 1105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    move-object v7, v0

    .line 1110
    check-cast v7, Lwg5;

    .line 1111
    .line 1112
    sget-object v0, Lwg5;->Companion:Lwg5$a;

    .line 1113
    .line 1114
    invoke-virtual {v0, v7}, Lwg5$a;->isMmsOnDevice(Lwg5;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v11

    .line 1118
    if-eqz v11, :cond_28

    .line 1119
    .line 1120
    :cond_26
    :goto_1a
    move-object/from16 v19, v2

    .line 1121
    .line 1122
    move-object/from16 v22, v4

    .line 1123
    .line 1124
    :cond_27
    :goto_1b
    const/16 v17, 0x1

    .line 1125
    .line 1126
    goto/16 :goto_29

    .line 1127
    .line 1128
    :cond_28
    :try_start_10
    invoke-virtual {v6, v7}, Lxf5;->c(Ljava/lang/Object;)Landroid/content/ContentValues;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v11

    .line 1132
    invoke-virtual {v7}, Lwg5;->getRecipients()Ljava/util/Set;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v12

    .line 1136
    if-eqz v12, :cond_26

    .line 1137
    .line 1138
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v13

    .line 1142
    if-nez v13, :cond_29

    .line 1143
    .line 1144
    goto :goto_1c

    .line 1145
    :cond_29
    const/4 v12, 0x0

    .line 1146
    :goto_1c
    if-nez v12, :cond_2a

    .line 1147
    .line 1148
    goto :goto_1a

    .line 1149
    :cond_2a
    invoke-virtual {v1, v12}, Lff5;->p(Ljava/util/Set;)Ljava/lang/Long;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v12

    .line 1153
    if-eqz v12, :cond_26

    .line 1154
    .line 1155
    invoke-virtual {v11, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0}, Lwg5$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-virtual {v9, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    if-nez v0, :cond_2b

    .line 1167
    .line 1168
    goto :goto_1a

    .line 1169
    :cond_2b
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    if-eqz v0, :cond_26

    .line 1174
    .line 1175
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    if-eqz v0, :cond_26

    .line 1184
    .line 1185
    invoke-static {v0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    if-eqz v0, :cond_26

    .line 1190
    .line 1191
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1192
    .line 1193
    .line 1194
    move-result-wide v11

    .line 1195
    const-wide/16 v13, 0x0

    .line 1196
    .line 1197
    cmp-long v15, v11, v13

    .line 1198
    .line 1199
    if-ltz v15, :cond_37

    .line 1200
    .line 1201
    invoke-virtual {v7}, Lwg5;->getPartItems()Ljava/util/List;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v15

    .line 1205
    if-eqz v15, :cond_35

    .line 1206
    .line 1207
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v15

    .line 1211
    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1212
    .line 1213
    .line 1214
    move-result v19

    .line 1215
    if-eqz v19, :cond_35

    .line 1216
    .line 1217
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v19

    .line 1221
    move-wide/from16 v20, v13

    .line 1222
    .line 1223
    move-object/from16 v13, v19

    .line 1224
    .line 1225
    check-cast v13, Lxg5;

    .line 1226
    .line 1227
    invoke-virtual {v13, v0}, Lxg5;->setMid(Ljava/lang/Long;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v6, v13}, Lxf5;->c(Ljava/lang/Object;)Landroid/content/ContentValues;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v14
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1234
    move-object/from16 v19, v2

    .line 1235
    .line 1236
    :try_start_11
    const-string v2, "_data"

    .line 1237
    .line 1238
    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v13}, Lxg5;->getName()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 1245
    if-eqz v2, :cond_2d

    .line 1246
    .line 1247
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1248
    .line 1249
    .line 1250
    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1251
    if-nez v2, :cond_2c

    .line 1252
    .line 1253
    goto :goto_1f

    .line 1254
    :cond_2c
    :goto_1e
    move-object/from16 v22, v4

    .line 1255
    .line 1256
    goto :goto_22

    .line 1257
    :catch_8
    move-exception v0

    .line 1258
    move-object/from16 v26, v0

    .line 1259
    .line 1260
    move-object/from16 v22, v4

    .line 1261
    .line 1262
    goto/16 :goto_27

    .line 1263
    .line 1264
    :cond_2d
    :goto_1f
    :try_start_13
    invoke-virtual {v13}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    if-eqz v2, :cond_2c

    .line 1269
    .line 1270
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1271
    .line 1272
    .line 1273
    move-result v2

    .line 1274
    if-nez v2, :cond_2e

    .line 1275
    .line 1276
    goto :goto_1e

    .line 1277
    :cond_2e
    invoke-virtual {v7}, Lwg5;->getProperFileName()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 1281
    if-eqz v2, :cond_2c

    .line 1282
    .line 1283
    move-object/from16 v22, v4

    .line 1284
    .line 1285
    :try_start_14
    const-string v4, "name"

    .line 1286
    .line 1287
    invoke-virtual {v14, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    goto :goto_22

    .line 1291
    :catch_9
    move-exception v0

    .line 1292
    :goto_20
    move-object/from16 v26, v0

    .line 1293
    .line 1294
    goto/16 :goto_27

    .line 1295
    .line 1296
    :catch_a
    move-exception v0

    .line 1297
    :goto_21
    move-object/from16 v22, v4

    .line 1298
    .line 1299
    goto :goto_20

    .line 1300
    :goto_22
    sget-object v2, Lxg5;->Companion:Lxg5$a;

    .line 1301
    .line 1302
    invoke-virtual {v2, v0}, Lxg5$a;->getContentUriForMms(Ljava/lang/Long;)Landroid/net/Uri;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    invoke-virtual {v9, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    if-eqz v2, :cond_34

    .line 1311
    .line 1312
    invoke-virtual {v13}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    if-eqz v4, :cond_2f

    .line 1317
    .line 1318
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1319
    .line 1320
    .line 1321
    move-result v13

    .line 1322
    if-nez v13, :cond_30

    .line 1323
    .line 1324
    :cond_2f
    const/4 v4, 0x0

    .line 1325
    :cond_30
    if-nez v4, :cond_31

    .line 1326
    .line 1327
    goto :goto_25

    .line 1328
    :cond_31
    invoke-static {}, Lud5;->g()Lq63;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v13

    .line 1332
    invoke-virtual {v13, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v4

    .line 1336
    invoke-virtual {v4}, Lq63;->j()Z

    .line 1337
    .line 1338
    .line 1339
    move-result v13

    .line 1340
    if-eqz v13, :cond_32

    .line 1341
    .line 1342
    invoke-virtual {v4}, Lq63;->A()J

    .line 1343
    .line 1344
    .line 1345
    move-result-wide v13

    .line 1346
    cmp-long v13, v13, v20

    .line 1347
    .line 1348
    if-lez v13, :cond_32

    .line 1349
    .line 1350
    goto :goto_23

    .line 1351
    :cond_32
    const/4 v4, 0x0

    .line 1352
    :goto_23
    if-nez v4, :cond_33

    .line 1353
    .line 1354
    goto :goto_25

    .line 1355
    :cond_33
    invoke-virtual {v9, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v2

    .line 1359
    if-eqz v2, :cond_34

    .line 1360
    .line 1361
    const/4 v13, 0x1

    .line 1362
    invoke-virtual {v4, v13}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 1366
    const/high16 v13, 0x40000

    .line 1367
    .line 1368
    :try_start_15
    invoke-static {v4, v2, v13}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1369
    .line 1370
    .line 1371
    :try_start_16
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1372
    .line 1373
    .line 1374
    :try_start_17
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    .line 1375
    .line 1376
    .line 1377
    goto :goto_25

    .line 1378
    :catchall_6
    move-exception v0

    .line 1379
    move-object v2, v0

    .line 1380
    goto :goto_24

    .line 1381
    :catchall_7
    move-exception v0

    .line 1382
    move-object v11, v0

    .line 1383
    :try_start_18
    throw v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 1384
    :catchall_8
    move-exception v0

    .line 1385
    :try_start_19
    invoke-static {v2, v11}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1386
    .line 1387
    .line 1388
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1389
    :goto_24
    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 1390
    :catchall_9
    move-exception v0

    .line 1391
    :try_start_1b
    invoke-static {v4, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1392
    .line 1393
    .line 1394
    throw v0

    .line 1395
    :cond_34
    :goto_25
    move-object/from16 v2, v19

    .line 1396
    .line 1397
    move-wide/from16 v13, v20

    .line 1398
    .line 1399
    move-object/from16 v4, v22

    .line 1400
    .line 1401
    goto/16 :goto_1d

    .line 1402
    .line 1403
    :catch_b
    move-exception v0

    .line 1404
    move-object/from16 v19, v2

    .line 1405
    .line 1406
    goto :goto_21

    .line 1407
    :cond_35
    move-object/from16 v19, v2

    .line 1408
    .line 1409
    move-object/from16 v22, v4

    .line 1410
    .line 1411
    invoke-virtual {v7}, Lwg5;->getAddressItems()Ljava/util/List;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    if-eqz v2, :cond_27

    .line 1416
    .line 1417
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v2

    .line 1421
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v4

    .line 1425
    if-eqz v4, :cond_27

    .line 1426
    .line 1427
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v4

    .line 1431
    check-cast v4, Lvg5;

    .line 1432
    .line 1433
    invoke-virtual {v4, v0}, Lvg5;->setMsgId(Ljava/lang/Long;)V

    .line 1434
    .line 1435
    .line 1436
    const/4 v13, 0x0

    .line 1437
    invoke-virtual {v4, v13}, Lvg5;->setContactId(Ljava/lang/Long;)V

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v6, v4}, Lxf5;->c(Ljava/lang/Object;)Landroid/content/ContentValues;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v4

    .line 1444
    sget-object v13, Lvg5;->Companion:Lvg5$a;

    .line 1445
    .line 1446
    invoke-virtual {v13, v11, v12}, Lvg5$a;->getContentUriForMms(J)Landroid/net/Uri;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v13

    .line 1450
    invoke-virtual {v9, v13, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    if-eqz v4, :cond_36

    .line 1455
    .line 1456
    goto :goto_26

    .line 1457
    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1458
    .line 1459
    const-string v2, "Failed inserting address items"

    .line 1460
    .line 1461
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    throw v0

    .line 1465
    :cond_37
    move-object/from16 v19, v2

    .line 1466
    .line 1467
    move-object/from16 v22, v4

    .line 1468
    .line 1469
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1470
    .line 1471
    const-string v2, "Failed inserting MMS item"

    .line 1472
    .line 1473
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 1477
    :goto_27
    sget-object v27, Lvr6;->INSTANCE:Lvr6;

    .line 1478
    .line 1479
    const/16 v28, 0x8

    .line 1480
    .line 1481
    const/16 v29, 0x0

    .line 1482
    .line 1483
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 1484
    .line 1485
    const-string v25, "restoreMms"

    .line 1486
    .line 1487
    move-object/from16 v23, v27

    .line 1488
    .line 1489
    const/16 v27, 0x0

    .line 1490
    .line 1491
    move-object/from16 v24, v0

    .line 1492
    .line 1493
    invoke-static/range {v23 .. v29}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 1494
    .line 1495
    .line 1496
    const-string v0, "extra_logging"

    .line 1497
    .line 1498
    :try_start_1c
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1499
    .line 1500
    if-eqz v2, :cond_38

    .line 1501
    .line 1502
    const/4 v4, 0x0

    .line 1503
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v0

    .line 1507
    goto :goto_28

    .line 1508
    :cond_38
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    const/16 v16, 0x0

    .line 1512
    .line 1513
    throw v16
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1c} :catch_c

    .line 1514
    :catch_c
    const/4 v0, 0x0

    .line 1515
    :goto_28
    iget-object v2, v1, Lff5;->m:Ljava/lang/String;

    .line 1516
    .line 1517
    if-eqz v0, :cond_39

    .line 1518
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    const-string v4, "mmsItem="

    .line 1522
    .line 1523
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v29

    .line 1533
    const/16 v31, 0x4

    .line 1534
    .line 1535
    const/16 v32, 0x0

    .line 1536
    .line 1537
    const/16 v30, 0x0

    .line 1538
    .line 1539
    move-object/from16 v28, v2

    .line 1540
    .line 1541
    move-object/from16 v27, v23

    .line 1542
    .line 1543
    invoke-static/range {v27 .. v32}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1544
    .line 1545
    .line 1546
    goto/16 :goto_1b

    .line 1547
    .line 1548
    :cond_39
    move-object/from16 v28, v2

    .line 1549
    .line 1550
    invoke-virtual {v7}, Lwg5;->getId()Ljava/lang/Long;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    const-string v4, "mmsItem.id="

    .line 1557
    .line 1558
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v29

    .line 1568
    const/16 v31, 0x4

    .line 1569
    .line 1570
    const/16 v32, 0x0

    .line 1571
    .line 1572
    const/16 v30, 0x0

    .line 1573
    .line 1574
    move-object/from16 v27, v23

    .line 1575
    .line 1576
    invoke-static/range {v27 .. v32}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1577
    .line 1578
    .line 1579
    goto/16 :goto_1b

    .line 1580
    .line 1581
    :goto_29
    add-int/lit8 v8, v8, 0x1

    .line 1582
    .line 1583
    invoke-virtual {v1, v8}, Lpw6;->n(I)V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v1}, Lpw6;->i()Z

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    if-eqz v0, :cond_3a

    .line 1591
    .line 1592
    goto :goto_2b

    .line 1593
    :cond_3a
    move-object/from16 v2, v19

    .line 1594
    .line 1595
    move-object/from16 v4, v22

    .line 1596
    .line 1597
    goto/16 :goto_19

    .line 1598
    .line 1599
    :cond_3b
    :goto_2a
    move-object/from16 v19, v2

    .line 1600
    .line 1601
    :goto_2b
    iget-object v0, v1, Lff5;->m:Ljava/lang/String;

    .line 1602
    .line 1603
    const-string v1, "Cleaning cloud cache on device"

    .line 1604
    .line 1605
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    .line 1607
    .line 1608
    sget-boolean v0, Lq63;->d:Z

    .line 1609
    .line 1610
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 1611
    .line 1612
    const/4 v6, 0x0

    .line 1613
    const/4 v9, 0x0

    .line 1614
    invoke-static {v9, v6}, Lqy5;->f(ZLzn7;)Lry5;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v0

    .line 1618
    iget-object v0, v0, Lry5;->k:Ljava/lang/String;

    .line 1619
    .line 1620
    invoke-static {v0}, Lcy0;->g(Ljava/lang/String;)V

    .line 1621
    .line 1622
    .line 1623
    if-eqz v3, :cond_3e

    .line 1624
    .line 1625
    move-object/from16 v2, v19

    .line 1626
    .line 1627
    check-cast v2, Lxy7;

    .line 1628
    .line 1629
    iget-object v0, v2, Lxy7;->e:Ljava/util/List;

    .line 1630
    .line 1631
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 1632
    .line 1633
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    if-nez v0, :cond_3d

    .line 1638
    .line 1639
    iget-boolean v0, v2, Lxy7;->f:Z

    .line 1640
    .line 1641
    if-eqz v0, :cond_3c

    .line 1642
    .line 1643
    goto :goto_2c

    .line 1644
    :cond_3c
    sget-object v0, Lze5;->LOCAL:Lze5;

    .line 1645
    .line 1646
    goto :goto_2d

    .line 1647
    :cond_3d
    :goto_2c
    sget-object v0, Lze5;->LOCAL_AND_CLOUD:Lze5;

    .line 1648
    .line 1649
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1650
    .line 1651
    .line 1652
    new-instance v1, Laf5;

    .line 1653
    .line 1654
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1655
    .line 1656
    .line 1657
    iput-object v0, v1, Laf5;->a:Lze5;

    .line 1658
    .line 1659
    invoke-static {}, Lny2;->b()Lny2;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    invoke-virtual {v0, v1}, Lny2;->e(Ljava/lang/Object;)V

    .line 1664
    .line 1665
    .line 1666
    :cond_3e
    if-eqz v5, :cond_41

    .line 1667
    .line 1668
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1669
    .line 1670
    invoke-static {}, Lmp6;->f()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v0

    .line 1674
    if-eqz v0, :cond_41

    .line 1675
    .line 1676
    sget-object v0, Lud5;->a:Lgv7;

    .line 1677
    .line 1678
    const-string v0, "KEY_DEF_SMS_PACKAGE"

    .line 1679
    .line 1680
    :try_start_1d
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1d} :catch_d

    .line 1681
    .line 1682
    const/4 v6, 0x0

    .line 1683
    if-eqz v1, :cond_3f

    .line 1684
    .line 1685
    :try_start_1e
    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v10

    .line 1689
    goto :goto_2e

    .line 1690
    :cond_3f
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    throw v6
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_1e} :catch_e

    .line 1694
    :catch_d
    const/4 v6, 0x0

    .line 1695
    :catch_e
    move-object v10, v6

    .line 1696
    :goto_2e
    if-eqz v10, :cond_41

    .line 1697
    .line 1698
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1699
    .line 1700
    .line 1701
    move-result v0

    .line 1702
    if-nez v0, :cond_40

    .line 1703
    .line 1704
    goto :goto_2f

    .line 1705
    :cond_40
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1706
    .line 1707
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v0

    .line 1715
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1716
    .line 1717
    .line 1718
    move-result v0

    .line 1719
    if-nez v0, :cond_41

    .line 1720
    .line 1721
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v0

    .line 1725
    :try_start_1f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    const/4 v9, 0x0

    .line 1730
    invoke-virtual {v0, v10, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_1f} :catch_f

    .line 1731
    .line 1732
    .line 1733
    :catch_f
    :cond_41
    :goto_2f
    new-instance v0, Ljf5;

    .line 1734
    .line 1735
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1736
    .line 1737
    .line 1738
    iput-boolean v3, v0, Ljf5;->a:Z

    .line 1739
    .line 1740
    invoke-static {}, Lny2;->b()Lny2;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v1

    .line 1744
    invoke-virtual {v1, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 1745
    .line 1746
    .line 1747
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lff5;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget p0, p0, Lff5;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget p0, p0, Lff5;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f130348

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lff5;->n:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const v1, 0x7f1305c4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final p(Ljava/util/Set;)Ljava/lang/Long;
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v1, p0, Lff5;->r:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 18
    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object v5, v0

    .line 41
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 42
    .line 43
    const/16 v7, 0x8

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    iget-object v3, p0, Lff5;->m:Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, "getOrCreateThreadId"

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Long;

    .line 59
    .line 60
    return-object p0
.end method

.method public final q(Lq63;)V
    .locals 8

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f13058d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lpw6;->i:Lex6;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lrf8;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/16 v4, 0x14

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    move-object v3, p1

    .line 30
    invoke-direct/range {v2 .. v7}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Ltb1;->a:Ltb1;

    .line 34
    .line 35
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Ltb1;->d(Lrf8;)Lag8;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lpw6;->k:Lag8;

    .line 44
    .line 45
    new-instance v0, Ljj2;

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-direct {v0, v1, p0, v2}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iput-object v0, p1, Lag8;->g:Lmt3;

    .line 55
    .line 56
    invoke-virtual {p1}, Lag8;->c()Lzf8;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lpw6;->b:Ldz7;

    .line 61
    .line 62
    check-cast v0, Ldf5;

    .line 63
    .line 64
    iput-object p1, v0, Ldf5;->b:Lzf8;

    .line 65
    .line 66
    invoke-virtual {p1}, Lzf8;->a()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    invoke-static {p1}, Lud5;->c(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lre3;->i()Lzc2;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lef5;

    .line 81
    .line 82
    invoke-direct {v0, p1, p0}, Lef5;-><init>(Lzc2;Lff5;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lzc2;->b(Laj8;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method
