.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

.field final synthetic val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Throwable;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onTaskCompleted(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/commands/CommandCallback;->onCancel()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
