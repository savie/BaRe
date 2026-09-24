.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field final synthetic this$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;->this$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;->this$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 11
    .line 12
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;->onDismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 25
    .line 26
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
