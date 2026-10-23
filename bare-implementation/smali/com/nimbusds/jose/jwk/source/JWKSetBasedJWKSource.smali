.class public Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "TC;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V
    .locals 0
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
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 6
    .line 7
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->noRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v2, v3, v0, v1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSetSource;->getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->referenceComparison(Lcom/nimbusds/jose/jwk/JWKSet;)Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p0, v2, v0, v1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSetSource;->getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    return-object v3
.end method

.method public getJWKSetSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetBasedJWKSource;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    return-object p0
.end method
