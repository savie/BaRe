.class abstract Lcom/jcraft/jsch/DHGN;
.super Lcom/jcraft/jsch/KeyExchange;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public j:I

.field public k:Lcom/jcraft/jsch/DH;

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:Lcom/jcraft/jsch/Buffer;

.field public r:Lcom/jcraft/jsch/Packet;


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
.method public abstract f()[B
.end method

.method public abstract g()[B
.end method

.method public final getState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/DHGN;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/jcraft/jsch/DHGN;->l:[B

    .line 2
    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->m:[B

    .line 4
    .line 5
    iput-object p4, p0, Lcom/jcraft/jsch/DHGN;->n:[B

    .line 6
    .line 7
    iput-object p5, p0, Lcom/jcraft/jsch/DHGN;->o:[B

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const-class p4, Lcom/jcraft/jsch/HASH;

    .line 22
    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const/4 p4, 0x0

    .line 28
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/jcraft/jsch/HASH;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 39
    .line 40
    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    .line 43
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    .line 44
    .line 45
    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->q:Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    new-instance p5, Lcom/jcraft/jsch/Packet;

    .line 51
    .line 52
    invoke-direct {p5, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 53
    .line 54
    .line 55
    iput-object p5, p0, Lcom/jcraft/jsch/DHGN;->r:Lcom/jcraft/jsch/Packet;

    .line 56
    .line 57
    :try_start_1
    const-string p3, "dh"

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const-class p5, Lcom/jcraft/jsch/DH;

    .line 68
    .line 69
    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Lcom/jcraft/jsch/DH;

    .line 82
    .line 83
    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 84
    .line 85
    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->g()[B

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->f()[B

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 104
    .line 105
    .line 106
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 107
    .line 108
    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->getE()[B

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->p:[B

    .line 113
    .line 114
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->r:Lcom/jcraft/jsch/Packet;

    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->a()V

    .line 117
    .line 118
    .line 119
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->q:Lcom/jcraft/jsch/Buffer;

    .line 120
    .line 121
    const/16 p4, 0x1e

    .line 122
    .line 123
    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 124
    .line 125
    .line 126
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->q:Lcom/jcraft/jsch/Buffer;

    .line 127
    .line 128
    iget-object p4, p0, Lcom/jcraft/jsch/DHGN;->p:[B

    .line 129
    .line 130
    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 131
    .line 132
    .line 133
    if-nez p2, :cond_0

    .line 134
    .line 135
    return-void

    .line 136
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGN;->r:Lcom/jcraft/jsch/Packet;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const/4 p3, 0x1

    .line 146
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_1

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const-string p4, "SSH_MSG_KEXDH_INIT sent"

    .line 157
    .line 158
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string p2, "expecting SSH_MSG_KEXDH_REPLY"

    .line 166
    .line 167
    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    const/16 p1, 0x1f

    .line 171
    .line 172
    iput p1, p0, Lcom/jcraft/jsch/DHGN;->j:I

    .line 173
    .line 174
    return-void

    .line 175
    :catch_0
    move-exception p0

    .line 176
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :catch_1
    move-exception p0

    .line 181
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHGN;->j:I

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
    if-eq v0, v2, :cond_2

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
    if-eqz p1, :cond_1

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
    const-string v2, "type: must be SSH_MSG_KEXDH_REPLY "

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
    :cond_1
    :goto_0
    return v1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 73
    .line 74
    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->k:Lcom/jcraft/jsch/DH;

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->getK()[B

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/jcraft/jsch/KeyExchange;->d([B)[B

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-static {v2, v4}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 98
    .line 99
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->m:[B

    .line 100
    .line 101
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 106
    .line 107
    array-length v6, v2

    .line 108
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->l:[B

    .line 112
    .line 113
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 118
    .line 119
    array-length v6, v2

    .line 120
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->o:[B

    .line 124
    .line 125
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 130
    .line 131
    array-length v6, v2

    .line 132
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->n:[B

    .line 136
    .line 137
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 142
    .line 143
    array-length v6, v2

    .line 144
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 148
    .line 149
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 154
    .line 155
    array-length v6, v2

    .line 156
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->p:[B

    .line 160
    .line 161
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 166
    .line 167
    array-length v6, v2

    .line 168
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 176
    .line 177
    array-length v5, v0

    .line 178
    invoke-interface {v2, v0, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 184
    .line 185
    array-length v5, v2

    .line 186
    invoke-interface {v0, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 190
    .line 191
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 196
    .line 197
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 198
    .line 199
    aget-byte v2, v0, v1

    .line 200
    .line 201
    shl-int/lit8 v2, v2, 0x18

    .line 202
    .line 203
    const/high16 v5, -0x1000000

    .line 204
    .line 205
    and-int/2addr v2, v5

    .line 206
    aget-byte v4, v0, v4

    .line 207
    .line 208
    shl-int/lit8 v4, v4, 0x10

    .line 209
    .line 210
    const/high16 v5, 0xff0000

    .line 211
    .line 212
    and-int/2addr v4, v5

    .line 213
    or-int/2addr v2, v4

    .line 214
    const/4 v4, 0x2

    .line 215
    aget-byte v4, v0, v4

    .line 216
    .line 217
    shl-int/lit8 v4, v4, 0x8

    .line 218
    .line 219
    const v5, 0xff00

    .line 220
    .line 221
    .line 222
    and-int/2addr v4, v5

    .line 223
    or-int/2addr v2, v4

    .line 224
    aget-byte v3, v0, v3

    .line 225
    .line 226
    and-int/lit16 v3, v3, 0xff

    .line 227
    .line 228
    or-int/2addr v2, v3

    .line 229
    const/4 v3, 0x4

    .line 230
    invoke-static {v0, v3, v2}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    add-int/2addr v3, v2

    .line 235
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 236
    .line 237
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->e(Ljava/lang/String;[BI[B)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iput v1, p0, Lcom/jcraft/jsch/DHGN;->j:I

    .line 242
    .line 243
    return p1
.end method
