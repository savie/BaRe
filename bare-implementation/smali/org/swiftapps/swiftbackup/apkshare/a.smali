.class public abstract Lorg/swiftapps/swiftbackup/apkshare/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lq63;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lq63;->d:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/high16 v1, 0x40000

    .line 15
    .line 16
    :try_start_0
    new-array v1, v1, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v0, Lai;

    .line 42
    .line 43
    invoke-direct {v0, v3}, Lai;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x1e

    .line 47
    .line 48
    const-string v2, ""

    .line 49
    .line 50
    invoke-static {p0, v2, v0, v1}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    invoke-static {p0, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x2f

    .line 8
    .line 9
    invoke-static {p0, v0}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x5c

    .line 16
    .line 17
    invoke-static {p0, v0}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, ".."

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string v0, "Archive entry name must not contain \'..\': "

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-string v0, "Archive entry name must not contain \'\\\': "

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string v0, "Archive entry name must not contain \'/\': "

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    const-string p0, "Blank archive entry name"

    .line 64
    .line 65
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static c(Lq63;Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Ljava/util/ArrayList;)V
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 8
    .line 9
    sget-boolean v0, Lq63;->d:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    move-object/from16 v15, p2

    .line 26
    .line 27
    invoke-static {v15, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lvh;

    .line 49
    .line 50
    iget-object v4, v3, Lvh;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v6, v3, Lvh;->b:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v3, Lvh;->a:Lq63;

    .line 55
    .line 56
    invoke-static {v4}, Lorg/swiftapps/swiftbackup/apkshare/a;->b(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v6, v5}, Lorg/swiftapps/swiftbackup/apkshare/a;->d(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lq63;)V

    .line 60
    .line 61
    .line 62
    move-object v4, v5

    .line 63
    new-instance v5, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;

    .line 64
    .line 65
    iget-object v3, v3, Lvh;->c:Luh;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lq63;->A()J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    invoke-static {v4}, Lorg/swiftapps/swiftbackup/apkshare/a;->a(Lq63;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object v2, v0

    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_0
    const/16 v13, 0x7f

    .line 100
    .line 101
    const/4 v14, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const-wide/16 v9, 0x0

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    move-object/from16 v3, p1

    .line 111
    .line 112
    invoke-static/range {v3 .. v14}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->copy$default(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "meta.sai_v2.json"

    .line 117
    .line 118
    sget-object v4, Lw14;->a:Lgv7;

    .line 119
    .line 120
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getAppName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getVersionName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getVersionCode()Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const/4 v10, 0x0

    .line 145
    if-eqz v5, :cond_1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_3

    .line 157
    .line 158
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    check-cast v11, Lvh;

    .line 163
    .line 164
    iget-object v11, v11, Lvh;->c:Luh;

    .line 165
    .line 166
    sget-object v12, Luh;->SPLIT:Luh;

    .line 167
    .line 168
    if-ne v11, v12, :cond_2

    .line 169
    .line 170
    move v10, v0

    .line 171
    :cond_3
    :goto_1
    new-instance v5, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 172
    .line 173
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/apkshare/a;->b(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 184
    .line 185
    invoke-direct {v4, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 189
    .line 190
    .line 191
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 204
    .line 205
    .line 206
    const-string v0, "meta.swiftbackup_v1.json"

    .line 207
    .line 208
    sget-object v4, Lw14;->a:Lgv7;

    .line 209
    .line 210
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4, v2}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/apkshare/a;->b(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 222
    .line 223
    invoke-direct {v4, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_4
    const-string v0, "APKS archive needs at least one APK file"

    .line 253
    .line 254
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method public static d(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lq63;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/apkshare/a;->b(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lq63;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p2, p1}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/high16 p2, 0x40000

    .line 24
    .line 25
    :try_start_0
    invoke-static {p1, p0, p2}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :catchall_1
    move-exception p2

    .line 38
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :cond_0
    const-string p0, "Missing APK file: "

    .line 43
    .line 44
    invoke-static {p2, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
