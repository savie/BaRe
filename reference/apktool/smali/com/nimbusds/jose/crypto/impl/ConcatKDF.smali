.class public Lcom/nimbusds/jose/crypto/impl/ConcatKDF;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jca/JCAAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jca/JCAAware<",
        "Lcom/nimbusds/jose/jca/JCAContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

.field private final jcaHashAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "The JCA hash algorithm must not be null"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static composeOtherInfo([B[B[B[B[B)[B
    .locals 0

    .line 1
    filled-new-array {p0, p1, p2, p3, p4}, [[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static composeOtherInfo([B[B[B[B[B[B)[B
    .locals 0

    .line 10
    filled-new-array/range {p0 .. p5}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeDigestCycles(II)I
    .locals 0

    .line 1
    add-int/2addr p1, p0

    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    .line 4
    div-int/2addr p1, p0

    .line 5
    return p1
.end method

.method public static encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeDataWithLength([B)[B
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [B

    .line 6
    .line 7
    :goto_0
    array-length v0, p0

    .line 8
    invoke-static {v0}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {v0, p0}, [[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static encodeIntData(I)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static encodeNoData()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    return-object v0
.end method

.method public static encodeStringData(Ljava/lang/String;)[B
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private getMessageDigest()Ljava/security/MessageDigest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "Couldn\'t get message digest for KDF: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method


# virtual methods
.method public deriveKey(Ljavax/crypto/SecretKey;I[B)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getMessageDigest()Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2, p2}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->computeDigestCycles(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gt v1, v2, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    .line 43
    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

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
    move-result-object p2

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Couldn\'t write derived key: "

    .line 64
    .line 65
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    array-length p2, p0

    .line 88
    const-string p3, "AES"

    .line 89
    .line 90
    if-ne p2, p1, :cond_2

    .line 91
    .line 92
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 93
    .line 94
    invoke-direct {p1, p0, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_2
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0, p1}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-direct {p2, p0, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object p2
.end method

.method public deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 109
    invoke-static {p3, p4, p5, p6, p7}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->composeOtherInfo([B[B[B[B[B)[B

    move-result-object p3

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B[B)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 111
    invoke-static/range {p3 .. p8}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->composeOtherInfo([B[B[B[B[B[B)[B

    move-result-object p3

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 2
    .line 3
    return-object p0
.end method
