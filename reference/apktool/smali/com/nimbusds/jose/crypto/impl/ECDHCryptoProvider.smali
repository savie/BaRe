.class public abstract Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;
.super Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final concatKDF:Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

.field private final curve:Lcom/nimbusds/jose/jwk/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    .line 3
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Ljavax/crypto/SecretKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p2}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;-><init>(Ljava/util/Set;Ljava/util/Set;Ljavax/crypto/SecretKey;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move-object p2, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Lcom/nimbusds/jose/jwk/Curve;

    .line 13
    .line 14
    const-string v0, "unknown"

    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->supportedEllipticCurves()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->curve:Lcom/nimbusds/jose/jwk/Curve;

    .line 30
    .line 31
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 32
    .line 33
    const-string p2, "SHA-256"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->concatKDF:Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->supportedEllipticCurves()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedEllipticCurve(Lcom/nimbusds/jose/jwk/Curve;Ljava/util/Collection;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method


# virtual methods
.method public decryptWithZ(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getConcatKDF()Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getConcatKDF()Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1, p3, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/crypto/impl/ConcatKDF;)Ljavax/crypto/SecretKey;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    :goto_0
    move-object v6, p3

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    if-eqz p4, :cond_1

    .line 56
    .line 57
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {p3, v0, v1}, Lcom/nimbusds/jose/crypto/impl/AESKW;->unwrapCEK(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    move-object v0, p1

    .line 79
    move-object v1, p2

    .line 80
    move-object v2, p4

    .line 81
    move-object v3, p5

    .line 82
    move-object v4, p6

    .line 83
    move-object v5, p7

    .line 84
    invoke-static/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_1
    const-string p0, "Missing JWE encrypted key"

    .line 90
    .line 91
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_2
    const-string p0, "Unexpected JWE ECDH algorithm mode: "

    .line 96
    .line 97
    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v2
.end method

.method public encryptWithZ(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;[B[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getConcatKDF()Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getConcatKDF()Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {p1, p2, v2}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/crypto/impl/ConcatKDF;)Ljavax/crypto/SecretKey;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget-object v2, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->isCEKProvided()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    move-object v7, p2

    .line 56
    :goto_0
    move-object v8, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const-string p0, "The provided CEK is not supported"

    .line 59
    .line 60
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v3

    .line 64
    :cond_1
    sget-object v2, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getCEK(Lcom/nimbusds/jose/EncryptionMethod;)Ljavax/crypto/SecretKey;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, p2, v1}, Lcom/nimbusds/jose/crypto/impl/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v7, v0

    .line 93
    goto :goto_0

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    move-object v4, p1

    .line 99
    move-object v5, p3

    .line 100
    move-object v6, p4

    .line 101
    invoke-static/range {v4 .. v9}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_2
    const-string p0, "Unexpected JWE ECDH algorithm mode: "

    .line 107
    .line 108
    invoke-static {v0, p0}, Lc6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v3
.end method

.method public getConcatKDF()Lcom/nimbusds/jose/crypto/impl/ConcatKDF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->concatKDF:Lcom/nimbusds/jose/crypto/impl/ConcatKDF;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurve()Lcom/nimbusds/jose/jwk/Curve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->curve:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract supportedEllipticCurves()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end method
