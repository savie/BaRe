.class public Lcom/jcraft/jsch/ProxyHTTP;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/io/InputStream;

.field public d:Ljava/io/OutputStream;

.field public e:Ljava/net/Socket;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3a

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/16 v3, 0x50

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :catch_0
    move-object p1, v1

    .line 39
    :catch_1
    :cond_0
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput v3, p0, Lcom/jcraft/jsch/ProxyHTTP;->b:I

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->a:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->b:I

    return-void
.end method

.method public static getDefaultPort()I
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 28
    .line 29
    return-void
.end method

.method public final connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, "CONNECT "

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jsch/ProxyHTTP;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/jcraft/jsch/ProxyHTTP;->a:Ljava/lang/String;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v2, p4, v3}, Lcom/jcraft/jsch/Util;->g(IILjava/lang/String;)Ljava/net/Socket;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    invoke-interface {p1, v3, v2}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 40
    .line 41
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 48
    .line 49
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 54
    .line 55
    :goto_0
    if-lez p4, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 58
    .line 59
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 63
    .line 64
    const/4 p4, 0x1

    .line 65
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, " HTTP/1.0\r\n"

    .line 85
    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object p3, Lcom/jcraft/jsch/Util;->a:[B

    .line 94
    .line 95
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    const-string p2, "\r\n"

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->g:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->g:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    array-length v0, p1

    .line 141
    invoke-static {v0, p4, p1}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 146
    .line 147
    const-string v1, "Proxy-Authorization: Basic "

    .line 148
    .line 149
    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 162
    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 168
    .line 169
    .line 170
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 182
    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const/4 p2, 0x0

    .line 190
    move p3, p2

    .line 191
    :goto_1
    const/16 v0, 0xa

    .line 192
    .line 193
    const/16 v1, 0xd

    .line 194
    .line 195
    if-ltz p3, :cond_4

    .line 196
    .line 197
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 198
    .line 199
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-eq p3, v1, :cond_3

    .line 204
    .line 205
    int-to-char v0, p3

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 211
    .line 212
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    if-eq p3, v0, :cond_4

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_4
    if-ltz p3, :cond_a

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string v2, "Unknow reason"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    const/16 v3, 0x20

    .line 228
    .line 229
    const/4 v4, -0x1

    .line 230
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    add-int/lit8 v5, p3, 0x1

    .line 235
    .line 236
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    add-int/2addr v3, p4

    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    :catch_1
    const/16 p1, 0xc8

    .line 254
    .line 255
    if-ne v4, p1, :cond_9

    .line 256
    .line 257
    :cond_5
    move p1, p2

    .line 258
    :goto_2
    if-ltz p3, :cond_7

    .line 259
    .line 260
    :try_start_3
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 261
    .line 262
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    if-eq p3, v1, :cond_6

    .line 267
    .line 268
    add-int/lit8 p1, p1, 0x1

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_6
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 272
    .line 273
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    .line 274
    .line 275
    .line 276
    move-result p3

    .line 277
    if-eq p3, v0, :cond_7

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_7
    if-ltz p3, :cond_8

    .line 281
    .line 282
    if-nez p1, :cond_5

    .line 283
    .line 284
    return-void

    .line 285
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 286
    .line 287
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 292
    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string p3, "proxy error: "

    .line 299
    .line 300
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw p1

    .line 314
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 317
    .line 318
    .line 319
    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 320
    :goto_3
    :try_start_4
    iget-object p0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 321
    .line 322
    if-eqz p0, :cond_b

    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 325
    .line 326
    .line 327
    :catch_2
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string p2, "ProxyHTTP: "

    .line 330
    .line 331
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 346
    .line 347
    invoke-direct {p2, p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .line 349
    .line 350
    throw p2

    .line 351
    :catch_3
    move-exception p0

    .line 352
    throw p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->g:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
