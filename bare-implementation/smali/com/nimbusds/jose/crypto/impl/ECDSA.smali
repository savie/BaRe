.class public Lcom/nimbusds/jose/crypto/impl/ECDSA;
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

.method public static ensureLegalSignature([BLcom/nimbusds/jose/JWSAlgorithm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->isZeroFilled([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/Curve;->forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-gt v1, v2, :cond_5

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/ECParameterTable;->get(Lcom/nimbusds/jose/jwk/Curve;)Ljava/security/spec/ECParameterSpec;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    array-length v3, p0

    .line 45
    if-ne p1, v3, :cond_3

    .line 46
    .line 47
    div-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v3, Ljava/math/BigInteger;

    .line 55
    .line 56
    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0, v0}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p1, Ljava/math/BigInteger;

    .line 64
    .line 65
    invoke-direct {p1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lt v1, v2, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-lt v1, v2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_0

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_0

    .line 117
    .line 118
    return-void

    .line 119
    :cond_0
    const-string p0, "R or S mod N != 0 check failed"

    .line 120
    .line 121
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_1
    const-string p0, "S and R must not exceed N"

    .line 126
    .line 127
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    const-string p0, "S and R must not be 0"

    .line 132
    .line 133
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    const-string p0, "Illegal signature length"

    .line 138
    .line 139
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    const-string p0, "Unsupported curve: "

    .line 144
    .line 145
    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_5
    const-string p0, "Unsupported JWS algorithm: "

    .line 150
    .line 151
    invoke-static {p1, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_6
    const-string p0, "Blank signature"

    .line 156
    .line 157
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/16 p0, 0x60

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/16 p0, 0x84

    .line 41
    .line 42
    return p0

    .line 43
    :cond_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 44
    .line 45
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {p0, v1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public static getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SHA256withECDSA"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v1, "SHA384withECDSA"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const-string v1, "SHA512withECDSA"

    .line 41
    .line 42
    :goto_0
    if-eqz p1, :cond_3

    .line 43
    .line 44
    :try_start_0
    invoke-static {v1, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Unsupported ECDSA algorithm: "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 80
    .line 81
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 82
    .line 83
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public static resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    const-string v1, "Unexpected curve: "

    .line 49
    .line 50
    invoke-static {p0, v1}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    const-string p0, "The EC key curve is not supported, must be P-256, P-384 or P-521"

    .line 55
    .line 56
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public static resolveAlgorithm(Ljava/security/interfaces/ECKey;)Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 60
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public static transcodeSignatureToConcat([BI)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "Invalid ECDSA signature format"

    .line 6
    .line 7
    if-lt v0, v1, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget-byte v0, p0, v0

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aget-byte v0, p0, v0

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v4, -0x7f

    .line 25
    .line 26
    if-ne v0, v4, :cond_4

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 30
    .line 31
    aget-byte v4, p0, v4

    .line 32
    .line 33
    move v5, v4

    .line 34
    :goto_1
    if-lez v5, :cond_1

    .line 35
    .line 36
    add-int/lit8 v6, v0, 0x2

    .line 37
    .line 38
    add-int/2addr v6, v4

    .line 39
    sub-int/2addr v6, v5

    .line 40
    aget-byte v6, p0, v6

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    add-int/lit8 v5, v5, -0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v6, v0, 0x2

    .line 48
    .line 49
    add-int/2addr v6, v4

    .line 50
    add-int/lit8 v7, v6, 0x1

    .line 51
    .line 52
    aget-byte v7, p0, v7

    .line 53
    .line 54
    move v8, v7

    .line 55
    :goto_2
    if-lez v8, :cond_2

    .line 56
    .line 57
    add-int/lit8 v9, v6, 0x2

    .line 58
    .line 59
    add-int/2addr v9, v7

    .line 60
    sub-int/2addr v9, v8

    .line 61
    aget-byte v9, p0, v9

    .line 62
    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    add-int/lit8 v8, v8, -0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    div-int/2addr p1, v1

    .line 73
    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/lit8 v9, v0, -0x1

    .line 78
    .line 79
    aget-byte v9, p0, v9

    .line 80
    .line 81
    and-int/lit16 v10, v9, 0xff

    .line 82
    .line 83
    array-length v11, p0

    .line 84
    sub-int/2addr v11, v0

    .line 85
    if-ne v10, v11, :cond_3

    .line 86
    .line 87
    and-int/lit16 v9, v9, 0xff

    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x4

    .line 90
    .line 91
    add-int/2addr v4, v7

    .line 92
    if-ne v9, v4, :cond_3

    .line 93
    .line 94
    aget-byte v0, p0, v0

    .line 95
    .line 96
    if-ne v0, v1, :cond_3

    .line 97
    .line 98
    aget-byte v0, p0, v6

    .line 99
    .line 100
    if-ne v0, v1, :cond_3

    .line 101
    .line 102
    mul-int/lit8 v0, p1, 0x2

    .line 103
    .line 104
    new-array v2, v0, [B

    .line 105
    .line 106
    sub-int v3, v6, v5

    .line 107
    .line 108
    sub-int/2addr p1, v5

    .line 109
    invoke-static {p0, v3, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    add-int/2addr v6, v1

    .line 113
    add-int/2addr v6, v7

    .line 114
    sub-int/2addr v6, v8

    .line 115
    sub-int/2addr v0, v8

    .line 116
    invoke-static {p0, v6, v2, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    return-object v2

    .line 120
    :cond_3
    invoke-static {v3}, Lf6;->j(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :cond_4
    invoke-static {v3}, Lf6;->j(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_5
    invoke-static {v3}, Lf6;->j(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v2
.end method

.method public static transcodeSignatureToDER([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    div-int/2addr v0, v1

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-lez v2, :cond_0

    .line 6
    .line 7
    sub-int v3, v0, v2

    .line 8
    .line 9
    aget-byte v3, p0, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-int v3, v0, v2

    .line 17
    .line 18
    aget-byte v4, p0, v3

    .line 19
    .line 20
    if-gez v4, :cond_1

    .line 21
    .line 22
    add-int/lit8 v4, v2, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v4, v2

    .line 26
    :goto_1
    move v5, v0

    .line 27
    :goto_2
    if-lez v5, :cond_2

    .line 28
    .line 29
    mul-int/lit8 v6, v0, 0x2

    .line 30
    .line 31
    sub-int/2addr v6, v5

    .line 32
    aget-byte v6, p0, v6

    .line 33
    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    add-int/lit8 v5, v5, -0x1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    mul-int/2addr v0, v1

    .line 40
    sub-int/2addr v0, v5

    .line 41
    aget-byte v6, p0, v0

    .line 42
    .line 43
    if-gez v6, :cond_3

    .line 44
    .line 45
    add-int/lit8 v6, v5, 0x1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v6, v5

    .line 49
    :goto_3
    add-int/lit8 v7, v4, 0x4

    .line 50
    .line 51
    add-int/2addr v7, v6

    .line 52
    const/16 v8, 0xff

    .line 53
    .line 54
    if-gt v7, v8, :cond_5

    .line 55
    .line 56
    const/16 v8, 0x80

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    if-ge v7, v8, :cond_4

    .line 60
    .line 61
    add-int/lit8 v8, v4, 0x6

    .line 62
    .line 63
    add-int/2addr v8, v6

    .line 64
    new-array v8, v8, [B

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    add-int/lit8 v8, v4, 0x7

    .line 68
    .line 69
    add-int/2addr v8, v6

    .line 70
    new-array v8, v8, [B

    .line 71
    .line 72
    const/16 v10, -0x7f

    .line 73
    .line 74
    aput-byte v10, v8, v9

    .line 75
    .line 76
    move v9, v1

    .line 77
    :goto_4
    const/4 v10, 0x0

    .line 78
    const/16 v11, 0x30

    .line 79
    .line 80
    aput-byte v11, v8, v10

    .line 81
    .line 82
    add-int/lit8 v10, v9, 0x1

    .line 83
    .line 84
    int-to-byte v7, v7

    .line 85
    aput-byte v7, v8, v9

    .line 86
    .line 87
    add-int/lit8 v7, v9, 0x2

    .line 88
    .line 89
    aput-byte v1, v8, v10

    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x3

    .line 92
    .line 93
    int-to-byte v10, v4

    .line 94
    aput-byte v10, v8, v7

    .line 95
    .line 96
    add-int/2addr v9, v4

    .line 97
    sub-int v4, v9, v2

    .line 98
    .line 99
    invoke-static {p0, v3, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v2, v9, 0x1

    .line 103
    .line 104
    aput-byte v1, v8, v9

    .line 105
    .line 106
    add-int/2addr v9, v1

    .line 107
    int-to-byte v1, v6

    .line 108
    aput-byte v1, v8, v2

    .line 109
    .line 110
    add-int/2addr v9, v6

    .line 111
    sub-int/2addr v9, v5

    .line 112
    invoke-static {p0, v0, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    return-object v8

    .line 116
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 117
    .line 118
    const-string v0, "Invalid ECDSA signature format"

    .line 119
    .line 120
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    instance-of v0, p0, Lcom/nimbusds/jose/JOSEException;

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    throw p0

    .line 130
    :cond_6
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method
