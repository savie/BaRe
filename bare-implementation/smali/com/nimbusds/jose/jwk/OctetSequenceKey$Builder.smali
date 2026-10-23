.class public Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/OctetSequenceKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private exp:Ljava/util/Date;

.field private iat:Ljava/util/Date;

.field private final k:Lcom/nimbusds/jose/util/Base64URL;

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
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->access$000(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->k:Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ops:Ljava/util/Set;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->kid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5u:Ljava/net/URI;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5c:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getExpirationTime()Ljava/util/Date;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->exp:Ljava/util/Date;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getNotBeforeTime()Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->nbf:Ljava/util/Date;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getIssueTime()Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->iat:Ljava/util/Date;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ks:Ljava/security/KeyStore;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->k:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 92
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 89
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    .line 90
    array-length p0, p1

    if-eqz p0, :cond_0

    return-void

    .line 91
    :cond_0
    const-string p0, "The key must have a positive length"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 15

    .line 1
    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->k:Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ops:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->kid:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5u:Ljava/net/URI;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5c:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->exp:Ljava/util/Date;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->nbf:Ljava/util/Date;

    .line 24
    .line 25
    iget-object v12, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->iat:Ljava/util/Date;

    .line 26
    .line 27
    iget-object v13, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 28
    .line 29
    iget-object v14, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ks:Ljava/security/KeyStore;

    .line 30
    .line 31
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 39
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->k:Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "k"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

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
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->kid:Ljava/lang/String;

    .line 37
    .line 38
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->ks:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
