.class public abstract Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static forceRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/ForceRefreshJWKSetCacheEvaluator;->getInstance()Lcom/nimbusds/jose/jwk/source/ForceRefreshJWKSetCacheEvaluator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static noRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;->getInstance()Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static referenceComparison(Lcom/nimbusds/jose/jwk/JWKSet;)Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/source/ReferenceComparisonRefreshJWKSetEvaluator;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z
.end method
