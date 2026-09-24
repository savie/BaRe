.class public final Lsj0;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lkh0;

.field public final j:Ljava/lang/String;

.field public k:Ljava/io/InputStream;

.field public final l:Ljv0;


# direct methods
.method public constructor <init>(Lkh0;Lrf8;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lag8;-><init>(Lrf8;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lsj0;->i:Lkh0;

    .line 8
    .line 9
    const-string p1, "BUploadSession"

    .line 10
    .line 11
    iput-object p1, p0, Lsj0;->j:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljv0;

    .line 14
    .line 15
    invoke-direct {p1}, Ljv0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lsj0;->l:Ljv0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    iget-object v2, p0, Lsj0;->j:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Closing connection with "

    .line 16
    .line 17
    const-string v4, ", may result in unknown errors"

    .line 18
    .line 19
    invoke-static {v3, v0, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lsj0;->l:Ljv0;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Ljv0;->b:Z

    .line 33
    .line 34
    iget-object v0, v0, Ljv0;->a:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lokhttp3/Call;

    .line 54
    .line 55
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lsj0;->k:Ljava/io/InputStream;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsj0;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lag8;->a:Lrf8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf8;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lsj0;->k(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;J)Lav0;
    .locals 12

    .line 1
    move-wide v2, p3

    .line 2
    new-instance v5, Lc7;

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-direct {v5, p0, v0}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ld7;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lag8;->b:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const-string v6, "POST"

    .line 17
    .line 18
    const-string v7, "file_size"

    .line 19
    .line 20
    iget-object v8, p0, Lag8;->a:Lrf8;

    .line 21
    .line 22
    iget-object v9, p0, Lsj0;->i:Lkh0;

    .line 23
    .line 24
    iget-object v10, p0, Lsj0;->j:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lag8;->b:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v11, "Updating chunked upload with id "

    .line 40
    .line 41
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lag8;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v8, Lrf8;->a:Lq63;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Lkh0;->s()Lmv0;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    new-instance v10, Lih0;

    .line 72
    .line 73
    invoke-direct {v10, v9, v0, v1}, Lih0;-><init>(Lkh0;Lq63;Ld7;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 80
    .line 81
    new-instance v0, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object v1, Lmv0;->g:Lokhttp3/MediaType;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v7, "/api/2.0/files/"

    .line 105
    .line 106
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, "/upload_sessions"

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v8, p1}, Lmv0;->u(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v6, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lokhttp3/Request;

    .line 133
    .line 134
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, Lsj0;->l:Ljv0;

    .line 138
    .line 139
    invoke-static {v8, v0, v6, v4}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lmv0;->s(Lorg/json/JSONObject;)Lqv0;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object v0, v8

    .line 148
    move-object v4, v10

    .line 149
    invoke-virtual/range {v0 .. v6}, Lmv0;->t(Lqv0;JLqt3;Lc7;Ljv0;)Lav0;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_1
    :goto_0
    const-string v0, "Starting chunked upload"

    .line 155
    .line 156
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object v0, v8, Lrf8;->a:Lq63;

    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Lkh0;->s()Lmv0;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    new-instance v10, Ljh0;

    .line 175
    .line 176
    invoke-direct {v10, v9, v0, v1}, Ljh0;-><init>(Lkh0;Lq63;Ld7;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 183
    .line 184
    new-instance v0, Lorg/json/JSONObject;

    .line 185
    .line 186
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v1, "folder_id"

    .line 190
    .line 191
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    const-string p1, "file_name"

    .line 195
    .line 196
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    sget-object v0, Lmv0;->g:Lokhttp3/MediaType;

    .line 210
    .line 211
    invoke-static {p1, v0}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    const-string v0, "/api/2.0/files/upload_sessions"

    .line 216
    .line 217
    invoke-virtual {v8, v0}, Lmv0;->u(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0, v6, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lokhttp3/Request;

    .line 229
    .line 230
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 231
    .line 232
    .line 233
    iget-object v6, p0, Lsj0;->l:Ljv0;

    .line 234
    .line 235
    invoke-static {v8, p1, v6, v4}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-static {p0}, Lmv0;->s(Lorg/json/JSONObject;)Lqv0;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    move-object v0, v8

    .line 244
    move-object v4, v10

    .line 245
    invoke-virtual/range {v0 .. v6}, Lmv0;->t(Lqv0;JLqt3;Lc7;Ljv0;)Lav0;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;J)Lav0;
    .locals 8

    .line 1
    const-string v0, "Updating upload with id "

    .line 2
    .line 3
    new-instance v4, Ld86;

    .line 4
    .line 5
    iget-object v1, p0, Lag8;->a:Lrf8;

    .line 6
    .line 7
    iget-object v1, v1, Lrf8;->a:Lq63;

    .line 8
    .line 9
    sget-boolean v2, Lq63;->d:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lrj0;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, p0, v3}, Lrj0;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v1, p3, p4, v2}, Ld86;-><init>(Ljava/io/InputStream;JLqt3;)V

    .line 23
    .line 24
    .line 25
    iput-object v4, p0, Lsj0;->k:Ljava/io/InputStream;

    .line 26
    .line 27
    :try_start_0
    iget-object v1, p0, Lag8;->b:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    :cond_0
    move-object v3, p2

    .line 38
    move-wide v5, p3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lsj0;->j:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lag8;->b:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lsj0;->i:Lkh0;

    .line 60
    .line 61
    iget-object v2, p0, Lag8;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v7, p0, Lsj0;->l:Ljv0;

    .line 67
    .line 68
    move-object v3, p2

    .line 69
    move-wide v5, p3

    .line 70
    invoke-virtual/range {v1 .. v7}, Lkh0;->z(Ljava/lang/String;Ljava/lang/String;Ld86;JLjv0;)Lav0;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_2

    .line 78
    :goto_0
    iget-object v1, p0, Lsj0;->i:Lkh0;

    .line 79
    .line 80
    iget-object v7, p0, Lsj0;->l:Ljv0;

    .line 81
    .line 82
    move-object v2, p1

    .line 83
    invoke-virtual/range {v1 .. v7}, Lkh0;->y(Ljava/lang/String;Ljava/lang/String;Ld86;JLjv0;)Lav0;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    invoke-virtual {v4}, Ld86;->close()V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    invoke-static {v4, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lag8;->a:Lrf8;

    .line 2
    .line 3
    iget-object v0, v0, Lrf8;->a:Lq63;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq63;->A()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    sget-object v4, Ltb1;->a:Ltb1;

    .line 12
    .line 13
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    if-eqz v4, :cond_6

    .line 18
    .line 19
    iget-object v5, p0, Lsj0;->i:Lkh0;

    .line 20
    .line 21
    invoke-virtual {v5, v4, p1}, Lkh0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iput-object v5, p0, Lag8;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lag8;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    const-wide/32 v5, 0x2faf080

    .line 36
    .line 37
    .line 38
    cmp-long v5, v0, v5

    .line 39
    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v4, p1, v0, v1}, Lsj0;->i(Ljava/lang/String;Ljava/lang/String;J)Lav0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    move-object v7, v0

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0, v4, p1, v0, v1}, Lsj0;->j(Ljava/lang/String;Ljava/lang/String;J)Lav0;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_0
    iget-object v6, v4, Lav0;->a:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v5, p0, Lag8;->d:Lzf8;

    .line 58
    .line 59
    iput-object v6, v5, Lzf8;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lgv0;->a:Ljava/util/List;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_d

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v7, "."

    .line 99
    .line 100
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {p1, v1, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    sget-object v0, Lgv0;->a:Ljava/util/List;

    .line 117
    .line 118
    iget-object v7, v4, Lav0;->b:Ljava/lang/String;

    .line 119
    .line 120
    iget-wide v8, v4, Lav0;->c:J

    .line 121
    .line 122
    iget-wide v0, v4, Lav0;->e:J

    .line 123
    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-wide/16 v10, 0x0

    .line 129
    .line 130
    cmp-long v0, v0, v10

    .line 131
    .line 132
    if-lez v0, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move-object v4, v2

    .line 136
    :goto_1
    if-eqz v4, :cond_5

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    :goto_2
    move-wide v10, v0

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    goto :goto_2

    .line 149
    :goto_3
    new-instance v5, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 150
    .line 151
    invoke-direct/range {v5 .. v11}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 152
    .line 153
    .line 154
    invoke-static {v5}, Lgv0;->b(Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    const-string v0, "Box main folder id is not initialized"

    .line 159
    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_4
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 167
    .line 168
    const/16 v9, 0x8

    .line 169
    .line 170
    const/4 v10, 0x0

    .line 171
    iget-object v5, p0, Lsj0;->j:Ljava/lang/String;

    .line 172
    .line 173
    const-string v6, "executeUpload"

    .line 174
    .line 175
    move-object v4, v8

    .line 176
    const/4 v8, 0x0

    .line 177
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lag8;->e()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_7
    invoke-static {v7}, Ldv0;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "executeUpload: "

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    const/4 v12, 0x4

    .line 198
    const/4 v13, 0x0

    .line 199
    iget-object v9, p0, Lsj0;->j:Ljava/lang/String;

    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    move-object v8, v4

    .line 203
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget v1, p0, Lag8;->f:I

    .line 207
    .line 208
    iget v5, p0, Lag8;->e:I

    .line 209
    .line 210
    const/4 v6, 0x1

    .line 211
    if-ge v1, v5, :cond_8

    .line 212
    .line 213
    move v1, v6

    .line 214
    goto :goto_5

    .line 215
    :cond_8
    move v1, v3

    .line 216
    :goto_5
    sget-object v8, Lnf1;->a:Lai6;

    .line 217
    .line 218
    invoke-static {v7}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_c

    .line 223
    .line 224
    instance-of v8, v7, Lhv0;

    .line 225
    .line 226
    if-eqz v8, :cond_9

    .line 227
    .line 228
    move-object v8, v7

    .line 229
    check-cast v8, Lhv0;

    .line 230
    .line 231
    const/16 v9, 0x1ad

    .line 232
    .line 233
    iget v8, v8, Lhv0;->a:I

    .line 234
    .line 235
    if-eq v8, v9, :cond_c

    .line 236
    .line 237
    const/16 v9, 0x1f4

    .line 238
    .line 239
    if-gt v9, v8, :cond_9

    .line 240
    .line 241
    const/16 v9, 0x258

    .line 242
    .line 243
    if-ge v8, v9, :cond_9

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    if-nez v7, :cond_a

    .line 251
    .line 252
    const-string v7, ""

    .line 253
    .line 254
    :cond_a
    const-string v8, "Box API due to a network error"

    .line 255
    .line 256
    invoke-static {v7, v8, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_b

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_b
    move v7, v3

    .line 264
    goto :goto_7

    .line 265
    :cond_c
    :goto_6
    move v7, v6

    .line 266
    :goto_7
    if-eqz v1, :cond_f

    .line 267
    .line 268
    if-eqz v7, :cond_f

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Lag8;->h(Ljava/lang/Long;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_e

    .line 275
    .line 276
    :cond_d
    :goto_8
    return-void

    .line 277
    :cond_e
    iget v0, p0, Lag8;->f:I

    .line 278
    .line 279
    add-int/2addr v0, v6

    .line 280
    iput v0, p0, Lag8;->f:I

    .line 281
    .line 282
    const-string v1, "/"

    .line 283
    .line 284
    const-string v2, ")"

    .line 285
    .line 286
    const-string v3, "executeUpload Retrying upload ("

    .line 287
    .line 288
    invoke-static {v3, v0, v1, v2, v5}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    const/4 v12, 0x4

    .line 293
    const/4 v13, 0x0

    .line 294
    iget-object v9, p0, Lsj0;->j:Ljava/lang/String;

    .line 295
    .line 296
    const/4 v11, 0x0

    .line 297
    move-object v8, v4

    .line 298
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lsj0;->k(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :cond_f
    new-instance p1, Ljava/lang/Exception;

    .line 306
    .line 307
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, p1, v3}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 311
    .line 312
    .line 313
    return-void
.end method
