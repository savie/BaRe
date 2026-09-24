.class abstract Lcom/jcraft/jsch/DHXECKEM;
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

.field public s:Lcom/jcraft/jsch/XDH;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

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
    iget p0, p0, Lcom/jcraft/jsch/DHXECKEM;->j:I

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
    iput-object p2, p0, Lcom/jcraft/jsch/DHXECKEM;->l:[B

    .line 2
    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->m:[B

    .line 4
    .line 5
    iput-object p4, p0, Lcom/jcraft/jsch/DHXECKEM;->n:[B

    .line 6
    .line 7
    iput-object p5, p0, Lcom/jcraft/jsch/DHXECKEM;->o:[B

    .line 8
    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->u:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    new-instance p5, Lcom/jcraft/jsch/Packet;

    .line 49
    .line 50
    invoke-direct {p5, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 51
    .line 52
    .line 53
    iput-object p5, p0, Lcom/jcraft/jsch/DHXECKEM;->q:Lcom/jcraft/jsch/Packet;

    .line 54
    .line 55
    invoke-virtual {p5}, Lcom/jcraft/jsch/Packet;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 59
    .line 60
    iget p5, p0, Lcom/jcraft/jsch/DHXECKEM;->w:I

    .line 61
    .line 62
    add-int/lit8 p5, p5, 0x5

    .line 63
    .line 64
    iget v0, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

    .line 65
    .line 66
    add-int/2addr p5, v0

    .line 67
    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->p:Lcom/jcraft/jsch/Buffer;

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
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->t:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 104
    .line 105
    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->init()V

    .line 106
    .line 107
    .line 108
    const-string p3, "xdh"

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
    const-class p5, Lcom/jcraft/jsch/XDH;

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
    check-cast p3, Lcom/jcraft/jsch/XDH;

    .line 133
    .line 134
    iput-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->s:Lcom/jcraft/jsch/XDH;

    .line 135
    .line 136
    iget-object p4, p0, Lcom/jcraft/jsch/DHXECKEM;->v:Ljava/lang/String;

    .line 137
    .line 138
    iget p5, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

    .line 139
    .line 140
    invoke-interface {p3, p4, p5}, Lcom/jcraft/jsch/XDH;->init(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 144
    .line 145
    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->getPublicKey()[B

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    iget-object p4, p0, Lcom/jcraft/jsch/DHXECKEM;->s:Lcom/jcraft/jsch/XDH;

    .line 150
    .line 151
    invoke-interface {p4}, Lcom/jcraft/jsch/XDH;->getQ()[B

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    iget p5, p0, Lcom/jcraft/jsch/DHXECKEM;->w:I

    .line 156
    .line 157
    iget v0, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

    .line 158
    .line 159
    add-int/2addr v0, p5

    .line 160
    new-array v0, v0, [B

    .line 161
    .line 162
    iput-object v0, p0, Lcom/jcraft/jsch/DHXECKEM;->k:[B

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-static {p3, v1, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->k:[B

    .line 169
    .line 170
    iget p5, p0, Lcom/jcraft/jsch/DHXECKEM;->w:I

    .line 171
    .line 172
    iget v0, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

    .line 173
    .line 174
    invoke-static {p4, v1, p3, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    .line 176
    .line 177
    iget-object p3, p0, Lcom/jcraft/jsch/DHXECKEM;->p:Lcom/jcraft/jsch/Buffer;

    .line 178
    .line 179
    iget-object p4, p0, Lcom/jcraft/jsch/DHXECKEM;->k:[B

    .line 180
    .line 181
    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .line 183
    .line 184
    if-nez p2, :cond_0

    .line 185
    .line 186
    return-void

    .line 187
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHXECKEM;->q:Lcom/jcraft/jsch/Packet;

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    const/4 p3, 0x1

    .line 197
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_1

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    const-string p4, "SSH_MSG_KEX_ECDH_INIT sent"

    .line 208
    .line 209
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string p2, "expecting SSH_MSG_KEX_ECDH_REPLY"

    .line 217
    .line 218
    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_1
    const/16 p1, 0x1f

    .line 222
    .line 223
    iput p1, p0, Lcom/jcraft/jsch/DHXECKEM;->j:I

    .line 224
    .line 225
    return-void

    .line 226
    :catch_0
    move-exception p0

    .line 227
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :catch_1
    move-exception p0

    .line 238
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
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
    iget v0, p0, Lcom/jcraft/jsch/DHXECKEM;->j:I

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
    array-length v2, v0

    .line 69
    iget v4, p0, Lcom/jcraft/jsch/DHXECKEM;->x:I

    .line 70
    .line 71
    iget v5, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

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
    iget v4, p0, Lcom/jcraft/jsch/DHXECKEM;->x:I

    .line 86
    .line 87
    iget v6, p0, Lcom/jcraft/jsch/DHXECKEM;->y:I

    .line 88
    .line 89
    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcom/jcraft/jsch/DHXECKEM;->s:Lcom/jcraft/jsch/XDH;

    .line 93
    .line 94
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/XDH;->validate([B)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    :cond_3
    :goto_0
    return v1

    .line 101
    :cond_4
    const/4 v4, 0x0

    .line 102
    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/DHXECKEM;->r:Lcom/jcraft/jsch/KEM;

    .line 103
    .line 104
    invoke-interface {v6, v2}, Lcom/jcraft/jsch/KEM;->decapsulate([B)[B

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 109
    .line 110
    array-length v6, v4

    .line 111
    invoke-interface {v2, v4, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 115
    .line 116
    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->s:Lcom/jcraft/jsch/XDH;

    .line 118
    .line 119
    invoke-interface {v2, v5}, Lcom/jcraft/jsch/XDH;->getSecret([B)[B

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 124
    .line 125
    array-length v5, v4

    .line 126
    invoke-interface {v2, v4, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 133
    .line 134
    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v4, 0x1

    .line 139
    invoke-static {v2, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->m:[B

    .line 150
    .line 151
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 156
    .line 157
    array-length v6, v2

    .line 158
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->l:[B

    .line 162
    .line 163
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 168
    .line 169
    array-length v6, v2

    .line 170
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->o:[B

    .line 174
    .line 175
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 180
    .line 181
    array-length v6, v2

    .line 182
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->n:[B

    .line 186
    .line 187
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 192
    .line 193
    array-length v6, v2

    .line 194
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 198
    .line 199
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 204
    .line 205
    array-length v6, v2

    .line 206
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/jcraft/jsch/DHXECKEM;->k:[B

    .line 210
    .line 211
    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 216
    .line 217
    array-length v6, v2

    .line 218
    invoke-interface {v5, v2, v1, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 226
    .line 227
    array-length v5, v0

    .line 228
    invoke-interface {v2, v0, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 234
    .line 235
    array-length v5, v2

    .line 236
    invoke-interface {v0, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 240
    .line 241
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 246
    .line 247
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 248
    .line 249
    aget-byte v2, v0, v1

    .line 250
    .line 251
    shl-int/lit8 v2, v2, 0x18

    .line 252
    .line 253
    const/high16 v5, -0x1000000

    .line 254
    .line 255
    and-int/2addr v2, v5

    .line 256
    aget-byte v4, v0, v4

    .line 257
    .line 258
    shl-int/lit8 v4, v4, 0x10

    .line 259
    .line 260
    const/high16 v5, 0xff0000

    .line 261
    .line 262
    and-int/2addr v4, v5

    .line 263
    or-int/2addr v2, v4

    .line 264
    const/4 v4, 0x2

    .line 265
    aget-byte v4, v0, v4

    .line 266
    .line 267
    shl-int/lit8 v4, v4, 0x8

    .line 268
    .line 269
    const v5, 0xff00

    .line 270
    .line 271
    .line 272
    and-int/2addr v4, v5

    .line 273
    or-int/2addr v2, v4

    .line 274
    aget-byte v3, v0, v3

    .line 275
    .line 276
    and-int/lit16 v3, v3, 0xff

    .line 277
    .line 278
    or-int/2addr v2, v3

    .line 279
    const/4 v3, 0x4

    .line 280
    invoke-static {v0, v3, v2}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    add-int/2addr v3, v2

    .line 285
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 286
    .line 287
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->e(Ljava/lang/String;[BI[B)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    iput v1, p0, Lcom/jcraft/jsch/DHXECKEM;->j:I

    .line 292
    .line 293
    return p1

    .line 294
    :catchall_0
    move-exception p0

    .line 295
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :catchall_1
    move-exception p0

    .line 300
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 301
    .line 302
    .line 303
    throw p0
.end method
