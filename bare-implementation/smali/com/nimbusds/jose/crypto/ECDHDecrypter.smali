.class public Lcom/nimbusds/jose/crypto/ECDHDecrypter;
.super Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# static fields
.field public static final SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljavax/crypto/SecretKey;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->isPrivate()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->toECPrivateKey()Ljava/security/interfaces/ECPrivateKey;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->privateKey:Ljava/security/PrivateKey;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "The EC JWK doesn\'t contain a private part"

    .line 30
    .line 31
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/util/Set;Lcom/nimbusds/jose/jwk/Curve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p3, v0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljavax/crypto/SecretKey;)V

    .line 38
    new-instance p3, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {p3}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p3, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 39
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 40
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/interfaces/ECPrivateKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/ECPrivateKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;Lcom/nimbusds/jose/jwk/Curve;)V

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

    .line 96
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

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
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/nimbusds/jose/jwk/ECKey;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/ECKey;->toECPublicKey()Ljava/security/interfaces/ECPublicKey;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->getPrivateKey()Ljava/security/PrivateKey;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    instance-of v4, v4, Ljava/security/interfaces/ECPrivateKey;

    .line 24
    .line 25
    const-string v5, "Invalid ephemeral public EC key: Point(s) not on the expected curve"

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->getPrivateKey()Ljava/security/PrivateKey;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/security/interfaces/ECPrivateKey;

    .line 34
    .line 35
    invoke-static {v1, v4}, Lcom/nimbusds/jose/crypto/utils/ECChecks;->isPointOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v5}, Lf6;->j(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/nimbusds/jose/jwk/Curve;->toECParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v1, v4}, Lcom/nimbusds/jose/crypto/utils/ECChecks;->isPointOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/spec/ECParameterSpec;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :goto_0
    iget-object v3, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->privateKey:Ljava/security/PrivateKey;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v1, v3, v4}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v0, p0

    .line 75
    move-object v1, p1

    .line 76
    move-object v4, p2

    .line 77
    move-object v5, p3

    .line 78
    move-object v6, p4

    .line 79
    move-object v7, p5

    .line 80
    move-object v2, p6

    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->decryptWithZ(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    :cond_2
    invoke-static {v5}, Lf6;->j(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_3
    const-string v0, "Missing ephemeral public EC key \"epk\" JWE header parameter"

    .line 91
    .line 92
    invoke-static {v0}, Lf6;->j(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v3
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->privateKey:Ljava/security/PrivateKey;

    .line 2
    .line 3
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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

.method public supportedEllipticCurves()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
