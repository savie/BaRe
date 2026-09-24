.class public final Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCacheUpdaterManager:Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;

.field private final mStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            ">;",
            "Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mStrategies:Ljava/util/List;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mCacheUpdaterManager:Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "strategies is marked non-null but is null"

    .line 12
    .line 13
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method private static emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private performStrategy(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getMethodName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "BrokerOperationExecutor"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "Executing with IIpcStrategy: "

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "MSAL_PerformIpcStrategy"

    .line 32
    .line 33
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->getType()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v2, v3, :cond_1

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq v2, v3, :cond_1

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x4

    .line 55
    if-ne v2, v3, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    throw v0

    .line 59
    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mCacheUpdaterManager:Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->updateCachedActiveBrokerFromResultBundle(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    throw p0

    .line 93
    :cond_2
    const-string p0, "strategy is marked non-null but is null"

    .line 94
    .line 95
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method


# virtual methods
.method public final execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mStrategies:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v2, "Failed to bind the service in broker app"

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 63
    .line 64
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->performStrategy(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    new-instance v5, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 75
    .line 76
    invoke-direct {v5}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->isApiCallSuccessful()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v5, v3}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/BrokerCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :cond_1
    return-object v3

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :catch_1
    move-exception v3

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 103
    .line 104
    const-string p1, "Unable to connect to the broker. Please refer to MSAL/Broker logs or suppressed exception (API 19+) for more details."

    .line 105
    .line 106
    invoke-direct {p0, v2, p1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 130
    .line 131
    const-string v2, "BrokerOperationExecutor:execute"

    .line 132
    .line 133
    invoke-static {v2, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->addSuppressedException(Lcom/microsoft/identity/common/exception/BrokerCommunicationException;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_4
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 145
    .line 146
    const-string p1, "No strategies can be used to connect to the broker."

    .line 147
    .line 148
    invoke-direct {p0, v2, p1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 152
    .line 153
    .line 154
    throw p0
.end method
