.class public Lcom/nimbusds/jose/JWSHeader$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final alg:Lcom/nimbusds/jose/JWSAlgorithm;

.field private b64:Z

.field private crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cty:Ljava/lang/String;

.field private customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jku:Ljava/net/URI;

.field private jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private kid:Ljava/lang/String;

.field private parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private typ:Lcom/nimbusds/jose/JOSEObjectType;

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
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    .line 83
    invoke-virtual {p1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->alg:Lcom/nimbusds/jose/JWSAlgorithm;

    return-void

    .line 85
    :cond_0
    const-string p0, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWSHeader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getJWKURL()Ljava/net/URI;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertURL()Ljava/net/URI;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertChain()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public base64URLEncodePayload(Z)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/JWSHeader;
    .locals 15

    .line 1
    new-instance v0, Lcom/nimbusds/jose/JWSHeader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->alg:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean v12, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    .line 26
    .line 27
    iget-object v13, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v14, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/JWSHeader;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;ZLjava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/JWSHeader;->getRegisteredParameterNames()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "The parameter name \""

    .line 29
    .line 30
    const-string p2, "\" matches a registered name"

    .line 31
    .line 32
    invoke-static {p0, p1, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "The JWK must be public"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 18
    .line 19
    return-object p0
.end method

.method public jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
