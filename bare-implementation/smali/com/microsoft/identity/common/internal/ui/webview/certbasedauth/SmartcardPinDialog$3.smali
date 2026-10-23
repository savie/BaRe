.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcLoadingDialog;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0d012a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lva;

    .line 25
    .line 26
    const v3, 0x7f1404af

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v0, v3}, Lva;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f130520

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lva;->l(I)Lva;

    .line 36
    .line 37
    .line 38
    const v0, 0x7f13051f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lva;->d(I)Lva;

    .line 42
    .line 43
    .line 44
    iget-object v0, v2, Lva;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lra;

    .line 47
    .line 48
    iput-object v1, v0, Lra;->s:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v2}, Lva;->c()Lwa;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 62
    .line 63
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v1, 0x7f0a0391

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/EditText;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const v2, 0x7f0600b6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const v0, 0x7f0a0207

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroid/widget/TextView;

    .line 115
    .line 116
    const v0, 0x7f130529

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
