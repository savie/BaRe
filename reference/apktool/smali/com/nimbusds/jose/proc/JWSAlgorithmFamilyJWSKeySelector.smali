.class public Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final selectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm$Family;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    .line 28
    .line 29
    new-instance v2, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;

    .line 30
    .line 31
    invoke-direct {v2, v0, p2}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static fromJWKSetURL(Ljava/net/URL;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    filled-new-array {v1, v2}, [Lcom/nimbusds/jose/jwk/KeyUse;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 23
    .line 24
    sget-object v3, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 25
    .line 26
    filled-new-array {v1, v3}, [Lcom/nimbusds/jose/jwk/KeyType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyTypes([Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v1, v2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 62
    .line 63
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    .line 76
    .line 77
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 78
    .line 79
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_1
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    .line 96
    .line 97
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 98
    .line 99
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeySourceException;

    .line 104
    .line 105
    const-string v0, "Couldn\'t retrieve JWKs"

    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/KeySourceException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method


# virtual methods
.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/nimbusds/jose/proc/JWSKeySelector;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
