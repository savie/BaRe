.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$1;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2$1;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 8
    .line 9
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$4;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
