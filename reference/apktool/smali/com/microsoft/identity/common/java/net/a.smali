.class public abstract synthetic Lcom/microsoft/identity/common/java/net/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/HttpEndEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "http_end_event"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "Microsoft.MSAL.http_event"

    .line 12
    .line 13
    const-string v2, "Microsoft.MSAL.event_type"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-string v1, "Microsoft.MSAL.response_code"

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
