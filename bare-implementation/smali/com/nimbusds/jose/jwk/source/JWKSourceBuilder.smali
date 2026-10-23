.class public Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_REFRESH_TIMEOUT:J = 0x3a98L

.field public static final DEFAULT_CACHE_TIME_TO_LIVE:J = 0x493e0L

.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_SIZE_LIMIT:I = 0xc800

.field public static final DEFAULT_RATE_LIMIT_MIN_INTERVAL:J = 0x7530L

.field public static final DEFAULT_REFRESH_AHEAD_TIME:J = 0x7530L


# instance fields
.field private cacheRefreshTimeout:J

.field private cacheTimeToLive:J

.field private caching:Z

.field private cachingEventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field protected failover:Lcom/nimbusds/jose/jwk/source/JWKSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation
.end field

.field private healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/health/HealthReportListener<",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private final jwkSetSource:Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;"
        }
    .end annotation
.end field

.field private minTimeInterval:J

.field private outageCacheTimeToLive:J

.field private outageEventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private outageTolerant:Z

.field private rateLimited:Z

.field private rateLimitedEventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private refreshAhead:Z

.field private refreshAheadScheduled:Z

.field private refreshAheadTime:J

.field private retrying:Z

.field private retryingEventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RetryingJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 6
    .line 7
    const-wide/32 v1, 0x493e0

    .line 8
    .line 9
    .line 10
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 11
    .line 12
    const-wide/16 v1, 0x3a98

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheRefreshTimeout:J

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 17
    .line 18
    const-wide/16 v1, 0x7530

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadTime:J

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-boolean v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadScheduled:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->minTimeInterval:J

    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retrying:Z

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 32
    .line 33
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 36
    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->jwkSetSource:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 41
    .line 42
    return-void
.end method

.method public static create(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    return-object v0
.end method

.method public static create(Ljava/net/URL;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    const v2, 0xc800

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static create(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/nimbusds/jose/util/ResourceRetriever;",
            ")",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;

    new-instance v1, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;

    invoke-direct {v1, p0, p1}, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string p0, "Rate limiting requires caching"

    .line 11
    .line 12
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    const-string p0, "Refresh-ahead caching requires general caching"

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 37
    .line 38
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->minTimeInterval:J

    .line 39
    .line 40
    cmp-long v1, v1, v3

    .line 41
    .line 42
    if-lez v1, :cond_4

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    const-string p0, "The rate limiting min time interval between requests must be less than the cache time-to-live"

    .line 46
    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    :goto_3
    const-wide v1, 0x7fffffffffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 59
    .line 60
    if-eqz v3, :cond_7

    .line 61
    .line 62
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 63
    .line 64
    cmp-long v3, v3, v1

    .line 65
    .line 66
    if-nez v3, :cond_7

    .line 67
    .line 68
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 69
    .line 70
    cmp-long v3, v3, v1

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    const-string p0, "Outage tolerance not necessary with a non-expiring cache"

    .line 76
    .line 77
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 84
    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 88
    .line 89
    cmp-long v0, v3, v1

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_8
    const-string p0, "Refresh-ahead caching not necessary with a non-expiring cache"

    .line 95
    .line 96
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->jwkSetSource:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retrying:Z

    .line 103
    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    new-instance v1, Lcom/nimbusds/jose/jwk/source/RetryingJWKSetSource;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retryingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 109
    .line 110
    invoke-direct {v1, v0, v2}, Lcom/nimbusds/jose/jwk/source/RetryingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/util/events/EventListener;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v1

    .line 114
    :cond_a
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 115
    .line 116
    if-eqz v1, :cond_d

    .line 117
    .line 118
    iget-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 119
    .line 120
    const-wide/16 v3, -0x1

    .line 121
    .line 122
    cmp-long v1, v1, v3

    .line 123
    .line 124
    if-nez v1, :cond_c

    .line 125
    .line 126
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    iget-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 131
    .line 132
    const-wide/16 v3, 0xa

    .line 133
    .line 134
    mul-long/2addr v1, v3

    .line 135
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_b
    const-wide/32 v1, 0x2dc6c0

    .line 139
    .line 140
    .line 141
    iput-wide v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 142
    .line 143
    :cond_c
    :goto_6
    new-instance v1, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;

    .line 144
    .line 145
    iget-wide v2, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 146
    .line 147
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 148
    .line 149
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JLcom/nimbusds/jose/util/events/EventListener;)V

    .line 150
    .line 151
    .line 152
    move-object v0, v1

    .line 153
    :cond_d
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;

    .line 154
    .line 155
    if-eqz v1, :cond_e

    .line 156
    .line 157
    new-instance v2, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;

    .line 158
    .line 159
    invoke-direct {v2, v0, v1}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/util/health/HealthReportListener;)V

    .line 160
    .line 161
    .line 162
    move-object v0, v2

    .line 163
    :cond_e
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 164
    .line 165
    if-eqz v1, :cond_f

    .line 166
    .line 167
    new-instance v1, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;

    .line 168
    .line 169
    iget-wide v2, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->minTimeInterval:J

    .line 170
    .line 171
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimitedEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 172
    .line 173
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JLcom/nimbusds/jose/util/events/EventListener;)V

    .line 174
    .line 175
    .line 176
    move-object v6, v1

    .line 177
    goto :goto_7

    .line 178
    :cond_f
    move-object v6, v0

    .line 179
    :goto_7
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 180
    .line 181
    if-eqz v0, :cond_10

    .line 182
    .line 183
    new-instance v5, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 184
    .line 185
    iget-wide v7, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 186
    .line 187
    iget-wide v9, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheRefreshTimeout:J

    .line 188
    .line 189
    iget-wide v11, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadTime:J

    .line 190
    .line 191
    iget-boolean v13, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadScheduled:Z

    .line 192
    .line 193
    iget-object v14, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cachingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 194
    .line 195
    invoke-direct/range {v5 .. v14}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJJZLcom/nimbusds/jose/util/events/EventListener;)V

    .line 196
    .line 197
    .line 198
    :goto_8
    move-object v6, v5

    .line 199
    goto :goto_9

    .line 200
    :cond_10
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 201
    .line 202
    if-eqz v0, :cond_11

    .line 203
    .line 204
    new-instance v5, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;

    .line 205
    .line 206
    iget-wide v7, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 207
    .line 208
    iget-wide v9, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheRefreshTimeout:J

    .line 209
    .line 210
    iget-object v11, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cachingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 211
    .line 212
    invoke-direct/range {v5 .. v11}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJLcom/nimbusds/jose/util/events/EventListener;)V

    .line 213
    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_11
    :goto_9
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;

    .line 217
    .line 218
    invoke-direct {v0, v6}, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    .line 219
    .line 220
    .line 221
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->failover:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 222
    .line 223
    if-eqz p0, :cond_12

    .line 224
    .line 225
    new-instance v1, Lcom/nimbusds/jose/jwk/source/JWKSourceWithFailover;

    .line 226
    .line 227
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/jwk/source/JWKSourceWithFailover;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 228
    .line 229
    .line 230
    return-object v1

    .line 231
    :cond_12
    return-object v0
.end method

.method public cache(JJ)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 12
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 13
    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheRefreshTimeout:J

    return-object p0
.end method

.method public cache(JJLcom/nimbusds/jose/util/events/EventListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheRefreshTimeout:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cachingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 9
    .line 10
    return-object p0
.end method

.method public cache(Z)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 14
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    return-object p0
.end method

.method public cacheForever()Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 3
    .line 4
    const-wide v0, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cacheTimeToLive:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 13
    .line 14
    return-object p0
.end method

.method public failover(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->failover:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public healthReporting(Lcom/nimbusds/jose/util/health/HealthReportListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/health/HealthReportListener<",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public outageTolerant(J)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 10
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    return-object p0
.end method

.method public outageTolerant(JLcom/nimbusds/jose/util/events/EventListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 7
    .line 8
    return-object p0
.end method

.method public outageTolerant(Z)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 11
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    return-object p0
.end method

.method public outageTolerantForever()Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageTolerant:Z

    .line 3
    .line 4
    const-wide v0, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->outageCacheTimeToLive:J

    .line 10
    .line 11
    return-object p0
.end method

.method public rateLimited(J)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 10
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->minTimeInterval:J

    return-object p0
.end method

.method public rateLimited(JLcom/nimbusds/jose/util/events/EventListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RateLimitedJWKSetSource<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->minTimeInterval:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimitedEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 7
    .line 8
    return-object p0
.end method

.method public rateLimited(Z)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 11
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->rateLimited:Z

    return-object p0
.end method

.method public refreshAheadCache(JZ)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 14
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 15
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadTime:J

    .line 16
    iput-boolean p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadScheduled:Z

    return-object p0
.end method

.method public refreshAheadCache(JZLcom/nimbusds/jose/util/events/EventListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadTime:J

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAheadScheduled:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->cachingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 11
    .line 12
    return-object p0
.end method

.method public refreshAheadCache(Z)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->caching:Z

    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->refreshAhead:Z

    return-object p0
.end method

.method public retrying(Lcom/nimbusds/jose/util/events/EventListener;)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/RetryingJWKSetSource<",
            "TC;>;TC;>;)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retrying:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retryingEventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 5
    .line 6
    return-object p0
.end method

.method public retrying(Z)Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder<",
            "TC;>;"
        }
    .end annotation

    .line 7
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSourceBuilder;->retrying:Z

    return-object p0
.end method
