.class public Lcom/jcraft/jsch/ProxySOCKS5;
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
    const/16 v3, 0x438

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
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->b:I

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->a:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->b:I

    return-void
.end method

.method public static a(Ljava/io/InputStream;[BI)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p2, v0

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchProxyException;

    .line 15
    .line 16
    const-string p1, "ProxySOCKS5: stream is closed"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    return-void
.end method

.method public static getDefaultPort()I
    .locals 1

    .line 1
    const/16 v0, 0x438

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

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
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

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
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 28
    .line 29
    return-void
.end method

.method public final connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "ProxySOCKS5: server returns "

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->a:Ljava/lang/String;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v1, p4, v2}, Lcom/jcraft/jsch/Util;->g(IILjava/lang/String;)Ljava/net/Socket;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 38
    .line 39
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 46
    .line 47
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 52
    .line 53
    :goto_0
    if-lez p4, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 56
    .line 57
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 61
    .line 62
    const/4 p4, 0x1

    .line 63
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 64
    .line 65
    .line 66
    const/16 p1, 0x400

    .line 67
    .line 68
    new-array p1, p1, [B

    .line 69
    .line 70
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    move v3, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move v3, p4

    .line 82
    :goto_1
    const/4 v4, 0x5

    .line 83
    const/4 v5, 0x0

    .line 84
    aput-byte v4, p1, v5

    .line 85
    .line 86
    int-to-byte v3, v3

    .line 87
    aput-byte v3, p1, p4

    .line 88
    .line 89
    aput-byte v5, p1, v2

    .line 90
    .line 91
    const/4 v3, 0x4

    .line 92
    const/4 v6, 0x3

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    aput-byte v2, p1, v6

    .line 100
    .line 101
    move v1, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move v1, v6

    .line 104
    :goto_2
    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 105
    .line 106
    invoke-virtual {v7, p1, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 110
    .line 111
    invoke-static {v1, p1, v2}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 112
    .line 113
    .line 114
    aget-byte v1, p1, p4

    .line 115
    .line 116
    and-int/lit16 v1, v1, 0xff

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    if-eq v1, v2, :cond_4

    .line 122
    .line 123
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 124
    .line 125
    const-string v8, "Unsupported SOCKS5 authentication method requested by server: %02X"

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v7, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    :goto_3
    move v1, v5

    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    iget-object v8, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 147
    .line 148
    if-nez v8, :cond_5

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    aput-byte p4, p1, v5

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    int-to-byte v1, v1

    .line 158
    aput-byte v1, p1, p4

    .line 159
    .line 160
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 161
    .line 162
    sget-object v8, Lcom/jcraft/jsch/Util;->a:[B

    .line 163
    .line 164
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 165
    .line 166
    invoke-static {v1, v8}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v9, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    invoke-static {v1, v5, p1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int v9, v2, v1

    .line 186
    .line 187
    add-int/2addr v1, v6

    .line 188
    iget-object v10, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    int-to-byte v10, v10

    .line 195
    aput-byte v10, p1, v9

    .line 196
    .line 197
    iget-object v9, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v9, v8}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    iget-object v9, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-static {v8, v5, p1, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    .line 211
    .line 212
    iget-object v8, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    add-int/2addr v1, v8

    .line 219
    iget-object v8, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 220
    .line 221
    invoke-virtual {v8, p1, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 225
    .line 226
    invoke-static {v1, p1, v2}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 227
    .line 228
    .line 229
    aget-byte v1, p1, p4

    .line 230
    .line 231
    and-int/lit16 v1, v1, 0xff

    .line 232
    .line 233
    if-nez v1, :cond_7

    .line 234
    .line 235
    :cond_6
    move v1, p4

    .line 236
    goto :goto_5

    .line 237
    :cond_7
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 238
    .line 239
    const-string v8, "SOCKS5 username/password authentication failed: server status = %02X"

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v7, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    goto :goto_3

    .line 254
    :cond_8
    :goto_4
    const-string v7, "SOCKS5 username/password authentication requested by server with no username/password configured"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :goto_5
    if-nez v1, :cond_a

    .line 258
    .line 259
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .line 263
    .line 264
    :catch_1
    if-nez v7, :cond_9

    .line 265
    .line 266
    :try_start_2
    const-string v7, "fail in SOCKS5 proxy"

    .line 267
    .line 268
    :cond_9
    new-instance p1, Lcom/jcraft/jsch/JSchProxyException;

    .line 269
    .line 270
    invoke-direct {p1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_a
    aput-byte v4, p1, v5

    .line 275
    .line 276
    aput-byte p4, p1, p4

    .line 277
    .line 278
    aput-byte v5, p1, v2

    .line 279
    .line 280
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 281
    .line 282
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 283
    .line 284
    invoke-static {p2, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    array-length v1, p2

    .line 289
    aput-byte v6, p1, v6

    .line 290
    .line 291
    int-to-byte v7, v1

    .line 292
    aput-byte v7, p1, v3

    .line 293
    .line 294
    invoke-static {p2, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    .line 296
    .line 297
    add-int/2addr v4, v1

    .line 298
    add-int/lit8 p2, v1, 0x6

    .line 299
    .line 300
    ushr-int/lit8 v7, p3, 0x8

    .line 301
    .line 302
    int-to-byte v7, v7

    .line 303
    aput-byte v7, p1, v4

    .line 304
    .line 305
    add-int/lit8 v1, v1, 0x7

    .line 306
    .line 307
    and-int/lit16 p3, p3, 0xff

    .line 308
    .line 309
    int-to-byte p3, p3

    .line 310
    aput-byte p3, p1, p2

    .line 311
    .line 312
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 313
    .line 314
    invoke-virtual {p2, p1, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 315
    .line 316
    .line 317
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 318
    .line 319
    invoke-static {p2, p1, v3}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 320
    .line 321
    .line 322
    aget-byte p2, p1, p4

    .line 323
    .line 324
    if-nez p2, :cond_e

    .line 325
    .line 326
    aget-byte p2, p1, v6

    .line 327
    .line 328
    and-int/lit16 p2, p2, 0xff

    .line 329
    .line 330
    if-eq p2, p4, :cond_d

    .line 331
    .line 332
    if-eq p2, v6, :cond_c

    .line 333
    .line 334
    if-eq p2, v3, :cond_b

    .line 335
    .line 336
    return-void

    .line 337
    :cond_b
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 338
    .line 339
    const/16 p3, 0x12

    .line 340
    .line 341
    invoke-static {p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_c
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 346
    .line 347
    invoke-static {p2, p1, p4}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 348
    .line 349
    .line 350
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 351
    .line 352
    aget-byte p3, p1, v5

    .line 353
    .line 354
    and-int/lit16 p3, p3, 0xff

    .line 355
    .line 356
    add-int/2addr p3, v2

    .line 357
    invoke-static {p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_d
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 362
    .line 363
    const/4 p3, 0x6

    .line 364
    invoke-static {p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_e
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 371
    .line 372
    .line 373
    :catch_2
    :try_start_4
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 374
    .line 375
    new-instance p3, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    aget-byte p1, p1, p4

    .line 381
    .line 382
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 393
    :goto_6
    :try_start_5
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 394
    .line 395
    if-eqz p0, :cond_f

    .line 396
    .line 397
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 398
    .line 399
    .line 400
    :catch_3
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string p2, "ProxySOCKS5: "

    .line 403
    .line 404
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 419
    .line 420
    invoke-direct {p2, p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    .line 422
    .line 423
    throw p2

    .line 424
    :catch_4
    move-exception p0

    .line 425
    throw p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
