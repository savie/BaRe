.class final Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
        ">;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;->this$1:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;

    .line 5
    .line 6
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
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;->this$1:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 14
    .line 15
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTaskCompleted(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;->this$1:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$000(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;)Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 15
    .line 16
    const-string v2, "SingleAccountPublicClientApplication:getCurrentAccountAsyncInternal"

    .line 17
    .line 18
    const-string v3, "Failed to load Persisted Current Account"

    .line 19
    .line 20
    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$100(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "com.microsoft.identity.client.single_account_credential_cache.current_account"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->remove(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    :goto_0
    invoke-static {v0, p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$200(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;

    .line 38
    .line 39
    invoke-static {v0, p0, p1, v1, v2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$300(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;Ljava/util/List;Lcom/microsoft/identity/client/MultiTenantAccount;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
