.class final Lcom/microsoft/identity/client/PublicClientApplication$17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/client/SilentAuthenticationCallback;


# instance fields
.field final synthetic val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onSuccess(Lcom/microsoft/identity/client/AuthenticationResult;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
