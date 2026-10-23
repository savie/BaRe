.class public Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;
.super Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshInitiatedEvent;,
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshCompletedEvent;,
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$WaitingForRefreshEvent;,
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshTimedOutEvent;,
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$UnableToRefreshEvent;,
        Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$AbstractCachingJWKSetSourceEvent;
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
.field private final cacheRefreshTimeout:J

.field private final eventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJLcom/nimbusds/jose/util/events/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;JJ",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;J)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->cacheRefreshTimeout:J

    .line 12
    .line 13
    iput-object p6, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getCacheRefreshTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->cacheRefreshTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 3
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
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->noRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/nimbusds/jose/util/cache/CachedObject;->isExpired(J)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->referenceComparison(Lcom/nimbusds/jose/jwk/JWKSet;)Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 53
    .line 54
    return-object p0
.end method

.method public getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
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

.method public loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 9
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
    const-string v2, "Timeout while waiting for cache refresh ("

    .line 2
    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 6
    .line 7
    .line 8
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz v3, :cond_4

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance v3, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshInitiatedEvent;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-direct {v3, p0, v5, p4, v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshInitiatedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v3}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetNotThreadSafe(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object v8, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 56
    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    new-instance v0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshCompletedEvent;

    .line 60
    .line 61
    invoke-virtual {v7}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v1, p0

    .line 75
    move-object v4, p4

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshCompletedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/jwk/JWKSet;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v8, v0}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_2
    move-object v2, v7

    .line 83
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :goto_1
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    new-instance v5, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$WaitingForRefreshEvent;

    .line 101
    .line 102
    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-direct {v5, p0, v7, p4, v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$WaitingForRefreshEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v5}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->getCacheRefreshTimeout()J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    invoke-virtual {v3, v7, v8, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 123
    .line 124
    .line 125
    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    if-eqz v3, :cond_c

    .line 127
    .line 128
    :try_start_3
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    goto :goto_4

    .line 149
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 150
    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    new-instance v3, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshInitiatedEvent;

    .line 154
    .line 155
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-direct {v3, p0, v5, p4, v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshInitiatedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, v3}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    invoke-virtual/range {p0 .. p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetNotThreadSafe(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    iget-object v8, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 172
    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    new-instance v0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshCompletedEvent;

    .line 176
    .line 177
    invoke-virtual {v7}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 182
    .line 183
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const/4 v5, 0x0

    .line 190
    move-object v1, p0

    .line 191
    move-object v4, p4

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshCompletedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/jwk/JWKSet;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v8, v0}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    .line 197
    .line 198
    :cond_8
    move-object v2, v7

    .line 199
    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    .line 203
    .line 204
    :goto_3
    if-eqz v2, :cond_a

    .line 205
    .line 206
    invoke-virtual {v2, p2, p3}, Lcom/nimbusds/jose/util/cache/CachedObject;->isValid(J)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 217
    .line 218
    return-object v0

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    new-instance v2, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$UnableToRefreshEvent;

    .line 224
    .line 225
    invoke-direct {v2, p0, p4, v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$UnableToRefreshEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 229
    .line 230
    .line 231
    :cond_b
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;

    .line 232
    .line 233
    const-string v1, "Unable to refresh cache"

    .line 234
    .line 235
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :goto_4
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_c
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 246
    .line 247
    if-eqz v0, :cond_d

    .line 248
    .line 249
    new-instance v3, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshTimedOutEvent;

    .line 250
    .line 251
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    invoke-direct {v3, p0, v5, p4, v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$RefreshTimedOutEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;ILcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$1;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v0, v3}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-wide v1, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->cacheRefreshTimeout:J

    .line 271
    .line 272
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, "ms exceeded)"

    .line 276
    .line 277
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;

    .line 297
    .line 298
    const-string v2, "Interrupted while waiting for cache refresh"

    .line 299
    .line 300
    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    throw v1
.end method

.method public loadJWKSetNotThreadSafe(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/util/cache/CachedObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;",
            "JTC;)",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
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
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->cacheJWKSet(Lcom/nimbusds/jose/jwk/JWKSet;J)Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
