.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 4
    .line 5
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;->onDismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
