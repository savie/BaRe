.class public final Lw14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;

.field public static final b:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/common/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lgv7;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lw14;->a:Lgv7;

    .line 12
    .line 13
    new-instance v0, Ldl;

    .line 14
    .line 15
    const/16 v1, 0xe

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lgv7;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lw14;->b:Lgv7;

    .line 26
    .line 27
    return-void
.end method

.method public static a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Lq63;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "fromEncryptedFile: File not found at "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "GsonHelper"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Ly32;->a:Lgv7;

    .line 46
    .line 47
    sget-boolean v0, Ly32;->d:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-class v3, Lji;

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    xor-int/2addr v0, v3

    .line 63
    invoke-static {v2, v0}, Ly32;->d(Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v0, v1

    .line 69
    :goto_0
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, v0, p1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-object p0

    .line 87
    :cond_3
    :goto_1
    return-object v1

    .line 88
    :catch_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 89
    .line 90
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "] of class type: ["

    .line 99
    .line 100
    const-string v3, "]"

    .line 101
    .line 102
    const-string v4, "Unable to parse encrypted file: ["

    .line 103
    .line 104
    invoke-static {v4, p0, v0, p1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v6, 0x4

    .line 109
    const/4 v7, 0x0

    .line 110
    const-string v3, "GsonHelper"

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-static/range {v2 .. v7}, Lvr6;->de$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_4
    invoke-static {}, Ld6;->o()V

    .line 118
    .line 119
    .line 120
    return-object v1
.end method

.method public static b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lq63;->j()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :try_start_0
    invoke-static {p0}, Lq63;->H(Lq63;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2, p0, p1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    return-object v1

    .line 56
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-nez p0, :cond_4

    .line 63
    .line 64
    const-string p0, ""

    .line 65
    .line 66
    :cond_4
    move-object v4, p0

    .line 67
    const/4 v6, 0x4

    .line 68
    const/4 v7, 0x0

    .line 69
    const-string v3, "GsonHelper.fromFile ERROR: "

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method

.method public static c()Lcom/google/gson/a;
    .locals 1

    .line 1
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/google/gson/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static d()Lcom/google/gson/a;
    .locals 1

    .line 1
    sget-object v0, Lw14;->b:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/google/gson/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static e(Lq63;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v0, Lq63;

    .line 24
    .line 25
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 26
    .line 27
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "temp"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v2, v3, v4}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lq63;->h()Z

    .line 42
    .line 43
    .line 44
    sget-object v2, Ly32;->a:Lgv7;

    .line 45
    .line 46
    sget-boolean v2, Ly32;->d:Z

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    new-instance v2, Lck;

    .line 52
    .line 53
    const/16 v4, 0x19

    .line 54
    .line 55
    invoke-direct {v2, p0, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lu14;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-direct {v4, v0, v5}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v4}, Ly32;->b(Lck;Lu14;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 71
    .line 72
    const-string v5, "GsonHelper"

    .line 73
    .line 74
    const-string v6, "Retrying alternative decryption"

    .line 75
    .line 76
    const/4 v8, 0x4

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v3}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v2, v4}, Ly32;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_3

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Ltl4;

    .line 101
    .line 102
    new-instance v3, Ljava/io/InputStreamReader;

    .line 103
    .line 104
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v3}, Ltl4;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :try_start_1
    invoke-virtual {v2}, Ltl4;->beginObject()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ltl4;->nextName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ltl4;->beginArray()V

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {v2}, Ltl4;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/a;->a(Ltl4;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    move-object v3, v0

    .line 147
    goto :goto_2

    .line 148
    :cond_1
    invoke-virtual {v2}, Ltl4;->endArray()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ltl4;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_2
    invoke-virtual {v2}, Ltl4;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    :try_start_4
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    :goto_3
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 165
    .line 166
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v4, "Unable to parse encrypted file: ["

    .line 173
    .line 174
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p0, "] of class type: ["

    .line 181
    .line 182
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p0, "]"

    .line 189
    .line 190
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const/4 v6, 0x4

    .line 198
    const/4 v7, 0x0

    .line 199
    const-string v3, "GsonHelper"

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-string v3, "GsonHelper"

    .line 210
    .line 211
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-object v1

    .line 215
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 216
    .line 217
    .line 218
    const/4 p0, 0x0

    .line 219
    return-object p0
.end method

.method public static f(Ljava/lang/Object;Lq63;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Ly32;->a:Lgv7;

    .line 28
    .line 29
    sget-boolean v0, Ly32;->d:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-boolean v0, Lq63;->d:Z

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Ly32;->g()Lx32;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {}, Ly32;->h()Lgx2;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, p1, v3}, Lx32;->d(Ljava/io/OutputStream;Lgx2;)Lqk5;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    array-length v2, p0

    .line 76
    invoke-virtual {p1, p0, v1, v2}, Lqk5;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-virtual {p1}, Lqk5;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    move-object p0, v0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object p0, v0

    .line 88
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    :try_start_4
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :goto_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "encryptJsonString: "

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/4 v6, 0x4

    .line 111
    const/4 v7, 0x0

    .line 112
    const-string v3, "CryptoHelper"

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return v1

    .line 119
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 120
    .line 121
    .line 122
    :cond_1
    return v1

    .line 123
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 124
    .line 125
    .line 126
    return v1
.end method

.method public static g(Ljava/lang/Object;Lq63;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p1, p0}, Lq63;->K(Lq63;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    move-object v5, p0

    .line 45
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    const/16 v7, 0x8

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    const-string v3, "GsonHelper"

    .line 51
    .line 52
    const-string v4, "saveToFile"

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 60
    .line 61
    .line 62
    return v1
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "editor"

    .line 3
    .line 4
    if-nez p0, :cond_1

    .line 5
    .line 6
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
