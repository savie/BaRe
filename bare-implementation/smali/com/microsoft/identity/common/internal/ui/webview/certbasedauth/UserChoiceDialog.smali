.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

.field private final mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v0, 0x7f130594

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const v0, 0x7f130596

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const-class v0, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, [Ljava/lang/String;

    .line 56
    .line 57
    new-instance p2, Lva;

    .line 58
    .line 59
    const v0, 0x7f1404af

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p3, v0}, Lva;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    const p3, 0x7f130597

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Lva;->l(I)Lva;

    .line 69
    .line 70
    .line 71
    const/4 p3, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p2, p1, v0, p3}, Lva;->k([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$2;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)V

    .line 79
    .line 80
    .line 81
    const p3, 0x7f130595

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p3, p1}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$1;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)V

    .line 90
    .line 91
    .line 92
    const p3, 0x7f130593

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3, p1}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lva;->c()Lwa;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$3;

    .line 106
    .line 107
    invoke-direct {p2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 114
    .line 115
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final onUnexpectedUnplug()V
    .locals 0

    .line 1
    return-void
.end method
