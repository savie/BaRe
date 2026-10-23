.class public final Lqy5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lmt3;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lzn4;->a:Lzn4;

    .line 16
    .line 17
    new-instance v0, Lkc1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, p0, v2, v1}, Lkc1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "Async method called from background thread!"

    .line 29
    .line 30
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static b(Lzn7;)Lry5;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_6

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v3, Lry5;->d:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, v3, Lry5;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, v3, Lry5;->e:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, v3, Lry5;->g:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v8, v3, Lry5;->h:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v9, v3, Lry5;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v10, v3, Lry5;->j:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v11, v3, Lry5;->k:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v12, v3, Lry5;->l:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v13, v3, Lry5;->m:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v14, v3, Lry5;->n:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v15, v3, Lry5;->o:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, v3, Lry5;->p:Ljava/lang/String;

    .line 50
    .line 51
    const/16 v21, 0x0

    .line 52
    .line 53
    iget-object v2, v3, Lry5;->q:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v16, v0

    .line 56
    .line 57
    iget-object v0, v3, Lry5;->r:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v18, v0

    .line 60
    .line 61
    iget-object v0, v3, Lry5;->s:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v19, v0

    .line 64
    .line 65
    iget-object v0, v3, Lry5;->t:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v20, v0

    .line 68
    .line 69
    move-object/from16 v17, v2

    .line 70
    .line 71
    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "Failed to create folder: "

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_0
    const/4 v5, 0x2

    .line 79
    const/16 v6, 0x11

    .line 80
    .line 81
    if-ge v4, v6, :cond_4

    .line 82
    .line 83
    aget-object v6, v0, v4

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_0

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_0
    new-instance v7, Lq63;

    .line 95
    .line 96
    invoke-direct {v7, v6, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    invoke-virtual {v7}, Lq63;->j()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_1

    .line 104
    .line 105
    invoke-static {v7}, Lq63;->E(Lq63;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lq63;->j()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    invoke-virtual {v7}, Lq63;->x()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v21

    .line 132
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    return-object v21

    .line 140
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, v3, Lry5;->a:Ljava/lang/String;

    .line 144
    .line 145
    const-string v2, ".nomedia"

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Lq63;

    .line 152
    .line 153
    invoke-direct {v2, v0, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Lq63;->j()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    :try_start_1
    invoke-virtual {v2}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_5
    :goto_4
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 179
    .line 180
    sget-object v5, Lry5;->u:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v2, "Current storage: "

    .line 185
    .line 186
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/4 v8, 0x4

    .line 197
    const/4 v9, 0x0

    .line 198
    const/4 v7, 0x0

    .line 199
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v3, Lry5;->c:Ljava/lang/String;

    .line 203
    .line 204
    const-string v1, "Folders initialized at "

    .line 205
    .line 206
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-object v3

    .line 214
    :cond_6
    const/16 v21, 0x0

    .line 215
    .line 216
    invoke-static {}, Ld6;->o()V

    .line 217
    .line 218
    .line 219
    return-object v21
.end method

.method public static c(Lq63;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static d(Lzn7;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzn7;->l()Lq63;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "/SwiftBackup/"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static e(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lg67;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static f(ZLzn7;)Lry5;
    .locals 3

    .line 1
    sget-object v0, Lry5;->v:Lry5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    :cond_0
    const-class v0, Lry5;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lry5;->v:Lry5;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    :cond_1
    new-instance p0, Lry5;

    .line 17
    .line 18
    sget-object v1, Ld45;->b:Ld45;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lzn7;->q:Lyn7;

    .line 34
    .line 35
    invoke-virtual {p1}, Lyn7;->d()Lzn7;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    invoke-static {p1}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, v1, p1}, Lry5;-><init>(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object p0, Lry5;->v:Lry5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    :cond_3
    monitor-exit v0

    .line 52
    :cond_4
    sget-object p0, Lry5;->v:Lry5;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_5
    const/4 p0, 0x0

    .line 59
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    throw p0
.end method
