.class abstract Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;
.super Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private volatile cachedJWKSet:Lcom/nimbusds/jose/util/cache/CachedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation
.end field

.field private final timeToLive:J


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->timeToLive:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cacheJWKSet(Lcom/nimbusds/jose/jwk/JWKSet;J)Lcom/nimbusds/jose/util/cache/CachedObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            "J)",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    new-instance v0, Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getTimeToLive()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    invoke-static {p2, p3, v4, v5}, Lcom/nimbusds/jose/util/cache/CachedObject;->computeExpirationTime(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v1, p1

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/util/cache/CachedObject;-><init>(Ljava/lang/Object;JJ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->setCachedJWKSet(Lcom/nimbusds/jose/util/cache/CachedObject;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->cachedJWKSet:Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCachedJWKSetIfValid(J)Lcom/nimbusds/jose/util/cache/CachedObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/util/cache/CachedObject;->isValid(J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public getTimeToLive()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->timeToLive:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setCachedJWKSet(Lcom/nimbusds/jose/util/cache/CachedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->cachedJWKSet:Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    return-void
.end method
