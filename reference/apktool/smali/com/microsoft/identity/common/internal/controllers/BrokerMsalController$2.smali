.class final Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private negotiatedBrokerProtocolVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

.field final synthetic val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "intent"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    const-string v1, "broker.package.name"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "broker.activity.name"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Landroid/content/Intent;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string p1, "common.broker.protocol.version.name"

    .line 65
    .line 66
    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mRequestAdapter:Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 77
    .line 78
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->getRequestBundleForAcquireTokenInteractive(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;Ljava/lang/String;)Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v4, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :cond_1
    const-string p0, "invalid_broker_bundle"

    .line 87
    .line 88
    const-string p1, "Content of Authorization Intent\'s package and class name should not be null."

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getExceptionForEmptyResultBundle()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    throw p0
.end method

.method public final getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

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
    sget-object v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

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
    const-string p0, ":getBrokerAuthorizationIntent"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTelemetryApiId()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->this$0:Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->val$parameters:Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->access$100(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->hello(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;->negotiatedBrokerProtocolVersion:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final bridge synthetic putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/content/Intent;

    .line 2
    .line 3
    return-void
.end method
