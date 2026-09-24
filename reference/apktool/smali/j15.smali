.class public final Lj15;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loe8;
.implements Lgg7;
.implements Lxv6;
.implements Lhr9;


# static fields
.field public static b:Lj15;

.field public static final c:Lj15;

.field public static final d:Lj15;

.field public static final e:Lj15;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj15;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lj15;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lj15;->c:Lj15;

    .line 9
    .line 10
    new-instance v0, Lj15;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lj15;-><init>(IZ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lj15;->d:Lj15;

    .line 17
    .line 18
    new-instance v0, Lj15;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lj15;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lj15;->e:Lj15;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 14
    .line 15
    const-string v0, "Unsupported key length: "

    .line 16
    .line 17
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    iput p1, p0, Lj15;->a:I

    .line 26
    .line 27
    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 28
    iput p1, p0, Lj15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lj15;->e()Lj15;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, p0, p1}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static declared-synchronized e()Lj15;
    .locals 4

    .line 1
    const-class v0, Lj15;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lj15;->b:Lj15;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    new-instance v1, Lj15;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    :goto_0
    const/4 v3, 0x2

    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const-string v3, "AppAuth"

    .line 18
    .line 19
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    iput v2, v1, Lj15;->a:I

    .line 31
    .line 32
    sput-object v1, Lj15;->b:Lj15;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    sget-object v1, Lj15;->b:Lj15;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-object v1

    .line 41
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method

.method public static g()Lj15;
    .locals 15

    .line 1
    const-string v0, "Failed to get app version for libraryName: firebase-auth"

    .line 2
    .line 3
    const-string v1, "firebase-auth version is "

    .line 4
    .line 5
    new-instance v2, Lj15;

    .line 6
    .line 7
    sget-object v3, Ljt4;->c:Ljt4;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v4, "LibraryVersion"

    .line 13
    .line 14
    sget-object v5, Ljt4;->b:Ldz3;

    .line 15
    .line 16
    const-string v6, "Please provide a valid libraryName"

    .line 17
    .line 18
    const-string v7, "firebase-auth"

    .line 19
    .line 20
    invoke-static {v7, v6}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v3, Ljt4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v8, 0x3

    .line 30
    const/4 v9, 0x2

    .line 31
    const-string v10, "UNKNOWN"

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_0
    new-instance v6, Ljava/util/Properties;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v11, 0x38

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    :try_start_0
    const-string v13, "/firebase-auth.properties"

    .line 52
    .line 53
    const-class v14, Ljt4;

    .line 54
    .line 55
    invoke-virtual {v14, v13}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    if-eqz v13, :cond_2

    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v6, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 62
    .line 63
    .line 64
    const-string v14, "version"

    .line 65
    .line 66
    invoke-virtual {v6, v14, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/16 v14, 0x19

    .line 79
    .line 80
    add-int/2addr v14, v6

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v6, v5, Ldz3;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    iget-object v6, v5, Ldz3;->c:Ljava/lang/String;

    .line 105
    .line 106
    if-nez v6, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :goto_0
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    move-object v6, v12

    .line 121
    move-object v12, v13

    .line 122
    goto :goto_3

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v6, v5, Ldz3;->b:Ljava/lang/String;

    .line 136
    .line 137
    const/4 v14, 0x5

    .line 138
    invoke-static {v6, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_6

    .line 143
    .line 144
    iget-object v6, v5, Ldz3;->c:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v6, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_1
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :goto_2
    move-object v12, v13

    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :catch_1
    move-exception v1

    .line 164
    move-object v6, v12

    .line 165
    :goto_3
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v11, v5, Ldz3;->b:Ljava/lang/String;

    .line 178
    .line 179
    const/4 v13, 0x6

    .line 180
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_5

    .line 185
    .line 186
    iget-object v11, v5, Ldz3;->c:Ljava/lang/String;

    .line 187
    .line 188
    if-nez v11, :cond_4

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_4
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_4
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    :cond_5
    move-object v13, v12

    .line 199
    move-object v12, v6

    .line 200
    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    .line 201
    .line 202
    :try_start_3
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    .line 204
    .line 205
    :catch_2
    :cond_7
    if-nez v12, :cond_a

    .line 206
    .line 207
    iget-object v0, v5, Ldz3;->b:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    iget-object v0, v5, Ldz3;->c:Ljava/lang/String;

    .line 216
    .line 217
    const-string v1, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    .line 218
    .line 219
    if-nez v0, :cond_8

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :goto_6
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_9
    move-object v0, v10

    .line 230
    goto :goto_7

    .line 231
    :cond_a
    move-object v0, v12

    .line 232
    :goto_7
    invoke-virtual {v3, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_b

    .line 240
    .line 241
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_c

    .line 246
    .line 247
    :cond_b
    const-string v0, "-1"

    .line 248
    .line 249
    :cond_c
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 250
    .line 251
    .line 252
    :try_start_4
    invoke-static {}, Lfu;->i()Lfu;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Lfu;->j(Ljava/lang/String;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    const/4 v4, 0x1

    .line 265
    if-ne v3, v4, :cond_d

    .line 266
    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    goto :goto_a

    .line 272
    :catch_3
    move-exception v1

    .line 273
    goto :goto_9

    .line 274
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-lt v3, v8, :cond_e

    .line 279
    .line 280
    const/4 v3, 0x0

    .line 281
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    const v5, 0xf4240

    .line 292
    .line 293
    .line 294
    mul-int/2addr v3, v5

    .line 295
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    mul-int/lit16 v4, v4, 0x3e8

    .line 306
    .line 307
    add-int/2addr v4, v3

    .line 308
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    add-int/2addr v0, v4

    .line 319
    goto :goto_a

    .line 320
    :goto_9
    const-string v3, "LibraryVersionContainer"

    .line 321
    .line 322
    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_e

    .line 327
    .line 328
    const-string v4, "Version code parsing failed for: %s with exception %s."

    .line 329
    .line 330
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    :cond_e
    const/4 v0, -0x1

    .line 342
    :goto_a
    iput v0, v2, Lj15;->a:I

    .line 343
    .line 344
    return-object v2

    .line 345
    :goto_b
    if-eqz v12, :cond_f

    .line 346
    .line 347
    :try_start_5
    invoke-interface {v12}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 348
    .line 349
    .line 350
    :catch_4
    :cond_f
    throw v0
.end method


# virtual methods
.method public a([BIIZI)Lyy8;
    .locals 1

    .line 1
    iget p0, p0, Lj15;->a:I

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    if-eq p0, p5, :cond_2

    .line 7
    .line 8
    const/4 p5, 0x2

    .line 9
    if-ne p0, p5, :cond_1

    .line 10
    .line 11
    new-instance p0, Lpe8;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lpe8;->c([BII)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lpe8;->h([BII)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 27
    .line 28
    const-string p2, "Unknown UnparseableExtraField key: "

    .line 29
    .line 30
    invoke-static {p0, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    .line 41
    .line 42
    const-string p1, ".  Block length of "

    .line 43
    .line 44
    const-string p4, " bytes exceeds remaining data of "

    .line 45
    .line 46
    const-string v0, "Bad extra field starting at "

    .line 47
    .line 48
    invoke-static {v0, p2, p1, p4, p5}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    add-int/lit8 p3, p3, -0x4

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " bytes."

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public b([BII)I
    .locals 6

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x4

    .line 3
    .line 4
    move v0, p2

    .line 5
    :goto_0
    if-gt v0, p3, :cond_3

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x3

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v2, v1, 0xfc

    .line 12
    .line 13
    const/16 v3, 0x94

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v0}, Lpe4;->p([BI)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lj15;->a:I

    .line 22
    .line 23
    add-int/2addr v2, v0

    .line 24
    sub-int/2addr v2, p2

    .line 25
    ushr-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    neg-int v2, v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    const v2, 0x3ffffff

    .line 30
    .line 31
    .line 32
    and-int/2addr v1, v2

    .line 33
    const/high16 v2, -0x6c000000

    .line 34
    .line 35
    or-int/2addr v1, v2

    .line 36
    invoke-static {p1, v0, v1}, Lpe4;->C([BII)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    and-int/lit16 v1, v1, 0x9f

    .line 41
    .line 42
    const/16 v2, 0x90

    .line 43
    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    invoke-static {p1, v0}, Lpe4;->p([BI)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    ushr-int/lit8 v2, v1, 0x1d

    .line 51
    .line 52
    and-int/lit8 v2, v2, 0x3

    .line 53
    .line 54
    ushr-int/lit8 v3, v1, 0x3

    .line 55
    .line 56
    const v4, 0x1ffffc

    .line 57
    .line 58
    .line 59
    and-int/2addr v3, v4

    .line 60
    or-int/2addr v2, v3

    .line 61
    const/high16 v3, 0x20000

    .line 62
    .line 63
    add-int v4, v2, v3

    .line 64
    .line 65
    const/high16 v5, 0x1c0000

    .line 66
    .line 67
    and-int/2addr v4, v5

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget v4, p0, Lj15;->a:I

    .line 72
    .line 73
    add-int/2addr v4, v0

    .line 74
    sub-int/2addr v4, p2

    .line 75
    ushr-int/lit8 v4, v4, 0xc

    .line 76
    .line 77
    neg-int v4, v4

    .line 78
    add-int/2addr v2, v4

    .line 79
    const v4, -0x6fffffe1

    .line 80
    .line 81
    .line 82
    and-int/2addr v1, v4

    .line 83
    and-int/lit8 v4, v2, 0x3

    .line 84
    .line 85
    shl-int/lit8 v4, v4, 0x1d

    .line 86
    .line 87
    or-int/2addr v1, v4

    .line 88
    const v4, 0x3fffc

    .line 89
    .line 90
    .line 91
    and-int/2addr v4, v2

    .line 92
    shl-int/lit8 v4, v4, 0x3

    .line 93
    .line 94
    or-int/2addr v1, v4

    .line 95
    and-int/2addr v2, v3

    .line 96
    neg-int v2, v2

    .line 97
    const/high16 v3, 0xe00000

    .line 98
    .line 99
    and-int/2addr v2, v3

    .line 100
    or-int/2addr v1, v2

    .line 101
    invoke-static {p1, v0, v1}, Lpe4;->C([BII)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    sub-int/2addr v0, p2

    .line 108
    iget p1, p0, Lj15;->a:I

    .line 109
    .line 110
    add-int/2addr p1, v0

    .line 111
    iput p1, p0, Lj15;->a:I

    .line 112
    .line 113
    return v0
.end method

.method public c([B[B[BI[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget p0, p0, Lj15;->a:I

    .line 3
    .line 4
    if-ne v0, p0, :cond_4

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    invoke-static {p0}, Lu48;->c(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-static {p1}, Lyk9;->c([B)Ljavax/crypto/spec/SecretKeySpec;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v0, p2

    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    array-length v0, p3

    .line 24
    add-int/lit8 v2, p4, 0x10

    .line 25
    .line 26
    if-lt v0, v2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    array-length v1, p2

    .line 30
    invoke-static {p2, v0, v1}, Lyk9;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {}, Lyk9;->b()Ljavax/crypto/Cipher;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    array-length p0, p5

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, p5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 45
    .line 46
    .line 47
    :cond_0
    array-length p0, p3

    .line 48
    sub-int/2addr p0, p4

    .line 49
    invoke-virtual {v0, p3, p4, p0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    const-string p0, "ciphertext too short"

    .line 55
    .line 56
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_2
    const-string p0, "iv is wrong size"

    .line 61
    .line 62
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    const-string p0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    .line 67
    .line 68
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 73
    .line 74
    array-length p1, p1

    .line 75
    const-string p2, "Unexpected key length: "

    .line 76
    .line 77
    invoke-static {p1, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public varargs f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lj15;->a:I

    .line 2
    .line 3
    if-le p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    array-length p0, p4

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ge p0, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :goto_0
    if-eqz p2, :cond_2

    .line 16
    .line 17
    const-string p0, "\n"

    .line 18
    .line 19
    invoke-static {p3, p0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    :cond_2
    const-string p0, "AppAuth"

    .line 35
    .line 36
    invoke-static {p1, p0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public getN()I
    .locals 0

    .line 1
    iget p0, p0, Lj15;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public zza()I
    .locals 0

    .line 1
    iget p0, p0, Lj15;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public zzc()[B
    .locals 1

    .line 1
    iget p0, p0, Lj15;->a:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lor9;->j:[B

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "Could not determine HPKE AEAD ID"

    .line 15
    .line 16
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lor9;->i:[B

    .line 22
    .line 23
    return-object p0
.end method
