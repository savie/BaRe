.class public Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;
.super Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource$RateLimitedEvent;
    }
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
.field private counter:I

.field private final eventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private final minTimeInterval:J

.field private nextOpeningTime:J


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JLcom/nimbusds/jose/util/events/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;J",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->nextOpeningTime:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->counter:I

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->minTimeInterval:J

    .line 12
    .line 13
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 5
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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->nextOpeningTime:J

    .line 3
    .line 4
    cmp-long v0, v0, p2

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->minTimeInterval:J

    .line 11
    .line 12
    add-long/2addr v3, p2

    .line 13
    iput-wide v3, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->nextOpeningTime:J

    .line 14
    .line 15
    iput v2, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->counter:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v0, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->counter:I

    .line 21
    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_1
    if-nez v1, :cond_2

    .line 26
    .line 27
    sub-int/2addr v0, v2

    .line 28
    iput v0, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->counter:I

    .line 29
    .line 30
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    new-instance p2, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource$RateLimitedEvent;

    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-direct {p2, p0, p4, p3}, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource$RateLimitedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource$1;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    new-instance p0, Lcom/nimbusds/jose/jwk/source/RateLimitReachedException;

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RateLimitReachedException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/JWKSetSource;->getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

.method public getMinTimeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;->minTimeInterval:J

    .line 2
    .line 3
    return-wide v0
.end method
