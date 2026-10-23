.class Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;
.super Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    check-cast p1, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 25
    .line 26
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method
