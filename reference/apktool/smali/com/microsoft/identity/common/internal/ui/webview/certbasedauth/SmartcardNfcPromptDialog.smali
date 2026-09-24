.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

    .line 5
    .line 6
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;->mCancelCbaCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;

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
