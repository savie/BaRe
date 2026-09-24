.class public final Le36;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr9;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Le36;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldp9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le36;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget p1, p1, Ldp9;->a:I

    .line 7
    .line 8
    iput p1, p0, Le36;->a:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(I[B[B)[B
    .locals 8

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt v0, p1, :cond_b

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p3, Ldr;

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    invoke-direct {p3, v0}, Ldr;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p3, Ldr;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v1, p3, Ldr;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object p0, p0, Le36;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Ldp9;

    .line 23
    .line 24
    iput-object p0, p3, Ldr;->b:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance p0, Lkm8;

    .line 27
    .line 28
    invoke-static {p2}, Ld2a;->a([B)Ld2a;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p0, p2}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p0, p3, Ldr;->c:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p3}, Ldr;->i()Lto9;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance p2, Lm1a;

    .line 42
    .line 43
    iget-object p3, p0, Lto9;->e:Lkm8;

    .line 44
    .line 45
    iget-object p3, p3, Lkm8;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p3, Ld2a;

    .line 48
    .line 49
    invoke-virtual {p3}, Ld2a;->b()[B

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object p0, p0, Lto9;->f:Ld2a;

    .line 54
    .line 55
    invoke-direct {p2, p3, p0}, Lm1a;-><init>([BLd2a;)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lx13;->d:[B

    .line 59
    .line 60
    filled-new-array {p0}, [[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    array-length p3, p1

    .line 65
    iget-object v0, p2, Lm1a;->c:[B

    .line 66
    .line 67
    array-length v2, v0

    .line 68
    const/16 v3, 0x10

    .line 69
    .line 70
    add-int/2addr v2, v3

    .line 71
    if-lt p3, v2, :cond_a

    .line 72
    .line 73
    invoke-static {v0, p1}, Lau9;->b([B[B)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p3, :cond_9

    .line 78
    .line 79
    sget-object p3, Lm1a;->f:Ls89;

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Ljavax/crypto/Cipher;

    .line 86
    .line 87
    array-length v2, v0

    .line 88
    array-length v4, v0

    .line 89
    add-int/2addr v4, v3

    .line 90
    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, [B

    .line 99
    .line 100
    const/16 v5, 0x8

    .line 101
    .line 102
    aget-byte v6, v4, v5

    .line 103
    .line 104
    and-int/lit8 v6, v6, 0x7f

    .line 105
    .line 106
    int-to-byte v6, v6

    .line 107
    aput-byte v6, v4, v5

    .line 108
    .line 109
    const/16 v5, 0xc

    .line 110
    .line 111
    aget-byte v6, v4, v5

    .line 112
    .line 113
    and-int/lit8 v6, v6, 0x7f

    .line 114
    .line 115
    int-to-byte v6, v6

    .line 116
    aput-byte v6, v4, v5

    .line 117
    .line 118
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 119
    .line 120
    iget-object v6, p2, Lm1a;->b:[B

    .line 121
    .line 122
    const-string v7, "AES"

    .line 123
    .line 124
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 128
    .line 129
    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x2

    .line 133
    invoke-virtual {p3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 134
    .line 135
    .line 136
    array-length v0, v0

    .line 137
    add-int/2addr v0, v3

    .line 138
    array-length v5, p1

    .line 139
    sub-int/2addr v5, v0

    .line 140
    invoke-virtual {p3, p1, v0, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const/4 p3, 0x0

    .line 145
    if-nez v5, :cond_0

    .line 146
    .line 147
    if-nez p1, :cond_0

    .line 148
    .line 149
    const-string v0, "java.vendor"

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v5, "The Android Project"

    .line 156
    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    new-array p1, p3, [B

    .line 164
    .line 165
    :cond_0
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, [[B

    .line 170
    .line 171
    const/4 v0, 0x1

    .line 172
    aput-object p1, p0, v0

    .line 173
    .line 174
    array-length v4, p0

    .line 175
    iget-object p2, p2, Lm1a;->a:Lyu9;

    .line 176
    .line 177
    if-nez v4, :cond_1

    .line 178
    .line 179
    sget-object p0, Lm1a;->e:[B

    .line 180
    .line 181
    invoke-interface {p2, p0, v3}, Lyu9;->a([BI)[B

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    goto :goto_2

    .line 186
    :cond_1
    sget-object v4, Lm1a;->d:[B

    .line 187
    .line 188
    invoke-interface {p2, v4, v3}, Lyu9;->a([BI)[B

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    move v5, p3

    .line 193
    :goto_0
    array-length v6, p0

    .line 194
    sub-int/2addr v6, v0

    .line 195
    if-ge v5, v6, :cond_3

    .line 196
    .line 197
    aget-object v6, p0, v5

    .line 198
    .line 199
    if-nez v6, :cond_2

    .line 200
    .line 201
    new-array v6, p3, [B

    .line 202
    .line 203
    :cond_2
    invoke-static {v4}, Ljd4;->Q([B)[B

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-interface {p2, v6, v3}, Lyu9;->a([BI)[B

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-static {v4, v6}, Lz85;->L([B[B)[B

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    add-int/lit8 v5, v5, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_3
    array-length v5, p0

    .line 219
    sub-int/2addr v5, v0

    .line 220
    aget-object p0, p0, v5

    .line 221
    .line 222
    array-length v0, p0

    .line 223
    if-lt v0, v3, :cond_5

    .line 224
    .line 225
    array-length v0, p0

    .line 226
    array-length v5, v4

    .line 227
    if-lt v0, v5, :cond_4

    .line 228
    .line 229
    array-length v0, p0

    .line 230
    array-length v1, v4

    .line 231
    sub-int/2addr v0, v1

    .line 232
    array-length v1, p0

    .line 233
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    :goto_1
    array-length v1, v4

    .line 238
    if-ge p3, v1, :cond_6

    .line 239
    .line 240
    add-int v1, v0, p3

    .line 241
    .line 242
    aget-byte v5, p0, v1

    .line 243
    .line 244
    aget-byte v6, v4, p3

    .line 245
    .line 246
    xor-int/2addr v5, v6

    .line 247
    int-to-byte v5, v5

    .line 248
    aput-byte v5, p0, v1

    .line 249
    .line 250
    add-int/lit8 p3, p3, 0x1

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_4
    const-string p0, "xorEnd requires a.length >= b.length"

    .line 254
    .line 255
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-object v1

    .line 259
    :cond_5
    array-length p3, p0

    .line 260
    if-ge p3, v3, :cond_8

    .line 261
    .line 262
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    array-length p0, p0

    .line 267
    const/16 v0, -0x80

    .line 268
    .line 269
    aput-byte v0, p3, p0

    .line 270
    .line 271
    invoke-static {v4}, Ljd4;->Q([B)[B

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {p3, p0}, Lz85;->L([B[B)[B

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    :cond_6
    invoke-interface {p2, p0, v3}, Lyu9;->a([BI)[B

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    :goto_2
    invoke-static {v2, p0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    if-eqz p0, :cond_7

    .line 288
    .line 289
    return-object p1

    .line 290
    :cond_7
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 291
    .line 292
    const-string p1, "Integrity check failed."

    .line 293
    .line 294
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p0

    .line 298
    :cond_8
    const-string p0, "x must be smaller than a block."

    .line 299
    .line 300
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    return-object v1

    .line 304
    :cond_9
    const-string p0, "Decryption failed (OutputPrefix mismatch)."

    .line 305
    .line 306
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-object v1

    .line 310
    :cond_a
    const-string p0, "Ciphertext too short."

    .line 311
    .line 312
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-object v1

    .line 316
    :cond_b
    const-string p0, "ciphertext too short"

    .line 317
    .line 318
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-object v1
.end method

.method public b(Lm50;)V
    .locals 3

    .line 1
    iget v0, p0, Le36;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le36;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Le36;->a:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public zza()I
    .locals 0

    .line 1
    iget p0, p0, Le36;->a:I

    .line 2
    .line 3
    return p0
.end method
