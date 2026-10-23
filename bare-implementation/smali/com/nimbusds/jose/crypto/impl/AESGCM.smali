.class public Lcom/nimbusds/jose/crypto/impl/AESGCM;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final AUTH_TAG_BIT_LENGTH:I = 0x80

.field public static final IV_BIT_LENGTH:I = 0x60


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

.method private static actualIVOf(Ljavax/crypto/Cipher;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->actualParamsOf(Ljavax/crypto/Cipher;)Ljavax/crypto/spec/GCMParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p0}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->validate([BI)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private static actualParamsOf(Ljavax/crypto/Cipher;)Ljavax/crypto/spec/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_0
    const-string p0, "AES GCM ciphers are expected to make use of algorithm parameters"

    .line 28
    .line 29
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/KeyUtils;->toAESKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "AES/GCM/NoPadding"

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0, p5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 10
    .line 11
    .line 12
    move-result-object p5

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    :goto_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 19
    .line 20
    const/16 v1, 0x80

    .line 21
    .line 22
    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-virtual {p5, p1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p5, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 30
    .line 31
    .line 32
    :try_start_1
    filled-new-array {p2, p4}, [[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p5, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p4, "AES/GCM/NoPadding decryption failed: "

    .line 55
    .line 56
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :catch_1
    move-exception p0

    .line 71
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p4, "Couldn\'t create AES/GCM/NoPadding cipher: "

    .line 80
    .line 81
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[BLjava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Lcom/nimbusds/jose/util/Container<",
            "[B>;[B[B",
            "Ljava/security/Provider;",
            ")",
            "Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/KeyUtils;->toAESKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    const-string v1, "AES/GCM/NoPadding"

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {v1, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    :goto_0
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 25
    .line 26
    const/16 v2, 0x80

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p4, v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    array-length p2, p0

    .line 43
    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    sub-int/2addr p2, p3

    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-static {p0, p3, p2}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {p0, p2, v0}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p4}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->actualIVOf(Ljavax/crypto/Cipher;)[B

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/util/Container;->set(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 69
    .line 70
    invoke-direct {p1, p3, p0}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p4, "Couldn\'t encrypt with AES/GCM/NoPadding: "

    .line 84
    .line 85
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :catch_1
    move-exception p0

    .line 100
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p4, "Couldn\'t create AES/GCM/NoPadding cipher: "

    .line 109
    .line 110
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method public static generateIV(Ljava/security/SecureRandom;)[B
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static validate([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x60

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const/16 p0, 0x80

    .line 10
    .line 11
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "Authentication tag length of %d bits is required, got %d"

    .line 29
    .line 30
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "IV length of %d bits is required, got %d"

    .line 57
    .line 58
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method
