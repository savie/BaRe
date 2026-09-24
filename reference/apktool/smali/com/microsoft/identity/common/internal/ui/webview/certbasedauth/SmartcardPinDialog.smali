.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

.field private mPinLayout:Landroid/view/View;

.field private final mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 9
    .line 10
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "positiveButtonListener is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mPinLayout:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mPinLayout:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final onUnexpectedUnplug()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final show()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
