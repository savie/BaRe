.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery"

    .line 7
    .line 8
    const-string v1, "A YubiKey device was disconnected via USB."

    .line 9
    .line 10
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->access$000()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->access$102(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lwg8;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKeyPivProviderManager;->removePivProvider()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;->onClosedConnection()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0

    .line 51
    :pswitch_0
    new-instance v0, Lva;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;

    .line 56
    .line 57
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 58
    .line 59
    const v3, 0x7f1404af

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v2, v3}, Lva;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f130531

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lva;->l(I)Lva;

    .line 69
    .line 70
    .line 71
    const v2, 0x7f13052f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lva;->d(I)Lva;

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$1;-><init>(Ljava/lang/Runnable;I)V

    .line 81
    .line 82
    .line 83
    const v4, 0x7f130530

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v2}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lva;->c()Lwa;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$2;

    .line 97
    .line 98
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mDialog:Landroid/app/Dialog;

    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
