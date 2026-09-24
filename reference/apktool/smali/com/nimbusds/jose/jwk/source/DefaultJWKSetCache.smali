.class public Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetCache;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_LIFESPAN_MINUTES:J = 0xfL

.field public static final DEFAULT_REFRESH_TIME_MINUTES:J = 0x5L


# instance fields
.field private volatile jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

.field private final lifespan:J

.field private final refreshTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v3, 0x5

    .line 30
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    cmp-long p1, p1, v0

    .line 11
    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    cmp-long p1, p3, v0

    .line 15
    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    :cond_0
    if-eqz p5, :cond_2

    .line 19
    .line 20
    :cond_1
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    const-string p0, "A time unit must be specified for non-negative lifespans or refresh times"

    .line 24
    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public get()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->isExpired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public getLifespan(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public getPutTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    return-wide v0
.end method

.method public getRefreshTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public isExpired()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/Date;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-wide v4, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    .line 33
    .line 34
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v6, v4, v5, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    add-long/2addr v4, v2

    .line 43
    cmp-long p0, v0, v4

    .line 44
    .line 45
    if-lez p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public put(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 11
    .line 12
    return-void
.end method

.method public requiresRefresh()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/Date;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-wide v4, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    .line 33
    .line 34
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v6, v4, v5, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    add-long/2addr v4, v2

    .line 43
    cmp-long p0, v0, v4

    .line 44
    .line 45
    if-lez p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method
