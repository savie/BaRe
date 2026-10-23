.class Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lockedRefresh(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

.field final synthetic val$context:Lcom/nimbusds/jose/proc/SecurityContext;

.field final synthetic val$currentTime:J

.field final synthetic val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$currentTime:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshInitiatedEvent;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 21
    .line 22
    invoke-direct {v2, v3, v4, v1}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshInitiatedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 29
    .line 30
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->forceRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-wide v3, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$currentTime:J

    .line 35
    .line 36
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshCompletedEvent;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 61
    .line 62
    invoke-direct {v3, v4, v0, v5, v1}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshCompletedEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/jwk/JWKSet;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 70
    .line 71
    const-wide/16 v1, -0x1

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$302(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;J)J

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$UnableToRefreshAheadOfExpirationEvent;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 95
    .line 96
    invoke-direct {v1, v2, p0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$UnableToRefreshAheadOfExpirationEvent;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method
