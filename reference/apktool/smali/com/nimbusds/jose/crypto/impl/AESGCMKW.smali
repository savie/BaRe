.class public Lcom/nimbusds/jose/crypto/impl/AESGCMKW;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
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

.method public static decryptCEK(Ljavax/crypto/SecretKey;[BLcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;ILjava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getCipherText()[B

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v3, v0, [B

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getAuthenticationTag()[B

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v5, p4

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->decrypt(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 26
    .line 27
    const-string p2, "AES"

    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p4, "CEK key length mismatch: "

    .line 42
    .line 43
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " != "

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public static encryptCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Lcom/nimbusds/jose/util/Container<",
            "[B>;",
            "Ljavax/crypto/SecretKey;",
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
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-static {p2, p1, p0, v0, p3}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->encrypt(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[BLjava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
