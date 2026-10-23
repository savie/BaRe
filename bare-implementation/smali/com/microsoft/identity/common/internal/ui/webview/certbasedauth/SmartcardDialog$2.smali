.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
