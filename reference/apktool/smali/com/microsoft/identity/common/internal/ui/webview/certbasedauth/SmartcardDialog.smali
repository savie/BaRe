.class public abstract Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected final mActivity:Landroidx/fragment/app/u;

.field protected mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract onUnexpectedUnplug()V
.end method

.method public show()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
