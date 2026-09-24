.class abstract Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/jcraft/jsch/DH;

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:[B

.field public s:Lcom/jcraft/jsch/Buffer;

.field public t:Lcom/jcraft/jsch/Packet;

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:Ljava/lang/String;


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
    iget p0, p0, Lcom/jcraft/jsch/DHGEX;->m:I

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
    const-string v0, "Invalid DHGEX sizes: min="

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->o:[B

    .line 4
    .line 5
    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    .line 6
    .line 7
    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->q:[B

    .line 8
    .line 9
    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->r:[B

    .line 10
    .line 11
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->x:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-class p3, Lcom/jcraft/jsch/HASH;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/jcraft/jsch/HASH;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    new-instance p4, Lcom/jcraft/jsch/Packet;

    .line 51
    .line 52
    invoke-direct {p4, p2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 53
    .line 54
    .line 55
    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->t:Lcom/jcraft/jsch/Packet;

    .line 56
    .line 57
    :try_start_1
    const-string p2, "dh"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-class p4, Lcom/jcraft/jsch/DH;

    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string p4, "dhgex_min"

    .line 74
    .line 75
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 84
    .line 85
    const-string p4, "dhgex_max"

    .line 86
    .line 87
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 96
    .line 97
    const-string p4, "dhgex_preferred"

    .line 98
    .line 99
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->k:I

    .line 108
    .line 109
    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 110
    .line 111
    if-lez p5, :cond_1

    .line 112
    .line 113
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 114
    .line 115
    if-lez v1, :cond_1

    .line 116
    .line 117
    if-lez p4, :cond_1

    .line 118
    .line 119
    if-lt p4, p5, :cond_1

    .line 120
    .line 121
    if-gt p4, v1, :cond_1

    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Lcom/jcraft/jsch/DH;

    .line 132
    .line 133
    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 134
    .line 135
    invoke-interface {p2}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->t:Lcom/jcraft/jsch/Packet;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/jcraft/jsch/Packet;->a()V

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 144
    .line 145
    const/16 p3, 0x22

    .line 146
    .line 147
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 151
    .line 152
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 153
    .line 154
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 158
    .line 159
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->k:I

    .line 160
    .line 161
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 165
    .line 166
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->t:Lcom/jcraft/jsch/Packet;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const/4 p3, 0x1

    .line 181
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_0

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    new-instance p4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string p5, "SSH_MSG_KEX_DH_GEX_REQUEST("

    .line 194
    .line 195
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 199
    .line 200
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string p5, "<"

    .line 204
    .line 205
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->k:I

    .line 209
    .line 210
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 217
    .line 218
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p5, ") sent"

    .line 222
    .line 223
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string p2, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    .line 238
    .line 239
    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_0
    const/16 p1, 0x1f

    .line 243
    .line 244
    iput p1, p0, Lcom/jcraft/jsch/DHGEX;->m:I

    .line 245
    .line 246
    return-void

    .line 247
    :cond_1
    :try_start_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 248
    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 255
    .line 256
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p3, " max="

    .line 260
    .line 261
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 265
    .line 266
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string p3, " preferred="

    .line 270
    .line 271
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget p0, p0, Lcom/jcraft/jsch/DHGEX;->k:I

    .line 275
    .line 276
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :catch_0
    move-exception p0

    .line 288
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :catch_1
    move-exception p0

    .line 293
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
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
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->m:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x1f

    .line 9
    .line 10
    if-eq v0, v5, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    iget-object p0, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    .line 49
    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0, v2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v4

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 79
    .line 80
    invoke-interface {v1, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 89
    .line 90
    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->getK()[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/jcraft/jsch/KeyExchange;->d([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 103
    .line 104
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    .line 105
    .line 106
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 111
    .line 112
    array-length v6, v1

    .line 113
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->o:[B

    .line 117
    .line 118
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 123
    .line 124
    array-length v6, v1

    .line 125
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->r:[B

    .line 129
    .line 130
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 135
    .line 136
    array-length v6, v1

    .line 137
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->q:[B

    .line 141
    .line 142
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 147
    .line 148
    array-length v6, v1

    .line 149
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 153
    .line 154
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->b([BZ)[B

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 159
    .line 160
    array-length v6, v1

    .line 161
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 162
    .line 163
    .line 164
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 165
    .line 166
    invoke-static {v1}, Lcom/jcraft/jsch/KeyExchange;->c(I)[B

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 171
    .line 172
    const/4 v6, 0x4

    .line 173
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 174
    .line 175
    .line 176
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->k:I

    .line 177
    .line 178
    invoke-static {v1}, Lcom/jcraft/jsch/KeyExchange;->c(I)[B

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 183
    .line 184
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 185
    .line 186
    .line 187
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 188
    .line 189
    invoke-static {v1}, Lcom/jcraft/jsch/KeyExchange;->c(I)[B

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 194
    .line 195
    invoke-interface {v5, v1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->u:[B

    .line 199
    .line 200
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 205
    .line 206
    array-length v7, v1

    .line 207
    invoke-interface {v5, v1, v4, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->v:[B

    .line 211
    .line 212
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 217
    .line 218
    array-length v7, v1

    .line 219
    invoke-interface {v5, v1, v4, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->w:[B

    .line 223
    .line 224
    invoke-static {v1, v4}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget-object v5, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 229
    .line 230
    array-length v7, v1

    .line 231
    invoke-interface {v5, v1, v4, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0, v4}, Lcom/jcraft/jsch/KeyExchange;->a([BZ)[B

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 239
    .line 240
    array-length v5, v0

    .line 241
    invoke-interface {v1, v0, v4, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 247
    .line 248
    array-length v5, v1

    .line 249
    invoke-interface {v0, v1, v4, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 253
    .line 254
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 259
    .line 260
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 261
    .line 262
    aget-byte v1, v0, v4

    .line 263
    .line 264
    shl-int/lit8 v1, v1, 0x18

    .line 265
    .line 266
    const/high16 v5, -0x1000000

    .line 267
    .line 268
    and-int/2addr v1, v5

    .line 269
    aget-byte v3, v0, v3

    .line 270
    .line 271
    shl-int/lit8 v3, v3, 0x10

    .line 272
    .line 273
    const/high16 v5, 0xff0000

    .line 274
    .line 275
    and-int/2addr v3, v5

    .line 276
    or-int/2addr v1, v3

    .line 277
    const/4 v3, 0x2

    .line 278
    aget-byte v3, v0, v3

    .line 279
    .line 280
    shl-int/lit8 v3, v3, 0x8

    .line 281
    .line 282
    const v5, 0xff00

    .line 283
    .line 284
    .line 285
    and-int/2addr v3, v5

    .line 286
    or-int/2addr v1, v3

    .line 287
    aget-byte v2, v0, v2

    .line 288
    .line 289
    and-int/lit16 v2, v2, 0xff

    .line 290
    .line 291
    or-int/2addr v1, v2

    .line 292
    invoke-static {v0, v6, v1}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    add-int/2addr v6, v1

    .line 297
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 298
    .line 299
    invoke-virtual {p0, v0, v1, v6, p1}, Lcom/jcraft/jsch/KeyExchange;->e(Ljava/lang/String;[BI[B)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iput v4, p0, Lcom/jcraft/jsch/DHGEX;->m:I

    .line 304
    .line 305
    return p1

    .line 306
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eq v0, v5, :cond_3

    .line 317
    .line 318
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_6

    .line 329
    .line 330
    iget-object p0, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v1, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    .line 339
    .line 340
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-interface {p0, v2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return v4

    .line 354
    :cond_3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->u:[B

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->v:[B

    .line 365
    .line 366
    new-instance p1, Ljava/math/BigInteger;

    .line 367
    .line 368
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->u:[B

    .line 369
    .line 370
    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->j:I

    .line 378
    .line 379
    if-lt p1, v0, :cond_6

    .line 380
    .line 381
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    .line 382
    .line 383
    if-le p1, v0, :cond_4

    .line 384
    .line 385
    goto :goto_0

    .line 386
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 387
    .line 388
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->u:[B

    .line 389
    .line 390
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 394
    .line 395
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->v:[B

    .line 396
    .line 397
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/DH;

    .line 401
    .line 402
    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->w:[B

    .line 407
    .line 408
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->t:Lcom/jcraft/jsch/Packet;

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 414
    .line 415
    const/16 v0, 0x20

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 418
    .line 419
    .line 420
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->s:Lcom/jcraft/jsch/Buffer;

    .line 421
    .line 422
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->w:[B

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 428
    .line 429
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->t:Lcom/jcraft/jsch/Packet;

    .line 430
    .line 431
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 432
    .line 433
    .line 434
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 435
    .line 436
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-eqz p1, :cond_5

    .line 445
    .line 446
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 447
    .line 448
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    const-string v0, "SSH_MSG_KEX_DH_GEX_INIT sent"

    .line 453
    .line 454
    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 458
    .line 459
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    const-string v0, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    .line 464
    .line 465
    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    :cond_5
    iput v1, p0, Lcom/jcraft/jsch/DHGEX;->m:I

    .line 469
    .line 470
    return v3

    .line 471
    :cond_6
    :goto_0
    return v4
.end method
