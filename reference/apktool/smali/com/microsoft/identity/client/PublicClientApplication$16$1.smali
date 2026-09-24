.class final Lcom/microsoft/identity/client/PublicClientApplication$16$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

.field final synthetic val$callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/CommandCallback;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$16$1;->val$callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$16$1;->val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$16$1;->val$callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$16$1;->val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
