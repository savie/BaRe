.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

.field final synthetic val$dismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;->val$dismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;->val$dismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;->onDismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
