.class Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;
.super Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final INSTANCE:Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;->INSTANCE:Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;->INSTANCE:Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/nimbusds/jose/jwk/source/NoRefreshJWKSetCacheEvaluator;

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
