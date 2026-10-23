.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field final synthetic this$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;->this$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;->this$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;->onCancel()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->onCancel()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
