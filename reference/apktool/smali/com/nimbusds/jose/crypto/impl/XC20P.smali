.class public Lcom/nimbusds/jose/crypto/impl/XC20P;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final AUTH_TAG_BIT_LENGTH:I = 0x80

.field public static final IV_BIT_LENGTH:I = 0xc0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    .line 10
    filled-new-array {p1, p2, p4}, [[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_1
    invoke-virtual {v0, p0, p3}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->decrypt([B[B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p4, "XChaCha20Poly1305 decryption failed: "

    .line 33
    .line 34
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p4, "Invalid XChaCha20Poly1305 key: "

    .line 58
    .line 59
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public static encryptAuthenticated(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[B)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Lcom/nimbusds/jose/util/Container<",
            "[B>;[B[B)",
            "Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->encrypt([B[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    array-length p2, p0

    .line 15
    const/16 p3, 0x80

    .line 16
    .line 17
    invoke-static {p3}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    const/16 v0, 0xc0

    .line 23
    .line 24
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v1, v0}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sub-int v2, p2, v0

    .line 34
    .line 35
    invoke-static {p0, v0, v2}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p3}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-static {p0, p2, p3}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/util/Container;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 51
    .line 52
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

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
    move-result-object p2

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Couldn\'t encrypt with XChaCha20Poly1305: "

    .line 66
    .line 67
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :catch_1
    move-exception p0

    .line 82
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "Invalid XChaCha20Poly1305 key: "

    .line 91
    .line 92
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
