.class final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 5

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "BrokerMsalController:acquireTokenInternal"

    .line 4
    .line 5
    const-string v1, "Received result from Broker..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "202"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "com.microsoft.identity.client.request.code"

    .line 26
    .line 27
    invoke-virtual {p1, v3, v2}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "Microsoft.MSAL.request_code"

    .line 38
    .line 39
    invoke-virtual {v0, v4, v3}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "com.microsoft.identity.client.result.code"

    .line 43
    .line 44
    invoke-virtual {p1, v3, v2}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "Microsoft.MSAL.result_code"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$000(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v0, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->keySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 116
    .line 117
    const-string p1, "return_broker_interactive_acquire_token_result"

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->unregisterCallback(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
