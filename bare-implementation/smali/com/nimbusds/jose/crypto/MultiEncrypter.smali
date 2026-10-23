.class public Lcom/nimbusds/jose/crypto/MultiEncrypter;
.super Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field private static final RECIPIENT_HEADER_PARAMS:[Ljava/lang/String;


# instance fields
.field private final keys:Lcom/nimbusds/jose/jwk/JWKSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "x5t#S256"

    .line 2
    .line 3
    const-string v5, "x5c"

    .line 4
    .line 5
    const-string v0, "kid"

    .line 6
    .line 7
    const-string v1, "alg"

    .line 8
    .line 9
    const-string v2, "x5u"

    .line 10
    .line 11
    const-string v3, "x5t"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/nimbusds/jose/crypto/MultiEncrypter;->RECIPIENT_HEADER_PARAMS:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/MultiEncrypter;->findDirectCEK(Lcom/nimbusds/jose/jwk/JWKSet;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/MultiEncrypter;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljavax/crypto/SecretKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_9

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_8

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/nimbusds/jose/JWEAlgorithm;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v5, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    sget-object v5, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 56
    .line 57
    invoke-virtual {v5, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v5, "AES"

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const-string p0, "Bad CEK"

    .line 81
    .line 82
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v4

    .line 86
    :cond_2
    :goto_1
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_0

    .line 101
    .line 102
    :cond_3
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 111
    .line 112
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    .line 118
    :cond_4
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    sget-object v5, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 127
    .line 128
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_0

    .line 133
    .line 134
    :cond_5
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 141
    .line 142
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_0

    .line 147
    .line 148
    :cond_6
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 157
    .line 158
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_7
    const-string p0, "Unsupported key encryption algorithm: "

    .line 167
    .line 168
    invoke-static {v3, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v4

    .line 172
    :cond_8
    const-string p0, "Each JWK must specify a key encryption algorithm"

    .line 173
    .line 174
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v4

    .line 178
    :cond_9
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MultiEncrypter;->keys:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 179
    .line 180
    return-void
.end method

.method private static findDirectCEK(Lcom/nimbusds/jose/jwk/JWKSet;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/nimbusds/jose/jwk/JWK;

    .line 22
    .line 23
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "AES"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    return-object p0
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

    .line 450
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/MultiEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_c

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v0, v3}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getCEK(Lcom/nimbusds/jose/EncryptionMethod;)Ljavax/crypto/SecretKey;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/nimbusds/jose/Payload;

    .line 17
    .line 18
    move-object/from16 v5, p2

    .line 19
    .line 20
    invoke-direct {v4, v5}, Lcom/nimbusds/jose/Payload;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v0, v0, Lcom/nimbusds/jose/crypto/MultiEncrypter;->keys:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v9, v2

    .line 38
    move-object v10, v9

    .line 39
    move-object v11, v10

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_a

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/nimbusds/jose/jwk/JWK;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    new-instance v13, Lcom/nimbusds/jose/UnprotectedHeader$Builder;

    .line 61
    .line 62
    invoke-direct {v13}, Lcom/nimbusds/jose/UnprotectedHeader$Builder;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v14, Lcom/nimbusds/jose/crypto/MultiEncrypter;->RECIPIENT_HEADER_PARAMS:[Ljava/lang/String;

    .line 66
    .line 67
    array-length v15, v14

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    move/from16 v7, v16

    .line 71
    .line 72
    :goto_1
    if-ge v7, v15, :cond_1

    .line 73
    .line 74
    move-object/from16 p2, v0

    .line 75
    .line 76
    aget-object v0, v14, v7

    .line 77
    .line 78
    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v16

    .line 82
    if-eqz v16, :cond_0

    .line 83
    .line 84
    move-object/from16 v16, v2

    .line 85
    .line 86
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v13, v0, v2}, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/UnprotectedHeader$Builder;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_0
    move-object/from16 v16, v2

    .line 95
    .line 96
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    move-object/from16 v0, p2

    .line 99
    .line 100
    move-object/from16 v2, v16

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object/from16 p2, v0

    .line 104
    .line 105
    move-object/from16 v16, v2

    .line 106
    .line 107
    :try_start_0
    invoke-virtual {v13}, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->build()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object/from16 v7, p1

    .line 112
    .line 113
    invoke-virtual {v7, v0}, Lcom/nimbusds/jose/Header;->join(Lcom/nimbusds/jose/UnprotectedHeader;)Lcom/nimbusds/jose/Header;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/nimbusds/jose/JWEHeader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    sget-object v12, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 124
    .line 125
    invoke-virtual {v12, v8}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_2

    .line 130
    .line 131
    sget-object v12, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 132
    .line 133
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_2

    .line 138
    .line 139
    new-instance v8, Lcom/nimbusds/jose/crypto/RSAEncrypter;

    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toRSAKey()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/RSAKey;->toRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-direct {v8, v6, v3}, Lcom/nimbusds/jose/crypto/RSAEncrypter;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljavax/crypto/SecretKey;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :cond_2
    sget-object v12, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 155
    .line 156
    invoke-virtual {v12, v8}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_3

    .line 161
    .line 162
    sget-object v12, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 163
    .line 164
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_3

    .line 169
    .line 170
    new-instance v8, Lcom/nimbusds/jose/crypto/ECDHEncrypter;

    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toECKey()Lcom/nimbusds/jose/jwk/ECKey;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/ECKey;->toECPublicKey()Ljava/security/interfaces/ECPublicKey;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-direct {v8, v6, v3}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;-><init>(Ljava/security/interfaces/ECPublicKey;Ljavax/crypto/SecretKey;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    sget-object v12, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 185
    .line 186
    invoke-virtual {v12, v8}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    const-string v14, "AES"

    .line 191
    .line 192
    if-eqz v13, :cond_4

    .line 193
    .line 194
    sget-object v13, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 195
    .line 196
    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    if-eqz v13, :cond_4

    .line 201
    .line 202
    new-instance v8, Lcom/nimbusds/jose/crypto/AESEncrypter;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6, v14}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-direct {v8, v6, v3}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_4
    invoke-virtual {v12, v8}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    if-eqz v12, :cond_5

    .line 221
    .line 222
    sget-object v12, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 223
    .line 224
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_5

    .line 229
    .line 230
    new-instance v8, Lcom/nimbusds/jose/crypto/DirectEncrypter;

    .line 231
    .line 232
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6, v14}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-direct {v8, v6}, Lcom/nimbusds/jose/crypto/DirectEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    sget-object v12, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 245
    .line 246
    invoke-virtual {v12, v8}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_9

    .line 251
    .line 252
    sget-object v8, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 253
    .line 254
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_9

    .line 259
    .line 260
    new-instance v8, Lcom/nimbusds/jose/crypto/X25519Encrypter;

    .line 261
    .line 262
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/JWK;->toOctetKeyPair()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v6}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->toPublicJWK()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-direct {v8, v6, v3}, Lcom/nimbusds/jose/crypto/X25519Encrypter;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljavax/crypto/SecretKey;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    invoke-virtual {v4}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-interface {v8, v0, v6, v1}, Lcom/nimbusds/jose/JWEEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v6}, Lcom/nimbusds/jose/JWEHeader;->toJSONObject()Ljava/util/Map;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v7}, Lcom/nimbusds/jose/JWEHeader;->getIncludedParams()Ljava/util/Set;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    if-eqz v12, :cond_6

    .line 302
    .line 303
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    check-cast v12, Ljava/lang/String;

    .line 308
    .line 309
    invoke-interface {v6, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_6
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    const-string v12, "header"

    .line 318
    .line 319
    invoke-interface {v8, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    sget-object v6, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 323
    .line 324
    invoke-virtual {v6, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-nez v2, :cond_7

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    const-string v6, "encrypted_key"

    .line 339
    .line 340
    invoke-interface {v8, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    :cond_7
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    const/4 v6, 0x1

    .line 351
    if-ne v2, v6, :cond_8

    .line 352
    .line 353
    new-instance v2, Lcom/nimbusds/jose/Payload;

    .line 354
    .line 355
    const-string v4, ""

    .line 356
    .line 357
    invoke-direct {v2, v4}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getInitializationVector()Lcom/nimbusds/jose/util/Base64URL;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWECryptoParts;->getAuthenticationTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object v9, v4

    .line 377
    move-object v4, v2

    .line 378
    move-object v2, v9

    .line 379
    move-object v11, v0

    .line 380
    move-object v9, v6

    .line 381
    move-object v10, v8

    .line 382
    goto :goto_5

    .line 383
    :cond_8
    move-object/from16 v2, v16

    .line 384
    .line 385
    :goto_5
    move-object/from16 v0, p2

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_9
    move-object/from16 v0, p2

    .line 390
    .line 391
    move-object/from16 v2, v16

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :catch_0
    move-exception v0

    .line 396
    new-instance v1, Lcom/nimbusds/jose/JOSEException;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :cond_a
    move-object/from16 v7, p1

    .line 407
    .line 408
    move-object/from16 v16, v2

    .line 409
    .line 410
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    const/4 v6, 0x1

    .line 415
    if-le v0, v6, :cond_b

    .line 416
    .line 417
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v1, "recipients"

    .line 422
    .line 423
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    move-object v8, v2

    .line 435
    goto :goto_6

    .line 436
    :cond_b
    move-object/from16 v8, v16

    .line 437
    .line 438
    :goto_6
    new-instance v6, Lcom/nimbusds/jose/JWECryptoParts;

    .line 439
    .line 440
    invoke-direct/range {v6 .. v11}, Lcom/nimbusds/jose/JWECryptoParts;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 441
    .line 442
    .line 443
    return-object v6

    .line 444
    :cond_c
    const-string v0, "Missing JWE additional authenticated data (AAD)"

    .line 445
    .line 446
    invoke-static {v0}, Lf6;->j(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    return-object v2
.end method
