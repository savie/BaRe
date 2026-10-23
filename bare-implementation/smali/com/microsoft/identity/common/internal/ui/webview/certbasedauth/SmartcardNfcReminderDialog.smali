.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;->mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

    .line 5
    .line 6
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;->mDismissCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;

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
