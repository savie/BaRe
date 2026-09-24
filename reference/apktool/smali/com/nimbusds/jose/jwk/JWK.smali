.class public abstract Lcom/nimbusds/jose/jwk/JWK;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/jwk+json; charset=UTF-8"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final alg:Lcom/nimbusds/jose/Algorithm;

.field private final exp:Ljava/util/Date;

.field private final iat:Ljava/util/Date;

.field private final keyStore:Ljava/security/KeyStore;

.field private final kid:Ljava/lang/String;

.field private final kty:Lcom/nimbusds/jose/jwk/KeyType;

.field private final nbf:Ljava/util/Date;

.field private final ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final parsedX5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

.field private final use:Lcom/nimbusds/jose/jwk/KeyUse;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v13, p10

    .line 98
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/nimbusds/jose/jwk/KeyRevocation;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "The key type \"kty\" parameter must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 10
    .line 11
    invoke-static {p2, p3}, Lcom/nimbusds/jose/jwk/KeyUseAndOpsConsistency;->areConsistent(Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    iput-object p8, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    if-eqz p9, :cond_1

    .line 33
    .line 34
    invoke-interface {p9}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "The X.509 certificate chain \"x5c\" must not be empty"

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    :goto_0
    iput-object p9, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p9}, Lcom/nimbusds/jose/util/X509CertChainUtils;->parse(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWK;->parsedX5c:Ljava/util/List;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    iput-object p10, p0, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 56
    .line 57
    iput-object p11, p0, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 58
    .line 59
    iput-object p12, p0, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 60
    .line 61
    iput-object p13, p0, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 62
    .line 63
    iput-object p14, p0, Lcom/nimbusds/jose/jwk/JWK;->keyStore:Ljava/security/KeyStore;

    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p4, "Invalid X.509 certificate chain \"x5c\": "

    .line 76
    .line 77
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    const-string p0, "The key use \"use\" and key options \"key_ops\" parameters are not consistent, see RFC 7517, section 4.3"

    .line 92
    .line 93
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v14, p13

    .line 97
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public static load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/JWK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/jwk/RSAKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v1, v1, Ljava/security/interfaces/ECPublicKey;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/jwk/ECKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/ECKey;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Unsupported public key algorithm: "

    .line 51
    .line 52
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method private static mergeKeyPairs(Ljava/util/List;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/security/KeyPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/security/KeyPair;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWK;->twoKeysToKeyPair(Ljava/util/List;)Ljava/security/KeyPair;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "Expected key or pair of PEM-encoded keys"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWK;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECKey;->parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported public key algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "kty"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECKey;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/ECKey;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 42
    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/text/ParseException;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "Unsupported key type \"kty\" parameter: "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_4
    const-string p0, "Missing key type \"kty\" parameter"

    .line 71
    .line 72
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public static parseFromPEMEncodedObjects(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->parseKeys(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_9

    .line 11
    .line 12
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWK;->mergeKeyPairs(Ljava/util/List;)Ljava/security/KeyPair;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz v0, :cond_8

    .line 25
    .line 26
    instance-of v1, v0, Ljava/security/interfaces/ECPublicKey;

    .line 27
    .line 28
    const-string v2, " private key type: "

    .line 29
    .line 30
    const-string v3, "Unsupported "

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v4, p0, Ljava/security/interfaces/ECPrivateKey;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    move-object v4, p0

    .line 45
    check-cast v4, Ljava/security/interfaces/ECPrivateKey;

    .line 46
    .line 47
    invoke-static {v0, v4}, Lcom/nimbusds/jose/jwk/JWK;->validateEcCurves(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    if-eqz p0, :cond_2

    .line 51
    .line 52
    instance-of v4, p0, Ljava/security/interfaces/ECPrivateKey;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 58
    .line 59
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 92
    .line 93
    invoke-direct {v2, v1, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V

    .line 94
    .line 95
    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->privateKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->build()Lcom/nimbusds/jose/jwk/ECKey;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    new-instance v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 113
    .line 114
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 117
    .line 118
    .line 119
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    if-nez p0, :cond_6

    .line 130
    .line 131
    :goto_1
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_6
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 137
    .line 138
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_7
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Unsupported algorithm of PEM-encoded key: "

    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_8
    const-string p0, "Missing PEM-encoded public key to construct JWK"

    .line 191
    .line 192
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :cond_9
    const-string p0, "No PEM-encoded keys found"

    .line 197
    .line 198
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v1
.end method

.method public static parseFromPEMEncodedX509Cert(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parse(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWK;->parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/JWK;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Couldn\'t parse PEM-encoded X.509 certificate"

    .line 13
    .line 14
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method private static twoKeysToKeyPair(Ljava/util/List;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/security/KeyPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/security/KeyPair;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/security/KeyPair;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Ljava/security/KeyPair;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v1, v0, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    new-instance v1, Ljava/security/KeyPair;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    const-string p0, "Not a public/private key pair"

    .line 68
    .line 69
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method private static validateEcCurves(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "Public/private "

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 65
    .line 66
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, " key order mismatch: "

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 97
    .line 98
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, " key generator mismatch: "

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 129
    .line 130
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, " key cofactor mismatch: "

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_3
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 161
    .line 162
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, " key curve mismatch: "

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method


# virtual methods
.method public computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public computeThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 8
    invoke-static {p1, p0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    return-object p0
.end method

.method public computeThumbprintURI()Lcom/nimbusds/jose/jwk/ThumbprintURI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/ThumbprintURI;

    .line 2
    .line 3
    const-string v1, "SHA-256"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "sha-256"

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/JWK;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/nimbusds/jose/jwk/JWK;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 66
    .line 67
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 74
    .line 75
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 76
    .line 77
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 84
    .line 85
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 86
    .line 87
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 94
    .line 95
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 104
    .line 105
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 106
    .line 107
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 114
    .line 115
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 116
    .line 117
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 126
    .line 127
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 134
    .line 135
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 136
    .line 137
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->keyStore:Ljava/security/KeyStore;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/JWK;->keyStore:Ljava/security/KeyStore;

    .line 146
    .line 147
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_2

    .line 152
    .line 153
    return v0

    .line 154
    :cond_2
    return v2
.end method

.method public getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIssueTime()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyOperations()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->keyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyType()Lcom/nimbusds/jose/jwk/KeyType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotBeforeTime()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public getParsedX509CertChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->parsedX5c:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public abstract getRequiredParams()Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public getX509CertChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertURL()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 24
    .line 25
    iget-object v12, p0, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 26
    .line 27
    iget-object v13, p0, Lcom/nimbusds/jose/jwk/JWK;->keyStore:Ljava/security/KeyStore;

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public abstract isPrivate()Z
.end method

.method public abstract size()I
.end method

.method public toECKey()Lcom/nimbusds/jose/jwk/ECKey;
    .locals 0

    .line 1
    check-cast p0, Lcom/nimbusds/jose/jwk/ECKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->kty:Lcom/nimbusds/jose/jwk/KeyType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "kty"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "use"

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWK;->ops:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/nimbusds/jose/jwk/KeyOperation;->identifier()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v2, "key_ops"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const-string v2, "alg"

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->kid:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const-string v2, "kid"

    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5u:Ljava/net/URI;

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    const-string v2, "x5u"

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    const-string v2, "x5t"

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    const-string v2, "x5t#S256"

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 130
    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWK;->x5c:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_8

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lcom/nimbusds/jose/util/Base64;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    const-string v2, "x5c"

    .line 164
    .line 165
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_9
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->exp:Ljava/util/Date;

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    invoke-static {v1}, Lcom/nimbusds/jwt/util/DateUtils;->toSecondsSinceEpoch(Ljava/util/Date;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v2, "exp"

    .line 181
    .line 182
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_a
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->nbf:Ljava/util/Date;

    .line 186
    .line 187
    if-eqz v1, :cond_b

    .line 188
    .line 189
    invoke-static {v1}, Lcom/nimbusds/jwt/util/DateUtils;->toSecondsSinceEpoch(Ljava/util/Date;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v2, "nbf"

    .line 198
    .line 199
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_b
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWK;->iat:Ljava/util/Date;

    .line 203
    .line 204
    if-eqz v1, :cond_c

    .line 205
    .line 206
    invoke-static {v1}, Lcom/nimbusds/jwt/util/DateUtils;->toSecondsSinceEpoch(Ljava/util/Date;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v2, "iat"

    .line 215
    .line 216
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_c
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWK;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 220
    .line 221
    if-eqz p0, :cond_d

    .line 222
    .line 223
    const-string v1, "revoked"

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->toJSONObject()Ljava/util/Map;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_d
    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public toOctetKeyPair()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    check-cast p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
    return-object p0
.end method

.method public toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 0

    .line 1
    check-cast p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;
.end method

.method public toRSAKey()Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 0

    .line 1
    check-cast p0, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/JWK;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
