.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;
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
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lva;

    .line 10
    .line 11
    check-cast v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 14
    .line 15
    const v4, 0x7f14014e

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v3, v4}, Lva;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->access$300(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v3}, Lva;->l(I)Lva;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->access$200(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0, v3}, Lva;->d(I)Lva;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    new-instance v4, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$1;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v4, p0, v5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$1;-><init>(Ljava/lang/Runnable;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lva;->c()Lwa;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;

    .line 56
    .line 57
    invoke-direct {v2, p0, v5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;-><init>(Ljava/lang/Runnable;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    check-cast v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 67
    .line 68
    iget-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const v4, 0x1020002

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Landroid/view/ViewGroup;

    .line 82
    .line 83
    const v5, 0x7f0d0138

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v5, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$002(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lva;

    .line 94
    .line 95
    const v4, 0x7f140144

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v0, v4}, Lva;-><init>(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    const v0, 0x7f13052d

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v0}, Lva;->l(I)Lva;

    .line 105
    .line 106
    .line 107
    const v0, 0x7f13052a

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v0}, Lva;->d(I)Lva;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v4, v3, Lva;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v4, Lra;

    .line 120
    .line 121
    iput-object v0, v4, Lra;->s:Landroid/view/View;

    .line 122
    .line 123
    const v0, 0x7f13052c

    .line 124
    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    invoke-virtual {v3, v0, v4}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$1;

    .line 131
    .line 132
    invoke-direct {v0, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$1;-><init>(Ljava/lang/Runnable;I)V

    .line 133
    .line 134
    .line 135
    const v4, 0x7f13052b

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4, v0}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lva;->c()Lwa;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;

    .line 149
    .line 150
    invoke-direct {v3, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1$2;-><init>(Ljava/lang/Runnable;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
