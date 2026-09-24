.class public abstract Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mGenerator:Lcom/microsoft/identity/common/java/crypto/IVGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->mGenerator:Lcom/microsoft/identity/common/java/crypto/IVGenerator;

    .line 10
    .line 11
    return-void
.end method

.method private static assertHMac([B[BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sub-int v1, p3, p2

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, p2

    .line 9
    :goto_0
    if-ge v1, p3, :cond_0

    .line 10
    .line 11
    sub-int v3, v1, p2

    .line 12
    .line 13
    aget-byte v3, p1, v3

    .line 14
    .line 15
    aget-byte v4, p0, v1

    .line 16
    .line 17
    xor-int/2addr v3, v4

    .line 18
    or-int/2addr v0, v3

    .line 19
    int-to-byte v0, v0

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 27
    .line 28
    const-string p1, "hmac_mismatch"

    .line 29
    .line 30
    invoke-direct {p0, p1, v2, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 35
    .line 36
    const-string p1, "unexpected_hmac_length"

    .line 37
    .line 38
    invoke-direct {p0, p1, v2, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method private static decryptWithSecretKey([BLcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getHMacKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, p0

    .line 12
    add-int/lit8 v2, v2, -0x30

    .line 13
    .line 14
    array-length v3, p0

    .line 15
    add-int/lit8 v3, v3, -0x20

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKeyTypeIdentifier()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v4, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length p1, p1

    .line 28
    sub-int v4, v2, p1

    .line 29
    .line 30
    const-string v5, "AES/CBC/PKCS5Padding"

    .line 31
    .line 32
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "HmacSHA256"

    .line 37
    .line 38
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v6, p0, v1, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    array-length v6, p0

    .line 54
    invoke-static {p0, v1, v3, v6}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->assertHMac([B[BII)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 58
    .line 59
    const/16 v3, 0x10

    .line 60
    .line 61
    invoke-direct {v1, p0, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-virtual {v5, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, p0, p1, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return-object p0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    const-string p1, "unknown_crypto_error"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    throw p0

    .line 79
    :catch_1
    move-exception p0

    .line 80
    const-string p1, "data_malformed"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_2
    move-exception p0

    .line 84
    const-string p1, "invalid_algorithm_parameter"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_3
    move-exception p0

    .line 88
    const-string p1, "invalid_key"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_4
    move-exception p0

    .line 92
    const-string p1, "bad_padding"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_5
    move-exception p0

    .line 96
    const-string p1, "invalid_block_size"

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_6
    move-exception p0

    .line 100
    const-string p1, "no_such_padding"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_7
    move-exception p0

    .line 104
    const-string p1, "no_such_algorithm"

    .line 105
    .line 106
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, p1, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_0
    const-string p0, "keyProvider is marked non-null but is null"

    .line 117
    .line 118
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 p0, 0x0

    .line 122
    return-object p0
.end method

.method public static getKeyIdentifierFromCipherText([B)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->stripEncodeVersionFromCipherText([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-direct {v0, p0, v2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v0, "StorageEncryptionManager#:getKeyIdentifierFromCipherText"

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "EXCEPTION OCCURRED GETTING KEY IDENTIFIER"

    .line 26
    .line 27
    return-object p0
.end method

.method private static prefixWithEncodeVersion([B)[B
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_WRAP:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 2
    .line 3
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->encodeToString([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "cE1"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static stripEncodeVersionFromCipherText([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt v0, v2, :cond_3

    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    sget-object v3, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-direct {v0, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 v3, p0, -0x61

    .line 19
    .line 20
    const-string v4, "data_malformed"

    .line 21
    .line 22
    if-lez v3, :cond_2

    .line 23
    .line 24
    add-int/lit8 p0, p0, -0x60

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-gt p0, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "E1"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->DEFAULT:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 49
    .line 50
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 55
    .line 56
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->decode(Ljava/lang/String;[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_0
    const-string p0, "Unsupported encode version received. Encode version supported is: \'E1\'"

    .line 62
    .line 63
    invoke-static {v4, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    const-string p0, "Length of encode version string (plus the length character) is longer than the CipherString itself. The data is malformed."

    .line 68
    .line 69
    invoke-static {v4, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 74
    .line 75
    const-string v0, "Encode version length: \'"

    .line 76
    .line 77
    const-string v2, "\' is not valid, it must be greater of equal to 0"

    .line 78
    .line 79
    invoke-static {v3, v0, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v4, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    const-string p0, "Input blob is null or length < 1"

    .line 88
    .line 89
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v1
.end method


# virtual methods
.method public final decrypt([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "StorageEncryptionManager#:decrypt"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->stripEncodeVersionFromCipherText([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->getKeyProviderForDecryption([B)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

    .line 38
    .line 39
    :try_start_1
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->decryptWithSecretKey([BLcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v6, "Failed to decrypt with key:"

    .line 48
    .line 49
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getAlias()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v6, " thumbprint : "

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :try_start_2
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception v3

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v7, "failed to load key:"

    .line 77
    .line 78
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v6, "KeyUtil:getKeyThumbPrint"

    .line 93
    .line 94
    invoke-static {v6, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v3, "UNKNOWN_THUMBPRINT"

    .line 98
    .line 99
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const/4 v0, 0x1

    .line 118
    if-ne p0, v0, :cond_1

    .line 119
    .line 120
    const/4 p0, 0x0

    .line 121
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Ljava/lang/Throwable;

    .line 126
    .line 127
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->clientExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    throw p0

    .line 132
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 133
    .line 134
    const-string v0, "decryption_failed"

    .line 135
    .line 136
    const-string v1, "Tried all decryption keys and decryption still fails."

    .line 137
    .line 138
    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getSuppressedException()Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_2
    const-string p0, "Cannot find a matching keyProvider."

    .line 150
    .line 151
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :catch_0
    move-exception p0

    .line 156
    const-string v1, "Failed to strip encode version from cipherText, string might not be encrypted. Exception: "

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object p1
.end method

.method public final encrypt([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->getKeyProviderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getHMacKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKeyTypeIdentifier()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v3, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->mGenerator:Lcom/microsoft/identity/common/java/crypto/IVGenerator;

    .line 26
    .line 27
    check-cast p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->generate()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 36
    .line 37
    .line 38
    const-string v4, "AES/CBC/PKCS5Padding"

    .line 39
    .line 40
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "HmacSHA256"

    .line 45
    .line 46
    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v6, 0x1

    .line 51
    invoke-virtual {v4, v6, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v5, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    array-length v2, v0

    .line 75
    array-length v3, p1

    .line 76
    add-int/2addr v2, v3

    .line 77
    const/16 v3, 0x10

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    array-length v4, v1

    .line 81
    add-int/2addr v2, v4

    .line 82
    new-array v2, v2, [B

    .line 83
    .line 84
    array-length v4, v0

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    array-length v4, v0

    .line 90
    array-length v6, p1

    .line 91
    invoke-static {p1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    array-length v4, v0

    .line 95
    array-length v6, p1

    .line 96
    add-int/2addr v4, v6

    .line 97
    invoke-static {p0, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    array-length p0, v0

    .line 101
    array-length p1, p1

    .line 102
    add-int/2addr p0, p1

    .line 103
    add-int/2addr p0, v3

    .line 104
    array-length p1, v1

    .line 105
    invoke-static {v1, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    const-string p0, "StorageEncryptionManager#:encrypt"

    .line 109
    .line 110
    const-string p1, "Finished encryption"

    .line 111
    .line 112
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->prefixWithEncodeVersion([B)[B

    .line 116
    .line 117
    .line 118
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-object p0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    const-string p1, "unknown_crypto_error"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    throw p0

    .line 126
    :catch_1
    move-exception p0

    .line 127
    const-string p1, "invalid_algorithm_parameter"

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_2
    move-exception p0

    .line 131
    const-string p1, "invalid_key"

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_3
    move-exception p0

    .line 135
    const-string p1, "bad_padding"

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_4
    move-exception p0

    .line 139
    const-string p1, "invalid_block_size"

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_5
    move-exception p0

    .line 143
    const-string p1, "no_such_padding"

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_6
    move-exception p0

    .line 147
    const-string p1, "no_such_algorithm"

    .line 148
    .line 149
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, p1, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_0
    const-string p0, "Cannot find a matching keyProvider."

    .line 160
    .line 161
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/4 p0, 0x0

    .line 165
    return-object p0
.end method

.method public abstract getKeyProviderForDecryption([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public abstract getKeyProviderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method
