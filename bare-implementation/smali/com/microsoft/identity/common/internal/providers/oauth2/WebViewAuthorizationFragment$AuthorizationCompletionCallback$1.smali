.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;

.field final synthetic val$response:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;->this$1:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;->val$response:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResultReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;->this$1:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback$1;->val$response:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
