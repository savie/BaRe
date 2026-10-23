.class final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field private negotiatedBrokerProtocolVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

.field final synthetic val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$400(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getAccountsFromResultBundle(Landroid/os/Bundle;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getExceptionForEmptyResultBundle()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0
.end method

.method public final getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$200(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mRequestAdapter:Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 17
    .line 18
    invoke-static {p0, v3}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->getRequestBundleForGetAccounts(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ":getAccounts"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTelemetryApiId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "206"

    .line 2
    .line 3
    return-object p0
.end method

.method public final performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->hello(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public final putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p2, "Microsoft.MSAL.accounts_number"

    .line 12
    .line 13
    invoke-virtual {p1, p2, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
