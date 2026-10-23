.class public Lcom/nimbusds/jose/crypto/AESDecrypter;
.super Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 17
    const-string v0, "AES"

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

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

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/AESDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/AESDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_8

    .line 3
    .line 4
    if-eqz p3, :cond_7

    .line 5
    .line 6
    if-eqz p5, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/AESDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_5

    .line 32
    .line 33
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_5

    .line 40
    .line 41
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 76
    .line 77
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 78
    .line 79
    invoke-static {v1, p1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v3, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-direct {v3, v4, v0}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {v0, v1, v3, v2, v4}, Lcom/nimbusds/jose/crypto/impl/AESGCMKW;->decryptCEK(Ljavax/crypto/SecretKey;[BLcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;ILjava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_1
    move-object v7, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    const-string p0, "Missing JWE \"tag\" header parameter"

    .line 143
    .line 144
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_4
    const-string p0, "Missing JWE \"iv\" header parameter"

    .line 149
    .line 150
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/crypto/impl/AESKW;->unwrapCEK(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    goto :goto_1

    .line 175
    :goto_3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    move-object v1, p1

    .line 180
    move-object v3, p2

    .line 181
    move-object v4, p3

    .line 182
    move-object v5, p4

    .line 183
    move-object v6, p5

    .line 184
    move-object v2, p6

    .line 185
    invoke-static/range {v1 .. v8}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_6
    const-string p0, "Missing JWE authentication tag"

    .line 191
    .line 192
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_7
    const-string p0, "Missing JWE initialization vector (IV)"

    .line 197
    .line 198
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v0

    .line 202
    :cond_8
    const-string p0, "Missing JWE encrypted key"

    .line 203
    .line 204
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v0
.end method

.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/AESDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/AESDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
