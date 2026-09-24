.class public Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final ENCRYPTION_BYTES:[B

.field private static final INTEGRITY_BYTES:[B

.field private static final ONE_BYTES:[B

.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ONE_BYTES:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ZERO_BYTES:[B

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ENCRYPTION_BYTES:[B

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    new-array v0, v0, [B

    .line 28
    .line 29
    fill-array-data v0, :array_3

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->INTEGRITY_BYTES:[B

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_2
    .array-data 1
        0x45t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_3
    .array-data 1
        0x49t
        0x6et
        0x74t
        0x65t
        0x67t
        0x72t
        0x69t
        0x74t
        0x79t
    .end array-data
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

.method public static generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "SHA-"

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ONE_BYTES:[B

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    array-length p0, p0

    .line 21
    mul-int/lit8 p0, p0, 0x8

    .line 22
    .line 23
    div-int/lit8 v2, p0, 0x2

    .line 24
    .line 25
    invoke-static {v2}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    array-length p1, p2

    .line 48
    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ZERO_BYTES:[B

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-eqz p3, :cond_1

    .line 65
    .line 66
    array-length p1, p3

    .line 67
    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ZERO_BYTES:[B

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 81
    .line 82
    .line 83
    :goto_1
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ENCRYPTION_BYTES:[B

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 105
    .line 106
    .line 107
    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    array-length p1, p0

    .line 113
    div-int/lit8 p1, p1, 0x2

    .line 114
    .line 115
    new-array p2, p1, [B

    .line 116
    .line 117
    const/4 p3, 0x0

    .line 118
    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 122
    .line 123
    const-string p1, "AES"

    .line 124
    .line 125
    invoke-direct {p0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :catch_1
    move-exception p0

    .line 141
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method

.method public static generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "SHA-"

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ONE_BYTES:[B

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    array-length p0, p0

    .line 21
    mul-int/lit8 p0, p0, 0x8

    .line 22
    .line 23
    invoke-static {p0}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    array-length p1, p2

    .line 46
    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ZERO_BYTES:[B

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz p3, :cond_1

    .line 63
    .line 64
    array-length p1, p3

    .line 65
    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->ZERO_BYTES:[B

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    .line 80
    .line 81
    :goto_1
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/LegacyConcatKDF;->INTEGRITY_BYTES:[B

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 103
    .line 104
    .line 105
    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string p2, "HMACSHA"

    .line 113
    .line 114
    invoke-static {p0, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {p3, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object p3

    .line 122
    :catch_0
    move-exception p0

    .line 123
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :catch_1
    move-exception p0

    .line 134
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method
