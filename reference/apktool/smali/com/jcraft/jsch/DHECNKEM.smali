.class abstract Lcom/jcraft/jsch/DHECNKEM;
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

.field public r:Lcom/jcraft/jsch/KEM;

.field public s:Lcom/jcraft/jsch/ECDH;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:I


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
    iget p0, p0, Lcom/jcraft/jsch/DHECNKEM;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public final init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/jcraft/jsch/DHECNKEM;->l:[B

    .line 2
    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->m:[B

    .line 4
    .line 5
    iput-object p4, p0, Lcom/jcraft/jsch/DHECNKEM;->n:[B

    .line 6
    .line 7
    iput-object p5, p0, Lcom/jcraft/jsch/DHECNKEM;->o:[B

    .line 8
    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->u:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    new-instance p5, Lcom/jcraft/jsch/Packet;

    .line 49
    .line 50
    invoke-direct {p5, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 51
    .line 52
    .line 53
    iput-object p5, p0, Lcom/jcraft/jsch/DHECNKEM;->q:Lcom/jcraft/jsch/Packet;

    .line 54
    .line 55
    invoke-virtual {p5}, Lcom/jcraft/jsch/Packet;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 59
    .line 60
    iget p5, p0, Lcom/jcraft/jsch/DHECNKEM;->v:I

    .line 61
    .line 62
    add-int/lit8 p5, p5, 0x5

    .line 63
    .line 64
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 65
    .line 66
    add-int/2addr p5, v0

    .line 67
    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 71
    .line 72
    const/16 p5, 0x1e

    .line 73
    .line 74
    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 75
    .line 76
    .line 77
    :try_start_1
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->t:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-class p5, Lcom/jcraft/jsch/KEM;

    .line 88
    .line 89
    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Lcom/jcraft/jsch/KEM;

    .line 102
    .line 103
    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 104
    .line 105
    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->init()V

    .line 106
    .line 107
    .line 108
    const-string p3, "ecdh-sha2-nistp"

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    const-class p5, Lcom/jcraft/jsch/ECDH;

    .line 119
    .line 120
    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Lcom/jcraft/jsch/ECDH;

    .line 133
    .line 134
    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->s:Lcom/jcraft/jsch/ECDH;

    .line 135
    .line 136
    iget p4, p0, Lcom/jcraft/jsch/DHECNKEM;->x:I

    .line 137
    .line 138
    invoke-interface {p3, p4}, Lcom/jcraft/jsch/ECDH;->init(I)V

    .line 139
    .line 140
    .line 141
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 142
    .line 143
    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->getPublicKey()[B

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    iget-object p4, p0, Lcom/jcraft/jsch/DHECNKEM;->s:Lcom/jcraft/jsch/ECDH;

    .line 148
    .line 149
    invoke-interface {p4}, Lcom/jcraft/jsch/ECDH;->getQ()[B

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    iget p5, p0, Lcom/jcraft/jsch/DHECNKEM;->v:I

    .line 154
    .line 155
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 156
    .line 157
    add-int/2addr v0, p5

    .line 158
    new-array v0, v0, [B

    .line 159
    .line 160
    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->k:[B

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-static {p3, v1, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    .line 165
    .line 166
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->k:[B

    .line 167
    .line 168
    iget p5, p0, Lcom/jcraft/jsch/DHECNKEM;->v:I

    .line 169
    .line 170
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 171
    .line 172
    invoke-static {p4, v1, p3, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    .line 174
    .line 175
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 176
    .line 177
    iget-object p4, p0, Lcom/jcraft/jsch/DHECNKEM;->k:[B

    .line 178
    .line 179
    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .line 181
    .line 182
    if-nez p2, :cond_0

    .line 183
    .line 184
    return-void

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHECNKEM;->q:Lcom/jcraft/jsch/Packet;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    const/4 p3, 0x1

    .line 195
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_1

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    const-string p4, "SSH_MSG_KEX_HYBRID_INIT sent"

    .line 206
    .line 207
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string p2, "expecting SSH_MSG_KEX_HYBRID_REPLY"

    .line 215
    .line 216
    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_1
    const/16 p1, 0x1f

    .line 220
    .line 221
    iput p1, p0, Lcom/jcraft/jsch/DHECNKEM;->j:I

    .line 222
    .line 223
    return-void

    .line 224
    :catch_0
    move-exception p0

    .line 225
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :catch_1
    move-exception p0

    .line 230
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->j:I

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
    if-eqz p1, :cond_3

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
    const-string v2, "type: must be SSH_MSG_KEX_HYBRID_REPLY "

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
    array-length v2, v0

    .line 69
    iget v4, p0, Lcom/jcraft/jsch/DHECNKEM;->w:I

    .line 70
    .line 71
    iget v5, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 72
    .line 73
    add-int v6, v4, v5

    .line 74
    .line 75
    if-eq v2, v6, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-array v2, v4, [B

    .line 79
    .line 80
    new-array v5, v5, [B

    .line 81
    .line 82
    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    iget v4, p0, Lcom/jcraft/jsch/DHECNKEM;->w:I

    .line 86
    .line 87
    iget v6, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 88
    .line 89
    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget-object v5, p0, Lcom/jcraft/jsch/DHECNKEM;->s:Lcom/jcraft/jsch/ECDH;

    .line 97
    .line 98
    aget-object v6, v4, v1

    .line 99
    .line 100
    const/4 v7, 0x1

    .line 101
    aget-object v8, v4, v7

    .line 102
    .line 103
    invoke-interface {v5, v6, v8}, Lcom/jcraft/jsch/ECDH;->validate([B[B)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    :cond_3
    :goto_0
    return v1

    .line 110
    :cond_4
    const/4 v5, 0x0

    .line 111
    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/DHECNKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 112
    .line 113
    invoke-interface {v6, v2}, Lcom/jcraft/jsch/KEM;->decapsulate([B)[B

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 118
    .line 119
    array-length v6, v5

    .line 120
    invoke-interface {v2, v5, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .line 122
    .line 123
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 124
    .line 125
    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->s:Lcom/jcraft/jsch/ECDH;

    .line 127
    .line 128
    aget-object v6, v4, v1

    .line 129
    .line 130
    aget-object v4, v4, v7

    .line 131
    .line 132
    invoke-interface {v2, v6, v4}, Lcom/jcraft/jsch/ECDH;->getSecret([B[B)[B

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 137
    .line 138
    array-length v4, v5

    .line 139
    invoke-interface {v2, v5, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 146
    .line 147
    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2, v7}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->m:[B

    .line 162
    .line 163
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 168
    .line 169
    array-length v5, v2

    .line 170
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->l:[B

    .line 174
    .line 175
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 180
    .line 181
    array-length v5, v2

    .line 182
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->o:[B

    .line 186
    .line 187
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 192
    .line 193
    array-length v5, v2

    .line 194
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->n:[B

    .line 198
    .line 199
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 204
    .line 205
    array-length v5, v2

    .line 206
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 210
    .line 211
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 216
    .line 217
    array-length v5, v2

    .line 218
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->k:[B

    .line 222
    .line 223
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 228
    .line 229
    array-length v5, v2

    .line 230
    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 238
    .line 239
    array-length v4, v0

    .line 240
    invoke-interface {v2, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 244
    .line 245
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 246
    .line 247
    array-length v4, v2

    .line 248
    invoke-interface {v0, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 252
    .line 253
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 258
    .line 259
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 260
    .line 261
    aget-byte v2, v0, v1

    .line 262
    .line 263
    shl-int/lit8 v2, v2, 0x18

    .line 264
    .line 265
    const/high16 v4, -0x1000000

    .line 266
    .line 267
    and-int/2addr v2, v4

    .line 268
    aget-byte v4, v0, v7

    .line 269
    .line 270
    shl-int/lit8 v4, v4, 0x10

    .line 271
    .line 272
    const/high16 v5, 0xff0000

    .line 273
    .line 274
    and-int/2addr v4, v5

    .line 275
    or-int/2addr v2, v4

    .line 276
    const/4 v4, 0x2

    .line 277
    aget-byte v4, v0, v4

    .line 278
    .line 279
    shl-int/lit8 v4, v4, 0x8

    .line 280
    .line 281
    const v5, 0xff00

    .line 282
    .line 283
    .line 284
    and-int/2addr v4, v5

    .line 285
    or-int/2addr v2, v4

    .line 286
    aget-byte v3, v0, v3

    .line 287
    .line 288
    and-int/lit16 v3, v3, 0xff

    .line 289
    .line 290
    or-int/2addr v2, v3

    .line 291
    const/4 v3, 0x4

    .line 292
    invoke-static {v0, v3, v2}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    add-int/2addr v3, v2

    .line 297
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 298
    .line 299
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->e(Ljava/lang/String;[BI[B)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iput v1, p0, Lcom/jcraft/jsch/DHECNKEM;->j:I

    .line 304
    .line 305
    return p1

    .line 306
    :catchall_0
    move-exception p0

    .line 307
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :catchall_1
    move-exception p0

    .line 312
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 313
    .line 314
    .line 315
    throw p0
.end method
