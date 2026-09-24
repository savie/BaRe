.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    check-cast p1, Lwa;

    .line 2
    .line 3
    iget-object p1, p1, Lwa;->k:Lua;

    .line 4
    .line 5
    iget-object p1, p1, Lua;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$2;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->val$certAdapter:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$3;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 32
    .line 33
    iget-object v0, p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$3;->val$request:Landroid/webkit/ClientCertRequest;

    .line 36
    .line 37
    invoke-virtual {p2, p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->getSmartcardPinDialogPositiveButtonListener(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;Landroid/webkit/ClientCertRequest;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 42
    .line 43
    invoke-direct {v1, p2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;Landroid/webkit/ClientCertRequest;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showPinDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V

    .line 57
    .line 58
    .line 59
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 60
    .line 61
    const-string p0, "SmartcardCertPickerDialog:createDialog"

    .line 62
    .line 63
    const-string p1, "Could not retrieve info for selected certificate entry."

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
