.class public Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private isBrokerRequest:Z

.field private isWebViewWebcpEnabledInBrokerlessCase:Z

.field private mAADWebViewClient:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

.field private mAuthIntent:Landroid/content/Intent;

.field private mAuthorizationRequestUrl:Ljava/lang/String;

.field private final mCameraPermissionRequestHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

.field private mFidoLauncher:Lcr3;

.field private mFileChooserLauncher:Lcr3;

.field private mFileUploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mPkeyAuthStatus:Z

.field private mPostPageLoadedJavascript:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRedirectUri:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBrowserProtocolCoordinator:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

.field private mUtid:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private webViewZoomControlsEnabled:Z

.field private webViewZoomEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPkeyAuthStatus:Z

    .line 6
    .line 7
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mCameraPermissionRequestHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mSwitchBrowserProtocolCoordinator:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isBrokerRequest:Z

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPostPageLoadedJavascript:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mCameraPermissionRequestHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAADWebViewClient:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPkeyAuthStatus:Z

    .line 3
    .line 4
    return-void
.end method

.method private getSwitchBrowserCoordinator()Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mSwitchBrowserProtocolCoordinator:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2, v0}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;-><init>(Landroidx/fragment/app/u;Lrj7;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mSwitchBrowserProtocolCoordinator:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 35
    .line 36
    :cond_1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mSwitchBrowserProtocolCoordinator:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 37
    .line 38
    return-object p0
.end method

.method public static i(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;Lg9;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 2
    .line 3
    const-string v1, "WebViewAuthorizationFragment:onCreate"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string p0, "File upload callback is null, ignoring result."

    .line 10
    .line 11
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p1, Lg9;->a:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v0, v2, :cond_5

    .line 20
    .line 21
    iget-object p1, p1, Lg9;->b:Landroid/content/Intent;

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    new-array v4, v0, [Landroid/net/Uri;

    .line 41
    .line 42
    move v5, v2

    .line 43
    :goto_0
    if-ge v5, v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    aput-object v6, v4, v5

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    new-array v4, v0, [Landroid/net/Uri;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    aput-object p1, v4, v2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v4, v3

    .line 79
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "File chooser returned "

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    array-length v2, v4

    .line 89
    :cond_4
    const-string v0, " file(s)."

    .line 90
    .line 91
    invoke-static {p1, v2, v0}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 96
    .line 97
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    const-string p1, "File chooser cancelled or returned no data."

    .line 104
    .line 105
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v4, v3

    .line 109
    :goto_2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 110
    .line 111
    invoke-interface {p1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iput-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 115
    .line 116
    return-void
.end method

.method private injectPasskeyProtocolHeader(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthorizationRequestUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "webauthn"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isBrokerRequest:Z

    .line 21
    .line 22
    const-string v0, "1.0/passkey"

    .line 23
    .line 24
    const-string v1, "x-ms-PassKeyAuth"

    .line 25
    .line 26
    const-string v2, "WebViewAuthorizationFragment:injectPasskeyProtocolHeader"

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_PASSKEY_REGISTRATION:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 35
    .line 36
    invoke-interface {p0, v3}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const-string v0, "1.1/passkey"

    .line 43
    .line 44
    :cond_1
    const-string p0, "Injecting Passkey protocol header for broker request: "

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 51
    .line 52
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "Passkey protocol header already exists in request headers  "

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 86
    .line 87
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 92
    .line 93
    const-string p0, "Injecting Passkey protocol header for auth only."

    .line 94
    .line 95
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public extractState$1(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/Intent;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "pkeyAuthStatus"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPkeyAuthStatus:Z

    .line 22
    .line 23
    const-string v0, "com.microsoft.identity.request.url"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthorizationRequestUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->isRunningOnAuthService(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isBrokerRequest:Z

    .line 42
    .line 43
    :cond_0
    const-string v0, "com.microsoft.identity.request.redirect.uri"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRedirectUri:Ljava/lang/String;

    .line 50
    .line 51
    :try_start_0
    const-string v0, "com.microsoft.identity.request.headers"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/HashMap;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-boolean v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isBrokerRequest:Z

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    new-instance v2, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "x-client-SKU"

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "x-client-Ver"

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->build()Lcom/microsoft/identity/common/java/util/ClientExtraSku;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "x-client-xtra-sku"

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/util/ClientExtraSku;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->injectPasskeyProtocolHeader(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    :goto_1
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRequestHeaders:Ljava/util/HashMap;

    .line 117
    .line 118
    const-string v0, "com.microsoft.identity.post.page.loaded.url"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPostPageLoadedJavascript:Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "com.microsoft.identity.web.view.zoom.enabled"

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomEnabled:Z

    .line 134
    .line 135
    const-string v0, "com.microsoft.identity.web.view.zoom.controls.enabled"

    .line 136
    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomControlsEnabled:Z

    .line 142
    .line 143
    const-string v0, "com.microsoft.identity.web.view.web.cp.enabled"

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isWebViewWebcpEnabledInBrokerlessCase:Z

    .line 150
    .line 151
    const-string v0, "utid"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mUtid:Ljava/lang/String;

    .line 158
    .line 159
    return-void
.end method

.method public final getFidoLauncher()Lcr3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFidoLauncher:Lcr3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleBackButtonPressed()V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "WebViewAuthorizationFragment:handleBackButtonPressed"

    .line 4
    .line 5
    const-string v1, "Back button is pressed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->cancelAuthorization(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final handleFileUploadRequest(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lrj7;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Lrj7;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_FILE_UPLOAD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "WebViewAuthorizationFragment:handleFileUploadRequest"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 17
    .line 18
    const-string p0, "ENABLE_WEBVIEW_FILE_UPLOAD flight is disabled."

    .line 19
    .line 20
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    const-string v0, "WebViewFileUpload"

    .line 25
    .line 26
    invoke-static {v0, p3}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {p3}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 32
    .line 33
    .line 34
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileChooserLauncher:Lcr3;

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    const-string p2, "File chooser launcher is not initialized. Cannot handle file upload request."

    .line 52
    .line 53
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 54
    .line 55
    invoke-static {v2, p2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_2
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "Launching file chooser for WebView file upload."

    .line 74
    .line 75
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 76
    .line 77
    invoke-static {v2, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileChooserLauncher:Lcr3;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcr3;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    :try_start_4
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    .line 88
    .line 89
    return p1

    .line 90
    :goto_1
    :try_start_5
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p2

    .line 95
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    throw p0

    .line 101
    :goto_3
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    const-string p2, "Failed to launch file chooser."

    .line 104
    .line 105
    invoke-static {v2, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 116
    .line 117
    :cond_3
    return v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 5
    .line 6
    const-string p1, "WebViewAuthorizationFragment:onCreate"

    .line 7
    .line 8
    const-string v0, "WebViewAuthorizationFragment onCreate"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->setDataDirectorySuffix(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_FILE_UPLOAD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    new-instance p1, Lm9;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, v0}, Lm9;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lnb;

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    invoke-direct {v0, p0, v1}, Lnb;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcr3;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileChooserLauncher:Lcr3;

    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v0, 0x22

    .line 73
    .line 74
    if-ge p1, v0, :cond_2

    .line 75
    .line 76
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;

    .line 77
    .line 78
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ll0;

    .line 82
    .line 83
    const/16 v1, 0xd

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ll0;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcr3;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFidoLauncher:Lcr3;

    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    const p3, 0x7f0d0059

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0173

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/ProgressBar;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 p2, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 29
    .line 30
    new-instance v3, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$AuthorizationCompletionCallback;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$1;

    .line 36
    .line 37
    invoke-direct {v4, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRedirectUri:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->getSwitchBrowserCoordinator()Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->getSwitchBrowserRequestHandler()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mUtid:Ljava/lang/String;

    .line 51
    .line 52
    iget-boolean v8, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isWebViewWebcpEnabledInBrokerlessCase:Z

    .line 53
    .line 54
    new-instance v9, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;

    .line 55
    .line 56
    invoke-direct {v9, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$2;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v9}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;-><init>(Landroidx/fragment/app/u;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;Ljava/lang/String;ZLcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAADWebViewClient:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 63
    .line 64
    const p3, 0x7f0a0172

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Landroid/webkit/WebView;

    .line 72
    .line 73
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " PKeyAuth/1.0"

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    sget-object v4, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_SECURITY_SETTINGS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 112
    .line 113
    invoke-interface {v3, v4}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 135
    .line 136
    const/16 v3, 0x82

    .line 137
    .line 138
    invoke-virtual {p3, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 139
    .line 140
    .line 141
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 142
    .line 143
    new-instance v3, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$3;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 158
    .line 159
    .line 160
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 161
    .line 162
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 167
    .line 168
    .line 169
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 170
    .line 171
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 176
    .line 177
    .line 178
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    iget-boolean v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomControlsEnabled:Z

    .line 185
    .line 186
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 187
    .line 188
    .line 189
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 190
    .line 191
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    iget-boolean v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomEnabled:Z

    .line 196
    .line 197
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 198
    .line 199
    .line 200
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 201
    .line 202
    const/4 v2, 0x4

    .line 203
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 207
    .line 208
    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    .line 210
    .line 211
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 212
    .line 213
    new-instance v2, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;

    .line 214
    .line 215
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 219
    .line 220
    .line 221
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 222
    .line 223
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRequestHeaders:Ljava/util/HashMap;

    .line 224
    .line 225
    const-string v3, "x-ms-PassKeyAuth"

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Ljava/lang/String;

    .line 232
    .line 233
    const-string v4, "1.1/passkey"

    .line 234
    .line 235
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    const-string v4, "WebViewAuthorizationFragment:setupPasskeyWebListener"

    .line 240
    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    const/16 v6, 0x1c

    .line 253
    .line 254
    const-string v7, "PasskeyWebListener:hook"

    .line 255
    .line 256
    if-ge v5, v6, :cond_2

    .line 257
    .line 258
    const-string p2, "Passkey functionality requires Android 9 (Pie) or higher. Current version: "

    .line 259
    .line 260
    invoke-static {v5, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    sget p3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 265
    .line 266
    invoke-static {v7, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_2
    const-string v5, "WEB_MESSAGE_LISTENER"

    .line 272
    .line 273
    invoke-static {v5}, Lcy0;->x(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_8

    .line 278
    .line 279
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 280
    .line 281
    const-string v3, "WEB_MESSAGE_LISTENER is supported on this WebView."

    .line 282
    .line 283
    invoke-static {v7, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->getAllowedOriginRules()Ljava/util/LinkedHashSet;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;

    .line 291
    .line 292
    sget-object v5, Lcn2;->a:Lrf2;

    .line 293
    .line 294
    sget-object v5, Li55;->a:Lr24;

    .line 295
    .line 296
    invoke-static {v5}, Ll73;->c(Lox1;)Ldv1;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    new-instance v6, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;

    .line 301
    .line 302
    invoke-direct {v6, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;-><init>(Landroidx/fragment/app/u;)V

    .line 303
    .line 304
    .line 305
    instance-of v8, v2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 306
    .line 307
    if-eqz v8, :cond_3

    .line 308
    .line 309
    check-cast v2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_3
    move-object v2, p2

    .line 313
    :goto_0
    if-eqz v2, :cond_4

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getOtelContext()Lt40;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    goto :goto_1

    .line 320
    :cond_4
    move-object v2, p2

    .line 321
    :goto_1
    invoke-direct {v4, v5, v6, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;-><init>(Ldv1;Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Lt40;)V

    .line 322
    .line 323
    .line 324
    sget-object v2, Ler8;->a:Ljava/util/WeakHashMap;

    .line 325
    .line 326
    sget-object v2, Ljr8;->c:Lve;

    .line 327
    .line 328
    invoke-virtual {v2}, Lbf;->b()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_7

    .line 333
    .line 334
    sget-object p2, Ljr8;->d:Lve;

    .line 335
    .line 336
    invoke-virtual {p2}, Lbf;->b()Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-eqz p2, :cond_5

    .line 341
    .line 342
    sget-object p2, Ler8;->a:Ljava/util/WeakHashMap;

    .line 343
    .line 344
    invoke-virtual {p2, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Llr8;

    .line 349
    .line 350
    if-nez v2, :cond_6

    .line 351
    .line 352
    new-instance v2, Llr8;

    .line 353
    .line 354
    sget-object v5, Lkr8;->a:Lmr8;

    .line 355
    .line 356
    invoke-interface {v5, p3}, Lmr8;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-direct {v2, v5}, Llr8;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, p3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_5
    new-instance v2, Llr8;

    .line 368
    .line 369
    sget-object p2, Lkr8;->a:Lmr8;

    .line 370
    .line 371
    invoke-interface {p2, p3}, Lmr8;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-direct {v2, p2}, Llr8;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    .line 376
    .line 377
    .line 378
    :cond_6
    :goto_2
    new-array p2, v0, [Ljava/lang/String;

    .line 379
    .line 380
    invoke-interface {v3, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    check-cast p2, [Ljava/lang/String;

    .line 385
    .line 386
    iget-object p3, v2, Llr8;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 387
    .line 388
    new-instance v2, Lzq8;

    .line 389
    .line 390
    invoke-direct {v2, v4, v0}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lsu0;

    .line 394
    .line 395
    invoke-direct {v0, v2}, Lsu0;-><init>(Lzq8;)V

    .line 396
    .line 397
    .line 398
    const-string v2, "__webauthn_interface__"

    .line 399
    .line 400
    invoke-interface {p3, v2, p2, v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 401
    .line 402
    .line 403
    const-string p2, "PasskeyWebListener successfully hooked into WebView."

    .line 404
    .line 405
    invoke-static {v7, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->addPasskeyRegistrationJsScript()V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_7
    const-string p0, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 413
    .line 414
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return-object p2

    .line 418
    :cond_8
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 419
    .line 420
    const-string p2, "WEB_MESSAGE_LISTENER not supported on this device/WebView."

    .line 421
    .line 422
    invoke-static {v7, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_3
    const-string p2, "PasskeyWebListener hook failed, Downgrading to auth only."

    .line 426
    .line 427
    invoke-static {v4, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRequestHeaders:Ljava/util/HashMap;

    .line 431
    .line 432
    const-string p3, "1.0/passkey"

    .line 433
    .line 434
    invoke-virtual {p2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_9
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 439
    .line 440
    const-string p2, "Passkey protocol header not found or not for both auth and reg. Not hooking the PasskeyWebListener."

    .line 441
    .line 442
    invoke-static {v4, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :goto_4
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAADWebViewClient:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 446
    .line 447
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 448
    .line 449
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthorizationRequestUrl:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {p2, p3, v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->initializeAuthUxJavaScriptApi(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthorizationRequestUrl:Ljava/lang/String;

    .line 455
    .line 456
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRequestHeaders:Ljava/util/HashMap;

    .line 457
    .line 458
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mWebView:Landroid/webkit/WebView;

    .line 459
    .line 460
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$5;

    .line 461
    .line 462
    invoke-direct {v1, p0, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$5;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 466
    .line 467
    .line 468
    return-object p1
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAADWebViewClient:Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onDestroy()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 14
    .line 15
    const-string v0, "WebViewAuthorizationFragment:onDestroy"

    .line 16
    .line 17
    const-string v2, "Fragment destroyed, but smartcard usb discovery was unable to be stopped."

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x22

    .line 37
    .line 38
    if-ge v0, v2, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFidoLauncher:Lcr3;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcr3;->b()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileUploadCallback:Landroid/webkit/ValueCallback;

    .line 55
    .line 56
    :cond_2
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mFileChooserLauncher:Lcr3;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lcr3;->b()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "WebViewAuthorizationFragment:onResume"

    .line 5
    .line 6
    const-string v1, "WebViewAuthorizationFragment onResume"

    .line 7
    .line 8
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->getSwitchBrowserCoordinator()Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->isExpectingSwitchBrowserResume()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-class p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    const-string v0, "WebViewAuthorizationFragment:resumeSwitchBrowser"

    .line 29
    .line 30
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 31
    .line 32
    const-string v2, "null_object"

    .line 33
    .line 34
    const-string v3, "No switch browser bundle found to resume the flow."

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v1
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    const-string v2, "Error processing switch browser resume"

    .line 43
    .line 44
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "pkeyAuthStatus"

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPkeyAuthStatus:Z

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v0, "com.microsoft.identity.request.redirect.uri"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRedirectUri:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "com.microsoft.identity.request.url"

    .line 23
    .line 24
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mAuthorizationRequestUrl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "com.microsoft.identity.request.headers"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mRequestHeaders:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "com.microsoft.identity.post.page.loaded.url"

    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mPostPageLoadedJavascript:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "com.microsoft.identity.web.view.zoom.controls.enabled"

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomControlsEnabled:Z

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "com.microsoft.identity.web.view.zoom.enabled"

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->webViewZoomEnabled:Z

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const-string v0, "com.microsoft.identity.web.view.web.cp.enabled"

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->isWebViewWebcpEnabledInBrokerlessCase:Z

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "utid"

    .line 65
    .line 66
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->mUtid:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
