.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f0a0391

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/EditText;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V

    .line 30
    .line 31
    .line 32
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 33
    .line 34
    const-string p0, "SmartcardPinDialog:show"

    .line 35
    .line 36
    const-string v0, "Error while retrieving dialog EditText component."

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$1;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 52
    .line 53
    check-cast v0, Lwa;

    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    invoke-virtual {v0, v2}, Lwa;->f(I)Landroid/widget/Button;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$2;

    .line 61
    .line 62
    invoke-direct {v2, p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;Landroid/widget/EditText;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
