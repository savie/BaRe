.class public final Lli4;
.super Lmj1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Lai6;


# instance fields
.field public final c:Ldd1;

.field public d:Lcom/jcraft/jsch/JSch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai6;

    .line 2
    .line 3
    const-string v1, "^[A-Za-z]:/.*"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lli4;->e:Lai6;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmj1;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->SFTP:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lli4;->c:Ldd1;

    .line 7
    .line 8
    return-void
.end method

.method public static final A(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Session;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    .line 6
    .line 7
    :catch_1
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "Invalid path: "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static D(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Lcom/jcraft/jsch/ChannelSftp;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/16 v0, 0x5c

    .line 23
    .line 24
    const/16 v1, 0x2f

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Luq7;->S(Ljava/lang/String;CC)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string p0, "."

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [C

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    aput-char v1, v0, v2

    .line 44
    .line 45
    invoke-static {p0, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "/"

    .line 50
    .line 51
    invoke-static {p0, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    sget-object v2, Lli4;->e:Lai6;

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object p0, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_1
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/ChannelSftp;->cd(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    return-void
.end method

.method public static E(Lli4;ZLqt3;I)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    and-int/2addr p3, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    move p3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move p3, v2

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v3, "Invalid key = "

    .line 19
    .line 20
    const-string v4, "Unhandled authType: "

    .line 21
    .line 22
    xor-int/lit8 v5, p1, 0x1

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, v5}, Lli4;->y(Z)Lcom/jcraft/jsch/JSch;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-virtual {v5, v7, v8, v9}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const-string v8, "StrictHostKeyChecking"

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string p1, "no"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    move-object v7, v6

    .line 60
    goto/16 :goto_9

    .line 61
    .line 62
    :catch_0
    move-exception p0

    .line 63
    move-object v7, v6

    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_2
    const-string p1, "yes"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v7, v8, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getAuthType()Lnc1;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    const/4 p1, -0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    sget-object v8, Lki4;->a:[I

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    aget p1, v8, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    :goto_2
    const-string v8, "PreferredAuthentications"

    .line 88
    .line 89
    if-eq p1, v1, :cond_b

    .line 90
    .line 91
    if-ne p1, v0, :cond_a

    .line 92
    .line 93
    :try_start_1
    const-string p1, "publickey"

    .line 94
    .line 95
    invoke-virtual {v7, v8, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getKey()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getKeyString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move-object v1, v6

    .line 114
    :goto_3
    if-eqz v1, :cond_8

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getKeyString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getPassphrase()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object v0, v6

    .line 151
    :goto_4
    invoke-virtual {v5, p1, v1, v6, v0}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B[B[B)V

    .line 152
    .line 153
    .line 154
    move-object p1, v6

    .line 155
    goto :goto_7

    .line 156
    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    .line 157
    .line 158
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getKeyString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    goto :goto_6

    .line 163
    :cond_9
    move-object p0, v6

    .line 164
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_a
    new-instance p1, Lio5;

    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getAuthType()Lnc1;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_b
    const-string p1, "password"

    .line 209
    .line 210
    invoke-virtual {v7, v8, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_f

    .line 218
    .line 219
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, p1}, Lcom/jcraft/jsch/Session;->setPassword([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .line 230
    .line 231
    :goto_7
    const/16 v0, 0x2710

    .line 232
    .line 233
    :try_start_2
    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Session;->connect(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 234
    .line 235
    .line 236
    if-eqz p1, :cond_c

    .line 237
    .line 238
    :try_start_3
    array-length v1, p1

    .line 239
    invoke-static {p1, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 240
    .line 241
    .line 242
    :cond_c
    const-string p1, "sftp"

    .line 243
    .line 244
    invoke-virtual {v7, p1}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 252
    .line 253
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Channel;->connect(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0, p1}, Lli4;->D(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Lcom/jcraft/jsch/ChannelSftp;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p2, p1, v7}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    if-eqz p3, :cond_d

    .line 264
    .line 265
    :try_start_5
    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 266
    .line 267
    .line 268
    :catch_1
    :try_start_6
    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 269
    .line 270
    .line 271
    :catch_2
    :cond_d
    return-object p0

    .line 272
    :catchall_1
    move-exception p0

    .line 273
    move-object v6, p1

    .line 274
    goto :goto_9

    .line 275
    :catch_3
    move-exception p0

    .line 276
    move-object v6, p1

    .line 277
    goto :goto_8

    .line 278
    :catchall_2
    move-exception p0

    .line 279
    goto :goto_9

    .line 280
    :catch_4
    move-exception p0

    .line 281
    goto :goto_8

    .line 282
    :catchall_3
    move-exception p0

    .line 283
    if-eqz p1, :cond_e

    .line 284
    .line 285
    :try_start_7
    array-length p2, p1

    .line 286
    invoke-static {p1, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 287
    .line 288
    .line 289
    :cond_e
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 290
    :cond_f
    :try_start_8
    const-string p0, "Missing SFTP password"

    .line 291
    .line 292
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 293
    .line 294
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 298
    :goto_8
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 299
    :goto_9
    if-eqz p3, :cond_11

    .line 300
    .line 301
    if-eqz v6, :cond_10

    .line 302
    .line 303
    :try_start_a
    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 304
    .line 305
    .line 306
    :catch_5
    :cond_10
    if-eqz v7, :cond_11

    .line 307
    .line 308
    :try_start_b
    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 309
    .line 310
    .line 311
    :catch_6
    :cond_11
    throw p0
.end method

.method public static F(Ljava/util/Vector;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "."

    .line 53
    .line 54
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    iget-object v2, v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, ".."

    .line 63
    .line 64
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    return-object p0
.end method

.method public static z(Ljava/lang/Exception;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v3, "No such file"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string v0, "The file does not exist"

    .line 25
    .line 26
    invoke-static {p0, v0, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ne p0, v1, :cond_1

    .line 31
    .line 32
    :goto_0
    return v1

    .line 33
    :cond_1
    return v2
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    new-array p0, p0, [C

    .line 6
    .line 7
    fill-array-data p0, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lli4;->B(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lmu3;

    .line 12
    .line 13
    invoke-direct {v0, p2, p1, p0}, Lmu3;-><init>(Lt15;Ljava/lang/String;Lli4;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p0, p2, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ltc4;

    .line 23
    .line 24
    return-object p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    const-string v2, "login"

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lpc1;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, v1}, Lpc1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {p0, p1, v0, v1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    move-object p0, v0

    .line 19
    move-object v3, p0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    move-object v3, p0

    .line 24
    goto :goto_1

    .line 25
    :goto_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v1, "JschService"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 37
    .line 38
    new-instance p1, Ljava/lang/Exception;

    .line 39
    .line 40
    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v1, "JschService"

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    instance-of p0, v3, Lcom/jcraft/jsch/JSchException;

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    const-string p1, "UnknownHostKey"

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 p1, 0x1

    .line 76
    if-ne p0, p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    .line 84
    const-string p1, "fingerprint is "

    .line 85
    .line 86
    invoke-static {p0, p1, p0}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    const/4 p0, 0x0

    .line 92
    :goto_2
    if-nez p0, :cond_1

    .line 93
    .line 94
    const-string p0, ""

    .line 95
    .line 96
    :cond_1
    new-instance p1, Lpw5;

    .line 97
    .line 98
    const-string v0, "Fingerprint"

    .line 99
    .line 100
    invoke-direct {p1, v0, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;

    .line 108
    .line 109
    invoke-direct {p1, v3, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownHostKey;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_2
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 114
    .line 115
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lli4;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, ".tmp"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    new-instance v1, Lji4;

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v7, p2

    .line 15
    move-wide v5, p3

    .line 16
    move-object v8, p5

    .line 17
    invoke-direct/range {v1 .. v8}, Lji4;-><init>(Lli4;Ljava/lang/String;Lc62;JLjava/lang/String;Lmt3;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {v2, p1, v1, p0}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    aput-char v2, v0, v1

    .line 11
    .line 12
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v2}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-static {v2, p1, p1}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lli4;->s(Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v3, v2

    .line 44
    check-cast v3, Lpg1;

    .line 45
    .line 46
    iget-object v3, v3, Lpg1;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v2, v1

    .line 59
    :goto_0
    check-cast v2, Lpg1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    return-object v2

    .line 62
    :goto_1
    const-string v0, "getFile: Error while getting file at path="

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "JschService"

    .line 69
    .line 70
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 74
    .line 75
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, ": "

    .line 80
    .line 81
    invoke-static {p1, v0, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const/4 v6, 0x4

    .line 86
    const/4 v7, 0x0

    .line 87
    const-string v3, "JschService"

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lli4;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lli4;->B(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lhi4;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, p0, p1}, Lhi4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-static {p0, v1, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lli4;->B(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lmi;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1, p0, p1}, Lmi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1, v0, v1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l()Lni1;
    .locals 3

    .line 1
    new-instance v0, Lxc1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxc1;-><init>(Lli4;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lni1;

    .line 13
    .line 14
    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JschService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lgi4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lgi4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-static {p0, v1, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    move-object p0, v0

    .line 17
    const-string p1, "JschService"

    .line 18
    .line 19
    const-string v0, "getMetadataPathExistence"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 25
    .line 26
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "getMetadataPathExistence: "

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v2, "JschService"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 45
    .line 46
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lii4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lii4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-static {p0, v1, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lhh1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    move-object p0, v0

    .line 20
    const-string p1, "JschService"

    .line 21
    .line 22
    const-string v0, "listMetadataDirectory"

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 28
    .line 29
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "listMetadataDirectory: "

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x0

    .line 41
    const-string v2, "JschService"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lfh1;->a:Lfh1;

    .line 48
    .line 49
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfi4;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lfi4;-><init>(Lli4;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v1, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Llj2;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0, p1}, Llj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1, v0, p1}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/util/List;

    .line 17
    .line 18
    return-object p0
.end method

.method public final declared-synchronized v(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/16 v1, 0x4000

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_1
    new-array v0, v3, [C

    .line 26
    .line 27
    const/16 v4, 0x2f

    .line 28
    .line 29
    aput-char v4, v0, v2

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    invoke-static {p1, v0, v4}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-le v4, v3, :cond_4

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, "/"

    .line 69
    .line 70
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v3, :cond_2

    .line 91
    .line 92
    move v4, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v4, v2

    .line 95
    :goto_2
    if-eqz v4, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p2, v4}, Lcom/jcraft/jsch/ChannelSftp;->mkdir(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->mkdir(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_5
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    throw p1
.end method

.method public final w(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;)Ljava/util/Vector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lli4;->F(Ljava/util/Vector;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "Check failed."

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    new-array v3, v3, [C

    .line 40
    .line 41
    const/16 v4, 0x2f

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-char v4, v3, v5

    .line 45
    .line 46
    invoke-static {p1, v3}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 51
    .line 52
    const-string v5, "/"

    .line 53
    .line 54
    invoke-static {v3, v5, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v1, v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Lcom/jcraft/jsch/SftpATTRS;

    .line 59
    .line 60
    const/16 v4, 0x4000

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v3, p2}, Lli4;->w(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, v3}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->rm(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3, p2}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->rmdir(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-nez p0, :cond_4

    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Lcom/jcraft/jsch/ChannelSftp;->stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final y(Z)Lcom/jcraft/jsch/JSch;
    .locals 1

    .line 1
    iget-object v0, p0, Lli4;->d:Lcom/jcraft/jsch/JSch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSch;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lmi4;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->setLogger(Lcom/jcraft/jsch/Logger;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lli4;->d:Lcom/jcraft/jsch/JSch;

    .line 31
    .line 32
    :cond_2
    iget-object p0, p0, Lli4;->d:Lcom/jcraft/jsch/JSch;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    return-object p0
.end method
