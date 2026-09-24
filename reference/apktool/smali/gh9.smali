.class public final synthetic Lgh9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 8

    .line 1
    iget p0, p0, Lgh9;->a:I

    .line 2
    .line 3
    const-string v0, "EC"

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Llq9;

    .line 9
    .line 10
    iget-object p0, p1, Llq9;->a:Ljq9;

    .line 11
    .line 12
    sget-object v1, Ljq9;->g:Ljq9;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x20

    .line 22
    .line 23
    invoke-static {p0}, Lrt9;->a(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    aget-byte v0, p0, v2

    .line 28
    .line 29
    or-int/lit8 v0, v0, 0x7

    .line 30
    .line 31
    int-to-byte v0, v0

    .line 32
    aput-byte v0, p0, v2

    .line 33
    .line 34
    const/16 v0, 0x1f

    .line 35
    .line 36
    aget-byte v1, p0, v0

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x3f

    .line 39
    .line 40
    int-to-byte v1, v1

    .line 41
    aput-byte v1, p0, v0

    .line 42
    .line 43
    or-int/lit16 v1, v1, 0x80

    .line 44
    .line 45
    int-to-byte v1, v1

    .line 46
    aput-byte v1, p0, v0

    .line 47
    .line 48
    new-instance v0, Lkm8;

    .line 49
    .line 50
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lnc8;->v0([B)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    sget-object v3, Ljq9;->f:Ljq9;

    .line 69
    .line 70
    sget-object v4, Ljq9;->e:Ljq9;

    .line 71
    .line 72
    sget-object v5, Ljq9;->d:Ljq9;

    .line 73
    .line 74
    if-eq p0, v5, :cond_2

    .line 75
    .line 76
    if-eq p0, v4, :cond_2

    .line 77
    .line 78
    if-ne p0, v3, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string p0, "Unknown KEM ID"

    .line 82
    .line 83
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    :goto_0
    sget-object v6, Lor9;->a:[B

    .line 89
    .line 90
    if-ne p0, v5, :cond_3

    .line 91
    .line 92
    sget-object v1, Lp1a;->a:Lp1a;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    if-ne p0, v4, :cond_4

    .line 96
    .line 97
    sget-object v1, Lp1a;->b:Lp1a;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    if-ne p0, v3, :cond_5

    .line 101
    .line 102
    sget-object v1, Lp1a;->c:Lp1a;

    .line 103
    .line 104
    :goto_1
    invoke-static {v1}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget-object v4, Ls1a;->e:Ls1a;

    .line 109
    .line 110
    iget-object v4, v4, Ls1a;->a:Lt1a;

    .line 111
    .line 112
    invoke-interface {v4, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v1}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v3, v1}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lzm5;->K(Ljava/security/spec/EllipticCurve;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    mul-int/lit8 v4, v1, 0x2

    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    new-array v5, v4, [B

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6}, Lwx3;->J(Ljava/math/BigInteger;)[B

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v3}, Lwx3;->J(Ljava/math/BigInteger;)[B

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    array-length v7, v3

    .line 173
    sub-int/2addr v4, v7

    .line 174
    array-length v7, v3

    .line 175
    invoke-static {v3, v2, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    array-length v3, v6

    .line 181
    sub-int/2addr v1, v3

    .line 182
    array-length v3, v6

    .line 183
    invoke-static {v6, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    .line 185
    .line 186
    const/4 v1, 0x4

    .line 187
    aput-byte v1, v5, v2

    .line 188
    .line 189
    invoke-static {v5}, Ld2a;->a([B)Ld2a;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {p0}, Lor9;->a(Ljq9;)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-static {p0, v0}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    new-instance v0, Lkm8;

    .line 212
    .line 213
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    move-object p0, v1

    .line 221
    :goto_2
    invoke-static {p1, p0, p2}, Lvq9;->K(Llq9;Ld2a;Ljava/lang/Integer;)Lvq9;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {p0, v0}, Loq9;->K(Lvq9;Lkm8;)Loq9;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    goto :goto_3

    .line 230
    :cond_5
    const-string p0, "Unrecognized NIST HPKE KEM identifier"

    .line 231
    .line 232
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_3
    return-object v1

    .line 236
    :pswitch_0
    check-cast p1, Lcq9;

    .line 237
    .line 238
    iget-object p0, p1, Lcq9;->a:Lyp9;

    .line 239
    .line 240
    sget-object v1, Lyp9;->b:Lyp9;

    .line 241
    .line 242
    if-ne p0, v1, :cond_6

    .line 243
    .line 244
    sget-object p0, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_6
    sget-object v1, Lyp9;->c:Lyp9;

    .line 248
    .line 249
    if-ne p0, v1, :cond_7

    .line 250
    .line 251
    sget-object p0, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_7
    sget-object v1, Lyp9;->d:Lyp9;

    .line 255
    .line 256
    if-ne p0, v1, :cond_8

    .line 257
    .line 258
    sget-object p0, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 259
    .line 260
    :goto_4
    sget-object v1, Ls1a;->e:Ls1a;

    .line 261
    .line 262
    iget-object v1, v1, Ls1a;->a:Lt1a;

    .line 263
    .line 264
    invoke-interface {v1, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 269
    .line 270
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    .line 288
    .line 289
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {p1, v0, p2}, Lnq9;->K(Lcq9;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lnq9;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    new-instance p2, Lvk9;

    .line 302
    .line 303
    const/16 v0, 0x16

    .line 304
    .line 305
    invoke-direct {p2, p0, v0}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 306
    .line 307
    .line 308
    invoke-static {p1, p2}, Lfq9;->M(Lnq9;Lvk9;)Lfq9;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 314
    .line 315
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    const-string p2, "Unsupported curve type: "

    .line 320
    .line 321
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p1

    .line 329
    :pswitch_1
    check-cast p1, Lmh9;

    .line 330
    .line 331
    invoke-static {p1, p2}, Lkh9;->K(Lmh9;Ljava/lang/Integer;)Lkh9;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
