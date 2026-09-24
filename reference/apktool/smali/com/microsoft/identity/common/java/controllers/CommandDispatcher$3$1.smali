.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->val$throwable:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 4
    .line 5
    sget v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->val$throwable:Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {v0, p0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
