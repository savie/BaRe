.class public final Lo1a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lca9;


# instance fields
.field public final a:Ljava/security/interfaces/ECPrivateKey;

.field public final b:Lzq8;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:Lr1a;

.field public final f:Lfr9;

.field public final g:[B


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lr1a;Lfr9;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo1a;->a:Ljava/security/interfaces/ECPrivateKey;

    .line 5
    .line 6
    new-instance v0, Lzq8;

    .line 7
    .line 8
    const/16 v1, 0x16

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lzq8;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lzq8;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v0, p0, Lo1a;->b:Lzq8;

    .line 17
    .line 18
    iput-object p2, p0, Lo1a;->d:[B

    .line 19
    .line 20
    iput-object p3, p0, Lo1a;->c:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p4, p0, Lo1a;->e:Lr1a;

    .line 23
    .line 24
    iput-object p5, p0, Lo1a;->f:Lfr9;

    .line 25
    .line 26
    iput-object p6, p0, Lo1a;->g:[B

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final zza([B)[B
    .locals 10

    .line 1
    iget-object v0, p0, Lo1a;->g:[B

    .line 2
    .line 3
    invoke-static {v0, p1}, Lau9;->b([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_7

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    iget-object v1, p0, Lo1a;->a:Ljava/security/interfaces/ECPrivateKey;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lzm5;->K(Ljava/security/spec/EllipticCurve;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v3, p0, Lo1a;->e:Lr1a;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    if-eq v4, v6, :cond_1

    .line 36
    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    mul-int/2addr v1, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string p0, "unknown EC point format"

    .line 42
    .line 43
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    :goto_0
    add-int/2addr v1, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    mul-int/2addr v1, v5

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    array-length v4, p1

    .line 52
    add-int/2addr v1, v0

    .line 53
    if-lt v4, v1, :cond_6

    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v4, p0, Lo1a;->f:Lfr9;

    .line 60
    .line 61
    invoke-interface {v4}, Lfr9;->zza()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v7, p0, Lo1a;->b:Lzq8;

    .line 66
    .line 67
    iget-object v7, v7, Lzq8;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v7, Ljava/security/interfaces/ECPrivateKey;

    .line 70
    .line 71
    invoke-interface {v7}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-static {v9, v3, v0}, Lzm5;->N(Ljava/security/spec/EllipticCurve;Lr1a;[B)Ljava/security/spec/ECPoint;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v9, Ljava/security/spec/ECPublicKeySpec;

    .line 84
    .line 85
    invoke-direct {v9, v3, v8}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 86
    .line 87
    .line 88
    sget-object v3, Ls1a;->f:Ls1a;

    .line 89
    .line 90
    const-string v8, "EC"

    .line 91
    .line 92
    iget-object v3, v3, Ls1a;->a:Lt1a;

    .line 93
    .line 94
    invoke-interface {v3, v8}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/security/KeyFactory;

    .line 99
    .line 100
    invoke-virtual {v3, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 105
    .line 106
    invoke-static {v7, v3}, Lzm5;->P(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    filled-new-array {v0, v3}, [[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lz85;->N([[B)[B

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v3, Ls1a;->c:Ls1a;

    .line 119
    .line 120
    iget-object v3, v3, Ls1a;->a:Lt1a;

    .line 121
    .line 122
    iget-object v7, p0, Lo1a;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v3, v7}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljavax/crypto/Mac;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljavax/crypto/Mac;->getMacLength()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    mul-int/lit16 v8, v8, 0xff

    .line 135
    .line 136
    if-gt v5, v8, :cond_5

    .line 137
    .line 138
    iget-object p0, p0, Lo1a;->d:[B

    .line 139
    .line 140
    array-length v8, p0

    .line 141
    if-nez v8, :cond_3

    .line 142
    .line 143
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljavax/crypto/Mac;->getMacLength()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    new-array v8, v8, [B

    .line 150
    .line 151
    invoke-direct {p0, v8, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 159
    .line 160
    invoke-direct {v8, p0, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-array v0, v5, [B

    .line 171
    .line 172
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 173
    .line 174
    invoke-direct {v8, p0, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 178
    .line 179
    .line 180
    const/4 p0, 0x0

    .line 181
    new-array v7, p0, [B

    .line 182
    .line 183
    move v8, p0

    .line 184
    :goto_3
    invoke-virtual {v3, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 188
    .line 189
    .line 190
    int-to-byte v7, v6

    .line 191
    invoke-virtual {v3, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    array-length v9, v7

    .line 199
    add-int/2addr v9, v8

    .line 200
    if-ge v9, v5, :cond_4

    .line 201
    .line 202
    array-length v9, v7

    .line 203
    invoke-static {v7, p0, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    .line 205
    .line 206
    array-length v9, v7

    .line 207
    add-int/2addr v8, v9

    .line 208
    add-int/lit8 v6, v6, 0x1

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_4
    sub-int/2addr v5, v8

    .line 212
    invoke-static {v7, p0, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v4, v1, v0, p1}, Lfr9;->a(I[B[B)[B

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :cond_5
    const-string p0, "size too large"

    .line 221
    .line 222
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-object v2

    .line 226
    :cond_6
    const-string p0, "ciphertext too short"

    .line 227
    .line 228
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-object v2

    .line 232
    :cond_7
    const-string p0, "Invalid ciphertext (output prefix mismatch)"

    .line 233
    .line 234
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-object v2
.end method
