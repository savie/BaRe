.class final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;
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
.field private negotiatedBrokerProtocolVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

.field final synthetic val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$400(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->verifyRemoveAccountResultFromBundle(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

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
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const-string v4, "account.clientid.key"

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "environment"

    .line 47
    .line 48
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v4}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "account.home.account.id"

    .line 60
    .line 61
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const-string v4, "common.broker.protocol.version.name"

    .line 65
    .line 66
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    const-string v3, "required.broker.protocol.version.name"

    .line 80
    .line 81
    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 85
    .line 86
    invoke-direct {v0, p0, v2, v1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ":removeAccount"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTelemetryApiId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "207"

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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->hello(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public final bridge synthetic putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method
