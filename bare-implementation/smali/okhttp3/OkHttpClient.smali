.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;,
        Lokhttp3/OkHttpClient$Companion;
    }
.end annotation


# static fields
.field public static final D:Ljava/util/List;

.field public static final E:Ljava/util/List;


# instance fields
.field public final A:Lokhttp3/internal/connection/RouteDatabase;

.field public final B:Lokhttp3/internal/concurrent/TaskRunner;

.field public final C:Lokhttp3/ConnectionPool;

.field public final a:Lokhttp3/Dispatcher;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lb6;

.field public final e:Z

.field public final f:Z

.field public final g:Lokhttp3/Authenticator;

.field public final h:Z

.field public final i:Z

.field public final j:Lokhttp3/CookieJar;

.field public final k:Lokhttp3/Dns;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lokhttp3/Authenticator;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;

.field public final p:Ljavax/net/ssl/X509TrustManager;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Ljavax/net/ssl/HostnameVerifier;

.field public final t:Lokhttp3/CertificatePinner;

.field public final u:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/Protocol;->f:Lokhttp3/Protocol;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lokhttp3/Protocol;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lokhttp3/OkHttpClient;->D:Ljava/util/List;

    .line 14
    .line 15
    sget-object v0, Lokhttp3/ConnectionSpec;->g:Lokhttp3/ConnectionSpec;

    .line 16
    .line 17
    sget-object v1, Lokhttp3/ConnectionSpec;->h:Lokhttp3/ConnectionSpec;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lokhttp3/ConnectionSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lokhttp3/OkHttpClient;->E:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 510
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 7
    .line 8
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    .line 15
    .line 16
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->e:Lb6;

    .line 25
    .line 26
    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Lb6;

    .line 27
    .line 28
    iget-boolean v9, p1, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 29
    .line 30
    iput-boolean v9, p0, Lokhttp3/OkHttpClient;->e:Z

    .line 31
    .line 32
    iget-boolean v10, p1, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 33
    .line 34
    iput-boolean v10, p0, Lokhttp3/OkHttpClient;->f:Z

    .line 35
    .line 36
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 37
    .line 38
    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 39
    .line 40
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 43
    .line 44
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 47
    .line 48
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 49
    .line 50
    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 51
    .line 52
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 53
    .line 54
    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Dns;

    .line 55
    .line 56
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->m:Ljava/net/ProxySelector;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    sget-object v0, Lokhttp3/internal/proxy/NullProxySelector;->a:Lokhttp3/internal/proxy/NullProxySelector;

    .line 67
    .line 68
    :cond_0
    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 69
    .line 70
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->n:Lokhttp3/Authenticator;

    .line 71
    .line 72
    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 73
    .line 74
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->o:Ljavax/net/SocketFactory;

    .line 75
    .line 76
    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/SocketFactory;

    .line 77
    .line 78
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->r:Ljava/util/List;

    .line 79
    .line 80
    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 81
    .line 82
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 83
    .line 84
    iput-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 85
    .line 86
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 87
    .line 88
    iput-object v1, p0, Lokhttp3/OkHttpClient;->s:Ljavax/net/ssl/HostnameVerifier;

    .line 89
    .line 90
    iget v4, p1, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 91
    .line 92
    iput v4, p0, Lokhttp3/OkHttpClient;->v:I

    .line 93
    .line 94
    iget v2, p1, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 95
    .line 96
    iput v2, p0, Lokhttp3/OkHttpClient;->w:I

    .line 97
    .line 98
    iget v3, p1, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 99
    .line 100
    iput v3, p0, Lokhttp3/OkHttpClient;->x:I

    .line 101
    .line 102
    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->z:I

    .line 103
    .line 104
    iput v1, p0, Lokhttp3/OkHttpClient;->y:I

    .line 105
    .line 106
    iget-wide v5, p1, Lokhttp3/OkHttpClient$Builder;->A:J

    .line 107
    .line 108
    iput-wide v5, p0, Lokhttp3/OkHttpClient;->z:J

    .line 109
    .line 110
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 111
    .line 112
    if-nez v1, :cond_1

    .line 113
    .line 114
    new-instance v1, Lokhttp3/internal/connection/RouteDatabase;

    .line 115
    .line 116
    invoke-direct {v1}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    .line 117
    .line 118
    .line 119
    :cond_1
    move-object v8, v1

    .line 120
    iput-object v8, p0, Lokhttp3/OkHttpClient;->A:Lokhttp3/internal/connection/RouteDatabase;

    .line 121
    .line 122
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->C:Lokhttp3/internal/concurrent/TaskRunner;

    .line 123
    .line 124
    if-nez v1, :cond_2

    .line 125
    .line 126
    sget-object v1, Lokhttp3/internal/concurrent/TaskRunner;->t:Lokhttp3/internal/concurrent/TaskRunner;

    .line 127
    .line 128
    :cond_2
    iput-object v1, p0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/concurrent/TaskRunner;

    .line 129
    .line 130
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 131
    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/16 v6, 0x1f

    .line 138
    .line 139
    move v5, v2

    .line 140
    invoke-direct/range {v1 .. v10}, Lokhttp3/ConnectionPool;-><init>(IIIIILokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RouteDatabase;ZZ)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p1, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 144
    .line 145
    :cond_3
    iput-object v1, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/ConnectionPool;

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lokhttp3/ConnectionSpec;

    .line 173
    .line 174
    iget-boolean v2, v2, Lokhttp3/ConnectionSpec;->a:Z

    .line 175
    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    .line 184
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->v:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iput-object v0, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 190
    .line 191
    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->q:Ljavax/net/ssl/X509TrustManager;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iput-object v2, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 197
    .line 198
    iget-object p1, p1, Lokhttp3/OkHttpClient$Builder;->u:Lokhttp3/CertificatePinner;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object v2, p1, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 204
    .line 205
    invoke-static {v2, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_6

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_6
    new-instance v2, Lokhttp3/CertificatePinner;

    .line 213
    .line 214
    iget-object p1, p1, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 215
    .line 216
    invoke-direct {v2, p1, v0}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 217
    .line 218
    .line 219
    move-object p1, v2

    .line 220
    :goto_0
    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 221
    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :cond_7
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 225
    .line 226
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    array-length v2, v0

    .line 250
    const/4 v3, 0x1

    .line 251
    if-ne v2, v3, :cond_9

    .line 252
    .line 253
    const/4 v2, 0x0

    .line 254
    aget-object v4, v0, v2

    .line 255
    .line 256
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    .line 257
    .line 258
    if-eqz v5, :cond_9

    .line 259
    .line 260
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .line 261
    .line 262
    iput-object v4, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 263
    .line 264
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->l()Ljavax/net/ssl/SSLContext;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    .line 274
    .line 275
    aput-object v4, v3, v2

    .line 276
    .line 277
    invoke-virtual {v0, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .line 286
    .line 287
    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 288
    .line 289
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 290
    .line 291
    invoke-virtual {v0, v4}, Lokhttp3/internal/platform/Platform;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-object v0, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 296
    .line 297
    iget-object p1, p1, Lokhttp3/OkHttpClient$Builder;->u:Lokhttp3/CertificatePinner;

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    iget-object v2, p1, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 303
    .line 304
    invoke-static {v2, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_8

    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_8
    new-instance v2, Lokhttp3/CertificatePinner;

    .line 312
    .line 313
    iget-object p1, p1, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 314
    .line 315
    invoke-direct {v2, p1, v0}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 316
    .line 317
    .line 318
    move-object p1, v2

    .line 319
    :goto_1
    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :catch_0
    move-exception v0

    .line 323
    move-object p0, v0

    .line 324
    new-instance p1, Ljava/lang/AssertionError;

    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v1, "No System TLS: "

    .line 329
    .line 330
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    throw p1

    .line 344
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    const-string p1, "Unexpected default trust managers: "

    .line 352
    .line 353
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    throw v1

    .line 361
    :cond_a
    :goto_2
    iput-object v1, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 362
    .line 363
    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 364
    .line 365
    iput-object v1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 366
    .line 367
    sget-object p1, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 368
    .line 369
    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 370
    .line 371
    :goto_3
    iget-object p1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 372
    .line 373
    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 374
    .line 375
    iget-object v2, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 376
    .line 377
    iget-object v3, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 378
    .line 379
    iget-object v4, p0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_16

    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_15

    .line 398
    .line 399
    iget-object v3, p0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 400
    .line 401
    if-eqz v3, :cond_b

    .line 402
    .line 403
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_b

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-eqz v4, :cond_10

    .line 419
    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    check-cast v4, Lokhttp3/ConnectionSpec;

    .line 425
    .line 426
    iget-boolean v4, v4, Lokhttp3/ConnectionSpec;->a:Z

    .line 427
    .line 428
    if-eqz v4, :cond_c

    .line 429
    .line 430
    if-eqz v2, :cond_f

    .line 431
    .line 432
    if-eqz v0, :cond_e

    .line 433
    .line 434
    if-eqz p1, :cond_d

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_d
    const-string p0, "x509TrustManager == null"

    .line 438
    .line 439
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v1

    .line 443
    :cond_e
    const-string p0, "certificateChainCleaner == null"

    .line 444
    .line 445
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v1

    .line 449
    :cond_f
    const-string p0, "sslSocketFactory == null"

    .line 450
    .line 451
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v1

    .line 455
    :cond_10
    :goto_4
    const-string v3, "Check failed."

    .line 456
    .line 457
    if-nez v2, :cond_14

    .line 458
    .line 459
    if-nez v0, :cond_13

    .line 460
    .line 461
    if-nez p1, :cond_12

    .line 462
    .line 463
    iget-object p0, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 464
    .line 465
    sget-object p1, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 466
    .line 467
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p0

    .line 471
    if-eqz p0, :cond_11

    .line 472
    .line 473
    :goto_5
    return-void

    .line 474
    :cond_11
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v1

    .line 478
    :cond_12
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v1

    .line 482
    :cond_13
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v1

    .line 486
    :cond_14
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v1

    .line 490
    :cond_15
    const-string p0, "Null network interceptor: "

    .line 491
    .line 492
    invoke-static {p0, v3}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    throw v1

    .line 500
    :cond_16
    const-string p0, "Null interceptor: "

    .line 501
    .line 502
    invoke-static {p0, v4}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    throw v1
.end method


# virtual methods
.method public final a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final b()Lokhttp3/OkHttpClient$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 7
    .line 8
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 9
    .line 10
    iget-object v1, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/ConnectionPool;

    .line 11
    .line 12
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 13
    .line 14
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v2, v1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/OkHttpClient;->d:Lb6;

    .line 29
    .line 30
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->e:Lb6;

    .line 31
    .line 32
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->e:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->f:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 39
    .line 40
    iget-object v1, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 41
    .line 42
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 43
    .line 44
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 47
    .line 48
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 49
    .line 50
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 51
    .line 52
    iget-object v1, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 53
    .line 54
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 55
    .line 56
    iget-object v1, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Dns;

    .line 57
    .line 58
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 59
    .line 60
    iget-object v1, p0, Lokhttp3/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 61
    .line 62
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->m:Ljava/net/ProxySelector;

    .line 63
    .line 64
    iget-object v1, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 65
    .line 66
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->n:Lokhttp3/Authenticator;

    .line 67
    .line 68
    iget-object v1, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/SocketFactory;

    .line 69
    .line 70
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->o:Ljavax/net/SocketFactory;

    .line 71
    .line 72
    iget-object v1, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 73
    .line 74
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 75
    .line 76
    iget-object v1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 77
    .line 78
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->q:Ljavax/net/ssl/X509TrustManager;

    .line 79
    .line 80
    iget-object v1, p0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 81
    .line 82
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->r:Ljava/util/List;

    .line 83
    .line 84
    iget-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 85
    .line 86
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, Lokhttp3/OkHttpClient;->s:Ljavax/net/ssl/HostnameVerifier;

    .line 89
    .line 90
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 91
    .line 92
    iget-object v1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 93
    .line 94
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->u:Lokhttp3/CertificatePinner;

    .line 95
    .line 96
    iget-object v1, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 97
    .line 98
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->v:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 99
    .line 100
    iget v1, p0, Lokhttp3/OkHttpClient;->v:I

    .line 101
    .line 102
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 103
    .line 104
    iget v1, p0, Lokhttp3/OkHttpClient;->w:I

    .line 105
    .line 106
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 107
    .line 108
    iget v1, p0, Lokhttp3/OkHttpClient;->x:I

    .line 109
    .line 110
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 111
    .line 112
    iget v1, p0, Lokhttp3/OkHttpClient;->y:I

    .line 113
    .line 114
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->z:I

    .line 115
    .line 116
    iget-wide v1, p0, Lokhttp3/OkHttpClient;->z:J

    .line 117
    .line 118
    iput-wide v1, v0, Lokhttp3/OkHttpClient$Builder;->A:J

    .line 119
    .line 120
    iget-object v1, p0, Lokhttp3/OkHttpClient;->A:Lokhttp3/internal/connection/RouteDatabase;

    .line 121
    .line 122
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 123
    .line 124
    iget-object p0, p0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/concurrent/TaskRunner;

    .line 125
    .line 126
    iput-object p0, v0, Lokhttp3/OkHttpClient$Builder;->C:Lokhttp3/internal/concurrent/TaskRunner;

    .line 127
    .line 128
    return-object v0
.end method
