.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEDecrypterFactory;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-class v1, Ljava/security/PrivateKey;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    instance-of p1, p2, Ljava/security/PrivateKey;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    instance-of p1, p2, Ljava/security/interfaces/RSAKey;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    check-cast p2, Ljava/security/PrivateKey;

    .line 36
    .line 37
    new-instance p1, Lcom/nimbusds/jose/crypto/RSADecrypter;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSADecrypter;-><init>(Ljava/security/PrivateKey;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 45
    .line 46
    const-class p1, Ljava/security/interfaces/RSAKey;

    .line 47
    .line 48
    filled-new-array {p1}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, v1, p1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    instance-of p1, p2, Ljava/security/PrivateKey;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    instance-of p1, p2, Ljava/security/interfaces/ECKey;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    move-object p1, p2

    .line 90
    check-cast p1, Ljava/security/PrivateKey;

    .line 91
    .line 92
    check-cast p2, Ljava/security/interfaces/ECKey;

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    new-instance v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;

    .line 103
    .line 104
    invoke-direct {v0, p1, v2, p2}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;Lcom/nimbusds/jose/jwk/Curve;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    move-object p1, v0

    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 111
    .line 112
    const-class p1, Ljava/security/interfaces/ECKey;

    .line 113
    .line 114
    filled-new-array {p1}, [Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, v1, p1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const-class v1, Ljavax/crypto/SecretKey;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 153
    .line 154
    new-instance v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;

    .line 155
    .line 156
    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->supportedEncryptionMethods()Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_4

    .line 172
    .line 173
    :goto_1
    goto :goto_0

    .line 174
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p2, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 193
    .line 194
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    .line 223
    .line 224
    if-eqz v0, :cond_8

    .line 225
    .line 226
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 227
    .line 228
    new-instance v0, Lcom/nimbusds/jose/crypto/AESDecrypter;

    .line 229
    .line 230
    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    if-eqz p2, :cond_7

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_7
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Lcom/nimbusds/jose/Algorithm;)V

    .line 255
    .line 256
    .line 257
    throw p0

    .line 258
    :cond_8
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 259
    .line 260
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_b

    .line 275
    .line 276
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_b

    .line 287
    .line 288
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    .line 289
    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    new-instance p2, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;

    .line 297
    .line 298
    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;-><init>([B)V

    .line 299
    .line 300
    .line 301
    move-object p1, p2

    .line 302
    :goto_2
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 307
    .line 308
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 322
    .line 323
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 337
    .line 338
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setKeyEncryptionProvider(Ljava/security/Provider;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 352
    .line 353
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setMACProvider(Ljava/security/Provider;)V

    .line 360
    .line 361
    .line 362
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 367
    .line 368
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setContentEncryptionProvider(Ljava/security/Provider;)V

    .line 375
    .line 376
    .line 377
    return-object p1

    .line 378
    :cond_a
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 379
    .line 380
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 381
    .line 382
    .line 383
    throw p0

    .line 384
    :cond_b
    const-string p0, "Unsupported JWE algorithm or encryption method"

    .line 385
    .line 386
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    return-object v2
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-object p0
.end method

.method public supportedEncryptionMethods()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public supportedJWEAlgorithms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
