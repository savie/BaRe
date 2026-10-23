.class public Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;
.super Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final eventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JLcom/nimbusds/jose/util/events/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;J",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;J)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;",
            "JTC;)",
            "Lcom/nimbusds/jose/jwk/JWKSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/JWKSetSource;->getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p2, p3}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->cacheJWKSet(Lcom/nimbusds/jose/jwk/JWKSet;J)Lcom/nimbusds/jose/util/cache/CachedObject;
    :try_end_0
    .catch Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move-object v3, v0

    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p2, p3}, Lcom/nimbusds/jose/util/cache/CachedObject;->isValid(J)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/cache/CachedObject;->getExpirationTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    sub-long v4, v1, p2

    .line 32
    .line 33
    iget-object p2, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    new-instance v1, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v2, p0

    .line 41
    move-object v6, p4

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;-><init>(Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$1;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v1}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 53
    .line 54
    new-instance p2, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p2, p0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_1

    .line 68
    .line 69
    return-object p2

    .line 70
    :cond_1
    throw v3
.end method

.method public bridge synthetic getTimeToLive()J
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getTimeToLive()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
