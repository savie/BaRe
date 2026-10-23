.class public abstract Lhb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Salted__"

    .line 2
    .line 3
    sget-object v1, Lf51;->d:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sput-object v0, Lhb3;->a:[B

    .line 13
    .line 14
    return-void
.end method

.method public static a([B[BI[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "AES/GCM/NoPadding"

    .line 7
    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    .line 14
    const-string v2, "AES"

    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 20
    .line 21
    const/16 v2, 0x80

    .line 22
    .line 23
    invoke-direct {p1, v2, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, "Filen AES keys must be 256 bits"

    .line 38
    .line 39
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static b([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Lx50;->k0([BII)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v2, v1}, Lx50;->k0([BII)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x2

    .line 19
    :try_start_0
    invoke-static {v0, p1, v1, p0}, Lhb3;->a([B[BI[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/SecurityException;

    .line 26
    .line 27
    const-string v0, "Filen data authentication failed"

    .line 28
    .line 29
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    const-string p0, "Encrypted Filen chunk is too short"

    .line 34
    .line 35
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static c(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "U2FsdGVk"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    array-length v0, p0

    .line 29
    sget-object v5, Lhb3;->a:[B

    .line 30
    .line 31
    array-length v6, v5

    .line 32
    add-int/lit8 v6, v6, 0x18

    .line 33
    .line 34
    if-lt v0, v6, :cond_3

    .line 35
    .line 36
    array-length v0, v5

    .line 37
    invoke-static {p0, v1, v0}, Lx50;->k0([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    array-length v0, v5

    .line 48
    add-int/lit8 v5, v0, 0x8

    .line 49
    .line 50
    invoke-static {p0, v0, v5}, Lx50;->k0([BII)[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    array-length v6, p0

    .line 55
    invoke-static {p0, v5, v6}, Lx50;->k0([BII)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    array-length v5, p0

    .line 60
    rem-int/lit8 v5, v5, 0x10

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    const/16 v2, 0x30

    .line 65
    .line 66
    new-array v6, v2, [B

    .line 67
    .line 68
    const-string v5, "MD5"

    .line 69
    .line 70
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    new-array v5, v1, [B

    .line 75
    .line 76
    move v7, v1

    .line 77
    :goto_0
    if-ge v7, v2, :cond_0

    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    array-length v8, v5

    .line 99
    rsub-int/lit8 v9, v7, 0x30

    .line 100
    .line 101
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v10, 0x4

    .line 107
    invoke-static/range {v5 .. v10}, Lx50;->j0([B[BIIII)V

    .line 108
    .line 109
    .line 110
    add-int/2addr v7, v9

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 113
    .line 114
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 119
    .line 120
    invoke-static {v6, v1, v3}, Lx50;->k0([BII)[B

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v5, "AES"

    .line 125
    .line 126
    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 130
    .line 131
    invoke-static {v6, v3, v2}, Lx50;->k0([BII)[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 149
    .line 150
    new-instance v0, Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    move-object p0, v0

    .line 158
    new-instance p1, Ljava/lang/SecurityException;

    .line 159
    .line 160
    const-string v0, "Filen legacy metadata decryption failed"

    .line 161
    .line 162
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_1
    const-string p0, "Invalid Filen legacy ciphertext length"

    .line 167
    .line 168
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :cond_2
    const-string p0, "Invalid Filen legacy metadata header"

    .line 173
    .line 174
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v2

    .line 178
    :cond_3
    const-string p0, "Invalid Filen legacy metadata length"

    .line 179
    .line 180
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v2

    .line 184
    :cond_4
    const-string v0, "002"

    .line 185
    .line 186
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    const-string v6, "Filen data authentication failed"

    .line 191
    .line 192
    const/4 v7, 0x3

    .line 193
    const-string v8, "Unsupported Filen metadata format"

    .line 194
    .line 195
    if-eqz v5, :cond_6

    .line 196
    .line 197
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const/16 v1, 0xf

    .line 208
    .line 209
    if-lt v0, v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sget-object v2, Lf51;->e:Ljava/nio/charset/Charset;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    new-instance v1, Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    new-instance v2, Ljava/lang/String;

    .line 242
    .line 243
    sget-object v5, Lf51;->a:Ljava/nio/charset/Charset;

    .line 244
    .line 245
    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 246
    .line 247
    .line 248
    const/4 v7, 0x1

    .line 249
    invoke-static {v2, p1, v7, v3}, Lhb3;->s(Ljava/lang/String;[BII)[B

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :try_start_1
    invoke-static {p0, p1, v4, v0}, Lhb3;->a([B[BI[B)[B

    .line 254
    .line 255
    .line 256
    move-result-object p0
    :try_end_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    invoke-direct {v1, p0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 258
    .line 259
    .line 260
    return-object v1

    .line 261
    :catch_1
    move-exception v0

    .line 262
    move-object p0, v0

    .line 263
    new-instance p1, Ljava/lang/SecurityException;

    .line 264
    .line 265
    invoke-direct {p1, v6, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_5
    invoke-static {v8}, Lc6;->f(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :cond_6
    const-string v0, "003"

    .line 274
    .line 275
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_8

    .line 280
    .line 281
    invoke-static {p0, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_7

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    const/16 v1, 0x1b

    .line 292
    .line 293
    if-lt v0, v1, :cond_7

    .line 294
    .line 295
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lhb3;->q(Ljava/lang/String;)[B

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    new-instance v1, Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-static {p1}, Lhb3;->r([B)[B

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    :try_start_2
    invoke-static {p0, p1, v4, v0}, Lhb3;->a([B[BI[B)[B

    .line 325
    .line 326
    .line 327
    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 329
    .line 330
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 331
    .line 332
    .line 333
    return-object v1

    .line 334
    :catch_2
    move-exception v0

    .line 335
    move-object p0, v0

    .line 336
    new-instance p1, Ljava/lang/SecurityException;

    .line 337
    .line 338
    invoke-direct {p1, v6, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .line 340
    .line 341
    throw p1

    .line 342
    :cond_7
    invoke-static {v8}, Lc6;->f(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return-object v2

    .line 346
    :cond_8
    invoke-static {v8}, Lc6;->f(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object v2
.end method

.method public static d(Ljava/lang/String;)Lib3;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "SHA-1"

    .line 5
    .line 6
    invoke-static {v0, p0}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "SHA-256"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SHA-384"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SHA-512"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "MD2"

    .line 29
    .line 30
    invoke-static {v2, p0}, Lhb3;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "MD4"

    .line 35
    .line 36
    invoke-static {v3, v2}, Lhb3;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "MD5"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lhb3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lib3;

    .line 55
    .line 56
    invoke-static {p0}, Lhb3;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v0, p0}, Lib3;-><init>(Ljava/lang/String;[B)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "MD2"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lv35;

    .line 10
    .line 11
    invoke-direct {p0}, Lv35;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "MD4"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Lw35;

    .line 24
    .line 25
    invoke-direct {p0}, Lw35;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    array-length v0, p1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-interface {p0, p1, v1, v0}, Lhl2;->update([BII)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Lhl2;->c()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-array p1, p1, [B

    .line 47
    .line 48
    invoke-interface {p0, p1, v1}, Lhl2;->doFinal([BI)I

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lhb3;->t([B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "Unsupported legacy digest: "

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lib3;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const v1, 0x30d40

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x40

    .line 17
    .line 18
    invoke-static {p0, p1, v1, v2}, Lhb3;->s(Ljava/lang/String;[BII)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    div-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    div-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lib3;

    .line 62
    .line 63
    const-string v1, "SHA-512"

    .line 64
    .line 65
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0, p1}, Lib3;-><init>(Ljava/lang/String;[B)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Lib3;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lhb3;->q(Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lms8;->k([B)[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v0, Ln40;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x3

    .line 18
    const/high16 v6, 0x10000

    .line 19
    .line 20
    const/4 v7, 0x4

    .line 21
    invoke-direct/range {v0 .. v7}, Ln40;-><init>(I[B[B[BIII)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x40

    .line 25
    .line 26
    new-array v1, p1, [B

    .line 27
    .line 28
    new-instance v2, Lm40;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lm40;->e(Ln40;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0, v1}, Lm40;->c([B[B)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lib3;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    invoke-static {v1, v2, v3}, Lx50;->k0([BII)[B

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lhb3;->t([B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3, p1}, Lx50;->k0([BII)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lhb3;->t([B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1, v0}, Lib3;-><init>(Ljava/lang/String;[B)V

    .line 77
    .line 78
    .line 79
    return-object p0
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "RSA"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    array-length v0, p0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-le v0, v1, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    aget-byte v0, p0, v0

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    array-length v0, p0

    .line 47
    invoke-static {p0, v1, v0}, Lx50;->k0([BII)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_0
    invoke-static {p0}, Lhb3;->j([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static j([B)[B
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const-string v2, "HmacSHA256"

    .line 6
    .line 7
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    .line 13
    invoke-direct {v4, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    invoke-direct {v3, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 33
    .line 34
    .line 35
    const-string p0, "hmac-sha256-key"

    .line 36
    .line 37
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    new-array v3, v2, [B

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    aput-byte v2, v3, v4

    .line 51
    .line 52
    invoke-static {p0, v3}, Lx50;->u0([B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static k(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v0, p2

    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    array-length v0, p2

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    aget-byte v3, p2, v1

    .line 26
    .line 27
    and-int/lit16 v3, v3, 0xff

    .line 28
    .line 29
    rem-int/lit8 v3, v3, 0x40

    .line 30
    .line 31
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v6, 0x0

    .line 48
    const/16 v7, 0x3e

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-static {v1, p1, v3, v2}, Lhb3;->s(Ljava/lang/String;[BII)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1, v3, p2}, Lhb3;->a([B[BI[B)[B

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance p1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p2, "002"

    .line 104
    .line 105
    invoke-static {p2, p1, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_1
    const-string p0, "Failed requirement."

    .line 111
    .line 112
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    return-object p0
.end method

.method public static l(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lhb3;->r([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p0, p1, v0, p2}, Lhb3;->a([B[BI[B)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p2}, Lhb3;->t([B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p2, "003"

    .line 43
    .line 44
    invoke-static {p2, p1, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_0
    const-string p0, "Failed requirement."

    .line 50
    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static m(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getNameHmacKeyHex()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lhb3;->q(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Lhb3;->o(Ljava/lang/String;[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Unsupported Filen auth version: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lhb3;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static n(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lww4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnc8;->p()Lww4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p0, p1}, Lhb3;->m(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lww4;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Leb3;->V3:Leb3;

    .line 20
    .line 21
    invoke-virtual {v2}, Leb3;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getLegacyNameHmacKeyHex()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lhb3;->q(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lhb3;->o(Ljava/lang/String;[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static o(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "HmacSHA256"

    .line 10
    .line 11
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_0
    const-string p0, "Filen name HMAC key must be 256 bits"

    .line 54
    .line 55
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "SHA-512"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "SHA-1"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lhb3;->t([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static q(Ljava/lang/String;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    rem-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_0

    .line 22
    .line 23
    mul-int/lit8 v3, v2, 0x2

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x2

    .line 26
    .line 27
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/16 v4, 0x10

    .line 32
    .line 33
    invoke-static {v4}, Lly8;->j(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-byte v3, v3

    .line 41
    aput-byte v3, v1, v2

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v1

    .line 47
    :cond_1
    const-string p0, "Hex input must have even length"

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static r([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lf51;->d:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge p0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v3, 0x61

    .line 40
    .line 41
    if-gt v3, v1, :cond_0

    .line 42
    .line 43
    const/16 v3, 0x67

    .line 44
    .line 45
    if-ge v1, v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string p0, "Invalid Filen v3 metadata key"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0}, Lhb3;->q(Ljava/lang/String;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    const-string p0, "Invalid Filen v3 metadata key length"

    .line 63
    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_4
    return-object p0
.end method

.method public static s(Ljava/lang/String;[BII)[B
    .locals 1

    .line 1
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    mul-int/lit8 p3, p3, 0x8

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string p0, "PBKDF2WithHmacSHA512"

    .line 16
    .line 17
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public static t([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnk;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lnk;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x1e

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-static {p0, v2, v0, v1}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
