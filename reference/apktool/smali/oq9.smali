.class public final Loq9;
.super Lbr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lvq9;

.field public final e:Lkm8;


# direct methods
.method public constructor <init>(Lvq9;Lkm8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loq9;->d:Lvq9;

    .line 5
    .line 6
    iput-object p2, p0, Loq9;->e:Lkm8;

    .line 7
    .line 8
    return-void
.end method

.method public static K(Lvq9;Lkm8;)Loq9;
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lvq9;->d:Llq9;

    .line 8
    .line 9
    iget-object v3, p1, Lkm8;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ld2a;

    .line 12
    .line 13
    iget-object v2, v2, Llq9;->a:Ljq9;

    .line 14
    .line 15
    iget-object v4, v3, Ld2a;->a:[B

    .line 16
    .line 17
    array-length v4, v4

    .line 18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v7, "Encoded private key byte length for "

    .line 25
    .line 26
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, " must be %d, not "

    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Ljq9;->g:Ljq9;

    .line 45
    .line 46
    sget-object v7, Ljq9;->f:Ljq9;

    .line 47
    .line 48
    sget-object v8, Ljq9;->e:Ljq9;

    .line 49
    .line 50
    sget-object v9, Ljq9;->d:Ljq9;

    .line 51
    .line 52
    if-ne v2, v9, :cond_1

    .line 53
    .line 54
    if-ne v4, v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 58
    .line 59
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    if-ne v2, v8, :cond_3

    .line 72
    .line 73
    const/16 v0, 0x30

    .line 74
    .line 75
    if-ne v4, v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    if-ne v2, v7, :cond_5

    .line 97
    .line 98
    const/16 v0, 0x42

    .line 99
    .line 100
    if-ne v4, v0, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_5
    if-ne v2, v6, :cond_10

    .line 122
    .line 123
    if-ne v4, v0, :cond_f

    .line 124
    .line 125
    :goto_0
    iget-object v0, p0, Lvq9;->e:Ld2a;

    .line 126
    .line 127
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v3}, Ld2a;->b()[B

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const/4 v3, 0x0

    .line 136
    const-string v4, "Invalid private key for public key."

    .line 137
    .line 138
    if-eq v2, v9, :cond_9

    .line 139
    .line 140
    if-eq v2, v8, :cond_9

    .line 141
    .line 142
    if-ne v2, v7, :cond_6

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    if-ne v2, v6, :cond_8

    .line 146
    .line 147
    invoke-static {v1}, Lnc8;->v0([B)[B

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    invoke-static {v4}, Lm0;->h(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v3

    .line 162
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string p1, "Unable to validate key pair for "

    .line 167
    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object v3

    .line 176
    :cond_9
    :goto_1
    if-ne v2, v9, :cond_a

    .line 177
    .line 178
    sget-object v2, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_a
    if-ne v2, v8, :cond_b

    .line 182
    .line 183
    sget-object v2, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_b
    if-ne v2, v7, :cond_e

    .line 187
    .line 188
    sget-object v2, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 189
    .line 190
    :goto_2
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-static {v1}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-lez v6, :cond_d

    .line 203
    .line 204
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-gez v5, :cond_d

    .line 209
    .line 210
    invoke-static {v1, v2}, Lyr9;->c(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    sget-object v5, Lr1a;->a:Lr1a;

    .line 219
    .line 220
    invoke-static {v2, v5, v0}, Lzm5;->N(Ljava/security/spec/EllipticCurve;Lr1a;[B)Ljava/security/spec/ECPoint;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    :goto_3
    new-instance v0, Loq9;

    .line 231
    .line 232
    invoke-direct {v0, p0, p1}, Loq9;-><init>(Lvq9;Lkm8;)V

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :cond_c
    invoke-static {v4}, Lm0;->h(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v3

    .line 240
    :cond_d
    const-string p0, "Invalid private key."

    .line 241
    .line 242
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object v3

    .line 246
    :cond_e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    const-string p1, "Unable to determine NIST curve params for "

    .line 251
    .line 252
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-object v3

    .line 260
    :cond_f
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 261
    .line 262
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_10
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 275
    .line 276
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const-string v0, "Unable to validate private key length for "

    .line 281
    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p0
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Loq9;->d:Lvq9;

    .line 2
    .line 3
    iget-object p0, p0, Lvq9;->d:Llq9;

    .line 4
    .line 5
    return-object p0
.end method

.method public final synthetic J()Lvm4;
    .locals 0

    .line 1
    iget-object p0, p0, Loq9;->d:Lvq9;

    .line 2
    .line 3
    return-object p0
.end method
