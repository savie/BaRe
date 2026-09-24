.class public Lcom/nimbusds/jose/util/health/HealthReport;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/util/events/Event;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/util/events/Event<",
        "TS;TC;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/nimbusds/jose/proc/SecurityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final exception:Ljava/lang/Exception;

.field private final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final status:Lcom/nimbusds/jose/util/health/HealthStatus;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/nimbusds/jose/util/health/HealthStatus;JLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/nimbusds/jose/util/health/HealthStatus;",
            "JTC;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/util/health/HealthReport;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/util/health/HealthStatus;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/nimbusds/jose/util/health/HealthStatus;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/nimbusds/jose/util/health/HealthStatus;",
            "Ljava/lang/Exception;",
            "JTC;)V"
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
    iput-object p1, p0, Lcom/nimbusds/jose/util/health/HealthReport;->source:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/nimbusds/jose/util/health/HealthReport;->status:Lcom/nimbusds/jose/util/health/HealthStatus;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/nimbusds/jose/util/health/HealthStatus;->HEALTHY:Lcom/nimbusds/jose/util/health/HealthStatus;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "Exception not accepted for a healthy status"

    .line 26
    .line 27
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/nimbusds/jose/util/health/HealthReport;->exception:Ljava/lang/Exception;

    .line 33
    .line 34
    iput-wide p4, p0, Lcom/nimbusds/jose/util/health/HealthReport;->timestamp:J

    .line 35
    .line 36
    iput-object p6, p0, Lcom/nimbusds/jose/util/health/HealthReport;->context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getContext()Lcom/nimbusds/jose/proc/SecurityContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->exception:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHealthStatus()Lcom/nimbusds/jose/util/health/HealthStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->status:Lcom/nimbusds/jose/util/health/HealthStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->source:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HealthReport{source="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/nimbusds/jose/util/health/HealthReport;->source:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", status="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/nimbusds/jose/util/health/HealthReport;->status:Lcom/nimbusds/jose/util/health/HealthStatus;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", exception="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/nimbusds/jose/util/health/HealthReport;->exception:Ljava/lang/Exception;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", timestamp="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/nimbusds/jose/util/health/HealthReport;->timestamp:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", context="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/nimbusds/jose/util/health/HealthReport;->context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x7d

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
