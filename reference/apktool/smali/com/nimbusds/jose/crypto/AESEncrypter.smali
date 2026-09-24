.class public Lcom/nimbusds/jose/crypto/AESEncrypter;
.super Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 14
    const-string v0, "AES"

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    const-string v1, "AES"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x80

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 38
    .line 39
    const-string p1, "The Key Encryption Key (KEK) length must be 128 bits for A128KW encryption"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v4, 0xc0

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v4, :cond_2

    .line 68
    .line 69
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 74
    .line 75
    const-string p1, "The Key Encryption Key (KEK) length must be 192 bits for A192KW encryption"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/16 v5, 0x100

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v5, :cond_4

    .line 104
    .line 105
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 109
    .line 110
    const-string p1, "The Key Encryption Key (KEK) length must be 256 bits for A256KW encryption"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_5
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-ne v0, v3, :cond_6

    .line 137
    .line 138
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 142
    .line 143
    const-string p1, "The Key Encryption Key (KEK) length must be 128 bits for A128GCMKW encryption"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_7
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-ne v0, v4, :cond_8

    .line 170
    .line 171
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_8
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 175
    .line 176
    const-string p1, "The Key Encryption Key (KEK) length must be 192 bits for A192GCMKW encryption"

    .line 177
    .line 178
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :cond_9
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_d

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-ne v0, v5, :cond_c

    .line 203
    .line 204
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 205
    .line 206
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getCEK(Lcom/nimbusds/jose/EncryptionMethod;)Ljavax/crypto/SecretKey;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v5, v0, v1}, Lcom/nimbusds/jose/crypto/impl/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    move-object v2, p1

    .line 239
    move-object v6, v0

    .line 240
    goto :goto_1

    .line 241
    :cond_a
    new-instance v0, Lcom/nimbusds/jose/util/Container;

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->generateIV(Ljava/security/SecureRandom;)[B

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/util/Container;-><init>(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v5, v0, v1, v2}, Lcom/nimbusds/jose/crypto/impl/AESGCMKW;->encryptCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getCipherText()[B

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v2}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v3, Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 283
    .line 284
    invoke-direct {v3, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, [B

    .line 292
    .line 293
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v3, v0}, Lcom/nimbusds/jose/JWEHeader$Builder;->iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getAuthenticationTag()[B

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    move-object v6, v2

    .line 318
    move-object v2, v0

    .line 319
    :goto_1
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_b

    .line 328
    .line 329
    invoke-static {v2}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    :cond_b
    move-object v4, p3

    .line 334
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    move-object v3, p2

    .line 339
    invoke-static/range {v2 .. v7}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    return-object p0

    .line 344
    :cond_c
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 345
    .line 346
    const-string p1, "The Key Encryption Key (KEK) length must be 256 bits for A256GCMKW encryption"

    .line 347
    .line 348
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p0

    .line 352
    :cond_d
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 353
    .line 354
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 355
    .line 356
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw p0
.end method
