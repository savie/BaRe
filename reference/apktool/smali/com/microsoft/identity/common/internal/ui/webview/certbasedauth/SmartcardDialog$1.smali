.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;
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
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 10
    .line 11
    check-cast v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog;

    .line 12
    .line 13
    iget-object v3, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 14
    .line 15
    const v4, 0x7f1404a7

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    const v3, 0x7f130533

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog$1$1;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog$1$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;)V

    .line 31
    .line 32
    .line 33
    const p0, 0x7f130532

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    .line 46
    .line 47
    iput-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    new-instance v0, Lva;

    .line 51
    .line 52
    check-cast v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;

    .line 53
    .line 54
    iget-object v3, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 55
    .line 56
    const v4, 0x7f1404af

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v3, v4}, Lva;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    const v3, 0x7f130526

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lva;->l(I)Lva;

    .line 66
    .line 67
    .line 68
    const v3, 0x7f130524

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lva;->d(I)Lva;

    .line 72
    .line 73
    .line 74
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$1;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;)V

    .line 77
    .line 78
    .line 79
    const v4, 0x7f130525

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4, v3}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lva;->c()Lwa;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$2;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog$1$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    iget-object p0, v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
