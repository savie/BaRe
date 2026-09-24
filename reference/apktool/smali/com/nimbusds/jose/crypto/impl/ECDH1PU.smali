.class public Lcom/nimbusds/jose/crypto/impl/ECDH1PU;
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

.method public static deriveRecipientZ(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 21
    invoke-static {p0, p2}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 22
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 23
    invoke-static {p1, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 24
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveZ(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static deriveRecipientZ(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p2}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p0, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p0, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveZ(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static deriveSenderZ(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 21
    invoke-static {p2, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 22
    invoke-static {p1, p2}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 23
    invoke-static {p1, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 24
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveZ(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static deriveSenderZ(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->validateSameCurve(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p0, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveZ(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/crypto/impl/ConcatKDF;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 118
    const-string v0, "The parameter \"header\" must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "The parameter \"Z\" must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "The parameter \"concatKDF\" must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->sharedKeyLength(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)I

    move-result v4

    .line 122
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    if-ne v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    move-result-object v5

    .line 129
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    move-result-object v7

    .line 131
    invoke-static {v4}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeIntData(I)[B

    move-result-object v8

    .line 132
    invoke-static {}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeNoData()[B

    move-result-object v9

    move-object v3, p1

    move-object v2, p2

    .line 133
    invoke-virtual/range {v2 .. v9}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1
    const-string p0, "Unsupported JWE ECDH algorithm mode: "

    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/crypto/impl/ConcatKDF;)Ljavax/crypto/SecretKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "The parameter \"header\" must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "The parameter \"Z\" must not be null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v0, "The parameter \"tag\" must not be null"

    .line 12
    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v0, "The parameter \"concatKDF\" must not be null"

    .line 17
    .line 18
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->sharedKeyLength(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 42
    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 55
    .line 56
    if-ne v0, v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v4}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeIntData(I)[B

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-static {}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeNoData()[B

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {p2}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    move-object v3, p1

    .line 105
    move-object v2, p3

    .line 106
    invoke-virtual/range {v2 .. v10}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B[B)Ljavax/crypto/SecretKey;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_1
    const-string p0, "Unsupported JWE ECDH algorithm mode: "

    .line 112
    .line 113
    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method public static deriveZ(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 1
    const-string v0, "The parameter \"Ze\" must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "The parameter \"Zs\" must not be null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p0, p1}, [[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    array-length v0, p0

    .line 30
    const-string v1, "AES"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {p1, p0, v2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public static resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "The parameter \"alg\" must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 43
    .line 44
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 45
    .line 46
    invoke-static {p0, v1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 55
    .line 56
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
    const-string v0, "The parameter \"alg\" must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "The parameter \"enc\" must not be null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "Unsupported JWE encryption method "

    .line 27
    .line 28
    invoke-static {p1, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/16 p0, 0x80

    .line 42
    .line 43
    return p0

    .line 44
    :cond_2
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/16 p0, 0xc0

    .line 53
    .line 54
    return p0

    .line 55
    :cond_3
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_1PU_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    const/16 p0, 0x100

    .line 64
    .line 65
    return p0

    .line 66
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 67
    .line 68
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 69
    .line 70
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public static validateSameCurve(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "The parameter \"privateKey\" must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "The parameter \"publicKey\" must not be null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string p0, "Curve of public key does not match curve of private key"

    .line 51
    .line 52
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-string p0, "Only supports OctetKeyPairs with crv=X25519"

    .line 57
    .line 58
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const-string p0, "OKP public key should not be a private key"

    .line 63
    .line 64
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string p0, "OKP private key should be a private key"

    .line 69
    .line 70
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static validateSameCurve(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 74
    const-string v0, "The parameter \"privateKey\" must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string v0, "The parameter \"publicKey\" must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1, p0}, Lcom/nimbusds/jose/crypto/utils/ECChecks;->isPointOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 78
    :cond_0
    const-string p0, "Invalid public EC key: Point(s) not on the expected curve"

    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    const-string p0, "Curve of public key does not match curve of private key"

    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    return-void
.end method
