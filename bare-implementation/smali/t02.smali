.class public final Lt02;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Llk5;

.field public final c:Lca3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lt02;->d:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llk5;Lca3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt02;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lt02;->b:Llk5;

    .line 7
    .line 8
    iput-object p3, p0, Lt02;->c:Lca3;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x2000

    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .line 34
    .line 35
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_2
    move-exception v1

    .line 73
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_3
    move-exception v0

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    throw p0
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length v0, p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static g(Lca3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lca3;->f(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p0, "Failed to close "

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 14
    .line 15
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 16
    .line 17
    new-instance v2, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lt02;->d:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p2

    .line 50
    move-object p3, v0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-object p3, v0

    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception p2

    .line 55
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p3, p0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :catch_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p3, p0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lca2;
    .locals 12

    .line 1
    iget-object v0, p0, Lt02;->c:Lca3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lca3;->f(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    .line 8
    .line 9
    const-string v3, "pending"

    .line 10
    .line 11
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "Minidump directory: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "FirebaseCrashlytics"

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    invoke-static {v4, v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const-string v3, ".dmp"

    .line 46
    .line 47
    invoke-static {v2, v3}, Lt02;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    const-string v6, "exists"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v6, "does not exist"

    .line 63
    .line 64
    :goto_0
    const-string v8, "Minidump file "

    .line 65
    .line 66
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    invoke-static {v4, v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    new-instance v6, Lxf1;

    .line 80
    .line 81
    invoke-direct {v6}, Lxf1;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_9

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_9

    .line 95
    .line 96
    invoke-static {v2, v3}, Lt02;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v8, 0x1f

    .line 103
    .line 104
    if-lt v3, v8, :cond_8

    .line 105
    .line 106
    iget-object p0, p0, Lt02;->a:Landroid/content/Context;

    .line 107
    .line 108
    const-string v3, "activity"

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroid/app/ActivityManager;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0, v7, v3, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v8, "start-time"

    .line 122
    .line 123
    invoke-virtual {v0, p1, v8}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    const/4 v11, 0x5

    .line 159
    if-ne v10, v11, :cond_3

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 162
    .line 163
    .line 164
    move-result-wide v10

    .line 165
    cmp-long v10, v10, v8

    .line 166
    .line 167
    if-gez v10, :cond_4

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_6

    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    new-instance p1, Lzb0;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p1, Lzb0;->d:I

    .line 200
    .line 201
    iget-byte v0, p1, Lzb0;->j:B

    .line 202
    .line 203
    or-int/lit8 v0, v0, 0x4

    .line 204
    .line 205
    int-to-byte v0, v0

    .line 206
    iput-byte v0, p1, Lzb0;->j:B

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iput-object v0, p1, Lzb0;->b:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    iput v0, p1, Lzb0;->c:I

    .line 221
    .line 222
    iget-byte v0, p1, Lzb0;->j:B

    .line 223
    .line 224
    or-int/2addr v0, v5

    .line 225
    int-to-byte v0, v0

    .line 226
    iput-byte v0, p1, Lzb0;->j:B

    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 229
    .line 230
    .line 231
    move-result-wide v8

    .line 232
    iput-wide v8, p1, Lzb0;->g:J

    .line 233
    .line 234
    iget-byte v0, p1, Lzb0;->j:B

    .line 235
    .line 236
    or-int/lit8 v0, v0, 0x20

    .line 237
    .line 238
    int-to-byte v0, v0

    .line 239
    iput-byte v0, p1, Lzb0;->j:B

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iput v0, p1, Lzb0;->a:I

    .line 246
    .line 247
    iget-byte v0, p1, Lzb0;->j:B

    .line 248
    .line 249
    or-int/lit8 v0, v0, 0x1

    .line 250
    .line 251
    int-to-byte v0, v0

    .line 252
    iput-byte v0, p1, Lzb0;->j:B

    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    .line 255
    .line 256
    .line 257
    move-result-wide v8

    .line 258
    iput-wide v8, p1, Lzb0;->e:J

    .line 259
    .line 260
    iget-byte v0, p1, Lzb0;->j:B

    .line 261
    .line 262
    or-int/lit8 v0, v0, 0x8

    .line 263
    .line 264
    int-to-byte v0, v0

    .line 265
    iput-byte v0, p1, Lzb0;->j:B

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    .line 268
    .line 269
    .line 270
    move-result-wide v8

    .line 271
    iput-wide v8, p1, Lzb0;->f:J

    .line 272
    .line 273
    iget-byte v0, p1, Lzb0;->j:B

    .line 274
    .line 275
    or-int/lit8 v0, v0, 0x10

    .line 276
    .line 277
    int-to-byte v0, v0

    .line 278
    iput-byte v0, p1, Lzb0;->j:B

    .line 279
    .line 280
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {p0}, Lt02;->a(Ljava/io/InputStream;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_2

    .line 289
    :catch_0
    const-string p0, "Failed to get input stream from ApplicationExitInfo"

    .line 290
    .line 291
    invoke-static {v4, p0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .line 293
    .line 294
    :goto_2
    iput-object v7, p1, Lzb0;->h:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p1}, Lzb0;->a()Lac0;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    goto :goto_3

    .line 301
    :cond_7
    const-string p0, "Null processName"

    .line 302
    .line 303
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object v7

    .line 307
    :cond_8
    :goto_3
    new-instance p0, Lyf1;

    .line 308
    .line 309
    const/16 p1, 0xa

    .line 310
    .line 311
    invoke-direct {p0, p1, v2, v7}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    iput-object p0, v6, Lxf1;->c:Ljava/lang/Object;

    .line 315
    .line 316
    const-string p0, ".device_info"

    .line 317
    .line 318
    invoke-static {v1, p0}, Lt02;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    iput-object p0, v6, Lxf1;->d:Ljava/lang/Object;

    .line 323
    .line 324
    new-instance p0, Ljava/io/File;

    .line 325
    .line 326
    const-string p1, "session.json"

    .line 327
    .line 328
    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iput-object p0, v6, Lxf1;->e:Ljava/lang/Object;

    .line 332
    .line 333
    new-instance p0, Ljava/io/File;

    .line 334
    .line 335
    const-string p1, "app.json"

    .line 336
    .line 337
    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iput-object p0, v6, Lxf1;->f:Ljava/lang/Object;

    .line 341
    .line 342
    new-instance p0, Ljava/io/File;

    .line 343
    .line 344
    const-string p1, "device.json"

    .line 345
    .line 346
    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iput-object p0, v6, Lxf1;->b:Ljava/lang/Object;

    .line 350
    .line 351
    new-instance p0, Ljava/io/File;

    .line 352
    .line 353
    const-string p1, "os.json"

    .line 354
    .line 355
    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iput-object p0, v6, Lxf1;->k:Ljava/lang/Object;

    .line 359
    .line 360
    :cond_9
    new-instance p0, Lca2;

    .line 361
    .line 362
    invoke-direct {p0, v6}, Lca2;-><init>(Lxf1;)V

    .line 363
    .line 364
    .line 365
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "session_id"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v1, "generator"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p2, "started_at_seconds"

    .line 17
    .line 18
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance p2, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p0, p0, Lt02;->c:Lca3;

    .line 35
    .line 36
    const-string p3, "session.json"

    .line 37
    .line 38
    invoke-static {p0, p1, p2, p3}, Lt02;->g(Lca3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final e(Ljava/lang/String;Lke0;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lke0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Lke0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p2, Lke0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p2, Lke0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p2, Lke0;->e:I

    .line 10
    .line 11
    iget-object p2, p2, Lke0;->f:Loe;

    .line 12
    .line 13
    invoke-virtual {p2}, Loe;->i()Lw00;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v5, v5, Lw00;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2}, Loe;->i()Lw00;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p2, p2, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v6, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v7, "app_identifier"

    .line 35
    .line 36
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v0, "version_code"

    .line 40
    .line 41
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v0, "version_name"

    .line 45
    .line 46
    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v0, "install_uuid"

    .line 50
    .line 51
    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v0, "delivery_mechanism"

    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    if-nez v5, :cond_0

    .line 66
    .line 67
    move-object v5, v0

    .line 68
    :cond_0
    const-string v1, "development_platform"

    .line 69
    .line 70
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    move-object p2, v0

    .line 76
    :cond_1
    const-string v0, "development_platform_version"

    .line 77
    .line 78
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {p2, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object p0, p0, Lt02;->c:Lca3;

    .line 91
    .line 92
    const-string v0, "app.json"

    .line 93
    .line 94
    invoke-static {p0, p1, p2, v0}, Lt02;->g(Lca3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final f(Ljava/lang/String;Lle0;)V
    .locals 12

    .line 1
    iget v0, p2, Lle0;->a:I

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p2, Lle0;->b:I

    .line 6
    .line 7
    iget-wide v3, p2, Lle0;->c:J

    .line 8
    .line 9
    iget-wide v5, p2, Lle0;->d:J

    .line 10
    .line 11
    iget-boolean v7, p2, Lle0;->e:Z

    .line 12
    .line 13
    iget p2, p2, Lle0;->f:I

    .line 14
    .line 15
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v10, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v11, "arch"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v0, "build_model"

    .line 34
    .line 35
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v0, "available_processors"

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v0, "total_ram"

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v0, "disk_space"

    .line 57
    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v0, "is_emulator"

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v0, "state"

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v10, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p2, "build_manufacturer"

    .line 84
    .line 85
    invoke-virtual {v10, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string p2, "build_product"

    .line 89
    .line 90
    invoke-virtual {v10, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p2, Lorg/json/JSONObject;

    .line 94
    .line 95
    invoke-direct {p2, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object p0, p0, Lt02;->c:Lca3;

    .line 103
    .line 104
    const-string v0, "device.json"

    .line 105
    .line 106
    invoke-static {p0, p1, p2, v0}, Lt02;->g(Lca3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final h(Ljava/lang/String;Lme0;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean p2, p2, Lme0;->a:Z

    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "version"

    .line 13
    .line 14
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v0, "build_version"

    .line 18
    .line 19
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v0, "is_rooted"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance p2, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p0, p0, Lt02;->c:Lca3;

    .line 41
    .line 42
    const-string v0, "os.json"

    .line 43
    .line 44
    invoke-static {p0, p1, p2, v0}, Lt02;->g(Lca3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
