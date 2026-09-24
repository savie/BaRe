.class public final Lb38;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lra2;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Le38;

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Le38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb38;->a:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lb38;->b:Le38;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Lc38;)Lb38;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/a;->d:Lm35;

    .line 6
    .line 7
    new-instance v1, Le38;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 14
    .line 15
    invoke-virtual {v2}, Ldy3;->a()Lmi6;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lmi6;->e()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, v2, p2, v0, p0}, Le38;-><init>(Ljava/util/ArrayList;Lc38;Lm35;Landroid/content/ContentResolver;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lb38;

    .line 31
    .line 32
    invoke-direct {p0, p1, v1}, Lb38;-><init>(Landroid/net/Uri;Le38;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lb38;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Le66;Lqa2;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb38;->f()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lb38;->c:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lqa2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 p1, 0x3

    .line 13
    const-string v0, "MediaStoreThumbFetcher"

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p1, "Failed to find thumbnail file"

    .line 22
    .line 23
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p2, p0}, Lqa2;->b(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 11

    .line 1
    iget-object v0, p0, Lb38;->b:Le38;

    .line 2
    .line 3
    iget-object v1, v0, Le38;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/ContentResolver;

    .line 6
    .line 7
    iget-object p0, p0, Lb38;->a:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v2, "ThumbStreamOpener"

    .line 10
    .line 11
    const-string v3, "Failed to query for thumbnail for Uri: "

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    :try_start_0
    iget-object v6, v0, Le38;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v6, Lc38;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    :try_start_1
    invoke-interface {v6, p0}, Lc38;->u(Landroid/net/Uri;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    move-object v5, v6

    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :catch_0
    move-exception v7

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    if-eqz v6, :cond_1

    .line 47
    .line 48
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 49
    .line 50
    .line 51
    :cond_1
    move-object v3, v5

    .line 52
    goto :goto_3

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :catch_1
    move-exception v7

    .line 57
    :goto_1
    move-object v6, v5

    .line 58
    goto :goto_2

    .line 59
    :catch_2
    move-exception v6

    .line 60
    move-object v7, v6

    .line 61
    goto :goto_1

    .line 62
    :goto_2
    :try_start_3
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_2
    if-eqz v6, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    :cond_3
    move-object v3, v5

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    new-instance v6, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    const-wide/16 v7, 0x0

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    cmp-long v3, v7, v9

    .line 112
    .line 113
    if-gez v3, :cond_3

    .line 114
    .line 115
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :try_start_4
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    goto :goto_4

    .line 124
    :catch_3
    move-exception v0

    .line 125
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "NPE opening uri: "

    .line 130
    .line 131
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p0, " -> "

    .line 138
    .line 139
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Ljava/io/FileNotFoundException;

    .line 157
    .line 158
    throw p0

    .line 159
    :goto_4
    const/4 v6, -0x1

    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    const-string v7, "Failed to open uri: "

    .line 163
    .line 164
    :try_start_5
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v1, v0, Le38;->e:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Ljava/util/ArrayList;

    .line 171
    .line 172
    iget-object v0, v0, Le38;->c:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lm35;

    .line 175
    .line 176
    invoke-static {v1, v5, v0}, Lpe4;->q(Ljava/util/List;Ljava/io/InputStream;Lm35;)I

    .line 177
    .line 178
    .line 179
    move-result p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    if-eqz v5, :cond_8

    .line 181
    .line 182
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :catchall_2
    move-exception p0

    .line 187
    goto :goto_6

    .line 188
    :catch_4
    move-exception v0

    .line 189
    goto :goto_5

    .line 190
    :catch_5
    move-exception v0

    .line 191
    :goto_5
    :try_start_7
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {v2, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 210
    .line 211
    .line 212
    :cond_5
    if-eqz v5, :cond_7

    .line 213
    .line 214
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :goto_6
    if-eqz v5, :cond_6

    .line 219
    .line 220
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 221
    .line 222
    .line 223
    :catch_6
    :cond_6
    throw p0

    .line 224
    :catch_7
    :cond_7
    :goto_7
    move p0, v6

    .line 225
    :catch_8
    :cond_8
    :goto_8
    if-eq p0, v6, :cond_9

    .line 226
    .line 227
    new-instance v0, Lg03;

    .line 228
    .line 229
    invoke-direct {v0, v3, p0}, Lg03;-><init>(Ljava/io/InputStream;I)V

    .line 230
    .line 231
    .line 232
    move-object v3, v0

    .line 233
    :cond_9
    return-object v3

    .line 234
    :goto_9
    if-eqz v5, :cond_a

    .line 235
    .line 236
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 237
    .line 238
    .line 239
    :cond_a
    throw p0
.end method
