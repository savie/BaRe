.class Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduleRefreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

.field final synthetic val$cache:Lcom/nimbusds/jose/util/cache/CachedObject;

.field final synthetic val$context:Lcom/nimbusds/jose/proc/SecurityContext;

.field final synthetic val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/util/cache/CachedObject;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$cache:Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

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
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$cache:Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->refreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;ZJLcom/nimbusds/jose/proc/SecurityContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->this$0:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$that:Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;->val$context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 36
    .line 37
    invoke-direct {v2, v3, v0, p0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;-><init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Ljava/lang/Exception;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
