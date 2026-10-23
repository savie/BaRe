.class public final Lmg;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lix6;

.field public g:Llg;

.field public h:Z

.field public i:Lig;

.field public j:Lzf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lfg;

    .line 10
    .line 11
    invoke-direct {v1}, Lfg;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lmg;->e:Lex6;

    .line 18
    .line 19
    new-instance v0, Lix6;

    .line 20
    .line 21
    invoke-direct {v0}, Lix6;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lmg;->f:Lix6;

    .line 25
    .line 26
    new-instance v0, Lfg;

    .line 27
    .line 28
    invoke-direct {v0}, Lfg;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lmg;->i:Lig;

    .line 32
    .line 33
    return-void
.end method

.method public static k(Landroid/net/Uri;Lq63;Ljava/lang/String;)V
    .locals 5

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
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :try_start_0
    sget-boolean p2, Lq63;->d:Z

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/high16 p2, 0x40000

    .line 25
    .line 26
    :try_start_1
    new-array p2, p2, [B

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 31
    .line 32
    .line 33
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    if-gez v2, :cond_0

    .line 35
    .line 36
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    int-to-long v3, v2

    .line 46
    add-long/2addr v0, v3

    .line 47
    const-wide v3, 0x100000000L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmp-long v3, v0, v3

    .line 53
    .line 54
    if-gtz v3, :cond_1

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :try_start_3
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string p2, "APK import file is too large"

    .line 62
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :catchall_1
    move-exception p2

    .line 70
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 71
    :catchall_2
    move-exception v0

    .line 72
    :try_start_5
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :goto_1
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 77
    :catchall_3
    move-exception p2

    .line 78
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :cond_2
    invoke-static {p2}, Lg84;->f(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static n(Landroid/net/Uri;Lq63;)Lzh;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "import.apks"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unable to open APKS file"

    .line 10
    .line 11
    move-object/from16 v3, p0

    .line 12
    .line 13
    invoke-static {v3, v1, v2}, Lmg;->k(Landroid/net/Uri;Lq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "extracted"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_f

    .line 27
    .line 28
    invoke-virtual {v1}, Lq63;->j()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_e

    .line 33
    .line 34
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_d

    .line 39
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v6, Ljava/util/zip/ZipFile;

    .line 56
    .line 57
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v6, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v7, Lgl1;

    .line 72
    .line 73
    invoke-direct {v7, v1}, Lgl1;-><init>(Ljava/util/Enumeration;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lj77;

    .line 77
    .line 78
    invoke-direct {v1, v7}, Lj77;-><init>(Ljava/util/Iterator;)V

    .line 79
    .line 80
    .line 81
    new-instance v7, Lws1;

    .line 82
    .line 83
    invoke-direct {v7, v1}, Lws1;-><init>(Lf77;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Lws1;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v7, 0x0

    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    move v10, v7

    .line 94
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    const/4 v12, 0x1

    .line 99
    if-eqz v11, :cond_b

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 106
    .line 107
    add-int/2addr v10, v12

    .line 108
    const/16 v12, 0x200

    .line 109
    .line 110
    if-gt v10, v12, :cond_a

    .line 111
    .line 112
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-nez v12, :cond_9

    .line 117
    .line 118
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v12}, Ltu0;->C(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    const-string v14, "base.apk"

    .line 152
    .line 153
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const-string v15, ".apk"

    .line 158
    .line 159
    if-nez v14, :cond_1

    .line 160
    .line 161
    :try_start_1
    const-string v14, "base-master.apk"

    .line 162
    .line 163
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-eqz v14, :cond_2

    .line 168
    .line 169
    :cond_1
    const/16 p0, 0x0

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_2
    invoke-static {v12, v15, v7}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-eqz v14, :cond_3

    .line 177
    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const/16 p0, 0x0

    .line 181
    .line 182
    const-string v3, "split_"

    .line 183
    .line 184
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    goto :goto_2

    .line 198
    :cond_3
    const/16 p0, 0x0

    .line 199
    .line 200
    invoke-static {v12}, Ltu0;->n(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    :goto_1
    move-object v3, v12

    .line 204
    :goto_2
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    if-eqz v13, :cond_8

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lq63;->h()Z

    .line 215
    .line 216
    .line 217
    invoke-static {v6, v11, v3}, Ltu0;->l(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lq63;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v13

    .line 221
    add-long/2addr v8, v13

    .line 222
    const-wide v13, 0x100000000L

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    cmp-long v11, v8, v13

    .line 228
    .line 229
    if-gtz v11, :cond_7

    .line 230
    .line 231
    invoke-static {v12, v15, v7}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-eqz v11, :cond_5

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const/16 v11, 0x100

    .line 245
    .line 246
    if-gt v3, v11, :cond_4

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_4
    const-string v0, "APKS archive has too many APK files"

    .line 251
    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v1

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    move-object v1, v0

    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_5
    invoke-static {v12}, Ltu0;->n(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-eqz v11, :cond_0

    .line 267
    .line 268
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    const/16 v11, 0x8

    .line 276
    .line 277
    if-gt v3, v11, :cond_6

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_6
    const-string v0, "APKS archive has too many metadata files"

    .line 282
    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v1

    .line 289
    :cond_7
    const-string v0, "APKS archive is too large"

    .line 290
    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v1

    .line 297
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v1, "Duplicate APKS archive entry: "

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v1

    .line 324
    :cond_9
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v2, "Directories are not supported in APKS archives: "

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v1

    .line 355
    :cond_a
    const-string v0, "APKS archive has too many entries"

    .line 356
    .line 357
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 358
    .line 359
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :cond_b
    const/16 p0, 0x0

    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_c

    .line 373
    .line 374
    new-instance v1, Lzh;

    .line 375
    .line 376
    new-instance v3, Lxg;

    .line 377
    .line 378
    invoke-direct {v3, v7}, Lxg;-><init>(I)V

    .line 379
    .line 380
    .line 381
    new-instance v5, Lyg;

    .line 382
    .line 383
    invoke-direct {v5, v3, v7}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 384
    .line 385
    .line 386
    invoke-static {v2, v5}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    new-instance v3, Ly09;

    .line 391
    .line 392
    invoke-direct {v3, v12}, Ly09;-><init>(I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v4, v3}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-direct {v1, v0, v2, v3}, Lzh;-><init>(Lq63;Ljava/util/List;Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    return-object v1

    .line 403
    :cond_c
    const-string v0, "APKS archive does not contain APK files"

    .line 404
    .line 405
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-object p0

    .line 409
    :goto_3
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 410
    :catchall_1
    move-exception v0

    .line 411
    invoke-static {v6, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :cond_d
    const/16 p0, 0x0

    .line 416
    .line 417
    const-string v1, "Unable to create APKS extraction directory: "

    .line 418
    .line 419
    invoke-static {v0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    return-object p0

    .line 427
    :cond_e
    const/16 p0, 0x0

    .line 428
    .line 429
    const-string v0, "APKS file does not exist: "

    .line 430
    .line 431
    invoke-static {v1, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    return-object p0

    .line 439
    :cond_f
    const/16 p0, 0x0

    .line 440
    .line 441
    const-string v0, "Unable to create APKS import directory"

    .line 442
    .line 443
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->j:Lzf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lzf;->a:Lq63;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq63;->h()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmg;->j:Lzf;

    .line 12
    .line 13
    invoke-super {p0}, La55;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j(Lzf;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lzf;->a:Lq63;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq63;->h()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmg;->j:Lzf;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, v0, Lzf;->a:Lq63;

    .line 12
    .line 13
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p1, p1, Lzf;->a:Lq63;

    .line 18
    .line 19
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    iput-object v0, p0, Lmg;->j:Lzf;

    .line 32
    .line 33
    return-void
.end method

.method public final l()Lbg;
    .locals 1

    .line 1
    iget-object p0, p0, Lmg;->i:Lig;

    .line 2
    .line 3
    instance-of v0, p0, Lfg;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lfg;

    .line 8
    .line 9
    iget-object p0, p0, Lfg;->b:Lbg;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Lgg;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Lgg;

    .line 17
    .line 18
    iget-object p0, p0, Lgg;->a:Lbg;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    instance-of v0, p0, Leg;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p0, Leg;

    .line 26
    .line 27
    iget-object p0, p0, Leg;->a:Lbg;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    instance-of v0, p0, Lhg;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    check-cast p0, Lhg;

    .line 35
    .line 36
    iget-object p0, p0, Lhg;->a:Lbg;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final m(Lzf;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmg;->j:Lzf;

    .line 6
    .line 7
    new-instance v0, Lfg;

    .line 8
    .line 9
    const v1, 0x7f13004d

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lmg;->l()Lbg;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Lfg;-><init>(ILbg;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lmg;->o(Lig;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lzn4;->a:Lzn4;

    .line 23
    .line 24
    new-instance v0, Lkg;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1, p0, p1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lzn4;->d(Lbt3;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final o(Lig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmg;->i:Lig;

    .line 2
    .line 3
    iget-object p0, p0, Lmg;->e:Lex6;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
