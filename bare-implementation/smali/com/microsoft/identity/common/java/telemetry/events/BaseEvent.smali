.class public Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;
.super Lcom/microsoft/identity/common/java/telemetry/Properties;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/Properties;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Microsoft.MSAL.occur_time"

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "correlation_id"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string v1, "Microsoft.MSAL.correlation_id"

    .line 42
    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public final names(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Microsoft.MSAL.event_name"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
