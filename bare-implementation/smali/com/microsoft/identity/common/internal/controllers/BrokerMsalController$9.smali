.class final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "broker_device_mode"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getExceptionForEmptyResultBundle()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    throw p0
.end method

.method public final getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$200(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    sget-object v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_DEVICE_MODE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 11
    .line 12
    invoke-direct {v0, v2, p0, v1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ":getDeviceMode"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTelemetryApiId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "204"

    .line 2
    .line 3
    return-object p0
.end method

.method public final performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p2, "Microsoft.MSAL.is_device_shared"

    .line 12
    .line 13
    invoke-virtual {p1, p2, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
