.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvz0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lwg8;

    .line 2
    .line 3
    const-string v0, "YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery"

    .line 4
    .line 5
    const-string v1, "A YubiKey device was connected via USB."

    .line 6
    .line 7
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->access$000()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->access$102(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lwg8;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;->onCreateConnection()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;)Lwg8;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p1, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog$1;->run()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iput-object v1, p1, Lwg8;->k:Ljava/lang/Runnable;

    .line 59
    .line 60
    :goto_1
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method
