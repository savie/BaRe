.class public final Lokhttp3/internal/http2/Http2ExchangeCodec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final a:Lokhttp3/internal/connection/RealConnection;

.field public final b:Lokhttp3/internal/http/RealInterceptorChain;

.field public final c:Lokhttp3/internal/http2/Http2Connection;

.field public volatile d:Lokhttp3/internal/http2/Http2Stream;

.field public final e:Lokhttp3/Protocol;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v10, ":scheme"

    .line 2
    .line 3
    const-string v11, ":authority"

    .line 4
    .line 5
    const-string v0, "connection"

    .line 6
    .line 7
    const-string v1, "host"

    .line 8
    .line 9
    const-string v2, "keep-alive"

    .line 10
    .line 11
    const-string v3, "proxy-connection"

    .line 12
    .line 13
    const-string v4, "te"

    .line 14
    .line 15
    const-string v5, "transfer-encoding"

    .line 16
    .line 17
    const-string v6, "encoding"

    .line 18
    .line 19
    const-string v7, "upgrade"

    .line 20
    .line 21
    const-string v8, ":method"

    .line 22
    .line 23
    const-string v9, ":path"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lokhttp3/internal/http2/Http2ExchangeCodec;->g:Ljava/util/List;

    .line 34
    .line 35
    const-string v7, "encoding"

    .line 36
    .line 37
    const-string v8, "upgrade"

    .line 38
    .line 39
    const-string v1, "connection"

    .line 40
    .line 41
    const-string v2, "host"

    .line 42
    .line 43
    const-string v3, "keep-alive"

    .line 44
    .line 45
    const-string v4, "proxy-connection"

    .line 46
    .line 47
    const-string v5, "te"

    .line 48
    .line 49
    const-string v6, "transfer-encoding"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lokhttp3/internal/http2/Http2ExchangeCodec;->h:Ljava/util/List;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->a:Lokhttp3/internal/connection/RealConnection;

    .line 11
    .line 12
    iput-object p3, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->b:Lokhttp3/internal/http/RealInterceptorChain;

    .line 13
    .line 14
    iput-object p4, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->c:Lokhttp3/internal/http2/Http2Connection;

    .line 15
    .line 16
    iget-object p1, p1, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 17
    .line 18
    sget-object p2, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p2, Lokhttp3/Protocol;->f:Lokhttp3/Protocol;

    .line 28
    .line 29
    :goto_0
    iput-object p2, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->e:Lokhttp3/Protocol;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 7
    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Lokhttp3/Request;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_0
    iget-object v3, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    add-int/lit8 v5, v5, 0x4

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 32
    .line 33
    sget-object v6, Lokhttp3/internal/http2/Header;->f:Lhy0;

    .line 34
    .line 35
    iget-object v7, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Header;-><init>(Lhy0;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 44
    .line 45
    sget-object v6, Lokhttp3/internal/http2/Header;->g:Lhy0;

    .line 46
    .line 47
    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 48
    .line 49
    invoke-static {p1}, Lokhttp3/internal/http/RequestLine;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Header;-><init>(Lhy0;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const-string v5, "Host"

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    new-instance v6, Lokhttp3/internal/http2/Header;

    .line 68
    .line 69
    sget-object v7, Lokhttp3/internal/http2/Header;->i:Lhy0;

    .line 70
    .line 71
    invoke-direct {v6, v7, v5}, Lokhttp3/internal/http2/Header;-><init>(Lhy0;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 78
    .line 79
    sget-object v6, Lokhttp3/internal/http2/Header;->h:Lhy0;

    .line 80
    .line 81
    iget-object p1, p1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v5, v6, p1}, Lokhttp3/internal/http2/Header;-><init>(Lhy0;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    move v5, v1

    .line 94
    :goto_1
    if-ge v5, p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 101
    .line 102
    invoke-static {v7, v6, v7}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    sget-object v7, Lokhttp3/internal/http2/Http2ExchangeCodec;->g:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_3

    .line 113
    .line 114
    const-string v7, "te"

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const-string v8, "trailers"

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_4

    .line 133
    .line 134
    :cond_3
    new-instance v7, Lokhttp3/internal/http2/Header;

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-direct {v7, v6, v8}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    iget-object v8, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->c:Lokhttp3/internal/http2/Http2Connection;

    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    xor-int/lit8 v9, v0, 0x1

    .line 155
    .line 156
    iget-object p1, v8, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 157
    .line 158
    monitor-enter p1

    .line 159
    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    iget v3, v8, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 161
    .line 162
    const v5, 0x3fffffff    # 1.9999999f

    .line 163
    .line 164
    .line 165
    if-le v3, v5, :cond_6

    .line 166
    .line 167
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 168
    .line 169
    invoke-virtual {v8, v3}, Lokhttp3/internal/http2/Http2Connection;->h(Lokhttp3/internal/http2/ErrorCode;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    move-object p0, v0

    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_6
    :goto_2
    iget-boolean v3, v8, Lokhttp3/internal/http2/Http2Connection;->f:Z

    .line 178
    .line 179
    if-nez v3, :cond_c

    .line 180
    .line 181
    iget v7, v8, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 182
    .line 183
    add-int/lit8 v3, v7, 0x2

    .line 184
    .line 185
    iput v3, v8, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 186
    .line 187
    new-instance v6, Lokhttp3/internal/http2/Http2Stream;

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    const/4 v10, 0x0

    .line 191
    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 192
    .line 193
    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    iget-wide v10, v8, Lokhttp3/internal/http2/Http2Connection;->M:J

    .line 197
    .line 198
    iget-wide v12, v8, Lokhttp3/internal/http2/Http2Connection;->N:J

    .line 199
    .line 200
    cmp-long v0, v10, v12

    .line 201
    .line 202
    if-gez v0, :cond_7

    .line 203
    .line 204
    iget-wide v10, v6, Lokhttp3/internal/http2/Http2Stream;->d:J

    .line 205
    .line 206
    iget-wide v12, v6, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 207
    .line 208
    cmp-long v0, v10, v12

    .line 209
    .line 210
    if-ltz v0, :cond_8

    .line 211
    .line 212
    :cond_7
    move v1, v2

    .line 213
    :cond_8
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->i()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    iget-object v0, v8, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 220
    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    .line 228
    :cond_9
    :try_start_2
    monitor-exit v8

    .line 229
    iget-object v0, v8, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 230
    .line 231
    invoke-virtual {v0, v7, v4, v9}, Lokhttp3/internal/http2/Http2Writer;->j(ILjava/util/ArrayList;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    .line 233
    .line 234
    monitor-exit p1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    iget-object p1, v8, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 238
    .line 239
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 240
    .line 241
    .line 242
    :cond_a
    iput-object v6, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 243
    .line 244
    iget-boolean p1, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->f:Z

    .line 245
    .line 246
    iget-object v0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 247
    .line 248
    if-nez p1, :cond_b

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object p1, v0, Lokhttp3/internal/http2/Http2Stream;->q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 254
    .line 255
    iget-object v0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->b:Lokhttp3/internal/http/RealInterceptorChain;

    .line 256
    .line 257
    iget v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 258
    .line 259
    int-to-long v0, v0

    .line 260
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 261
    .line 262
    invoke-virtual {p1, v0, v1, v2}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Stream;->r:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 271
    .line 272
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->b:Lokhttp3/internal/http/RealInterceptorChain;

    .line 273
    .line 274
    iget p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 275
    .line 276
    int-to-long v0, p0

    .line 277
    invoke-virtual {p1, v0, v1, v2}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 285
    .line 286
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Stream;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 287
    .line 288
    .line 289
    const-string p0, "Canceled"

    .line 290
    .line 291
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    move-object p0, v0

    .line 297
    goto :goto_4

    .line 298
    :cond_c
    :try_start_3
    new-instance p0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 299
    .line 300
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 301
    .line 302
    .line 303
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :goto_3
    :try_start_4
    monitor-exit v8

    .line 305
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 306
    :goto_4
    monitor-exit p1

    .line 307
    throw p0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 8
    .line 9
    iget-boolean v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d:Lnw0;

    .line 15
    .line 16
    invoke-virtual {v1}, Lnw0;->x()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v1, v0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw v0

    .line 33
    :cond_1
    return v0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->f:Z

    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Stream;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final d(Lokhttp3/Response;)Lij7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e(Z)Lokhttp3/Response$Builder;
    .locals 9

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_f

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->f:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_7

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 31
    .line 32
    iget-boolean v5, v4, Lokhttp3/internal/http2/Http2Stream$FramingSink;->c:Z

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    iget-boolean v4, v4, Lokhttp3/internal/http2/Http2Stream$FramingSink;->a:Z

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    move v4, v2

    .line 44
    :goto_2
    if-eqz v4, :cond_4

    .line 45
    .line 46
    :cond_3
    move v3, v2

    .line 47
    :cond_4
    if-eqz v3, :cond_5

    .line 48
    .line 49
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 50
    .line 51
    invoke-virtual {v2}, Lc70;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_5
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    :try_start_2
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 64
    .line 65
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :goto_4
    if-eqz v3, :cond_6

    .line 85
    .line 86
    :try_start_4
    iget-object p1, v0, Lokhttp3/internal/http2/Http2Stream;->q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 87
    .line 88
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->l()V

    .line 89
    .line 90
    .line 91
    :cond_6
    throw p0

    .line 92
    :cond_7
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->f:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_d

    .line 99
    .line 100
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->f:Ljava/util/ArrayDeque;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast v2, Lokhttp3/Headers;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .line 111
    monitor-exit v0

    .line 112
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->e:Lokhttp3/Protocol;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 118
    .line 119
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    move-object v5, v1

    .line 127
    :goto_5
    if-ge v3, v4, :cond_a

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v2, v3}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-string v8, ":status"

    .line 138
    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_8

    .line 144
    .line 145
    const-string v5, "HTTP/1.1 "

    .line 146
    .line 147
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5}, Lokhttp3/internal/http/StatusLine$Companion;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_6

    .line 156
    :cond_8
    sget-object v8, Lokhttp3/internal/http2/Http2ExchangeCodec;->h:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-nez v8, :cond_9

    .line 163
    .line 164
    invoke-static {v0, v6, v7}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_a
    if-eqz v5, :cond_c

    .line 171
    .line 172
    new-instance v2, Lokhttp3/Response$Builder;

    .line 173
    .line 174
    invoke-direct {v2}, Lokhttp3/Response$Builder;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p0, v2, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 178
    .line 179
    iget p0, v5, Lokhttp3/internal/http/StatusLine;->b:I

    .line 180
    .line 181
    iput p0, v2, Lokhttp3/Response$Builder;->c:I

    .line 182
    .line 183
    iget-object p0, v5, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iput-object p0, v2, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    iput-object p0, v2, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 199
    .line 200
    if-eqz p1, :cond_b

    .line 201
    .line 202
    iget p0, v2, Lokhttp3/Response$Builder;->c:I

    .line 203
    .line 204
    const/16 p1, 0x64

    .line 205
    .line 206
    if-ne p0, p1, :cond_b

    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_b
    return-object v2

    .line 210
    :cond_c
    new-instance p0, Ljava/net/ProtocolException;

    .line 211
    .line 212
    const-string p1, "Expected \':status\' header not present"

    .line 213
    .line 214
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_d
    :try_start_5
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Stream;->x:Ljava/io/IOException;

    .line 219
    .line 220
    if-eqz p0, :cond_e

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_e
    new-instance p0, Lokhttp3/internal/http2/StreamResetException;

    .line 224
    .line 225
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 233
    .line 234
    .line 235
    :goto_7
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    :goto_8
    monitor-exit v0

    .line 237
    throw p0

    .line 238
    :cond_f
    const-string p0, "stream wasn\'t created"

    .line 239
    .line 240
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v1
.end method

.method public final f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->c:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lokhttp3/Response;)J
    .locals 0

    .line 1
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->e(Lokhttp3/Response;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public final getSocket()Lwi7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final h()Lokhttp3/internal/http/ExchangeCodec$Carrier;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->a:Lokhttp3/internal/connection/RealConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Lokhttp3/Request;J)Lnh7;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/http2/Http2ExchangeCodec;->d:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 10
    .line 11
    return-object p0
.end method
