.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lva;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 6
    .line 7
    const v3, 0x7f1404af

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3}, Lva;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const v2, 0x7f130523

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lva;->l(I)Lva;

    .line 17
    .line 18
    .line 19
    const v2, 0x7f130521

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lva;->d(I)Lva;

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;-><init>(Ljava/lang/Runnable;I)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f130522

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v2}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lva;->c()Lwa;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    .line 44
    .line 45
    iput-object p0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 46
    .line 47
    return-void
.end method
