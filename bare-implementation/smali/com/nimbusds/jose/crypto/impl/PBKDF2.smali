.class public Lcom/nimbusds/jose/crypto/impl/PBKDF2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field static final MAX_DERIVED_KEY_LENGTH:J = 0xffffffffL

.field public static final MIN_SALT_LENGTH:I = 0x8

.field static final ZERO_BYTE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte v1, v0, v1

    .line 6
    .line 7
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->ZERO_BYTE:[B

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static deriveKey([B[BILcom/nimbusds/jose/crypto/impl/PRFParams;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p2, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getDerivedKeyByteLength()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->bitLength(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v1, p0, p1, p2, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 29
    .line 30
    .line 31
    const-string p0, "PBKDF2With"

    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getMACAlgorithm()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0, p4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getMACAlgorithm()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_0
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p2, "AES"

    .line 87
    .line 88
    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_1
    const-string p0, "The iteration count must be greater than 0"

    .line 104
    .line 105
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_2
    const-string p0, "The formatted salt must not be null"

    .line 110
    .line 111
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method

.method public static extractBlock([BIILjavax/crypto/Mac;)[B
    .locals 7
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
    const/4 v1, 0x1

    .line 5
    if-lt p1, v1, :cond_3

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    move v3, v1

    .line 9
    :goto_0
    if-gt v3, p1, :cond_2

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {p0, v0}, [[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {p3, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_1
    array-length v5, v2

    .line 37
    if-ge v4, v5, :cond_1

    .line 38
    .line 39
    aget-byte v5, v2, v4

    .line 40
    .line 41
    aget-byte v6, v0, v4

    .line 42
    .line 43
    xor-int/2addr v5, v6

    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, v0, v4

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0

    .line 54
    :cond_3
    const-string p0, "The iteration count must be greater than 0"

    .line 55
    .line 56
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    const-string p0, "The formatted salt must not be null"

    .line 61
    .line 62
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static formatSalt(Lcom/nimbusds/jose/JWEAlgorithm;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->ZERO_BYTE:[B

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_0
    const-string p0, "The salt must be at least 8 bytes long"

    .line 52
    .line 53
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const-string p0, "The salt must not be null"

    .line 58
    .line 59
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method
