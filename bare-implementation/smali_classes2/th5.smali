.class public abstract Lth5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->ZSTD:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    sput-object v0, Lth5;->a:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 4
    .line 5
    return-void
.end method

.method public static a(Lq63;Lq63;Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;ZLqw;)Lq63;
    .locals 21

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
    const-string v3, "Unable to open zstd output fd for "

    .line 8
    .line 9
    new-instance v4, Lq63;

    .line 10
    .line 11
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/16 v6, 0x2e

    .line 16
    .line 17
    invoke-static {v6, v5, v5}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v4, v6, v1, v5}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lq63;->h()Z

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->getDecompressedSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    new-instance v5, Lsh5;

    .line 33
    .line 34
    invoke-direct {v5, v7, v8, v2}, Lsh5;-><init>(JLqw;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    invoke-virtual {v0, v9}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    const/4 v11, 0x0

    .line 46
    if-eqz v10, :cond_5

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v4, v6}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 49
    .line 50
    .line 51
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v6, :cond_4

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v13, Lsn1;

    .line 69
    .line 70
    const/4 v14, 0x5

    .line 71
    invoke-direct {v13, v5, v14}, Lsn1;-><init>(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_2
    new-instance v5, Lm27;

    .line 75
    .line 76
    invoke-direct {v5, v13}, Lm27;-><init>(Lsn1;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v12, v5}, Lcom/swiftapps/sba/SbaZstdNative;->a(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lm27;)[J

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lge;->B([J)Ln27;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_3
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-interface {v10}, Ljava/io/Closeable;->close()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lq63;->j()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_1

    .line 97
    .line 98
    const-string v3, "Failed to decompress file "

    .line 99
    .line 100
    invoke-static {v4, v3}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 105
    .line 106
    const/16 v16, 0x4

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const-string v13, "MultiCompressor"

    .line 111
    .line 112
    const/4 v15, 0x0

    .line 113
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lak;

    .line 117
    .line 118
    const/16 v5, 0x1c

    .line 119
    .line 120
    invoke-direct {v3, v4, v5}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    const/16 v4, 0x8

    .line 124
    .line 125
    const-string v5, "MultiCompressor"

    .line 126
    .line 127
    const-string v6, "MultiCompressor.decompress"

    .line 128
    .line 129
    invoke-static {v5, v6, v9, v3, v4}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    if-eqz p3, :cond_0

    .line 133
    .line 134
    const/16 v19, 0x4

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const-string v16, "MultiCompressor"

    .line 139
    .line 140
    const-string v17, "Retrying decompression"

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    move-object v15, v12

    .line 145
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    move-object/from16 v4, p2

    .line 150
    .line 151
    invoke-static {v0, v1, v4, v3, v2}, Lth5;->a(Lq63;Lq63;Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;ZLqw;)Lq63;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    :cond_0
    invoke-static {v14}, Ll0;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v11

    .line 160
    :cond_1
    invoke-virtual {v4}, Lq63;->A()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    const-wide/16 v5, 0x0

    .line 165
    .line 166
    cmp-long v3, v1, v5

    .line 167
    .line 168
    if-lez v3, :cond_3

    .line 169
    .line 170
    cmp-long v3, v1, v7

    .line 171
    .line 172
    if-eqz v3, :cond_2

    .line 173
    .line 174
    sget-object v3, Lp93;->a:Lp93;

    .line 175
    .line 176
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v6, " ("

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v3, ")"

    .line 201
    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 239
    .line 240
    const-string v2, "Decompressed file size mismatch: Expected="

    .line 241
    .line 242
    const-string v3, ", Actual="

    .line 243
    .line 244
    invoke-static {v2, v5, v3, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    const/4 v10, 0x4

    .line 249
    const/4 v11, 0x0

    .line 250
    const-string v7, "MultiCompressor"

    .line 251
    .line 252
    const/4 v9, 0x0

    .line 253
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_2
    invoke-virtual {v0}, Lq63;->h()Z

    .line 257
    .line 258
    .line 259
    return-object v4

    .line 260
    :cond_3
    sget-object v0, Lp93;->a:Lp93;

    .line 261
    .line 262
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "Decompressed file has invalid size: "

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    return-object v11

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    move-object v1, v0

    .line 282
    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    :try_start_4
    new-instance v1, Lyy6;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v4, "Native zstd decompress failed: "

    .line 293
    .line 294
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    :goto_0
    move-object v1, v0

    .line 309
    goto :goto_1

    .line 310
    :catchall_1
    move-exception v0

    .line 311
    goto :goto_0

    .line 312
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 313
    :catchall_2
    move-exception v0

    .line 314
    :try_start_6
    invoke-static {v6, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 340
    :goto_2
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 341
    :catchall_3
    move-exception v0

    .line 342
    invoke-static {v10, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_5
    const-string v1, "Unable to open zstd input fd for "

    .line 347
    .line 348
    invoke-static {v0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    return-object v11
.end method

.method public static b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Lq63;

    .line 30
    .line 31
    invoke-virtual {v4}, Lq63;->m()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "compressed"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, v4

    .line 67
    check-cast v5, Lq63;

    .line 68
    .line 69
    invoke-virtual {v5}, Lq63;->m()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "meta"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/16 v3, 0xa

    .line 86
    .line 87
    invoke-static {v1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3}, Lx65;->q0(I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/16 v4, 0x10

    .line 96
    .line 97
    if-ge v3, v4, :cond_4

    .line 98
    .line 99
    move v3, v4

    .line 100
    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lq63;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    move-object v7, v6

    .line 136
    check-cast v7, Lq63;

    .line 137
    .line 138
    invoke-virtual {v7}, Lq63;->p()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v3}, Lq63;->p()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    const-string v9, ".meta"

    .line 147
    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_5

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    const/4 v6, 0x0

    .line 160
    :goto_3
    check-cast v6, Lq63;

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    sget-object v5, Lw14;->a:Lgv7;

    .line 165
    .line 166
    const-class v5, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 167
    .line 168
    invoke-static {v6, v5}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 173
    .line 174
    if-eqz v5, :cond_7

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 178
    .line 179
    const-string v5, "Metadata null for file "

    .line 180
    .line 181
    invoke-static {v3, v5}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    const/4 v10, 0x4

    .line 186
    const/4 v11, 0x0

    .line 187
    const-string v7, "MultiCompressor"

    .line 188
    .line 189
    const/4 v9, 0x0

    .line 190
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    new-instance v12, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 194
    .line 195
    invoke-virtual {v3}, Lq63;->A()J

    .line 196
    .line 197
    .line 198
    move-result-wide v14

    .line 199
    const/16 v16, 0x1

    .line 200
    .line 201
    const/16 v17, 0x0

    .line 202
    .line 203
    const/4 v13, 0x0

    .line 204
    invoke-direct/range {v12 .. v17}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;-><init>(Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    .line 206
    .line 207
    move-object v5, v12

    .line 208
    :goto_4
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v3, Lkh6;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    const-wide/16 v6, 0x0

    .line 231
    .line 232
    move-wide v8, v6

    .line 233
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-eqz v10, :cond_9

    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    check-cast v10, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 244
    .line 245
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->getDecompressedSize()J

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    add-long/2addr v8, v10

    .line 250
    goto :goto_5

    .line 251
    :cond_9
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_a

    .line 264
    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Ljava/util/Map$Entry;

    .line 270
    .line 271
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    check-cast v10, Lq63;

    .line 276
    .line 277
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 282
    .line 283
    new-instance v11, Lqw;

    .line 284
    .line 285
    invoke-direct {v11, v3, v0, v8, v9}, Lqw;-><init>(Lkh6;Lrt3;J)V

    .line 286
    .line 287
    .line 288
    const/4 v12, 0x1

    .line 289
    move-object/from16 v13, p1

    .line 290
    .line 291
    invoke-static {v10, v13, v5, v12, v11}, Lth5;->a(Lq63;Lq63;Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;ZLqw;)Lq63;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    iget-wide v10, v3, Lkh6;->a:J

    .line 299
    .line 300
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->getDecompressedSize()J

    .line 301
    .line 302
    .line 303
    move-result-wide v14

    .line 304
    add-long/2addr v14, v10

    .line 305
    iput-wide v14, v3, Lkh6;->a:J

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_a
    if-eqz v0, :cond_b

    .line 309
    .line 310
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-interface {v0, v3, v4, v5}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_c

    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Lq63;

    .line 340
    .line 341
    invoke-virtual {v2}, Lq63;->h()Z

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_c
    return-object v1
.end method

.method public static c(Ljava/util/ArrayList;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, Lq63;

    .line 25
    .line 26
    invoke-virtual {v2}, Lq63;->m()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "meta"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lq63;

    .line 62
    .line 63
    sget-object v2, Lw14;->a:Lgv7;

    .line 64
    .line 65
    const-class v2, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 66
    .line 67
    invoke-static {v1, v2}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;

    .line 96
    .line 97
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->getDecompressedSize()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    add-long/2addr v0, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    return-wide v0
.end method
