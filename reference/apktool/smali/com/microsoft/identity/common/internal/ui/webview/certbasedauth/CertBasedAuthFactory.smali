.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mActivity:Landroidx/fragment/app/u;

.field private final mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

.field private final mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

.field private final mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

.field private wasCertBasedAuthInitiated:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "usb"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 20
    .line 21
    const-string v0, "SmartcardCertBasedAuthManagerFactory:createUsbSmartcardCertBasedAuthManager"

    .line 22
    .line 23
    const-string v1, "Certificate Based Authentication via YubiKey not enabled due to device not supporting the USB_SERVICE system service."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lrm5; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    move-object v2, v1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 49
    .line 50
    const-string v0, "SmartcardCertBasedAuthManagerFactory:createNfcSmartcardCertBasedAuthManager"

    .line 51
    .line 52
    const-string v1, "Device does not support NFC capabilities."

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    iput-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 58
    .line 59
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;-><init>(Landroidx/fragment/app/u;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->wasCertBasedAuthInitiated:Z

    .line 70
    .line 71
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 72
    .line 73
    if-eqz p0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->startDiscovery(Landroid/app/Activity;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object p0
.end method

.method public static access$200(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 16
    .line 17
    invoke-direct {p1, v1, v2, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;->onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;->startDiscovery(Landroid/app/Activity;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardNfcReminderDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->showSmartcardPromptDialogAndSetConnectionCallback(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static access$300(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 4
    .line 5
    .line 6
    const-string v0, "User canceled smartcard CBA flow."

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setResultFailure(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iput-object v0, p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 17
    .line 18
    :cond_0
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iput-object v0, p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 23
    .line 24
    :cond_1
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;->onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->showSmartcardPromptDialogAndSetConnectionCallback(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private showSmartcardPromptDialogAndSetConnectionCallback(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showSmartcardPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$5;

    .line 16
    .line 17
    invoke-direct {v1, p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$5;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;

    .line 28
    .line 29
    invoke-direct {v1, p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$6;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final clearAllSmartcardConnectionAndDisconnectionCallbacks()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 7
    .line 8
    iput-object v0, v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->mDisconnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager;->mConnectionCallback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IConnectionCallback;

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final createCertBasedAuthChallengeHandler(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;-><init>(Lrj7;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;->NON_APPLICABLE:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setUserChoice(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "N/A"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setCertBasedAuthChallengeHandler(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setPublicKeyAlgoType(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->wasCertBasedAuthInitiated:Z

    .line 46
    .line 47
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mDialogHolder:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->isDeviceConnected()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    sget-object p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;->SMARTCARD_CHOICE:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setUserChoice(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;

    .line 65
    .line 66
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;->onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;

    .line 74
    .line 75
    invoke-direct {v0, p1, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;

    .line 79
    .line 80
    invoke-direct {v3, p1, p0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showUserChoiceDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mUsbSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mActivity:Landroidx/fragment/app/u;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager;->stopDiscovery(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->mNfcSmartcardCertBasedAuthManager:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKeyPivProviderManager;->removePivProvider()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->wasCertBasedAuthInitiated:Z

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Landroid/webkit/WebView;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method
