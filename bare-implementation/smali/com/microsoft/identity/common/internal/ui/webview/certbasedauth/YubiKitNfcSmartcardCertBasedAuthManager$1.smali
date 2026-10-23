.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$1;
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lum5;

    .line 2
    .line 3
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 4
    .line 5
    const-string v0, "YubiKitNfcSmartcardCertBasedAuthManager:startDiscovery"

    .line 6
    .line 7
    const-string v1, "A YubiKey device was connected via NFC."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$002(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;Lum5;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;)Lum5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lum5;->c:Landroid/nfc/Tag;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->isDeviceChanged:Z

    .line 47
    .line 48
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->access$102(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;[B)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;->onCreateConnection()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
