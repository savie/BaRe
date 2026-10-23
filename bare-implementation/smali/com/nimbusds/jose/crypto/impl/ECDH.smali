.class public Lcom/nimbusds/jose/crypto/impl/ECDH;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    }
.end annotation


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

.method public static deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/crypto/impl/ConcatKDF;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH;->sharedKeyLength(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {v4}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeIntData(I)[B

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-static {}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeNoData()[B

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    move-object v3, p1

    .line 81
    move-object v2, p2

    .line 82
    invoke-virtual/range {v2 .. v9}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B)Ljavax/crypto/SecretKey;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_1
    const-string p0, "Unsupported JWE ECDH algorithm mode: "

    .line 88
    .line 89
    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method public static deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedD()[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedX()[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :try_start_0
    invoke-static {p1, p0}, Lcom/google/crypto/tink/subtle/X25519;->computeSharedSecret([B[B)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 49
    .line 50
    const-string v0, "AES"

    .line 51
    .line 52
    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_0
    const-string p0, "Expected private key OKP with crv=X25519"

    .line 68
    .line 69
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    const-string p0, "Expected private key but received OKP without \'d\' value"

    .line 74
    .line 75
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_2
    const-string p0, "Expected public key OKP with crv=X25519"

    .line 80
    .line 81
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    const-string p0, "Expected public key but received OKP with \'d\' value"

    .line 86
    .line 87
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method

.method public static deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 91
    const-string v0, "ECDH"

    if-eqz p2, :cond_0

    .line 92
    :try_start_0
    invoke-static {v0, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object p2

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    :try_start_1
    invoke-virtual {p2, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p2, p0, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    const-string p2, "AES"

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid key for ECDH key agreement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 98
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t get an ECDH key agreement instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 38
    .line 39
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 40
    .line 41
    invoke-static {p0, v1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_0
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 50
    .line 51
    return-object p0
.end method

.method public static sharedKeyLength(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "Unsupported JWE encryption method "

    .line 17
    .line 18
    invoke-static {p1, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const/16 p0, 0x80

    .line 32
    .line 33
    return p0

    .line 34
    :cond_2
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const/16 p0, 0xc0

    .line 43
    .line 44
    return p0

    .line 45
    :cond_3
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const/16 p0, 0x100

    .line 54
    .line 55
    return p0

    .line 56
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 57
    .line 58
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method
