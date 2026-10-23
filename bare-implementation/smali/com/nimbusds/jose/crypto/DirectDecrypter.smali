.class public Lcom/nimbusds/jose/crypto/DirectDecrypter;
.super Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final promiscuousMode:Z


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 21
    const-string v0, "AES"

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->promiscuousMode:Z

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    .line 18
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 19
    iput-boolean p2, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->promiscuousMode:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 20
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;Z)V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/DirectDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->promiscuousMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "Unexpected present JWE encrypted key"

    .line 22
    .line 23
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 28
    .line 29
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 40
    .line 41
    if-eqz p5, :cond_3

    .line 42
    .line 43
    iget-object p2, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const/4 v2, 0x0

    .line 57
    move-object v0, p1

    .line 58
    move-object v3, p3

    .line 59
    move-object v4, p4

    .line 60
    move-object v5, p5

    .line 61
    move-object v1, p6

    .line 62
    invoke-static/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_3
    const-string p0, "Missing JWE authentication tag"

    .line 68
    .line 69
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    const-string p0, "Unexpected present JWE initialization vector (IV)"

    .line 74
    .line 75
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
