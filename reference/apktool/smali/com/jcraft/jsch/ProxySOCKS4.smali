.class public Lcom/jcraft/jsch/ProxySOCKS4;
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
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->b:I

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->a:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->b:I

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
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

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
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

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
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 28
    .line 29
    return-void
.end method

.method public final connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "ProxySOCKS4: "

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->a:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 38
    .line 39
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 46
    .line 47
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

    .line 52
    .line 53
    :goto_0
    if-lez p4, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 56
    .line 57
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

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
    const/4 v1, 0x4

    .line 71
    const/4 v2, 0x0

    .line 72
    aput-byte v1, p1, v2

    .line 73
    .line 74
    aput-byte p4, p1, p4

    .line 75
    .line 76
    ushr-int/lit8 v3, p3, 0x8

    .line 77
    .line 78
    int-to-byte v3, v3

    .line 79
    const/4 v4, 0x2

    .line 80
    aput-byte v3, p1, v4

    .line 81
    .line 82
    and-int/lit16 p3, p3, 0xff

    .line 83
    .line 84
    int-to-byte p3, p3

    .line 85
    const/4 v3, 0x3

    .line 86
    aput-byte p3, p1, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    move p3, v2

    .line 97
    :goto_1
    array-length v3, p2

    .line 98
    if-ge p3, v3, :cond_2

    .line 99
    .line 100
    add-int/lit8 v3, v1, 0x1

    .line 101
    .line 102
    aget-byte v4, p2, p3

    .line 103
    .line 104
    aput-byte v4, p1, v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    add-int/lit8 p3, p3, 0x1

    .line 107
    .line 108
    move v1, v3

    .line 109
    goto :goto_1

    .line 110
    :catch_1
    move-exception p1

    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    sget-object p3, Lcom/jcraft/jsch/Util;->a:[B

    .line 118
    .line 119
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    invoke-static {p2, p3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-static {p2, v2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    add-int/2addr v1, p2

    .line 141
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 142
    .line 143
    aput-byte v2, p1, v1

    .line 144
    .line 145
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

    .line 146
    .line 147
    invoke-virtual {p3, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    .line 149
    .line 150
    move p2, v2

    .line 151
    :goto_2
    const/16 p3, 0x8

    .line 152
    .line 153
    if-ge p2, p3, :cond_5

    .line 154
    .line 155
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

    .line 156
    .line 157
    rsub-int/lit8 v1, p2, 0x8

    .line 158
    .line 159
    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    if-lez p3, :cond_4

    .line 164
    .line 165
    add-int/2addr p2, p3

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchProxyException;

    .line 168
    .line 169
    const-string p2, "ProxySOCKS4: stream is closed"

    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_5
    aget-byte p2, p1, v2

    .line 176
    .line 177
    if-nez p2, :cond_7

    .line 178
    .line 179
    aget-byte p2, p1, p4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .line 181
    const/16 p3, 0x5a

    .line 182
    .line 183
    if-ne p2, p3, :cond_6

    .line 184
    .line 185
    return-void

    .line 186
    :cond_6
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    .line 190
    .line 191
    :catch_2
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string p3, "ProxySOCKS4: server returns CD "

    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    aget-byte p1, p1, p4

    .line 202
    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 211
    .line 212
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p2

    .line 216
    :cond_7
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 217
    .line 218
    new-instance p3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string p4, "ProxySOCKS4: server returns VN "

    .line 224
    .line 225
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    aget-byte p1, p1, v2

    .line 229
    .line 230
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p2

    .line 241
    :goto_3
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    .line 242
    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 266
    :goto_4
    :try_start_5
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 267
    .line 268
    if-eqz p0, :cond_8

    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 271
    .line 272
    .line 273
    :catch_3
    :cond_8
    new-instance p0, Lcom/jcraft/jsch/JSchProxyException;

    .line 274
    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p3

    .line 284
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p0

    .line 295
    :catch_4
    move-exception p0

    .line 296
    throw p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
