.class public final Lvq9;
.super Ldr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Llq9;

.field public final e:Ld2a;

.field public final f:Ld2a;

.field public final k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Llq9;Ld2a;Ld2a;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvq9;->d:Llq9;

    .line 5
    .line 6
    iput-object p2, p0, Lvq9;->e:Ld2a;

    .line 7
    .line 8
    iput-object p3, p0, Lvq9;->f:Ld2a;

    .line 9
    .line 10
    iput-object p4, p0, Lvq9;->k:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public static K(Llq9;Ld2a;Ljava/lang/Integer;)Lvq9;
    .locals 10

    .line 1
    iget-object v0, p0, Llq9;->d:Liq9;

    .line 2
    .line 3
    sget-object v1, Liq9;->d:Liq9;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "\'idRequirement\' must be non-null for "

    .line 21
    .line 22
    const-string v0, " variant."

    .line 23
    .line 24
    invoke-static {p2, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-nez p2, :cond_14

    .line 37
    .line 38
    :goto_1
    iget-object v3, p0, Llq9;->a:Ljq9;

    .line 39
    .line 40
    iget-object v4, p1, Ld2a;->a:[B

    .line 41
    .line 42
    array-length v4, v4

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v7, "Encoded public key byte length for "

    .line 50
    .line 51
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, " must be %d, not "

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v6, Ljq9;->f:Ljq9;

    .line 70
    .line 71
    sget-object v7, Ljq9;->e:Ljq9;

    .line 72
    .line 73
    sget-object v8, Ljq9;->d:Ljq9;

    .line 74
    .line 75
    if-ne v3, v8, :cond_4

    .line 76
    .line 77
    const/16 v9, 0x41

    .line 78
    .line 79
    if-ne v4, v9, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 83
    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_4
    if-ne v3, v7, :cond_6

    .line 101
    .line 102
    const/16 v9, 0x61

    .line 103
    .line 104
    if-ne v4, v9, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 108
    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_6
    if-ne v3, v6, :cond_8

    .line 126
    .line 127
    const/16 v9, 0x85

    .line 128
    .line 129
    if-ne v4, v9, :cond_7

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 133
    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_8
    sget-object v9, Ljq9;->g:Ljq9;

    .line 151
    .line 152
    if-ne v3, v9, :cond_13

    .line 153
    .line 154
    const/16 v9, 0x20

    .line 155
    .line 156
    if-ne v4, v9, :cond_12

    .line 157
    .line 158
    :goto_2
    if-eq v3, v8, :cond_9

    .line 159
    .line 160
    if-eq v3, v7, :cond_9

    .line 161
    .line 162
    if-ne v3, v6, :cond_c

    .line 163
    .line 164
    :cond_9
    if-ne v3, v8, :cond_a

    .line 165
    .line 166
    sget-object v3, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    goto :goto_3

    .line 173
    :cond_a
    if-ne v3, v7, :cond_b

    .line 174
    .line 175
    sget-object v3, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    goto :goto_3

    .line 182
    :cond_b
    if-ne v3, v6, :cond_11

    .line 183
    .line 184
    sget-object v3, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    :goto_3
    sget-object v4, Lr1a;->a:Lr1a;

    .line 191
    .line 192
    invoke-virtual {p1}, Ld2a;->b()[B

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v3, v4, v5}, Lzm5;->N(Ljava/security/spec/EllipticCurve;Lr1a;[B)Ljava/security/spec/ECPoint;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v4, v3}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 201
    .line 202
    .line 203
    :cond_c
    if-ne v0, v1, :cond_d

    .line 204
    .line 205
    sget-object v0, Lzs9;->a:Ld2a;

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_d
    if-eqz p2, :cond_10

    .line 209
    .line 210
    sget-object v1, Liq9;->c:Liq9;

    .line 211
    .line 212
    if-ne v0, v1, :cond_e

    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Lzs9;->a(I)Ld2a;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_4

    .line 223
    :cond_e
    sget-object v1, Liq9;->b:Liq9;

    .line 224
    .line 225
    if-ne v0, v1, :cond_f

    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-static {v0}, Lzs9;->b(I)Ld2a;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :goto_4
    new-instance v1, Lvq9;

    .line 236
    .line 237
    invoke-direct {v1, p0, p1, v0, p2}, Lvq9;-><init>(Llq9;Ld2a;Ld2a;Ljava/lang/Integer;)V

    .line 238
    .line 239
    .line 240
    return-object v1

    .line 241
    :cond_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    const-string p1, "Unknown HpkeParameters.Variant: "

    .line 246
    .line 247
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-object v2

    .line 255
    :cond_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const-string p1, "idRequirement must be non-null for HpkeParameters.Variant "

    .line 260
    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v2

    .line 269
    :cond_11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    const-string p1, "Unable to determine NIST curve type for "

    .line 274
    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-object v2

    .line 283
    :cond_12
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 284
    .line 285
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p0

    .line 301
    :cond_13
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 302
    .line 303
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string p2, "Unable to validate public key length for "

    .line 308
    .line 309
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p0

    .line 317
    :cond_14
    const-string p0, "\'idRequirement\' must be null for NO_PREFIX variant."

    .line 318
    .line 319
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    return-object v2
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lvq9;->d:Llq9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvq9;->k:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J()Ld2a;
    .locals 0

    .line 1
    iget-object p0, p0, Lvq9;->f:Ld2a;

    .line 2
    .line 3
    return-object p0
.end method
