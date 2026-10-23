.class public final Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final brokerHandlingTime:J

.field private final brokerRequestReceivedTimestamp:J

.field private final brokerResponseGenerationTimestamp:J

.field private final responseLatency:J

.field private final silentExecutorPoolSize:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerRequestReceivedTimestamp:J

    .line 5
    .line 6
    iput-wide p4, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerResponseGenerationTimestamp:J

    .line 7
    .line 8
    iput p1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->silentExecutorPoolSize:I

    .line 9
    .line 10
    cmp-long p1, p4, p2

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "BrokerPerformanceMetrics"

    .line 15
    .line 16
    const-string p2, "Invalid timestamps: response before request"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 p1, 0x0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long p1, p4, p2

    .line 25
    .line 26
    :goto_0
    iput-wide p1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerHandlingTime:J

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    sub-long/2addr p1, p4

    .line 33
    iput-wide p1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->responseLatency:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BrokerPerformanceMetrics(brokerHandlingTime="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerHandlingTime:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", responseLatency="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->responseLatency:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", brokerRequestReceivedTimestamp="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerRequestReceivedTimestamp:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", brokerResponseGenerationTimestamp="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->brokerResponseGenerationTimestamp:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", silentExecutorPoolSize="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lcom/microsoft/identity/common/java/broker/BrokerPerformanceMetrics;->silentExecutorPoolSize:I

    .line 49
    .line 50
    const/16 v1, 0x29

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
