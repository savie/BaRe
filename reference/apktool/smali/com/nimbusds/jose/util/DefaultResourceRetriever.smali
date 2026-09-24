.class public Lcom/nimbusds/jose/util/DefaultResourceRetriever;
.super Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/util/RestrictedResourceRetriever;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private disconnectAfterUse:Z

.field private proxy:Ljava/net/Proxy;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(IIIZLjavax/net/ssl/SSLSocketFactory;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(IIIZLjavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;-><init>(III)V

    .line 15
    iput-boolean p4, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    .line 16
    iput-object p5, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private getInputStream(Ljava/net/URLConnection;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Lcom/nimbusds/jose/util/BoundedInputStream;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getSizeLimit()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    invoke-direct {p2, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    return-object p1
.end method


# virtual methods
.method public disconnectsAfterUse()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    .line 2
    .line 3
    return p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->openHTTPConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public openFileConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public openHTTPConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    return-object p0
.end method

.method public retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "file"

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->openFileConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getConnectTimeout()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getReadTimeout()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    .line 42
    .line 43
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    move-object v2, p1

    .line 52
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    move-object v6, v0

    .line 60
    move-object v0, p1

    .line 61
    move-object p1, v6

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :catch_1
    move-exception v0

    .line 65
    move-object v6, v0

    .line 66
    move-object v0, p1

    .line 67
    move-object p1, v6

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_1
    :goto_1
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getHeaders()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getHeaders()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getHeaders()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_2

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->getSizeLimit()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-direct {p0, p1, v1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getInputStream(Ljava/net/URLConnection;I)Ljava/io/InputStream;

    .line 151
    .line 152
    .line 153
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    sget-object v2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 155
    .line 156
    invoke-static {v1, v2}, Lcom/nimbusds/jose/util/IOUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 163
    .line 164
    .line 165
    :cond_4
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    move-object v1, p1

    .line 170
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const/16 v4, 0x12b

    .line 181
    .line 182
    if-gt v3, v4, :cond_5

    .line 183
    .line 184
    const/16 v4, 0xc8

    .line 185
    .line 186
    if-lt v3, v4, :cond_5

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "HTTP "

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v3, ": "

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_6
    :goto_3
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    .line 221
    .line 222
    if-eqz v1, :cond_7

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    :cond_7
    new-instance v1, Lcom/nimbusds/jose/util/Resource;

    .line 229
    .line 230
    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/util/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    .line 232
    .line 233
    iget-boolean p0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    .line 234
    .line 235
    if-eqz p0, :cond_8

    .line 236
    .line 237
    instance-of p0, p1, Ljava/net/HttpURLConnection;

    .line 238
    .line 239
    if-eqz p0, :cond_8

    .line 240
    .line 241
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 244
    .line 245
    .line 246
    :cond_8
    return-object v1

    .line 247
    :catchall_2
    move-exception v0

    .line 248
    if-eqz v1, :cond_9

    .line 249
    .line 250
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catchall_3
    move-exception v1

    .line 255
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    :goto_4
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 259
    :goto_5
    :try_start_6
    instance-of v1, p1, Ljava/io/IOException;

    .line 260
    .line 261
    if-eqz v1, :cond_a

    .line 262
    .line 263
    throw p1

    .line 264
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v3, "Couldn\'t open URL connection: "

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 291
    :goto_6
    iget-boolean p0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    .line 292
    .line 293
    if-eqz p0, :cond_b

    .line 294
    .line 295
    instance-of p0, v0, Ljava/net/HttpURLConnection;

    .line 296
    .line 297
    if-eqz p0, :cond_b

    .line 298
    .line 299
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    .line 303
    .line 304
    :cond_b
    throw p1
.end method

.method public setDisconnectsAfterUse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    return-void
.end method
