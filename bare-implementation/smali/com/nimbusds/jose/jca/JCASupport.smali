.class public final Lcom/nimbusds/jose/jca/JCASupport;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isSupported(Lcom/nimbusds/jose/Algorithm;)Z
    .locals 1

    .line 187
    instance-of v0, p0, Lcom/nimbusds/jose/JWSAlgorithm;

    if-eqz v0, :cond_0

    .line 188
    check-cast p0, Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;)Z

    move-result p0

    return p0

    .line 189
    :cond_0
    instance-of v0, p0, Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz v0, :cond_1

    .line 190
    check-cast p0, Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;)Z

    move-result p0

    return p0

    .line 191
    :cond_1
    instance-of v0, p0, Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v0, :cond_2

    .line 192
    check-cast p0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;)Z

    move-result p0

    return p0

    .line 193
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected algorithm class: "

    invoke-static {p0, v0}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupported(Lcom/nimbusds/jose/Algorithm;Ljava/security/Provider;)Z
    .locals 1

    .line 163
    instance-of v0, p0, Lcom/nimbusds/jose/JWSAlgorithm;

    if-eqz v0, :cond_0

    .line 164
    check-cast p0, Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 165
    :cond_0
    instance-of v0, p0, Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz v0, :cond_1

    .line 166
    check-cast p0, Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 167
    :cond_1
    instance-of v0, p0, Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v0, :cond_2

    .line 168
    check-cast p0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 169
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected algorithm class: "

    invoke-static {p0, p1}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;)Z
    .locals 5

    .line 194
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 195
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z
    .locals 3

    .line 196
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_CBC_HMAC_SHA:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 197
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string p0, "HmacSHA256"

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 201
    const-string p0, "HmacSHA384"

    goto :goto_0

    .line 202
    :cond_1
    const-string p0, "HmacSHA512"

    .line 203
    :goto_0
    const-string v0, "KeyGenerator"

    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    :cond_2
    return v2

    .line 204
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_GCM:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 205
    :try_start_1
    const-string p0, "AES/GCM/NoPadding"

    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_4
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;)Z
    .locals 5

    .line 185
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 186
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA1_5:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p0, "RSA/ECB/PKCS1Padding"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string p0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string p0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_512:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    const-string p0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :catch_0
    :cond_3
    return v2

    .line 59
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    const-string p0, "Cipher"

    .line 68
    .line 69
    const-string v0, "AESWrap"

    .line 70
    .line 71
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    return v2

    .line 79
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    const-string p0, "KeyAgreement"

    .line 88
    .line 89
    const-string v0, "ECDH"

    .line 90
    .line 91
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_7

    .line 96
    .line 97
    return v1

    .line 98
    :cond_7
    return v2

    .line 99
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    :try_start_1
    const-string p0, "AES/GCM/NoPadding"

    .line 108
    .line 109
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :catch_1
    return v2

    .line 114
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_d

    .line 121
    .line 122
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    const-string p0, "HmacSHA256"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_b

    .line 140
    .line 141
    const-string p0, "HmacSHA384"

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_b
    const-string p0, "HmacSHA512"

    .line 145
    .line 146
    :goto_1
    const-string v0, "KeyGenerator"

    .line 147
    .line 148
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-eqz p0, :cond_c

    .line 153
    .line 154
    return v1

    .line 155
    :cond_c
    return v2

    .line 156
    :cond_d
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 157
    .line 158
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    return p0
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;)Z
    .locals 6

    .line 170
    invoke-virtual {p0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 172
    invoke-static {p0, v5}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z
    .locals 3

    .line 173
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string p0, "HMACSHA256"

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string p0, "HMACSHA384"

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 179
    const-string p0, "HMACSHA512"

    .line 180
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_2
    return v2

    .line 181
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    :try_start_1
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    return v2

    .line 183
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    :try_start_2
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_2 .. :try_end_2} :catch_2

    return v1

    :catch_2
    :cond_5
    return v2
.end method

.method public static isUnlimitedStrength()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AES"

    .line 3
    .line 4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/16 v2, 0x100

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :catch_0
    :cond_0
    return v0
.end method
