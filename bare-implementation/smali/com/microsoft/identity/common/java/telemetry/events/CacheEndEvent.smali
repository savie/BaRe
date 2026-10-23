.class public final Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;
.super Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "cache_end_event"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Microsoft.MSAL.cache_event"

    .line 10
    .line 11
    const-string v1, "Microsoft.MSAL.event_type"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
