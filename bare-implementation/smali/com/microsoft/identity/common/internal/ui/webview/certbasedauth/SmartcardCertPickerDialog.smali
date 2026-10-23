.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

.field private final mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 7
    .line 8
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p4, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->mPositiveButtonListener:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final onUnexpectedUnplug()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

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
