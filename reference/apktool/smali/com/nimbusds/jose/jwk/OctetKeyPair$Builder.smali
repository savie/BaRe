.class public Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/OctetKeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private final crv:Lcom/nimbusds/jose/jwk/Curve;

.field private d:Lcom/nimbusds/jose/util/Base64URL;

.field private exp:Ljava/util/Date;

.field private iat:Ljava/util/Date;

.field private kid:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private nbf:Ljava/util/Date;

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

.field private use:Lcom/nimbusds/jose/jwk/KeyUse;

.field private final x:Lcom/nimbusds/jose/util/Base64URL;

.field private x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private x5t:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "The curve must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 103
    const-string p1, "The x coordinate must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->access$000(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/jwk/Curve;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->access$100(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->access$200(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ops:Ljava/util/Set;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->kid:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5u:Ljava/net/URI;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5c:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getExpirationTime()Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->exp:Ljava/util/Date;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getNotBeforeTime()Ljava/util/Date;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->nbf:Ljava/util/Date;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getIssueTime()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->iat:Ljava/util/Date;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ks:Ljava/security/KeyStore;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ops:Ljava/util/Set;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->kid:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5u:Ljava/net/URI;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5c:Ljava/util/List;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->exp:Ljava/util/Date;

    .line 30
    .line 31
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->nbf:Ljava/util/Date;

    .line 32
    .line 33
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->iat:Ljava/util/Date;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ks:Ljava/security/KeyStore;

    .line 38
    .line 39
    move-object/from16 v17, v0

    .line 40
    .line 41
    move-object/from16 v16, v1

    .line 42
    .line 43
    invoke-direct/range {v2 .. v17}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_0
    new-instance v1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 50
    .line 51
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 52
    .line 53
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 56
    .line 57
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ops:Ljava/util/Set;

    .line 58
    .line 59
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 60
    .line 61
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->kid:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5u:Ljava/net/URI;

    .line 64
    .line 65
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    .line 67
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 68
    .line 69
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5c:Ljava/util/List;

    .line 70
    .line 71
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->exp:Ljava/util/Date;

    .line 72
    .line 73
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->nbf:Ljava/util/Date;

    .line 74
    .line 75
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->iat:Ljava/util/Date;

    .line 76
    .line 77
    move-object/from16 v16, v1

    .line 78
    .line 79
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ks:Ljava/security/KeyStore;

    .line 82
    .line 83
    move-object/from16 v17, v16

    .line 84
    .line 85
    move-object/from16 v16, v1

    .line 86
    .line 87
    move-object/from16 v1, v17

    .line 88
    .line 89
    move-object/from16 v17, v0

    .line 90
    .line 91
    invoke-direct/range {v1 .. v17}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    move-object/from16 v16, v1

    .line 95
    .line 96
    return-object v16

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    return-object v0
.end method

.method public d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 50
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object p0

    return-object p0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "crv"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "kty"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "x"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->kid:Ljava/lang/String;

    .line 48
    .line 49
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->ks:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
