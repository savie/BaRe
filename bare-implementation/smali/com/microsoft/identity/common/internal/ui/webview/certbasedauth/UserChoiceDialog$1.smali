.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;->onCancel()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
