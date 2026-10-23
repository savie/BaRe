.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3;
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
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lvz0;

    .line 2
    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$200()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;)Lum5;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1;-><init>(Lvz0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lum5;->b(Lvz0;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "YubiKitNfcSmartcardCertBasedAuthManagergetPivProviderCallback:"

    .line 35
    .line 36
    const-string v1, "No NFC device is currently connected."

    .line 37
    .line 38
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {p0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/Exception;

    .line 45
    .line 46
    const-string v1, "No NFC device is currently connected."

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcn6;->a(Ljava/lang/Exception;)Lcn6;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p1, p0}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
