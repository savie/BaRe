.class public Lcom/nimbusds/jose/mint/DefaultJWSMinter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/mint/ConfigurableJWSMinter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/mint/ConfigurableJWSMinter<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    .line 10
    .line 11
    return-void
.end method

.method private jwks(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSelector;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    .line 8
    .line 9
    .line 10
    instance-of p1, p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 15
    .line 16
    check-cast p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/nimbusds/jose/proc/JWKSecurityContext;->getKeys()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0, v0, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "No JWK source configured"

    .line 40
    .line 41
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method


# virtual methods
.method public getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWSSignerFactory()Lcom/nimbusds/jose/produce/JWSSignerFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public mint(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/JWSObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "Lcom/nimbusds/jose/Payload;",
            "TC;)",
            "Lcom/nimbusds/jose/JWSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwks(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lcom/nimbusds/jose/jwk/JWK;

    .line 18
    .line 19
    new-instance v0, Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JWSHeader$Builder;-><init>(Lcom/nimbusds/jose/JWSHeader;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/JWSHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader$Builder;->build()Lcom/nimbusds/jose/JWSHeader;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    .line 69
    .line 70
    invoke-direct {v0, p1, p2}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    .line 74
    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    invoke-interface {p0, p3}, Lcom/nimbusds/jose/produce/JWSSignerFactory;->createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSSigner;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_0
    const-string p0, "No JWS signer factory configured"

    .line 86
    .line 87
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_1
    const-string p0, "No JWKs found for signing"

    .line 92
    .line 93
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method public setJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    return-void
.end method

.method public setJWSSignerFactory(Lcom/nimbusds/jose/produce/JWSSignerFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    .line 2
    .line 3
    return-void
.end method
