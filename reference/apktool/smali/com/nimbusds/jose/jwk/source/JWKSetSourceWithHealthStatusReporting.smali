.class public Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;
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
.field private final healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/health/HealthReportListener<",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/util/health/HealthReportListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;",
            "Lcom/nimbusds/jose/util/health/HealthReportListener<",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;->healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 11
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
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;->healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;

    .line 10
    .line 11
    new-instance v1, Lcom/nimbusds/jose/util/health/HealthReport;

    .line 12
    .line 13
    sget-object v3, Lcom/nimbusds/jose/util/health/HealthStatus;->HEALTHY:Lcom/nimbusds/jose/util/health/HealthStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move-wide v4, p2

    .line 17
    move-object v6, p4

    .line 18
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/nimbusds/jose/util/health/HealthReport;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/util/health/HealthStatus;JLcom/nimbusds/jose/proc/SecurityContext;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/health/HealthReportListener;->notify(Lcom/nimbusds/jose/util/health/HealthReport;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    :goto_0
    move-object p0, v0

    .line 27
    move-object v7, p0

    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    move-object v2, p0

    .line 31
    move-wide v4, p2

    .line 32
    move-object v6, p4

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object p0, v2, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWithHealthStatusReporting;->healthReportListener:Lcom/nimbusds/jose/util/health/HealthReportListener;

    .line 35
    .line 36
    move-wide v8, v4

    .line 37
    new-instance v4, Lcom/nimbusds/jose/util/health/HealthReport;

    .line 38
    .line 39
    move-object v10, v6

    .line 40
    sget-object v6, Lcom/nimbusds/jose/util/health/HealthStatus;->NOT_HEALTHY:Lcom/nimbusds/jose/util/health/HealthStatus;

    .line 41
    .line 42
    move-object v5, v2

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/nimbusds/jose/util/health/HealthReport;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/util/health/HealthStatus;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v4}, Lcom/nimbusds/jose/util/health/HealthReportListener;->notify(Lcom/nimbusds/jose/util/health/HealthReport;)V

    .line 47
    .line 48
    .line 49
    throw v7
.end method
