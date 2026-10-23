.class public final Lq63;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static d:Z

.field public static e:Z

.field public static final f:Lp63;

.field public static final k:Lgv7;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I

.field public c:Lorg/swiftapps/filesystem/File$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp63;

    .line 2
    .line 3
    invoke-direct {v0}, Lp63;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq63;->f:Lp63;

    .line 7
    .line 8
    new-instance v0, Lzk;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lgv7;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lq63;->k:Lgv7;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(ILq63;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p2}, Lq63;->v()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lq63;-><init>(Ljava/io/File;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lq63;->a:Ljava/io/File;

    .line 24
    iput p2, p0, Lq63;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lq63;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lq63;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lq63;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public static E(Lq63;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Lq63;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "mkdirs"

    .line 7
    .line 8
    const-string v3, ")"

    .line 9
    .line 10
    const-string v4, ", Root:"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v6, "File"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lq63;->x()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Ljr7;

    .line 33
    .line 34
    sget v8, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 35
    .line 36
    invoke-static {}, Lk55;->k()Lzd7;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    invoke-virtual {v8}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ne v8, v1, :cond_0

    .line 47
    .line 48
    move v8, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v8, v5

    .line 51
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v10, "File "

    .line 54
    .line 55
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v10, " exists and is not a directory. Unable to create directory. (SuFile:"

    .line 62
    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v8, v3}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v3, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcy0;->b:Lrt3;

    .line 82
    .line 83
    invoke-interface {v0, v6, v2, v3}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0}, Lq63;->x()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    instance-of v0, v0, Ljr7;

    .line 116
    .line 117
    sget v8, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 118
    .line 119
    invoke-static {}, Lk55;->k()Lzd7;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    if-eqz v8, :cond_2

    .line 124
    .line 125
    invoke-virtual {v8}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-ne v8, v1, :cond_2

    .line 130
    .line 131
    move v8, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    move v8, v5

    .line 134
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v10, "Unable to create directory "

    .line 137
    .line 138
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v10, ". (SuFile:"

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v8, v3}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v3, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lcy0;->b:Lrt3;

    .line 165
    .line 166
    invoke-interface {v0, v6, v2, v3}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    move-object v3, v7

    .line 171
    :goto_2
    if-eqz v3, :cond_7

    .line 172
    .line 173
    const-string v0, "Error in mkdirs, retrying..."

    .line 174
    .line 175
    sget-object v2, Lcy0;->b:Lrt3;

    .line 176
    .line 177
    invoke-interface {v2, v6, v0, v7}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v2, "mkdir -pv "

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget v2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 195
    .line 196
    invoke-static {}, Lk55;->k()Lzd7;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_4

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-ne v2, v1, :cond_4

    .line 207
    .line 208
    sget-object v2, Lo93;->ROOT:Lo93;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_4
    sget-object v2, Lo93;->NORMAL:Lo93;

    .line 212
    .line 213
    :goto_3
    invoke-static {v0, v2}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lq63;->j()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_5

    .line 222
    .line 223
    invoke-virtual {p0}, Lq63;->x()Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_5

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_5
    move v1, v5

    .line 231
    :goto_4
    if-nez v1, :cond_6

    .line 232
    .line 233
    iget-object v3, v0, Lub;->b:Ljava/lang/Object;

    .line 234
    .line 235
    move-object v8, v3

    .line 236
    check-cast v8, Ljava/util/List;

    .line 237
    .line 238
    const/4 v12, 0x0

    .line 239
    const/16 v13, 0x3f

    .line 240
    .line 241
    const/4 v9, 0x0

    .line 242
    const/4 v10, 0x0

    .line 243
    const/4 v11, 0x0

    .line 244
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget v0, v0, Lub;->a:I

    .line 253
    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v5, "mkdir command failed for path: "

    .line 257
    .line 258
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p0, ". Shell: "

    .line 265
    .line 266
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p0, ". Exit code: "

    .line 273
    .line 274
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p0, ". Output: "

    .line 281
    .line 282
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    sget-object v0, Lcy0;->b:Lrt3;

    .line 293
    .line 294
    invoke-interface {v0, v6, p0, v7}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    return v1

    .line 298
    :cond_6
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    const-string v0, "mkdir command successful for path: "

    .line 303
    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    return v1

    .line 312
    :cond_7
    if-eqz v3, :cond_9

    .line 313
    .line 314
    invoke-virtual {p0}, Lq63;->j()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_8

    .line 319
    .line 320
    invoke-virtual {p0}, Lq63;->x()Z

    .line 321
    .line 322
    .line 323
    move-result p0

    .line 324
    if-eqz p0, :cond_8

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_8
    throw v3

    .line 328
    :cond_9
    :goto_5
    return v1
.end method

.method public static H(Lq63;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_0
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v1}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p0}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    invoke-static {p0, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public static K(Lq63;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public static final s(Lq63;I)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, "getParcelDescriptorRoot ("

    .line 4
    .line 5
    const-string v2, "File"

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Laq6;->c()Lz84;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v3, v4, p1}, Lz84;->getParcelFileDescriptor(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :catch_2
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcy0;->b:Lrt3;

    .line 57
    .line 58
    invoke-interface {p1, v2, p0, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcy0;->b:Lrt3;

    .line 83
    .line 84
    invoke-interface {p1, v2, p0, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    sget-object v0, Lcy0;->b:Lrt3;

    .line 104
    .line 105
    invoke-interface {v0, v2, p0, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_0
    :goto_3
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method


# virtual methods
.method public final A()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final B()Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    aget-object v4, v0, v3

    .line 26
    .line 27
    new-instance v5, Lq63;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lq63;->o()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-direct {v5, v4, v6}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v1

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public final C(Lmt3;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    aget-object v4, v0, v3

    .line 26
    .line 27
    new-instance v5, Lq63;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lq63;->o()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-direct {v5, v4, v6}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {p1, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    return-object p0

    .line 85
    :cond_3
    const/4 p0, 0x0

    .line 86
    return-object p0
.end method

.method public final D(Ljava/io/FilenameFilter;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    array-length v1, p1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    .line 25
    aget-object v3, p1, v2

    .line 26
    .line 27
    new-instance v4, Lq63;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lq63;->o()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-direct {v4, v3, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public final F(Z)Ljava/io/OutputStream;
    .locals 4

    .line 1
    const/high16 v0, 0x40000

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    instance-of v1, v1, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lq63;->t()Lq63;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lq63;->E(Lq63;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 77
    .line 78
    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eqz p1, :cond_3

    .line 82
    .line 83
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 84
    .line 85
    invoke-direct {p1, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_3
    return-object v2

    .line 90
    :cond_4
    new-instance p1, Lmn5;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "Unable to get output stream for file="

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v2, Lcy0;->b:Lrt3;

    .line 107
    .line 108
    const-string v3, "File"

    .line 109
    .line 110
    invoke-interface {v2, v3, v1, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v1, Ljava/io/File;

    .line 118
    .line 119
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Ljd4;->E(Ljava/io/File;)Ljava/io/OutputStream;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    instance-of v1, p1, Ljava/io/BufferedOutputStream;

    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    check-cast p1, Ljava/io/BufferedOutputStream;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catch_1
    move-exception p1

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 139
    .line 140
    invoke-direct {v1, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .line 142
    .line 143
    move-object p1, v1

    .line 144
    goto :goto_4

    .line 145
    :goto_3
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "Unable to get SuFileOutputStream for file="

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v2, Lcy0;->b:Lrt3;

    .line 156
    .line 157
    invoke-interface {v2, v3, v1, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance p1, Ly45;

    .line 161
    .line 162
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {p1, p0}, Ly45;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance p0, Ljava/io/BufferedOutputStream;

    .line 170
    .line 171
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 172
    .line 173
    .line 174
    move-object p1, p0

    .line 175
    :goto_4
    return-object p1
.end method

.method public final G()Lxs3;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq63;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lq63;->t()Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance p0, Lws3;

    .line 27
    .line 28
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    check-cast v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;->getFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "rw"

    .line 37
    .line 38
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lws3;-><init>(Ljava/io/RandomAccessFile;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-virtual {p0, v0}, Lq63;->l(I)Lc73;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    new-instance p0, Lvs3;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lvs3;-><init>(Lc73;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    const-string v0, "Unable to open random writer for file="

    .line 63
    .line 64
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_4
    const-string v0, "Random writer requires a writable file: "

    .line 77
    .line 78
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v2
.end method

.method public final I(Lq63;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Ljr7;

    .line 47
    .line 48
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final J(Ljava/lang/String;)Lq63;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq63;

    .line 5
    .line 6
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lq63;->o()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-direct {v0, v1, p1, p0}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final a()Ljava/io/BufferedReader;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/io/BufferedReader;

    .line 16
    .line 17
    const/high16 v1, 0x40000

    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lq63;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    xor-int/2addr p0, v1

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_1
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lq63;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    xor-int/2addr p0, v1

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_1
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_0
.end method

.method public final d(Lq63;Lkl;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq63;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lq63;->h()Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lq63;->t()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p2}, Lq63;->e(Ljava/io/OutputStream;Lmt3;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(Ljava/io/OutputStream;Lmt3;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/high16 v0, 0x40000

    .line 7
    .line 8
    :try_start_0
    new-array v0, v0, [B

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-interface {p2, v5}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ltz v5, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p1, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    .line 37
    .line 38
    int-to-long v5, v5

    .line 39
    add-long/2addr v3, v5

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    sub-long v7, v5, v1

    .line 47
    .line 48
    const-wide/32 v9, 0x77359400

    .line 49
    .line 50
    .line 51
    cmp-long v7, v7, v9

    .line 52
    .line 53
    if-ltz v7, :cond_0

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p2, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-wide v1, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    :catchall_2
    move-exception v0

    .line 84
    :try_start_3
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :goto_2
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 89
    :catchall_3
    move-exception p2

    .line 90
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq63;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p1, Lq63;

    .line 16
    .line 17
    invoke-virtual {p1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Lq63;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lq63;->i()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lf13;->b(Ljava/io/File;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lq63;->j()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lq63;->j()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lq63;->i()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return v2

    .line 86
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 87
    return p0

    .line 88
    :cond_4
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Lq63;->i()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 98
    .line 99
    .line 100
    return v2
.end method

.method public final g()Z
    .locals 14

    .line 1
    sget-object v0, Lm70;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lq63;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget-object v2, Lm70;->b:Lg70;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Lg70;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lq63;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v2, v0

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    new-instance v3, Lbn6;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    move-object v2, v3

    .line 33
    :goto_1
    nop

    .line 34
    instance-of v3, v2, Lbn6;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    :cond_2
    check-cast v2, Lq63;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    :cond_3
    :goto_2
    move-object v2, v0

    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_4
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v5, 0x5c

    .line 52
    .line 53
    const/16 v6, 0x2f

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-array v7, v1, [C

    .line 63
    .line 64
    aput-char v6, v7, v3

    .line 65
    .line 66
    invoke-static {v4, v7}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const-string v8, "/"

    .line 75
    .line 76
    if-nez v7, :cond_5

    .line 77
    .line 78
    move-object v4, v8

    .line 79
    :cond_5
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-array v7, v1, [C

    .line 91
    .line 92
    aput-char v6, v7, v3

    .line 93
    .line 94
    invoke-static {v5, v7}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_6

    .line 103
    .line 104
    move-object v5, v8

    .line 105
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_a

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_a

    .line 116
    .line 117
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v5, v4, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_7
    :try_start_1
    invoke-static {v2}, Lq63;->E(Lq63;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lq63;->j()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2}, Lq63;->x()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    move v4, v1

    .line 144
    goto :goto_3

    .line 145
    :catchall_1
    move-exception v4

    .line 146
    goto :goto_4

    .line 147
    :cond_8
    move v4, v3

    .line 148
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    goto :goto_5

    .line 153
    :goto_4
    new-instance v5, Lbn6;

    .line 154
    .line 155
    invoke-direct {v5, v4}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    move-object v4, v5

    .line 159
    :goto_5
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 160
    .line 161
    instance-of v6, v4, Lbn6;

    .line 162
    .line 163
    if-eqz v6, :cond_9

    .line 164
    .line 165
    move-object v4, v5

    .line 166
    :cond_9
    check-cast v4, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_3

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_a
    :goto_6
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const-string v5, "Ignoring unsafe atomic delete trash directory "

    .line 184
    .line 185
    const-string v6, " for "

    .line 186
    .line 187
    invoke-static {v5, v2, v6, v4}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    sget-object v4, Lcy0;->b:Lrt3;

    .line 192
    .line 193
    const-string v5, "AtomicFileDelete"

    .line 194
    .line 195
    invoke-interface {v4, v5, v2, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :goto_7
    if-nez v2, :cond_c

    .line 201
    .line 202
    :cond_b
    move-object v5, v0

    .line 203
    goto/16 :goto_c

    .line 204
    .line 205
    :cond_c
    move v4, v3

    .line 206
    :goto_8
    const/16 v5, 0xa

    .line 207
    .line 208
    if-ge v4, v5, :cond_b

    .line 209
    .line 210
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v6

    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v10, "delete-"

    .line 225
    .line 226
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v6, "-"

    .line 233
    .line 234
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    sget-object v7, Lf51;->a:Ljava/nio/charset/Charset;

    .line 248
    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    array-length v8, v8

    .line 257
    rsub-int v8, v8, 0xff

    .line 258
    .line 259
    if-gez v8, :cond_d

    .line 260
    .line 261
    move v8, v3

    .line 262
    :cond_d
    if-gtz v8, :cond_e

    .line 263
    .line 264
    const-string v5, ""

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_e
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    array-length v7, v7

    .line 275
    if-gt v7, v8, :cond_f

    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    move v9, v3

    .line 284
    move v10, v9

    .line 285
    :goto_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    if-ge v9, v11, :cond_11

    .line 290
    .line 291
    invoke-virtual {v5, v9}, Ljava/lang/String;->codePointAt(I)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    new-instance v13, Ljava/lang/String;

    .line 303
    .line 304
    invoke-direct {v13, v12}, Ljava/lang/String;-><init>([C)V

    .line 305
    .line 306
    .line 307
    sget-object v12, Lf51;->a:Ljava/nio/charset/Charset;

    .line 308
    .line 309
    invoke-virtual {v13, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    array-length v12, v12

    .line 317
    add-int/2addr v10, v12

    .line 318
    if-le v10, v8, :cond_10

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_10
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    add-int/2addr v9, v11

    .line 329
    goto :goto_9

    .line 330
    :cond_11
    :goto_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    :goto_b
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-virtual {v2, v5}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v5}, Lq63;->j()Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-nez v6, :cond_12

    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 350
    .line 351
    goto/16 :goto_8

    .line 352
    .line 353
    :goto_c
    if-nez v5, :cond_13

    .line 354
    .line 355
    invoke-virtual {p0}, Lq63;->f()Z

    .line 356
    .line 357
    .line 358
    move-result p0

    .line 359
    goto/16 :goto_e

    .line 360
    .line 361
    :cond_13
    new-instance v2, Ll70;

    .line 362
    .line 363
    invoke-direct {v2, p0, v0}, Ll70;-><init>(Lq63;Ljv1;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, Li77;

    .line 367
    .line 368
    invoke-direct {v0, v2}, Li77;-><init>(Lqt3;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v0}, Lh77;->x0(Lf77;)Lmn2;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lmn2;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    :cond_14
    move-object v2, v0

    .line 380
    check-cast v2, Lv3;

    .line 381
    .line 382
    invoke-virtual {v2}, Lv3;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_15

    .line 387
    .line 388
    invoke-virtual {v2}, Lv3;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    check-cast v2, Lo93;

    .line 393
    .line 394
    sget-object v4, Lm70;->a:Lgv7;

    .line 395
    .line 396
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v4, v2}, Lm70;->a(Ljava/lang/String;Lo93;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-static {v6, v2}, Lm70;->a(Ljava/lang/String;Lo93;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-static {v4}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v6}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string v8, "mv -f "

    .line 423
    .line 424
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v4, " "

    .line 431
    .line 432
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-static {v4, v2}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v2}, Lub;->a()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_14

    .line 451
    .line 452
    invoke-virtual {p0}, Lq63;->j()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-nez v2, :cond_14

    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_15
    invoke-virtual {p0, v5}, Lq63;->I(Lq63;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_16

    .line 464
    .line 465
    :goto_d
    new-instance v0, Lgj;

    .line 466
    .line 467
    const/16 v2, 0x9

    .line 468
    .line 469
    invoke-direct {v0, v5, v2}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 470
    .line 471
    .line 472
    sget-object v2, Lm70;->a:Lgv7;

    .line 473
    .line 474
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 482
    .line 483
    new-instance v4, Lj70;

    .line 484
    .line 485
    invoke-direct {v4, v0, v3}, Lj70;-><init>(Ljava/lang/Object;I)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0}, Lq63;->j()Z

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    xor-int/2addr p0, v1

    .line 496
    goto :goto_e

    .line 497
    :cond_16
    invoke-virtual {p0}, Lq63;->f()Z

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    :goto_e
    return p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq63;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    invoke-virtual {p0}, Lq63;->j()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lq63;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final i()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "rm -rf "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ldm2;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2}, Ldm2;-><init>(Lq63;Ljv1;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Li77;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Li77;-><init>(Lqt3;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lh77;->x0(Lf77;)Lmn2;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lmn2;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    check-cast v2, Lv3;

    .line 36
    .line 37
    invoke-virtual {v2}, Lv3;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lv3;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lo93;

    .line 48
    .line 49
    invoke-static {v0, v2}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lub;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lq63;->j()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lq63;->j()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    :goto_0
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    return p0
.end method

.method public final j()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final k()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lq63;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lq63;->y()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lq63;->A()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p0, v2, v4

    .line 22
    .line 23
    if-lez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    const-string p0, "fileExistsWithNonZeroLength should not be called for Directories!"

    .line 29
    .line 30
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final l(I)Lc73;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Lc73;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1, p1}, Lc73;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lc73;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1, p1}, Lc73;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    return-object v0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "getChannel"

    .line 53
    .line 54
    sget-object v1, Lcy0;->b:Lrt3;

    .line 55
    .line 56
    const-string v2, "File"

    .line 57
    .line 58
    invoke-interface {v1, v2, p1, p0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lnc3;->R(Ljava/io/File;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final n()Lorg/swiftapps/filesystem/File$FileType;
    .locals 12

    .line 1
    iget-object v0, p0, Lq63;->c:Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {p0}, Lq63;->o()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lq63;->a:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v4, Lq63;->f:Lp63;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Ly63;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const-class v5, Lp63;

    .line 25
    .line 26
    const-string v6, "canWrite"

    .line 27
    .line 28
    const-string v7, "canWrite(Ljava/io/File;)Z"

    .line 29
    .line 30
    invoke-direct/range {v2 .. v9}, Ly63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    move-object v10, v2

    .line 34
    new-instance v2, Lz63;

    .line 35
    .line 36
    const-class v5, Lp63;

    .line 37
    .line 38
    const-string v6, "canRead"

    .line 39
    .line 40
    const-string v7, "canRead(Ljava/io/File;)Z"

    .line 41
    .line 42
    invoke-direct/range {v2 .. v9}, Lz63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    move-object v11, v2

    .line 46
    new-instance v2, Lx11;

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    const-class v5, Lp63;

    .line 50
    .line 51
    const-string v6, "addWritableDir"

    .line 52
    .line 53
    const-string v7, "addWritableDir(Ljava/io/File;)V"

    .line 54
    .line 55
    invoke-direct/range {v2 .. v9}, Lx11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    if-eq v0, v3, :cond_d

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    if-eq v0, v3, :cond_c

    .line 63
    .line 64
    invoke-virtual {v10, v1}, Ly63;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_0
    const/4 v3, 0x1

    .line 84
    if-ne v0, v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v11, v1}, Lz63;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_1
    new-instance v4, Lgj;

    .line 106
    .line 107
    const/16 v5, 0x11

    .line 108
    .line 109
    invoke-direct {v4, v1, v5}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    new-instance v5, Lgv7;

    .line 113
    .line 114
    invoke-direct {v5, v4}, Lgv7;-><init>(Lbt3;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_3

    .line 128
    .line 129
    :cond_2
    if-nez v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Ljava/io/File;

    .line 136
    .line 137
    if-eqz v6, :cond_4

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-ne v6, v3, :cond_4

    .line 144
    .line 145
    :cond_3
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_4
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-nez v6, :cond_6

    .line 159
    .line 160
    :cond_5
    if-nez v4, :cond_7

    .line 161
    .line 162
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Ljava/io/File;

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-ne v4, v3, :cond_7

    .line 175
    .line 176
    :cond_6
    move v4, v3

    .line 177
    goto :goto_0

    .line 178
    :cond_7
    const/4 v4, 0x0

    .line 179
    :goto_0
    if-eq v0, v3, :cond_a

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    if-eq v0, v3, :cond_8

    .line 183
    .line 184
    const/4 v3, 0x5

    .line 185
    if-eq v0, v3, :cond_8

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    goto :goto_1

    .line 205
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    :goto_1
    if-eqz v3, :cond_b

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lx11;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 215
    .line 216
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_a
    if-eqz v4, :cond_b

    .line 221
    .line 222
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 223
    .line 224
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 229
    :goto_3
    if-nez v0, :cond_e

    .line 230
    .line 231
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 232
    .line 233
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;-><init>(Ljava/io/File;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_c
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 238
    .line 239
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;-><init>(Ljava/io/File;)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_d
    new-instance v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 244
    .line 245
    invoke-direct {v0, v1}, Lorg/swiftapps/filesystem/File$FileType$JavaFile;-><init>(Ljava/io/File;)V

    .line 246
    .line 247
    .line 248
    :cond_e
    :goto_4
    iput-object v0, p0, Lq63;->c:Lorg/swiftapps/filesystem/File$FileType;

    .line 249
    .line 250
    :cond_f
    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    sget-boolean v0, Lq63;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x4

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Lq63;->b:I

    .line 8
    .line 9
    return p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "."

    .line 20
    .line 21
    invoke-static {p0, v0, p0}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final r(I)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x10000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x38000000

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/high16 v0, 0x2c000000

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v1, v1, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 20
    .line 21
    const-string v2, "File"

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-string v1, "getParcelFileDescriptor: Enforcing root method"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lq63;->s(Lq63;I)Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v3, v1, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 42
    .line 43
    const-string v4, ")"

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "getParcelDescriptorJava ("

    .line 64
    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v3, Lcy0;->b:Lrt3;

    .line 79
    .line 80
    invoke-interface {v3, v2, v1, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0}, Lq63;->s(Lq63;I)Landroid/os/ParcelFileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    instance-of v1, v1, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    sget-boolean v1, Lq63;->e:Z

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    :try_start_1
    invoke-static {p0, p1}, Lji8;->q(Lq63;I)Landroid/os/ParcelFileDescriptor;

    .line 97
    .line 98
    .line 99
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    move-exception p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "getParcelDescriptorSaf ("

    .line 105
    .line 106
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v3, Lcy0;->b:Lrt3;

    .line 120
    .line 121
    invoke-interface {v3, v2, v1, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v0}, Lq63;->s(Lq63;I)Landroid/os/ParcelFileDescriptor;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :goto_1
    return-object p0

    .line 129
    :cond_4
    invoke-static {p0, v0}, Lq63;->s(Lq63;I)Landroid/os/ParcelFileDescriptor;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x0

    .line 138
    return-object p0
.end method

.method public final t()Lq63;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Lq63;

    .line 16
    .line 17
    invoke-virtual {p0}, Lq63;->o()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v1, v0, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lq63;->k:Lgv7;

    .line 10
    .line 11
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v0, "/storage/emulated/"

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const-string v2, "/storage/emulated/0/"

    .line 48
    .line 49
    invoke-static {p0, v2, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    new-instance v1, Ljava/io/File;

    .line 56
    .line 57
    const-string v2, "/data/media/"

    .line 58
    .line 59
    invoke-static {p0, v0, v2}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :cond_0
    return-object p0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    return-object p0
.end method

.method public final w(Z)Ljava/io/InputStream;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    move-object p1, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    instance-of v0, v0, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lq63;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :goto_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    const/high16 v1, 0x40000

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    return-object v0

    .line 58
    :cond_2
    const-string p1, "File doesn\'t exist!"

    .line 59
    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_3
    new-instance p1, Lmn5;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "Unable to get input stream for file="

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-object v2, Lcy0;->b:Lrt3;

    .line 91
    .line 92
    const-string v3, "File"

    .line 93
    .line 94
    invoke-interface {v2, v3, v0, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :try_start_1
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Ljava/io/File;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 107
    .line 108
    .line 109
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v0

    .line 112
    move-object p1, v0

    .line 113
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "Unable to get SuFileInputStream for file="

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v2, Lcy0;->b:Lrt3;

    .line 127
    .line 128
    invoke-interface {v2, v3, v0, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :try_start_2
    new-instance p1, Lx45;

    .line 132
    .line 133
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p1, v0}, Lx45;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    .line 139
    .line 140
    move-object p0, p1

    .line 141
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    move-object p1, v0

    .line 147
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string v0, "Unable to get MShellInputStream for file="

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    sget-object v0, Lcy0;->b:Lrt3;

    .line 161
    .line 162
    invoke-interface {v0, v3, p0, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    new-instance v5, Lhw;

    .line 166
    .line 167
    const/4 p0, 0x2

    .line 168
    invoke-direct {v5, p0}, Lhw;-><init>(I)V

    .line 169
    .line 170
    .line 171
    const/16 v6, 0x1f

    .line 172
    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v3, 0x0

    .line 175
    const/4 v4, 0x0

    .line 176
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    return-object p0
.end method

.method public final x()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final y()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final z()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
