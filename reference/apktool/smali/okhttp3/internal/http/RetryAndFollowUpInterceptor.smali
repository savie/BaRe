.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-void
.end method

.method public static d(Lokhttp3/Response;I)I
    .locals 1

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const-string p1, "\\d+"

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    const p0, 0x7fffffff

    .line 42
    .line 43
    .line 44
    return p0
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, v2, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    sget-object v4, Lov2;->a:Lov2;

    .line 10
    .line 11
    move-object v8, v4

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    move-object v4, v0

    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v11, v3, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/Exchange;

    .line 20
    .line 21
    if-nez v11, :cond_d

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    iget-boolean v11, v3, Lokhttp3/internal/connection/RealCall;->x:Z

    .line 25
    .line 26
    if-nez v11, :cond_c

    .line 27
    .line 28
    iget-boolean v11, v3, Lokhttp3/internal/connection/RealCall;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 29
    .line 30
    if-nez v11, :cond_b

    .line 31
    .line 32
    monitor-exit v3

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 36
    .line 37
    iget-object v12, v0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/concurrent/TaskRunner;

    .line 38
    .line 39
    iget-object v13, v3, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/internal/connection/RealConnectionPool;

    .line 40
    .line 41
    iget v14, v0, Lokhttp3/OkHttpClient;->w:I

    .line 42
    .line 43
    iget v15, v0, Lokhttp3/OkHttpClient;->x:I

    .line 44
    .line 45
    iget v11, v2, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 46
    .line 47
    const/16 v24, 0x0

    .line 48
    .line 49
    iget v6, v2, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 50
    .line 51
    iget-boolean v7, v0, Lokhttp3/OkHttpClient;->e:Z

    .line 52
    .line 53
    iget-boolean v5, v0, Lokhttp3/OkHttpClient;->f:Z

    .line 54
    .line 55
    move/from16 v20, v5

    .line 56
    .line 57
    iget-object v5, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->f()Z

    .line 63
    .line 64
    .line 65
    move-result v16

    .line 66
    move/from16 v17, v6

    .line 67
    .line 68
    if-eqz v16, :cond_1

    .line 69
    .line 70
    iget-object v6, v0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 71
    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    move-object/from16 v16, v6

    .line 75
    .line 76
    iget-object v6, v0, Lokhttp3/OkHttpClient;->s:Ljavax/net/ssl/HostnameVerifier;

    .line 77
    .line 78
    move-object/from16 v18, v6

    .line 79
    .line 80
    iget-object v6, v0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 81
    .line 82
    move-object/from16 v32, v6

    .line 83
    .line 84
    move-object/from16 v30, v16

    .line 85
    .line 86
    move-object/from16 v31, v18

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    const-string v0, "CLEARTEXT-only client"

    .line 90
    .line 91
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v24

    .line 95
    :cond_1
    move-object/from16 v30, v24

    .line 96
    .line 97
    move-object/from16 v31, v30

    .line 98
    .line 99
    move-object/from16 v32, v31

    .line 100
    .line 101
    :goto_2
    new-instance v21, Lokhttp3/Address;

    .line 102
    .line 103
    iget-object v6, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 104
    .line 105
    iget v5, v5, Lokhttp3/HttpUrl;->e:I

    .line 106
    .line 107
    move/from16 v27, v5

    .line 108
    .line 109
    iget-object v5, v0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Dns;

    .line 110
    .line 111
    move-object/from16 v28, v5

    .line 112
    .line 113
    iget-object v5, v0, Lokhttp3/OkHttpClient;->n:Ljavax/net/SocketFactory;

    .line 114
    .line 115
    move-object/from16 v29, v5

    .line 116
    .line 117
    iget-object v5, v0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 118
    .line 119
    move-object/from16 v33, v5

    .line 120
    .line 121
    iget-object v5, v0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 122
    .line 123
    move-object/from16 v34, v5

    .line 124
    .line 125
    iget-object v5, v0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 126
    .line 127
    iget-object v0, v0, Lokhttp3/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 128
    .line 129
    move-object/from16 v36, v0

    .line 130
    .line 131
    move-object/from16 v35, v5

    .line 132
    .line 133
    move-object/from16 v26, v6

    .line 134
    .line 135
    move-object/from16 v25, v21

    .line 136
    .line 137
    invoke-direct/range {v25 .. v36}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lokhttp3/internal/connection/CallConnectionUser;

    .line 141
    .line 142
    iget-object v5, v3, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/internal/connection/RealConnectionPool;

    .line 143
    .line 144
    iget-object v5, v5, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    .line 145
    .line 146
    invoke-direct {v0, v3, v5, v2}, Lokhttp3/internal/connection/CallConnectionUser;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ConnectionListener;Lokhttp3/internal/http/RealInterceptorChain;)V

    .line 147
    .line 148
    .line 149
    iget-object v5, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 150
    .line 151
    iget-object v5, v5, Lokhttp3/OkHttpClient;->A:Lokhttp3/internal/connection/RouteDatabase;

    .line 152
    .line 153
    move/from16 v16, v11

    .line 154
    .line 155
    new-instance v11, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    move-object/from16 v23, v0

    .line 160
    .line 161
    move-object/from16 v22, v5

    .line 162
    .line 163
    move/from16 v19, v7

    .line 164
    .line 165
    invoke-direct/range {v11 .. v23}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/ConnectionUser;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 169
    .line 170
    iget-boolean v5, v0, Lokhttp3/OkHttpClient;->f:Z

    .line 171
    .line 172
    if-eqz v5, :cond_2

    .line 173
    .line 174
    new-instance v5, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    .line 175
    .line 176
    iget-object v0, v0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/concurrent/TaskRunner;

    .line 177
    .line 178
    invoke-direct {v5, v11, v0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_2
    new-instance v5, Lokhttp3/internal/connection/SequentialExchangeFinder;

    .line 183
    .line 184
    invoke-direct {v5, v11}, Lokhttp3/internal/connection/SequentialExchangeFinder;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    iput-object v5, v3, Lokhttp3/internal/connection/RealCall;->n:Lokhttp3/internal/connection/ExchangeFinder;

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_3
    const/16 v24, 0x0

    .line 191
    .line 192
    :goto_4
    :try_start_1
    iget-boolean v0, v3, Lokhttp3/internal/connection/RealCall;->G:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 193
    .line 194
    if-nez v0, :cond_a

    .line 195
    .line 196
    :try_start_2
    invoke-virtual {v2, v4}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 197
    .line 198
    .line 199
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v4, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 205
    .line 206
    if-eqz v9, :cond_4

    .line 207
    .line 208
    invoke-static {v9}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    goto :goto_5

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    const/4 v5, 0x1

    .line 215
    goto/16 :goto_8

    .line 216
    .line 217
    :cond_4
    move-object/from16 v4, v24

    .line 218
    .line 219
    :goto_5
    iput-object v4, v0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    .line 220
    .line 221
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/Exchange;

    .line 226
    .line 227
    invoke-virtual {v1, v9, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;

    .line 228
    .line 229
    .line 230
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    if-nez v4, :cond_5

    .line 232
    .line 233
    :try_start_4
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    .line 237
    .line 238
    const/4 v1, 0x0

    .line 239
    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/RealCall;->c(Z)V

    .line 240
    .line 241
    .line 242
    return-object v9

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    const/4 v5, 0x0

    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :cond_5
    :try_start_5
    iget-object v0, v4, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 248
    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    invoke-virtual {v0}, Lokhttp3/RequestBody;->c()Z

    .line 252
    .line 253
    .line 254
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    if-eqz v0, :cond_6

    .line 256
    .line 257
    :try_start_6
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 260
    .line 261
    .line 262
    const/4 v5, 0x0

    .line 263
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->c(Z)V

    .line 264
    .line 265
    .line 266
    return-object v9

    .line 267
    :cond_6
    const/4 v5, 0x0

    .line 268
    :try_start_7
    iget-object v0, v9, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 269
    .line 270
    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 271
    .line 272
    .line 273
    add-int/lit8 v10, v10, 0x1

    .line 274
    .line 275
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 276
    .line 277
    const/16 v6, 0x14

    .line 278
    .line 279
    if-gt v10, v6, :cond_7

    .line 280
    .line 281
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 282
    .line 283
    .line 284
    const/4 v6, 0x1

    .line 285
    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/RealCall;->c(Z)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_7
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    new-instance v0, Ljava/net/ProtocolException;

    .line 294
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v2, "Too many follow-up requests: "

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const/4 v5, 0x0

    .line 318
    :try_start_a
    invoke-virtual {v1, v0, v3, v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    iget-object v7, v3, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 325
    .line 326
    .line 327
    if-nez v6, :cond_9

    .line 328
    .line 329
    :try_start_b
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 330
    .line 331
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_8

    .line 340
    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Ljava/lang/Exception;

    .line 346
    .line 347
    invoke-static {v0, v2}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_8
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 352
    :cond_9
    :try_start_c
    invoke-static {v0, v8}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 353
    .line 354
    .line 355
    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 356
    const/4 v6, 0x1

    .line 357
    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/RealCall;->c(Z)V

    .line 358
    .line 359
    .line 360
    move v0, v5

    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :catchall_2
    move-exception v0

    .line 364
    const/4 v6, 0x1

    .line 365
    :goto_7
    move v5, v6

    .line 366
    goto :goto_8

    .line 367
    :cond_a
    const/4 v6, 0x1

    .line 368
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    .line 369
    .line 370
    const-string v1, "Canceled"

    .line 371
    .line 372
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 376
    :catchall_3
    move-exception v0

    .line 377
    goto :goto_7

    .line 378
    :goto_8
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->c(Z)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_b
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    const-string v1, "Check failed."

    .line 385
    .line 386
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :catchall_4
    move-exception v0

    .line 391
    goto :goto_9

    .line 392
    :cond_c
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 393
    .line 394
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 395
    .line 396
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 400
    :goto_9
    monitor-exit v3

    .line 401
    throw v0

    .line 402
    :cond_d
    const/16 v24, 0x0

    .line 403
    .line 404
    const-string v0, "Check failed."

    .line 405
    .line 406
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return-object v24
.end method

.method public final b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lokhttp3/Response;->d:I

    .line 13
    .line 14
    iget-object v3, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 15
    .line 16
    iget-object v4, v3, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/16 v7, 0x134

    .line 21
    .line 22
    const/16 v8, 0x133

    .line 23
    .line 24
    if-eq v2, v8, :cond_e

    .line 25
    .line 26
    if-eq v2, v7, :cond_e

    .line 27
    .line 28
    const/16 v9, 0x191

    .line 29
    .line 30
    if-eq v2, v9, :cond_d

    .line 31
    .line 32
    const/16 v9, 0x1a5

    .line 33
    .line 34
    if-eq v2, v9, :cond_a

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_8

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_6

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->e:Z

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object p0, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lokhttp3/RequestBody;->c()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    iget-object p0, p1, Lokhttp3/Response;->r:Lokhttp3/Response;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    iget p0, p0, Lokhttp3/Response;->d:I

    .line 78
    .line 79
    if-ne p0, p2, :cond_4

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_4
    invoke-static {p1, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-lez p0, :cond_5

    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_5
    iget-object p0, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object p1, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 104
    .line 105
    if-ne p1, p2, :cond_7

    .line 106
    .line 107
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 108
    .line 109
    iget-object p0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    .line 116
    .line 117
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_8
    iget-object p0, p1, Lokhttp3/Response;->r:Lokhttp3/Response;

    .line 124
    .line 125
    if-eqz p0, :cond_9

    .line 126
    .line 127
    iget p0, p0, Lokhttp3/Response;->d:I

    .line 128
    .line 129
    if-ne p0, p2, :cond_9

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_9
    const p0, 0x7fffffff

    .line 134
    .line 135
    .line 136
    invoke-static {p1, p0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-nez p0, :cond_13

    .line 141
    .line 142
    iget-object p0, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_a
    iget-object p0, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 146
    .line 147
    if-eqz p0, :cond_b

    .line 148
    .line 149
    invoke-virtual {p0}, Lokhttp3/RequestBody;->c()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_b

    .line 154
    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_b
    if-eqz p2, :cond_13

    .line 158
    .line 159
    iget-object p0, p2, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 160
    .line 161
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-interface {p0}, Lokhttp3/internal/connection/RoutePlanner;->c()Lokhttp3/Address;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    iget-object p0, p0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 170
    .line 171
    iget-object p0, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 174
    .line 175
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->h()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->h()Lokhttp3/Route;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 184
    .line 185
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 186
    .line 187
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {p0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_c

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_c
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iput-boolean v6, p0, Lokhttp3/internal/connection/RealConnection;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .line 203
    monitor-exit p0

    .line 204
    iget-object p0, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 205
    .line 206
    return-object p0

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    monitor-exit p0

    .line 209
    throw p1

    .line 210
    :cond_d
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 211
    .line 212
    iget-object p0, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 213
    .line 214
    invoke-interface {p0, v1, p1}, Lokhttp3/Authenticator;->b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :cond_e
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 220
    .line 221
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 222
    .line 223
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 224
    .line 225
    if-nez v1, :cond_f

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_f
    const-string v1, "Location"

    .line 229
    .line 230
    invoke-static {v1, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iget-object v2, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 235
    .line 236
    if-nez v1, :cond_10

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_10
    iget-object v3, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    :try_start_1
    new-instance v9, Lokhttp3/HttpUrl$Builder;

    .line 245
    .line 246
    invoke-direct {v9}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9, v3, v1}, Lokhttp3/HttpUrl$Builder;->h(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :catch_0
    move-object v9, v0

    .line 254
    :goto_1
    if-eqz v9, :cond_11

    .line 255
    .line 256
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    goto :goto_2

    .line 261
    :cond_11
    move-object v1, v0

    .line 262
    :goto_2
    if-nez v1, :cond_12

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_12
    iget-object v3, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v9, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 268
    .line 269
    iget-object v9, v9, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v3, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-nez v3, :cond_14

    .line 276
    .line 277
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 278
    .line 279
    if-nez p0, :cond_14

    .line 280
    .line 281
    :cond_13
    :goto_3
    return-object v0

    .line 282
    :cond_14
    invoke-virtual {v2}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_19

    .line 291
    .line 292
    iget p1, p1, Lokhttp3/Response;->d:I

    .line 293
    .line 294
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-nez v3, :cond_15

    .line 299
    .line 300
    if-eq p1, v7, :cond_15

    .line 301
    .line 302
    if-ne p1, v8, :cond_16

    .line 303
    .line 304
    :cond_15
    move v5, v6

    .line 305
    :cond_16
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    if-nez p2, :cond_17

    .line 310
    .line 311
    if-eq p1, v7, :cond_17

    .line 312
    .line 313
    if-eq p1, v8, :cond_17

    .line 314
    .line 315
    const-string p1, "GET"

    .line 316
    .line 317
    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_17
    if-eqz v5, :cond_18

    .line 322
    .line 323
    iget-object v0, v2, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 324
    .line 325
    :cond_18
    invoke-virtual {p0, v4, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 326
    .line 327
    .line 328
    :goto_4
    if-nez v5, :cond_19

    .line 329
    .line 330
    const-string p1, "Transfer-Encoding"

    .line 331
    .line 332
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 333
    .line 334
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string p1, "Content-Length"

    .line 338
    .line 339
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string p1, "Content-Type"

    .line 345
    .line 346
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_19
    iget-object p1, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 352
    .line 353
    invoke-static {p1, v1}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_1a

    .line 358
    .line 359
    const-string p1, "Authorization"

    .line 360
    .line 361
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 362
    .line 363
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_1a
    iput-object v1, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 367
    .line 368
    new-instance p1, Lokhttp3/Request;

    .line 369
    .line 370
    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 371
    .line 372
    .line 373
    return-object p1

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->e:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object p0, p3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lokhttp3/RequestBody;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_8

    .line 21
    .line 22
    :cond_1
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 33
    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 37
    .line 38
    if-eqz p0, :cond_8

    .line 39
    .line 40
    if-eqz v0, :cond_8

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    instance-of p0, p0, Ljava/security/cert/CertificateException;

    .line 52
    .line 53
    if-eqz p0, :cond_5

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 57
    .line 58
    if-eqz p0, :cond_6

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_6
    :goto_0
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->H:Lokhttp3/internal/connection/Exchange;

    .line 62
    .line 63
    if-eqz p0, :cond_8

    .line 64
    .line 65
    iget-boolean p0, p0, Lokhttp3/internal/connection/Exchange;->f:Z

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    if-ne p0, p1, :cond_8

    .line 69
    .line 70
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->n:Lokhttp3/internal/connection/ExchangeFinder;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->H:Lokhttp3/internal/connection/Exchange;

    .line 80
    .line 81
    if-eqz p2, :cond_7

    .line 82
    .line 83
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto :goto_1

    .line 88
    :cond_7
    const/4 p2, 0x0

    .line 89
    :goto_1
    invoke-interface {p0, p2}, Lokhttp3/internal/connection/RoutePlanner;->b(Lokhttp3/internal/connection/RealConnection;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_8

    .line 94
    .line 95
    return p1

    .line 96
    :cond_8
    :goto_2
    const/4 p0, 0x0

    .line 97
    return p0
.end method
