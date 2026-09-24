.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lcom/jcraft/jsch/Buffer;

.field public w:Lcom/jcraft/jsch/Buffer;

.field public x:Lcom/jcraft/jsch/Packet;

.field public final y:Lcom/jcraft/jsch/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:Lcom/jcraft/jsch/Packet;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 12
    .line 13
    const/high16 v0, 0x20000

    .line 14
    .line 15
    iput v0, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 16
    .line 17
    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 18
    .line 19
    const/16 v0, 0x4000

    .line 20
    .line 21
    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 22
    .line 23
    const-string v0, "auth-agent@openssh.com"

    .line 24
    .line 25
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 32
    .line 33
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l([BII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 6
    .line 7
    iget v1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:Lcom/jcraft/jsch/Packet;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    iget v3, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 32
    .line 33
    add-int/2addr v3, p3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 38
    .line 39
    add-int/2addr v0, p3

    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 68
    .line 69
    if-le p1, p2, :cond_2

    .line 70
    .line 71
    iget p0, p3, Lcom/jcraft/jsch/Buffer;->d:I

    .line 72
    .line 73
    add-int/lit8 p0, p0, -0x4

    .line 74
    .line 75
    iput p0, p3, Lcom/jcraft/jsch/Buffer;->d:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-virtual {p3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 83
    .line 84
    .line 85
    move-result-object p2
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    iget-object p3, p2, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 87
    .line 88
    if-nez p3, :cond_3

    .line 89
    .line 90
    iget-object p3, p2, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    :cond_3
    iget-object p2, p2, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0xb

    .line 104
    .line 105
    if-ne p1, v0, :cond_8

    .line 106
    .line 107
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 108
    .line 109
    const/16 p2, 0xc

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    monitor-enter v0

    .line 119
    move p1, v4

    .line 120
    move p2, p1

    .line 121
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-ge p1, p3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Lcom/jcraft/jsch/Identity;

    .line 132
    .line 133
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    if-eqz p3, :cond_4

    .line 138
    .line 139
    add-int/lit8 p2, p2, 0x1

    .line 140
    .line 141
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 149
    .line 150
    .line 151
    move p1, v4

    .line 152
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-ge p1, p2, :cond_7

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    check-cast p2, Lcom/jcraft/jsch/Identity;

    .line 163
    .line 164
    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    if-nez p2, :cond_6

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    array-length v1, p2

    .line 177
    invoke-virtual {p3, p2, v4, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 181
    .line 182
    sget-object p3, Lcom/jcraft/jsch/Util;->c:[B

    .line 183
    .line 184
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 185
    .line 186
    .line 187
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    monitor-exit v0

    .line 191
    goto/16 :goto_b

    .line 192
    .line 193
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    throw p0

    .line 195
    :cond_8
    const/4 v0, 0x1

    .line 196
    if-ne p1, v0, :cond_9

    .line 197
    .line 198
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 199
    .line 200
    const/4 p2, 0x2

    .line 201
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 205
    .line 206
    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_b

    .line 210
    .line 211
    :cond_9
    const/16 v1, 0xd

    .line 212
    .line 213
    if-ne p1, v1, :cond_17

    .line 214
    .line 215
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    monitor-enter v2

    .line 238
    move p3, v4

    .line 239
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    const/4 v5, 0x0

    .line 244
    if-ge p3, v3, :cond_11

    .line 245
    .line 246
    invoke-virtual {v2, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 251
    .line 252
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    if-nez v6, :cond_a

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_a
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-static {p1, v6}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-nez v6, :cond_b

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_f

    .line 275
    .line 276
    if-nez p2, :cond_c

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_c
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_f

    .line 284
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v7, "Passphrase for "

    .line 291
    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-interface {p2, v6}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_d

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_d
    invoke-interface {p2}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    if-nez v6, :cond_e

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_e
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 321
    .line 322
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 323
    .line 324
    .line 325
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    :try_start_3
    invoke-interface {v3, v6}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    .line 327
    .line 328
    .line 329
    move-result v6
    :try_end_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    if-eqz v6, :cond_c

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :catchall_1
    move-exception p0

    .line 334
    goto :goto_9

    .line 335
    :catch_0
    :cond_f
    :goto_5
    :try_start_4
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-nez v6, :cond_10

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_10
    :goto_6
    add-int/lit8 p3, p3, 0x1

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_11
    move-object v3, v5

    .line 346
    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    if-eqz v3, :cond_15

    .line 348
    .line 349
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    .line 350
    .line 351
    invoke-direct {p2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    array-length p2, p1

    .line 359
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 360
    .line 361
    new-instance v2, Ljava/lang/String;

    .line 362
    .line 363
    invoke-direct {v2, p1, v4, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 364
    .line 365
    .line 366
    const-string p1, "ssh-rsa"

    .line 367
    .line 368
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_14

    .line 373
    .line 374
    and-int/lit8 p1, v1, 0x2

    .line 375
    .line 376
    if-eqz p1, :cond_12

    .line 377
    .line 378
    const-string p1, "rsa-sha2-256"

    .line 379
    .line 380
    invoke-interface {v3, v0, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    goto :goto_8

    .line 385
    :cond_12
    and-int/lit8 p1, v1, 0x4

    .line 386
    .line 387
    if-eqz p1, :cond_13

    .line 388
    .line 389
    const-string p1, "rsa-sha2-512"

    .line 390
    .line 391
    invoke-interface {v3, v0, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    goto :goto_8

    .line 396
    :cond_13
    const-string p1, "ssh-rsa"

    .line 397
    .line 398
    invoke-interface {v3, v0, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    goto :goto_8

    .line 403
    :cond_14
    invoke-interface {v3, v0}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 408
    .line 409
    if-nez v5, :cond_16

    .line 410
    .line 411
    const/16 p2, 0x1e

    .line 412
    .line 413
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_b

    .line 417
    .line 418
    :cond_16
    const/16 p2, 0xe

    .line 419
    .line 420
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 421
    .line 422
    .line 423
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    array-length p2, v5

    .line 429
    invoke-virtual {p1, v5, v4, p2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 430
    .line 431
    .line 432
    goto :goto_b

    .line 433
    :goto_9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 434
    throw p0

    .line 435
    :cond_17
    const/16 p2, 0x12

    .line 436
    .line 437
    const/4 v1, 0x6

    .line 438
    if-ne p1, p2, :cond_18

    .line 439
    .line 440
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 441
    .line 442
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 447
    .line 448
    .line 449
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 450
    .line 451
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 452
    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_18
    const/16 p2, 0x9

    .line 456
    .line 457
    if-ne p1, p2, :cond_19

    .line 458
    .line 459
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 460
    .line 461
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 462
    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_19
    const/16 p2, 0x13

    .line 466
    .line 467
    if-ne p1, p2, :cond_1a

    .line 468
    .line 469
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 470
    .line 471
    .line 472
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 473
    .line 474
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_1a
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 479
    .line 480
    const/4 v2, 0x5

    .line 481
    const/16 v3, 0x11

    .line 482
    .line 483
    if-ne p1, v3, :cond_1c

    .line 484
    .line 485
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    new-array p2, p1, [B

    .line 490
    .line 491
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:Lcom/jcraft/jsch/Buffer;

    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, p2, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 497
    .line 498
    .line 499
    invoke-interface {p3, p2}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 504
    .line 505
    if-eqz p1, :cond_1b

    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_1b
    move v1, v2

    .line 509
    :goto_a
    invoke-virtual {p2, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 510
    .line 511
    .line 512
    goto :goto_b

    .line 513
    :cond_1c
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    sub-int/2addr p1, v0

    .line 518
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 522
    .line 523
    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 524
    .line 525
    .line 526
    :goto_b
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 527
    .line 528
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 529
    .line 530
    .line 531
    move-result p1

    .line 532
    new-array p2, p1, [B

    .line 533
    .line 534
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    .line 535
    .line 536
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, p2, v4, p1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 540
    .line 541
    .line 542
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:Lcom/jcraft/jsch/Packet;

    .line 543
    .line 544
    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->a()V

    .line 545
    .line 546
    .line 547
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 548
    .line 549
    const/16 v0, 0x5e

    .line 550
    .line 551
    invoke-virtual {p3, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 552
    .line 553
    .line 554
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 555
    .line 556
    iget v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 557
    .line 558
    invoke-virtual {p3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 559
    .line 560
    .line 561
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 562
    .line 563
    add-int/lit8 v0, p1, 0x4

    .line 564
    .line 565
    invoke-virtual {p3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 566
    .line 567
    .line 568
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:Lcom/jcraft/jsch/Buffer;

    .line 569
    .line 570
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    invoke-virtual {p3, p2, v4, p1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 574
    .line 575
    .line 576
    :try_start_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:Lcom/jcraft/jsch/Packet;

    .line 581
    .line 582
    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 583
    .line 584
    .line 585
    :catch_1
    return-void

    .line 586
    :catch_2
    move-exception p0

    .line 587
    new-instance p1, Ljava/io/IOException;

    .line 588
    .line 589
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    .line 595
    .line 596
    throw p1
.end method

.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
