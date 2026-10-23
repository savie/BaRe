.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;
.super Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final sDeviceLock:Ljava/lang/Object;


# instance fields
.field protected mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

.field private mUsbDevice:Lwg8;

.field protected final mUsbDeviceInitiallyPluggedIn:Z

.field private final mUsbYubiKeyManager:Lzg8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->sDeviceLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzg8;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lzg8;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbYubiKeyManager:Lzg8;

    .line 14
    .line 15
    const-string v0, "usb"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v1, 0x1050

    .line 52
    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    const-string p1, "YubiKitUsbSmartcardCertBasedAuthManager"

    .line 58
    .line 59
    const-string v0, "A YubiKey device is plugged-in upon manager start-up."

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDeviceInitiallyPluggedIn:Z

    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->sDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;)Lwg8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDevice:Lwg8;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lwg8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDevice:Lwg8;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final initBeforeProceedingWithRequest(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKeyPivProviderManager;->addPivProvider(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;Lvz0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isDeviceConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->sDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDevice:Lwg8;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final requestDeviceSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V
    .locals 3

    .line 1
    const-string v0, "YubiKitUsbSmartcardCertBasedAuthManagerrequestDeviceSession:"

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->sDeviceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDevice:Lwg8;

    .line 13
    .line 14
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$2;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lwg8;->a(Lvz0;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "No USB device is currently connected."

    .line 27
    .line 28
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, p0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;->onException(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final startDiscovery(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string p1, "YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery"

    .line 4
    .line 5
    const-string v0, "Starting YubiKey discovery for USB"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lkg8;

    .line 11
    .line 12
    invoke-direct {p1}, Lkg8;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbYubiKeyManager:Lzg8;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lzg8;->b(Lkg8;Lvz0;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final stopDiscovery(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string p1, "YubiKitUsbSmartcardCertBasedAuthManager:stopDiscovery"

    .line 2
    .line 3
    const-string v0, "Stopping YubiKey discovery for USB"

    .line 4
    .line 5
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->sDeviceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbDevice:Lwg8;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mUsbYubiKeyManager:Lzg8;

    .line 17
    .line 18
    invoke-virtual {p0}, Lzg8;->a()V

    .line 19
    .line 20
    .line 21
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
