.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

.field final synthetic val$certAdapter:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->val$certAdapter:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Lva;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 6
    .line 7
    const v3, 0x7f140144

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3}, Lva;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const v2, 0x7f130514

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lva;->l(I)Lva;

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lva;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lra;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->val$certAdapter:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;

    .line 24
    .line 25
    iput-object v3, v2, Lra;->q:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, v2, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    iput v3, v2, Lra;->w:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, v2, Lra;->v:Z

    .line 35
    .line 36
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$2;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;)V

    .line 39
    .line 40
    .line 41
    const v5, 0x7f130513

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5, v2}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;

    .line 48
    .line 49
    invoke-direct {v2, p0, v4}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;-><init>(Ljava/lang/Runnable;I)V

    .line 50
    .line 51
    .line 52
    const v4, 0x7f130512

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4, v2}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lva;->c()Lwa;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v2, v0, Lwa;->k:Lua;

    .line 63
    .line 64
    iget-object v2, v2, Lua;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 65
    .line 66
    new-instance v4, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;

    .line 67
    .line 68
    invoke-direct {v4, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$4;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 86
    .line 87
    return-void
.end method
