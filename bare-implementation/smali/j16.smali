.class public abstract Lj16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final a:Lvh7;

.field public final b:Lvo4;

.field public final c:[C

.field public d:Z


# direct methods
.method public constructor <init>(Lvh7;Lvo4;[C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lj16;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lj16;->a:Lvh7;

    .line 8
    .line 9
    iput-object p2, p0, Lj16;->b:Lvo4;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    array-length p1, p3

    .line 14
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lj16;->c:[C

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/security/PublicKey;Lvh7;[C)Lj16;
    .locals 10

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/RSAKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "Unsupported key type"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lvo4;->values()[Lvo4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v5, v0

    .line 15
    :goto_0
    if-ge v4, v5, :cond_9

    .line 16
    .line 17
    aget-object v6, v0, v4

    .line 18
    .line 19
    iget-object v7, v6, Lvo4;->b:Lto4;

    .line 20
    .line 21
    iget v8, v7, Lto4;->a:I

    .line 22
    .line 23
    if-ne v8, v2, :cond_0

    .line 24
    .line 25
    iget v7, v7, Lto4;->b:I

    .line 26
    .line 27
    move-object v8, p0

    .line 28
    check-cast v8, Ljava/security/interfaces/RSAKey;

    .line 29
    .line 30
    invoke-interface {v8}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-ne v7, v8, :cond_0

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lvo4;->c:Lvo4;

    .line 46
    .line 47
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 53
    .line 54
    instance-of v5, v0, Ljava/security/interfaces/RSAPublicKey;

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    new-instance v5, Lpb6;

    .line 59
    .line 60
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v5, v6, v0}, Lpb6;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v5, 0x30

    .line 80
    .line 81
    :try_start_0
    invoke-static {v0, v5}, Lcy0;->K([BI)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, [B

    .line 98
    .line 99
    invoke-static {v5}, Lcy0;->n([B)Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Lq48;

    .line 108
    .line 109
    invoke-virtual {v6}, Lq48;->b()[B

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v7, 0x3

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, [B

    .line 123
    .line 124
    array-length v7, v0

    .line 125
    invoke-static {v0, v2, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v7, Lqb6;->b:[B

    .line 130
    .line 131
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_3

    .line 136
    .line 137
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lq48;

    .line 142
    .line 143
    invoke-virtual {v5}, Lq48;->b()[B

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v5}, Lzt2;->a([B)Lzt2;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5, v0}, Lob6;->i(Lzt2;[B)Lob6;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception p0

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    sget-object v5, Lzt2;->f:Lzt2;

    .line 159
    .line 160
    sget-object v7, Lzt2;->e:Lzt2;

    .line 161
    .line 162
    filled-new-array {v5, v7}, [Lzt2;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_5

    .line 179
    .line 180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    check-cast v7, Lzt2;

    .line 185
    .line 186
    iget-object v8, v7, Lzt2;->b:[B

    .line 187
    .line 188
    array-length v9, v8

    .line 189
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_4

    .line 198
    .line 199
    new-instance v5, Lnb6;

    .line 200
    .line 201
    invoke-direct {v5, v7, v0}, Lnb6;-><init>(Lzt2;[B)V
    :try_end_0
    .catch Lvk0; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    :goto_1
    check-cast v5, Lob6;

    .line 205
    .line 206
    iget-object v0, v5, Lob6;->c:Lzt2;

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_5
    invoke-static {}, Lg84;->c()V

    .line 210
    .line 211
    .line 212
    return-object v1

    .line 213
    :goto_2
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    return-object v1

    .line 217
    :cond_6
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    move-object v0, p0

    .line 222
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 223
    .line 224
    invoke-static {v0}, Ll66;->a(Ljava/security/PrivateKey;)Ll66;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lj66;

    .line 229
    .line 230
    iget-object v0, v0, Lj66;->d:Lzt2;

    .line 231
    .line 232
    :goto_3
    invoke-static {}, Lvo4;->values()[Lvo4;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    array-length v6, v5

    .line 237
    :goto_4
    if-ge v4, v6, :cond_9

    .line 238
    .line 239
    aget-object v7, v5, v4

    .line 240
    .line 241
    iget-object v8, v7, Lvo4;->b:Lto4;

    .line 242
    .line 243
    instance-of v9, v8, Lso4;

    .line 244
    .line 245
    if-eqz v9, :cond_8

    .line 246
    .line 247
    check-cast v8, Lso4;

    .line 248
    .line 249
    iget-object v8, v8, Lso4;->c:Lzt2;

    .line 250
    .line 251
    if-ne v8, v0, :cond_8

    .line 252
    .line 253
    move-object v6, v7

    .line 254
    :goto_5
    iget-object v0, v6, Lvo4;->b:Lto4;

    .line 255
    .line 256
    iget v0, v0, Lto4;->a:I

    .line 257
    .line 258
    if-ne v0, v2, :cond_7

    .line 259
    .line 260
    new-instance v0, Li16;

    .line 261
    .line 262
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 263
    .line 264
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-direct {v0, p1, v6, p0, p2}, Li16;-><init>(Lvh7;Lvo4;Ljava/math/BigInteger;[C)V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    :cond_7
    new-instance v0, Lh16;

    .line 273
    .line 274
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 275
    .line 276
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-direct {v0, p1, v6, p0, p2}, Lh16;-><init>(Lvh7;Lvo4;Ljava/security/spec/ECParameterSpec;[C)V

    .line 281
    .line 282
    .line 283
    return-object v0

    .line 284
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_9
    invoke-static {v3}, Lc6;->f(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v1

    .line 291
    :cond_a
    invoke-static {v3}, Lc6;->f(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-object v1
.end method


# virtual methods
.method public final b(Lvz0;[B)[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj16;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Le16;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0, p2}, Le16;-><init>(Lj16;Ljava/util/concurrent/ArrayBlockingQueue;[B)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcn6;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, [B

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "PivPrivateKey has been destroyed"

    .line 33
    .line 34
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj16;->c:[C

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lj16;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lj16;->b:Lvo4;

    .line 2
    .line 3
    iget-object p0, p0, Lvo4;->b:Lto4;

    .line 4
    .line 5
    iget p0, p0, Lto4;->a:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const-string p0, "EC"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    const-string p0, "RSA"

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isDestroyed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj16;->d:Z

    .line 2
    .line 3
    return p0
.end method
