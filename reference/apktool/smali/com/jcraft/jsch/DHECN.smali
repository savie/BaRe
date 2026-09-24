.class abstract Lcom/jcraft/jsch/DHECN;
.super Lcom/jcraft/jsch/KeyExchange;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public j:I

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:Lcom/jcraft/jsch/Buffer;

.field public q:Lcom/jcraft/jsch/Packet;

.field public r:Lcom/jcraft/jsch/ECDH;

.field public s:Ljava/lang/String;

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/DHECN;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public final init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/jcraft/jsch/DHECN;->l:[B

    .line 2
    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->m:[B

    .line 4
    .line 5
    iput-object p4, p0, Lcom/jcraft/jsch/DHECN;->n:[B

    .line 6
    .line 7
    iput-object p5, p0, Lcom/jcraft/jsch/DHECN;->o:[B

    .line 8
    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->s:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-class p4, Lcom/jcraft/jsch/HASH;

    .line 20
    .line 21
    invoke-virtual {p3, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Lcom/jcraft/jsch/HASH;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 37
    .line 38
    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    .line 41
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    .line 42
    .line 43
    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->p:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    new-instance p5, Lcom/jcraft/jsch/Packet;

    .line 49
    .line 50
    invoke-direct {p5, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 51
    .line 52
    .line 53
    iput-object p5, p0, Lcom/jcraft/jsch/DHECN;->q:Lcom/jcraft/jsch/Packet;

    .line 54
    .line 55
    invoke-virtual {p5}, Lcom/jcraft/jsch/Packet;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->p:Lcom/jcraft/jsch/Buffer;

    .line 59
    .line 60
    const/16 p5, 0x1e

    .line 61
    .line 62
    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    const-string p3, "ecdh-sha2-nistp"

    .line 66
    .line 67
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-class p5, Lcom/jcraft/jsch/ECDH;

    .line 76
    .line 77
    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Lcom/jcraft/jsch/ECDH;

    .line 90
    .line 91
    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->r:Lcom/jcraft/jsch/ECDH;

    .line 92
    .line 93
    iget p4, p0, Lcom/jcraft/jsch/DHECN;->t:I

    .line 94
    .line 95
    invoke-interface {p3, p4}, Lcom/jcraft/jsch/ECDH;->init(I)V

    .line 96
    .line 97
    .line 98
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->r:Lcom/jcraft/jsch/ECDH;

    .line 99
    .line 100
    invoke-interface {p3}, Lcom/jcraft/jsch/ECDH;->getQ()[B

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->k:[B

    .line 105
    .line 106
    iget-object p4, p0, Lcom/jcraft/jsch/DHECN;->p:Lcom/jcraft/jsch/Buffer;

    .line 107
    .line 108
    invoke-virtual {p4, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    if-nez p2, :cond_0

    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHECN;->q:Lcom/jcraft/jsch/Packet;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    const/4 p3, 0x1

    .line 124
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_1

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const-string p4, "SSH_MSG_KEX_ECDH_INIT sent"

    .line 135
    .line 136
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string p2, "expecting SSH_MSG_KEX_ECDH_REPLY"

    .line 144
    .line 145
    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_1
    const/16 p1, 0x1f

    .line 149
    .line 150
    iput p1, p0, Lcom/jcraft/jsch/DHECN;->j:I

    .line 151
    .line 152
    return-void

    .line 153
    :catch_0
    move-exception p0

    .line 154
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catch_1
    move-exception p0

    .line 159
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHECN;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v3, 0x3

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "type: must be SSH_MSG_KEX_ECDH_REPLY "

    .line 43
    .line 44
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p0, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->r:Lcom/jcraft/jsch/ECDH;

    .line 73
    .line 74
    aget-object v5, v2, v1

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    aget-object v7, v2, v6

    .line 78
    .line 79
    invoke-interface {v4, v5, v7}, Lcom/jcraft/jsch/ECDH;->validate([B[B)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_3

    .line 84
    .line 85
    :cond_2
    :goto_0
    return v1

    .line 86
    :cond_3
    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->r:Lcom/jcraft/jsch/ECDH;

    .line 87
    .line 88
    aget-object v5, v2, v1

    .line 89
    .line 90
    aget-object v2, v2, v6

    .line 91
    .line 92
    invoke-interface {v4, v5, v2}, Lcom/jcraft/jsch/ECDH;->getSecret([B[B)[B

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/jcraft/jsch/KeyExchange;->d([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2, v6}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->m:[B

    .line 111
    .line 112
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 117
    .line 118
    array-length v5, v2

    .line 119
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->l:[B

    .line 123
    .line 124
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 129
    .line 130
    array-length v5, v2

    .line 131
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->o:[B

    .line 135
    .line 136
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 141
    .line 142
    array-length v5, v2

    .line 143
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->n:[B

    .line 147
    .line 148
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 153
    .line 154
    array-length v5, v2

    .line 155
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 159
    .line 160
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 165
    .line 166
    array-length v5, v2

    .line 167
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->k:[B

    .line 171
    .line 172
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 177
    .line 178
    array-length v5, v2

    .line 179
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 187
    .line 188
    array-length v4, v0

    .line 189
    invoke-interface {v2, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 195
    .line 196
    array-length v4, v2

    .line 197
    invoke-interface {v0, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 201
    .line 202
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 207
    .line 208
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 209
    .line 210
    aget-byte v2, v0, v1

    .line 211
    .line 212
    shl-int/lit8 v2, v2, 0x18

    .line 213
    .line 214
    const/high16 v4, -0x1000000

    .line 215
    .line 216
    and-int/2addr v2, v4

    .line 217
    aget-byte v4, v0, v6

    .line 218
    .line 219
    shl-int/lit8 v4, v4, 0x10

    .line 220
    .line 221
    const/high16 v5, 0xff0000

    .line 222
    .line 223
    and-int/2addr v4, v5

    .line 224
    or-int/2addr v2, v4

    .line 225
    const/4 v4, 0x2

    .line 226
    aget-byte v4, v0, v4

    .line 227
    .line 228
    shl-int/lit8 v4, v4, 0x8

    .line 229
    .line 230
    const v5, 0xff00

    .line 231
    .line 232
    .line 233
    and-int/2addr v4, v5

    .line 234
    or-int/2addr v2, v4

    .line 235
    aget-byte v3, v0, v3

    .line 236
    .line 237
    and-int/lit16 v3, v3, 0xff

    .line 238
    .line 239
    or-int/2addr v2, v3

    .line 240
    const/4 v3, 0x4

    .line 241
    invoke-static {v0, v3, v2}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    add-int/2addr v3, v2

    .line 246
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 247
    .line 248
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->e(Ljava/lang/String;[BI[B)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    iput v1, p0, Lcom/jcraft/jsch/DHECN;->j:I

    .line 253
    .line 254
    return p1
.end method
