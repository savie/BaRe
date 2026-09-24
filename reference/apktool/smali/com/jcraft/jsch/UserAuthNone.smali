.class public Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/UserAuthNone;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final start(Lcom/jcraft/jsch/Session;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    const-string v3, "ssh-userauth"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v4, "SSH_MSG_SERVICE_REQUEST sent"

    .line 49
    .line 50
    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 61
    .line 62
    aget-byte v0, v0, v1

    .line 63
    .line 64
    const/4 v4, 0x6

    .line 65
    const/4 v5, 0x0

    .line 66
    if-ne v0, v4, :cond_1

    .line 67
    .line 68
    move v0, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v0, v5

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v6, "SSH_MSG_SERVICE_ACCEPT received"

    .line 86
    .line 87
    invoke-interface {v4, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-string v0, "enable_auth_none"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v4, "yes"

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    :goto_1
    return v5

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 120
    .line 121
    const/16 v6, 0x32

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 127
    .line 128
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 132
    .line 133
    const-string v4, "ssh-connection"

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 143
    .line 144
    const-string v4, "none"

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 156
    .line 157
    .line 158
    :catch_0
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 164
    .line 165
    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 166
    .line 167
    aget-byte v2, v2, v1

    .line 168
    .line 169
    and-int/lit16 v2, v2, 0xff

    .line 170
    .line 171
    const/16 v4, 0x34

    .line 172
    .line 173
    if-ne v2, v4, :cond_6

    .line 174
    .line 175
    return v3

    .line 176
    :cond_6
    const/16 v4, 0x35

    .line 177
    .line 178
    if-ne v2, v4, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 202
    .line 203
    .line 204
    array-length v2, v0

    .line 205
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 206
    .line 207
    new-instance v6, Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {v6, v0, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 213
    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    :try_start_0
    invoke-interface {v0, v6}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_7
    const/16 p1, 0x33

    .line 221
    .line 222
    if-ne v2, p1, :cond_8

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 246
    .line 247
    .line 248
    array-length v0, p1

    .line 249
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 250
    .line 251
    new-instance v2, Ljava/lang/String;

    .line 252
    .line 253
    invoke-direct {v2, p1, v5, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 254
    .line 255
    .line 256
    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthNone;->e:Ljava/lang/String;

    .line 257
    .line 258
    return v5

    .line 259
    :cond_8
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 260
    .line 261
    const-string p1, "USERAUTH fail ("

    .line 262
    .line 263
    const-string v0, ")"

    .line 264
    .line 265
    invoke-static {v2, p1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p0
.end method
