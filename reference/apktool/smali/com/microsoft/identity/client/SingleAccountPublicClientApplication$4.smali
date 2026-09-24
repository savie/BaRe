.class final Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Ljava/lang/Boolean;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field final synthetic val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onError(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    .line 8
    .line 9
    check-cast p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 12
    .line 13
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onTaskCompleted(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$200(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    .line 10
    .line 11
    check-cast p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$5;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 14
    .line 15
    new-instance p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 16
    .line 17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
