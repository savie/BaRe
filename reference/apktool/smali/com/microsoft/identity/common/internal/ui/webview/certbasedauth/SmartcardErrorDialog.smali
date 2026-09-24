.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mDismissButtonStringResourceId:I

.field private final mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

.field private final mMessageStringResourceId:I

.field private final mTitleStringResourceId:I


# direct methods
.method public constructor <init>(IIILcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mTitleStringResourceId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mMessageStringResourceId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mDismissButtonStringResourceId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 11
    .line 12
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mDismissButtonStringResourceId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mMessageStringResourceId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mTitleStringResourceId:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final onUnexpectedUnplug()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;->mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;->onDismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
