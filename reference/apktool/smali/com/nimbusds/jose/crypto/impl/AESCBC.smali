.class public Lcom/nimbusds/jose/crypto/impl/AESCBC;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final IV_BIT_LENGTH:I = 0x80


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

.method private static createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 2
    .line 3
    invoke-static {v0, p3}, Lcom/nimbusds/jose/crypto/impl/CipherHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "AES"

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p3, p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    .line 28
    .line 29
    return-object p3

    .line 30
    :cond_0
    const/4 p1, 0x2

    .line 31
    invoke-virtual {p3, p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object p3

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static decryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;Ljava/security/Provider;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;-><init>(Ljavax/crypto/SecretKey;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lcom/nimbusds/jose/crypto/impl/AAD;->computeLength([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v1, p3

    .line 11
    array-length v2, p1

    .line 12
    add-int/2addr v1, v2

    .line 13
    array-length v2, p2

    .line 14
    add-int/2addr v1, v2

    .line 15
    array-length v2, p0

    .line 16
    add-int/2addr v1, v2

    .line 17
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getMACKey()Ljavax/crypto/SecretKey;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p3, p0, p6}, Lcom/nimbusds/jose/crypto/impl/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getTruncatedMACByteLength()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, p4}, Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;->areEqual([B[B)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getAESKey()Ljavax/crypto/SecretKey;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0, p1, p2, p5}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_0
    const-string p0, "MAC check failed"

    .line 73
    .line 74
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public static decryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/security/Provider;Ljava/security/Provider;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "epu"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v2

    .line 29
    :goto_0
    const-string v1, "epv"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    instance-of v3, v3, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v3, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v2

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {p1, v3, v0, v1}, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, "."

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    sget-object v4, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {v3, p2, p7}, Lcom/nimbusds/jose/crypto/impl/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 127
    .line 128
    .line 129
    move-result-object p5

    .line 130
    invoke-static {p5, p2}, Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;->areEqual([B[B)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_2

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p1, p0, v0, v1}, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p0, p1, p2, p6}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :cond_2
    const-string p0, "MAC check failed"

    .line 158
    .line 159
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v2
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static encryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;-><init>(Ljavax/crypto/SecretKey;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getAESKey()Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p1, p2, p4}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p3}, Lcom/nimbusds/jose/crypto/impl/AAD;->computeLength([B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    array-length p4, p3

    .line 19
    array-length v1, p1

    .line 20
    add-int/2addr p4, v1

    .line 21
    array-length v1, p0

    .line 22
    add-int/2addr p4, v1

    .line 23
    array-length v1, p2

    .line 24
    add-int/2addr p4, v1

    .line 25
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getMACKey()Ljavax/crypto/SecretKey;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2, p1, p5}, Lcom/nimbusds/jose/crypto/impl/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->getTruncatedMACByteLength()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 66
    .line 67
    invoke-direct {p2, p0, p1}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

    .line 68
    .line 69
    .line 70
    return-object p2
.end method

.method public static encryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "epu"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v2

    .line 29
    :goto_0
    const-string v1, "epv"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    instance-of v3, v3, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/Header;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p1, v1, v0, v2}, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1, p3, p4, p5}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    invoke-static {p1, p5, v0, v2}, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, "."

    .line 87
    .line 88
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {p3}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {p4}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget-object p2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p1, p0, p6}, Lcom/nimbusds/jose/crypto/impl/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 129
    .line 130
    invoke-direct {p1, p4, p0}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

    .line 131
    .line 132
    .line 133
    return-object p1
.end method

.method public static generateIV(Ljava/security/SecureRandom;)[B
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
