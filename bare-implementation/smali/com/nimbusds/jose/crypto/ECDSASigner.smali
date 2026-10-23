.class public Lcom/nimbusds/jose/crypto/ECDSASigner;
.super Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWSSigner;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final opts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/ECKey;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;)V"
        }
    .end annotation

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
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->isPrivate()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->toPrivateKey()Ljava/security/PrivateKey;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 28
    .line 29
    :goto_0
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->opts:Ljava/util/Set;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string p0, "The EC JWK doesn\'t contain a private part"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/Curve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/Curve;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/Curve;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 43
    invoke-static {p2}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 44
    const-string p2, "EC"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->privateKey:Ljava/security/PrivateKey;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget-object p3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    iput-object p3, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->opts:Ljava/util/Set;

    return-void

    .line 47
    :cond_1
    const-string p0, "The private key algorithm must be EC"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/ECPrivateKey;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->resolveAlgorithm(Ljava/security/interfaces/ECKey;)Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 40
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->privateKey:Ljava/security/PrivateKey;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->opts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->supportedJWSAlgorithms()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner;->opts:Ljava/util/Set;

    .line 41
    .line 42
    const-class v2, Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/nimbusds/jose/crypto/opts/OptionUtils;->optionIsPresent(Ljava/util/Set;Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->transcodeSignatureToConcat([BI)[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 75
    .line 76
    const-string v2, "Authenticate user to complete signing"

    .line 77
    .line 78
    invoke-static {}, Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;->getInstance()Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v4, Lcom/nimbusds/jose/crypto/ECDSASigner$1;

    .line 83
    .line 84
    invoke-direct {v4, p0, v0, p2, p1}, Lcom/nimbusds/jose/crypto/ECDSASigner$1;-><init>(Lcom/nimbusds/jose/crypto/ECDSASigner;Ljava/security/Signature;[BLcom/nimbusds/jose/JWSHeader;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2, v3, v4}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/JWSSignerOption;Lcom/nimbusds/jose/CompletableJWSObjectSigning;)V

    .line 88
    .line 89
    .line 90
    throw v1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->supportedJWSAlgorithms()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v0, p0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method
