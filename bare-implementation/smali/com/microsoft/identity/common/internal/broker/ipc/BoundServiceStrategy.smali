.class public final Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;
.super Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;"
    }
.end annotation


# instance fields
.field private final mClient:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;->mClient:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final communicateToBrokerAfterValidation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;->mClient:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    .line 2
    .line 3
    const-string v0, "Error occurred while awaiting (get) return of bound Service with "

    .line 4
    .line 5
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Broker operation: "

    .line 12
    .line 13
    const-string v3, " brokerPackage: "

    .line 14
    .line 15
    invoke-static {v2, v1, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const-string v2, "BoundServiceStrategy:communicateToBroker"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->performOperation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->disconnect()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_2
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :catch_3
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :catch_4
    move-exception p1

    .line 54
    :goto_0
    :try_start_1
    const-string v1, "MicrosoftAuthClient"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v1, v2, v3, v0, p1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->disconnect()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isSupportedByTargetedBroker(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;->mClient:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->isBoundServiceSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
