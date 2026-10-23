.class public final Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final sWebViewSslErrorCount:Lge;


# instance fields
.field private final mActivity:Landroidx/fragment/app/u;

.field private mAuthUxJavaScriptInterfaceAdded:Z

.field protected mAuthUxJavaScriptInterfaceAdded$1:Z

.field private mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

.field private final mCertBasedAuthFactory:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

.field private final mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

.field private mInWebCpFlow:Z

.field private final mIsWebViewWebCpEnabledInBrokerlessCase:Z

.field private final mPageLoadedCallback:Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;

.field private mPasskeyRegistrationScript:Ljava/lang/String;

.field private final mRedirectUrl:Ljava/lang/String;

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

.field private mRequestUrl:Ljava/lang/String;

.field private final mSpanContext:Lrj7;

.field private final mSwitchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

.field private final mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

.field private final mUtid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "web_view_ssl_error_count"

    .line 2
    .line 3
    const-string v1, "Number of SSL errors received in onReceivedSslError"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createLongCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lzh8;->d:Lge;

    .line 9
    .line 10
    sput-object v0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->sWebViewSslErrorCount:Lge;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/u;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;Ljava/lang/String;ZLcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded$1:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mActivity:Landroidx/fragment/app/u;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mPageLoadedCallback:Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded:Z

    .line 16
    .line 17
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRedirectUrl:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;-><init>(Landroidx/fragment/app/u;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthFactory:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSwitchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUtid:Ljava/lang/String;

    .line 29
    .line 30
    instance-of p1, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSpanContext:Lrj7;

    .line 47
    .line 48
    iput-boolean p7, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mIsWebViewWebCpEnabledInBrokerlessCase:Z

    .line 49
    .line 50
    iput-object p8, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    return-void
.end method

.method private createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSpanContext:Lrj7;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getOtelContext()Lt40;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromContext(Lt40;)Lzk0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->correlation_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 34
    .line 35
    sget-object v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->calling_package_name:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {p0, v2}, Lzk0;->getEntryValue(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    return-object p1
.end method

.method private static getBrokerAppPackageNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getAllBrokers$cp()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    const-string v0, "No known broker app package name found in URL: "

    .line 37
    .line 38
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 43
    .line 44
    const-string v0, "AzureActiveDirectoryWebViewClient:getBrokerAppPackageNameFromUrl"

    .line 45
    .line 46
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, ""

    .line 50
    .line 51
    return-object p0
.end method

.method private handleBrowserRedirect(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AzureActiveDirectoryWebViewClient:processWebsiteRequest"

    .line 4
    .line 5
    const-string v1, "Not a device CA request. Redirecting to browser."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->openLinkInBrowser(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x2

    .line 28
    :goto_0
    invoke-static {p1}, Lfz5;->v(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Returning result code: "

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "https://"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRedirectUrl:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "AzureActiveDirectoryWebViewClient:handleUrl"

    .line 6
    .line 7
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    :try_start_0
    const-string v7, "urn:http-auth:PKeyAuth"

    .line 16
    .line 17
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const-string v0, "WebView detected request for pkeyauth challenge."

    .line 30
    .line 31
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 32
    .line 33
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallengeFactory;->getPKeyAuthChallengeFromWebViewRedirect(Ljava/lang/String;)Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;-><init>(Landroid/webkit/WebView;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->processChallenge(Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_b

    .line 53
    .line 54
    :catch_0
    move-exception p2

    .line 55
    goto/16 :goto_a

    .line 56
    .line 57
    :cond_0
    const-string v7, "urn:http-auth:PassKey"

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_9

    .line 68
    .line 69
    const-string v0, "WebView detected request for passkey protocol."

    .line 70
    .line 71
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 72
    .line 73
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->createFromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/fido/FidoChallenge;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    instance-of v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    move-object v1, v0

    .line 89
    check-cast v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getOtelContext()Lt40;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move-object v1, v5

    .line 97
    :goto_0
    instance-of v3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 98
    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    move-object v3, v0

    .line 102
    check-cast v3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getFragment()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    instance-of v3, v3, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 109
    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    sget-object v4, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 117
    .line 118
    invoke-interface {v3, v4}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v4, 0x22

    .line 127
    .line 128
    if-ge v3, v4, :cond_2

    .line 129
    .line 130
    new-instance v3, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getFragment()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 143
    .line 144
    invoke-direct {v3, v4, v0}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    move-object v3, v5

    .line 149
    :goto_1
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 150
    .line 151
    new-instance v4, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-direct {v4, v7, v3}, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;)V

    .line 158
    .line 159
    .line 160
    move-object v3, p1

    .line 161
    :goto_2
    if-eqz v3, :cond_8

    .line 162
    .line 163
    const v7, 0x7f0a05e2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    instance-of v8, v7, Lfu4;

    .line 171
    .line 172
    if-eqz v8, :cond_3

    .line 173
    .line 174
    check-cast v7, Lfu4;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_3
    move-object v7, v5

    .line 178
    :goto_3
    if-eqz v7, :cond_4

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-eqz v7, :cond_5

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    const v7, 0x7f0a05e1

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    instance-of v7, v3, Landroid/view/ViewParent;

    .line 196
    .line 197
    if-eqz v7, :cond_6

    .line 198
    .line 199
    move-object v7, v3

    .line 200
    check-cast v7, Landroid/view/ViewParent;

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    move-object v7, v5

    .line 204
    :goto_4
    instance-of v3, v7, Landroid/view/View;

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    check-cast v7, Landroid/view/View;

    .line 209
    .line 210
    move-object v3, v7

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    move-object v3, v5

    .line 213
    goto :goto_2

    .line 214
    :cond_8
    move-object v7, v5

    .line 215
    :goto_5
    invoke-direct {v0, v4, p1, v1, v7}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;-><init>(Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;Landroid/webkit/WebView;Lt40;Lfu4;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->processChallenge(Lcom/microsoft/identity/common/internal/fido/FidoChallenge;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_b

    .line 222
    .line 223
    :cond_9
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    sget-object v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 228
    .line 229
    invoke-interface {v7, v8}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_a

    .line 234
    .line 235
    const-string v7, "sso_nonce"

    .line 236
    .line 237
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-eqz v7, :cond_a

    .line 242
    .line 243
    const-string v0, "Navigation contains new nonce within the redirect uri."

    .line 244
    .line 245
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 246
    .line 247
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processNonceAndReAttachHeaders(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_b

    .line 254
    .line 255
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_c

    .line 264
    .line 265
    const-string v0, "Navigation starts with the redirect uri."

    .line 266
    .line 267
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 268
    .line 269
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSwitchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    sget v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->a:I

    .line 278
    .line 279
    const-string v0, "/switch_browser"

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v4, v0, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_b

    .line 290
    .line 291
    const-string v0, "Request to switch browser."

    .line 292
    .line 293
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processSwitchBrowserRequest(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_b

    .line 300
    .line 301
    :cond_b
    const-string v0, "It is a redirect request."

    .line 302
    .line 303
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v0, "AzureActiveDirectoryWebViewClient:processRedirectUrl"

    .line 307
    .line 308
    const-string v1, "It is pointing to redirect. Final url can be processed to get the code or error."

    .line 309
    .line 310
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {p2}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-interface {v0, p2}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_b

    .line 328
    .line 329
    :cond_c
    const-string v3, "browser://"

    .line 330
    .line 331
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_d

    .line 336
    .line 337
    const-string v0, "It is an external website request"

    .line 338
    .line 339
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 340
    .line 341
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processWebsiteRequest(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_b

    .line 348
    .line 349
    :cond_d
    const-string v3, "msauth://"

    .line 350
    .line 351
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_e

    .line 356
    .line 357
    const-string v0, "It is an install request"

    .line 358
    .line 359
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 360
    .line 361
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processInstallRequest(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_b

    .line 368
    .line 369
    :cond_e
    const-string v3, "companyportal://"

    .line 370
    .line 371
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_10

    .line 376
    .line 377
    const-string v0, "It is a request from WebCP"

    .line 378
    .line 379
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 380
    .line 381
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 385
    .line 386
    .line 387
    const-string v0, "companyportal://enrollment"

    .line 388
    .line 389
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_f

    .line 394
    .line 395
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->launchCompanyPortal()V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_b

    .line 399
    .line 400
    :cond_f
    const-string v0, "webcp_uri_invalid"

    .line 401
    .line 402
    const-string v1, "Unexpected URL from WebCP: "

    .line 403
    .line 404
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_b

    .line 412
    .line 413
    :cond_10
    const-string v3, "market://details?id="

    .line 414
    .line 415
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-eqz v3, :cond_11

    .line 420
    .line 421
    const-string v0, "Request to open PlayStore."

    .line 422
    .line 423
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 424
    .line 425
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processPlayStoreURL(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result p0

    .line 432
    return p0

    .line 433
    :cond_11
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    sget-object v7, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_PLAYSTORE_URL_LAUNCH:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 438
    .line 439
    invoke-interface {v3, v7}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_13

    .line 444
    .line 445
    const-string v3, "https://play.google.com/store/apps/details?id="

    .line 446
    .line 447
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_13

    .line 452
    .line 453
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getAllBrokers$cp()Ljava/util/Set;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    if-eqz v7, :cond_13

    .line 466
    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    check-cast v7, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 472
    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v9, "id="

    .line 476
    .line 477
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    if-eqz v7, :cond_12

    .line 496
    .line 497
    const-string v0, "Request to open PlayStore for broker app install."

    .line 498
    .line 499
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 500
    .line 501
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processPlayStoreURLForBrokerApps(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result p0

    .line 508
    return p0

    .line 509
    :cond_13
    const-string v3, "microsoft-authenticator://activatemfa"

    .line 510
    .line 511
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v3
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    const-string v7, "android.intent.action.VIEW"

    .line 516
    .line 517
    if-eqz v3, :cond_14

    .line 518
    .line 519
    :try_start_1
    const-string v0, "Request to link account with Authenticator."

    .line 520
    .line 521
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 522
    .line 523
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const-string v0, "AzureActiveDirectoryWebViewClient:processAuthAppMFAUrl"

    .line 527
    .line 528
    const-string v1, "Linking Account in Broker for MFA."

    .line 529
    .line 530
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    .line 532
    .line 533
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    .line 534
    .line 535
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 536
    .line 537
    .line 538
    move-result-object p2

    .line 539
    invoke-direct {v1, v7, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    .line 541
    .line 542
    const/high16 p2, 0x10000000

    .line 543
    .line 544
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    .line 546
    .line 547
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_2 .. :try_end_2} :catch_0

    .line 552
    .line 553
    .line 554
    goto/16 :goto_b

    .line 555
    .line 556
    :catch_1
    move-exception p2

    .line 557
    :try_start_3
    const-string v1, "Failed to open the Authenticator application."

    .line 558
    .line 559
    invoke-static {v0, v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_b

    .line 563
    .line 564
    :cond_14
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    const/4 v8, 0x0

    .line 569
    if-nez v3, :cond_15

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_15
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v9

    .line 580
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    if-eqz v9, :cond_19

    .line 585
    .line 586
    if-nez v3, :cond_16

    .line 587
    .line 588
    goto :goto_8

    .line 589
    :cond_16
    const-string v10, "login.microsoftonline.com"

    .line 590
    .line 591
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v10

    .line 595
    if-nez v10, :cond_18

    .line 596
    .line 597
    const-string v10, "login.microsoftonline.us"

    .line 598
    .line 599
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v10

    .line 603
    if-nez v10, :cond_18

    .line 604
    .line 605
    const-string v10, "login.chinacloudapi.cn"

    .line 606
    .line 607
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v9

    .line 611
    if-eqz v9, :cond_17

    .line 612
    .line 613
    goto :goto_6

    .line 614
    :cond_17
    move v9, v8

    .line 615
    goto :goto_7

    .line 616
    :cond_18
    :goto_6
    move v9, v6

    .line 617
    :goto_7
    const-string v10, "/authenticatorapp/activateaccount"

    .line 618
    .line 619
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-eqz v9, :cond_19

    .line 624
    .line 625
    if-eqz v3, :cond_19

    .line 626
    .line 627
    const-string v0, "Request to open Authenticator via activation app link."

    .line 628
    .line 629
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 630
    .line 631
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processAuthenticatorActivationAppLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_b

    .line 638
    .line 639
    :cond_19
    :goto_8
    const-string v3, "aea://"

    .line 640
    .line 641
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    if-eqz v3, :cond_1a

    .line 646
    .line 647
    const-string v0, "It is an Amazon app request"

    .line 648
    .line 649
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 650
    .line 651
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    const-string v0, "AzureActiveDirectoryWebViewClient:processAmazonAppUri"

    .line 655
    .line 656
    new-instance v1, Landroid/content/Intent;

    .line 657
    .line 658
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 659
    .line 660
    .line 661
    move-result-object p2

    .line 662
    invoke-direct {v1, v7, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 666
    .line 667
    .line 668
    move-result-object p2

    .line 669
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 670
    .line 671
    .line 672
    const-string p2, "Sent Intent to launch Amazon app"

    .line 673
    .line 674
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_b

    .line 678
    .line 679
    :cond_1a
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    sget-object v7, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OPEN_ID_VC_REDIRECT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 684
    .line 685
    invoke-interface {v3, v7}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    if-eqz v3, :cond_1b

    .line 690
    .line 691
    const-string v3, "openid-vc://"

    .line 692
    .line 693
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-eqz v3, :cond_1b

    .line 698
    .line 699
    const-string v0, "It is an OpenID Verifiable Credentials request."

    .line 700
    .line 701
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 702
    .line 703
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processOpenIdVcRequest(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_b

    .line 710
    .line 711
    :cond_1b
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    if-eqz v3, :cond_1c

    .line 720
    .line 721
    const-string v7, "com.microsoft.aadbroker.adal.broker.request"

    .line 722
    .line 723
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-static {v3}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    if-nez v3, :cond_1c

    .line 732
    .line 733
    const-string v3, "msauth"

    .line 734
    .line 735
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-eqz v3, :cond_1c

    .line 740
    .line 741
    const-string v0, "Check for Redirect Uri."

    .line 742
    .line 743
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 744
    .line 745
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processInvalidRedirectUri(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_b

    .line 752
    .line 753
    :cond_1c
    const-string v3, "about:blank"

    .line 754
    .line 755
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-eqz v3, :cond_1d

    .line 760
    .line 761
    const-string p2, "It is an blank page request"

    .line 762
    .line 763
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 764
    .line 765
    invoke-static {v2, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_b

    .line 769
    .line 770
    :cond_1d
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->isIntentRequestToInstallBrokerApp(Ljava/lang/String;)Z

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    if-eqz v3, :cond_1e

    .line 775
    .line 776
    const-string v0, "It is an intent request"

    .line 777
    .line 778
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 779
    .line 780
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processIntentToInstallBrokerApp(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_b

    .line 787
    .line 788
    :cond_1e
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-nez v0, :cond_1f

    .line 793
    .line 794
    const-string v0, "Check for SSL protection"

    .line 795
    .line 796
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 797
    .line 798
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string v0, "AzureActiveDirectoryWebViewClient:processSSLProtectionCheck"

    .line 802
    .line 803
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->removeQueryParametersOrRedact(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object p2

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    const-string v3, "The webView was redirected to an unsafe URL: "

    .line 810
    .line 811
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object p2

    .line 821
    invoke-static {v0, p2, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    .line 823
    .line 824
    const-string p2, "Redirect url scheme not SSL protected"

    .line 825
    .line 826
    const-string v0, "The webView was redirected to an unsafe URL."

    .line 827
    .line 828
    invoke-direct {p0, p2, v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 832
    .line 833
    .line 834
    goto/16 :goto_b

    .line 835
    .line 836
    :cond_1f
    const-string v0, "https://login.live.com/"

    .line 837
    .line 838
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 843
    .line 844
    if-eqz v3, :cond_20

    .line 845
    .line 846
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    if-nez v3, :cond_20

    .line 851
    .line 852
    move v3, v6

    .line 853
    goto :goto_9

    .line 854
    :cond_20
    move v3, v8

    .line 855
    :goto_9
    if-eqz v0, :cond_21

    .line 856
    .line 857
    if-eqz v3, :cond_21

    .line 858
    .line 859
    const-string v0, "AzureActiveDirectoryWebViewClient:processHeaderForwardingRequiredUri"

    .line 860
    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    const-string v3, "We are loading this new URL: \'"

    .line 864
    .line 865
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->removeQueryParametersOrRedact(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    const-string v3, "\' with original requestHeaders appended."

    .line 876
    .line 877
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 885
    .line 886
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 890
    .line 891
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 892
    .line 893
    .line 894
    goto/16 :goto_b

    .line 895
    .line 896
    :cond_21
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    sget-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 901
    .line 902
    invoke-interface {v0, v3}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    if-eqz v0, :cond_22

    .line 907
    .line 908
    invoke-direct {p0, v4}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->isCrossCloudRedirect(Ljava/lang/String;)Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    if-eqz v0, :cond_22

    .line 913
    .line 914
    const-string v0, "Navigation contains cross cloud redirect."

    .line 915
    .line 916
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 917
    .line 918
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    const-string v0, "AzureActiveDirectoryWebViewClient:processCrossCloudRedirect"

    .line 922
    .line 923
    const-string v1, "ProcessCrossCloudRedirect"

    .line 924
    .line 925
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSpanContext:Lrj7;

    .line 926
    .line 927
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;

    .line 932
    .line 933
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 934
    .line 935
    invoke-direct {v3, p1, v4, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;-><init>(Landroid/webkit/WebView;Ljava/util/HashMap;Lr86;)V

    .line 936
    .line 937
    .line 938
    invoke-static {p2, v3, p1, v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->reAttachPrtHeader(Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;Landroid/webkit/WebView;Ljava/lang/String;Lr86;)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_b

    .line 942
    .line 943
    :cond_22
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 944
    .line 945
    if-eqz v0, :cond_23

    .line 946
    .line 947
    const-string v0, "https://enterprise.google.com/android/enroll"

    .line 948
    .line 949
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 950
    .line 951
    .line 952
    move-result v0

    .line 953
    if-eqz v0, :cond_23

    .line 954
    .line 955
    const-string v0, "Navigation contains web cp enrollment url."

    .line 956
    .line 957
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 958
    .line 959
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processWebCpEnrollmentUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    goto/16 :goto_b

    .line 966
    .line 967
    :cond_23
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 968
    .line 969
    if-eqz v0, :cond_24

    .line 970
    .line 971
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->isWebCpAuthorizeUrl(Ljava/lang/String;)Z

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    if-eqz v0, :cond_24

    .line 976
    .line 977
    const-string v0, "AzureActiveDirectoryWebViewClient:processWebCPAuthorize"

    .line 978
    .line 979
    const-string v1, "Processing WebCP authorize request."

    .line 980
    .line 981
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 982
    .line 983
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string v1, "ProcessWebCpAuthorizeUrlRedirect"

    .line 987
    .line 988
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;

    .line 993
    .line 994
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 995
    .line 996
    invoke-direct {v3, p1, v4, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;-><init>(Landroid/webkit/WebView;Ljava/util/HashMap;Lr86;)V

    .line 997
    .line 998
    .line 999
    invoke-static {p2, v3, p1, v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->reAttachPrtHeader(Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;Landroid/webkit/WebView;Ljava/lang/String;Lr86;)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_b

    .line 1003
    :cond_24
    const-string v0, "&ismdmurl=1"

    .line 1004
    .line 1005
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    if-eqz v0, :cond_25

    .line 1010
    .line 1011
    const-string v0, "https"

    .line 1012
    .line 1013
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    if-eqz v0, :cond_25

    .line 1018
    .line 1019
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->isWebCpInWebviewFeatureEnabled(Ljava/lang/String;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    if-eqz v0, :cond_25

    .line 1024
    .line 1025
    const-string v0, "Navigation contains device CA request with https scheme."

    .line 1026
    .line 1027
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 1028
    .line 1029
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processDeviceCaRequest(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_b

    .line 1036
    :cond_25
    const-string v0, "This maybe a valid URI, but no special handling for this mentioned URI, hence deferring to WebView for loading."

    .line 1037
    .line 1038
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 1039
    .line 1040
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    const-string v0, "AzureActiveDirectoryWebViewClient:processInvalidUrl"

    .line 1044
    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    const-string v4, "We are declining to override loading and redirect to invalid URL: \'"

    .line 1048
    .line 1049
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->removeQueryParametersOrRedact(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p2

    .line 1056
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    const-string p2, "\' the user\'s url pattern is \'"

    .line 1060
    .line 1061
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    const-string p2, "\'"

    .line 1065
    .line 1066
    invoke-static {v3, v1, p2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p2

    .line 1070
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 1071
    .line 1072
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1073
    .line 1074
    .line 1075
    return v8

    .line 1076
    :goto_a
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 1081
    .line 1082
    invoke-static {v2, v0, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    invoke-static {p2, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p2

    .line 1100
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 1104
    .line 1105
    .line 1106
    :goto_b
    return v6
.end method

.method private isCrossCloudRedirect(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "AzureActiveDirectoryWebViewClient"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/net/URL;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isValidCloudHost(Ljava/net/URL;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isValidCloudHost(Ljava/net/URL;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    const-string p0, "Detected a cross cloud redirect."

    .line 60
    .line 61
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 62
    .line 63
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Failure in detecting if it is a cross cloud redirect url."

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 84
    .line 85
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    const/4 p0, 0x0

    .line 89
    return p0
.end method

.method private static isIntentRequestToInstallBrokerApp(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "intent://"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ";package=com.android.vending;"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getAllBrokers$cp()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "id="

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method private static isWebCpAuthorizeUrl(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/net/URI;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v3, :cond_5

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v3, Ljava/net/URL;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isValidCloudHost(Ljava/net/URL;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string p0, "URL host is not a valid Azure cloud host"

    .line 34
    .line 35
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string v3, "/authorize"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    const-string p0, "URL path does not contain /authorize"

    .line 54
    .line 55
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v1

    .line 61
    :cond_2
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v2, "client_id"

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    const-string p0, "Authorize URL does not contain client_id"

    .line 80
    .line 81
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 82
    .line 83
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :cond_3
    const-string v2, "74bcdadc-2fdc-4bb3-8459-76d06952a0e9"

    .line 88
    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    const-string v2, "WebCP authorize URL contains valid WebCP client_id."

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const-string v2, "Not running WebCP flow as client_id in authorize is not webcp client_id"

    .line 99
    .line 100
    :goto_0
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 101
    .line 102
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return p0

    .line 106
    :cond_5
    :goto_1
    const-string p0, "URL missing host or path"

    .line 107
    .line 108
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 109
    .line 110
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return v1

    .line 114
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "Invalid URL: "

    .line 117
    .line 118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 133
    .line 134
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v1
.end method

.method private launchCompanyPortal()V
    .locals 4

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AzureActiveDirectoryWebViewClient:launchCompanyPortal"

    .line 4
    .line 5
    const-string v1, "Sending intent to launch the CompanyPortal."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/content/ComponentName;

    .line 16
    .line 17
    const-string v2, "com.microsoft.windowsintune.companyportal"

    .line 18
    .line 19
    const-string v3, "com.microsoft.windowsintune.companyportal.views.SplashActivity"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const v1, 0x10008000

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private processDeviceCaRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AzureActiveDirectoryWebViewClient:processDeviceCaRequest"

    .line 4
    .line 5
    const-string v1, "This is a device CA request."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/PackageHelper;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "com.microsoft.skype.teams.ipphone"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const-string v2, "iPULpH0pq8ms1Qy7cOzGsVRQN7/zW4IbW+UKcajvtrTrzM5o5VcaghNEA1Ho4Wq7ay0efqqJcalxa8eHxVnHKA=="

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSha512SignatureForPackage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const-string v2, "com.microsoft.windowsintune.companyportal"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->launchCompanyPortal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    const-string v1, "Failed to launch Company Portal, falling back to browser."

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v0, "AzureActiveDirectoryWebViewClient:loadDeviceCaUrl"

    .line 61
    .line 62
    const-string v1, "ProcessWebCpRedirects"

    .line 63
    .line 64
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :try_start_1
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->isWebCpInWebviewFeatureEnabled(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const-string v2, "Loading device CA request in WebView."

    .line 79
    .line 80
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "browser://"

    .line 84
    .line 85
    const-string v3, "https://"

    .line 86
    .line 87
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {p1, p2, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const-string p1, "Loading device CA request in browser."

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->openLinkInBrowser(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/16 p2, 0x8

    .line 112
    .line 113
    invoke-static {p2}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-interface {p1, p2}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    goto :goto_3

    .line 126
    :goto_1
    :try_start_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_2
    move-exception p2

    .line 131
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :goto_3
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 136
    .line 137
    const-string p2, "Failed to load device CA URL in WebView."

    .line 138
    .line 139
    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    const-string p2, "unknown_error"

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_4
    return-void
.end method

.method private processInstallRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v1, "app_link"

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "Launching the link to app:"

    .line 36
    .line 37
    invoke-static {v1, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 42
    .line 43
    const-string v2, "AzureActiveDirectoryWebViewClient:processInstallRequest"

    .line 44
    .line 45
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;

    .line 61
    .line 62
    invoke-direct {v1, p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v2, 0x3e8

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private processIntentToInstallBrokerApp(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Intent request sent to launch the app: "

    .line 2
    .line 3
    const-string v1, "AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 42
    .line 43
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    const-string p1, "Unable to parse the intent URI"

    .line 54
    .line 55
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_0
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 62
    .line 63
    const-string p2, "An unexpected error occurred while processing the intent URI."

    .line 64
    .line 65
    invoke-static {v1, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "unexpected_error"

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_1
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 79
    .line 80
    const-string p2, "No activity found to handle the intent."

    .line 81
    .line 82
    invoke-static {v1, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    const-string p2, "activity_not_found"

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 96
    .line 97
    const-string p2, "Failed to parse the intent URI due to invalid syntax."

    .line 98
    .line 99
    invoke-static {v1, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    const-string p2, "uri_syntax_error"

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method

.method private processInvalidRedirectUri(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AzureActiveDirectoryWebViewClient:processInvalidRedirectUri"

    .line 4
    .line 5
    const-string v1, "The RedirectUri is not as expected."

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "Received "

    .line 12
    .line 13
    const-string v3, " and expected "

    .line 14
    .line 15
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRedirectUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, p2, v3, v4}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v2, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "The RedirectUri is not as expected. Received "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3, v4}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v0, "The redirectUri for broker is invalid"

    .line 39
    .line 40
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private processNonceAndReAttachHeaders(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "AzureActiveDirectoryWebViewClient:processNonceAndReAttachHeaders"

    .line 2
    .line 3
    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "sso_nonce"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v1, "ProcessNonceFromEstsRedirect"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSpanContext:Lrj7;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :try_start_0
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    new-instance v3, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v3, p1, v4, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;-><init>(Landroid/webkit/WebView;Ljava/util/HashMap;Lr86;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/net/URL;

    .line 44
    .line 45
    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NonceRedirectHandler;->processChallenge(Ljava/net/URL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catchall_1
    move-exception v1

    .line 60
    :try_start_3
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_2
    move-exception v2

    .line 65
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    :goto_1
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 70
    .line 71
    const-string v2, "Error processing nonce and re-attaching headers"

    .line 72
    .line 73
    invoke-static {v0, v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {p1, p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :goto_2
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 83
    .line 84
    const-string p1, "Redirect URI has invalid syntax, unable to parse"

    .line 85
    .line 86
    invoke-static {p0, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    :goto_3
    return-void
.end method

.method private processOpenIdVcRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "activity_not_found"

    .line 2
    .line 3
    const-string v1, "AzureActiveDirectoryWebViewClient:processOpenIdVcRequest"

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 6
    .line 7
    .line 8
    const-string p1, "ProcessOpenIdVcRequest"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v3, "android.intent.action.VIEW"

    .line 21
    .line 22
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    const/high16 p2, 0x10000000

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v2, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "Launched external handler for OpenID VC request."

    .line 56
    .line 57
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 58
    .line 59
    invoke-static {v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p2

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string p2, "No application found to handle openid-vc:// URI."

    .line 66
    .line 67
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 68
    .line 69
    invoke-static {v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p2, "No application found to handle the OpenID Verifiable Credentials request."

    .line 73
    .line 74
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_3

    .line 83
    :goto_1
    :try_start_3
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    throw p2
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 92
    :catchall_2
    move-exception p0

    .line 93
    throw p0

    .line 94
    :goto_3
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 95
    .line 96
    const-string p2, "Failed to launch handler for openid-vc:// URI."

    .line 97
    .line 98
    invoke-static {v1, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    const-string p1, "Failed to launch handler for the OpenID Verifiable Credentials request."

    .line 102
    .line 103
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private processPlayStoreURL(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "market://details?id="

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    .line 5
    .line 6
    const-string p1, "market://details?id=com.microsoft.windowsintune.companyportal"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v1, "AzureActiveDirectoryWebViewClient:processPlayStoreURL"

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "market://details?id=com.azure.authenticator"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string p0, "The URI is either trying to open an unknown application or contains unknown query parameters"

    .line 27
    .line 28
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getBrokerAppPackageNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "Request to open PlayStore to install package : \'"

    .line 38
    .line 39
    const-string v2, "\'"

    .line 40
    .line 41
    invoke-static {p2, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    invoke-static {v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v2, "android.intent.action.VIEW"

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .line 72
    .line 73
    const p1, 0x10008000

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p1, "PlayStore is not present on the device"

    .line 89
    .line 90
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    const/4 p0, 0x1

    .line 94
    return p0
.end method

.method private processPlayStoreURLForBrokerApps(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "https://play.google.com/store/apps/details?id="

    .line 2
    .line 3
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getBrokerAppPackageNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v1, "Request to open PlayStore to install package : \'"

    .line 8
    .line 9
    const-string v2, "\'"

    .line 10
    .line 11
    invoke-static {v1, p2, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    const-string v2, "AzureActiveDirectoryWebViewClient:processPlayStoreURL"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v3, "android.intent.action.VIEW"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {v1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    const-string p1, "Failed to intercept install broker playstore URL and launch the intent"

    .line 62
    .line 63
    invoke-static {v2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    const-string p1, "PlayStore is not present on the device"

    .line 68
    .line 69
    invoke-static {v2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method private processSwitchBrowserRequest(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mSwitchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget v2, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->a:I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->buildProcessUri(Landroid/net/Uri;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;

    .line 25
    .line 26
    invoke-direct {v2, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->processChallenge(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 35
    .line 36
    const-string v0, "AzureActiveDirectoryWebViewClient:processSwitchBrowserRequest"

    .line 37
    .line 38
    const-string v1, "Switch browser challenge could not be processed."

    .line 39
    .line 40
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    instance-of v0, p1, Lcom/microsoft/identity/common/java/exception/IErrorInformation;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/microsoft/identity/common/java/exception/IErrorInformation;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/exception/IErrorInformation;->getErrorCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "unknown_error"

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private processWebCpEnrollmentUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "AzureActiveDirectoryWebViewClient:processWebCpEnrollmentUrl"

    .line 2
    .line 3
    const-string v1, "ProcessWebCpEnrollmentRedirect"

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 14
    .line 15
    .line 16
    const-string p1, "Loading WebCP enrollment url in browser."

    .line 17
    .line 18
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "AzureActiveDirectoryWebViewClient:openGoogleEnrollmentUrl"

    .line 24
    .line 25
    const-string v2, "Opening Google enrollment URL"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v3, "android.intent.action.VIEW"

    .line 33
    .line 34
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    const p2, 0x10008000

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_3
    new-instance p1, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v2, 0xbb8

    .line 65
    .line 66
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    :try_start_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p2

    .line 78
    :try_start_5
    const-string v2, "Failed to open the intent for google enrollment."

    .line 79
    .line 80
    invoke-static {p1, v2, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :goto_0
    :try_start_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_2
    move-exception p2

    .line 89
    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :goto_2
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 94
    .line 95
    const-string p2, "Failed to process WebCP enrollment URL."

    .line 96
    .line 97
    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    const-string p2, "unknown_error"

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static reAttachPrtHeader(Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;Landroid/webkit/WebView;Ljava/lang/String;Lr86;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p4}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 2
    .line 3
    .line 4
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ReAttachPrtHeaderHandler;->processChallenge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_2
    invoke-interface {p4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    invoke-interface {p4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_2
    move-exception p4

    .line 20
    :try_start_4
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Error attaching PRT header."

    .line 27
    .line 28
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget p4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    invoke-static {p3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static removeQueryParametersOrRedact(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/net/URI;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 36
    .line 37
    const-string v0, "AzureActiveDirectoryWebViewClient:removeQueryParametersOrRedact"

    .line 38
    .line 39
    const-string v1, "Redirect URI has invalid syntax, unable to parse"

    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "redacted"

    .line 45
    .line 46
    return-object p0
.end method

.method private returnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private sendErrorToCallback(Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 5
    .line 6
    const-string v0, "Code:"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p2, p3, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final addPasskeyRegistrationJsScript()V
    .locals 1

    .line 1
    const-string v0, "\n            var __webauthn_interface__,__webauthn_hooks__;!function(e){__webauthn_interface__.addEventListener(\"message\",(function(e){console.log(e.data);var n=JSON.parse(e.data);\"get\"===n.type?o(n):\"create\"===n.type?l(n):console.log(\"Incorrect response format for reply: \"+n.type)}));var n=null,t=null,r=null,a=null;function o(e){if(null!==n&&null!==r){if(\"success\"!=e.status){var o=r;return n=null,r=null,void o(new DOMException(e.data.domExceptionMessage,e.data.domExceptionName))}var s=u(e.data),i=n;n=null,r=null,i(s)}else console.log(\"Reply failure: Resolve: \"+t+\" and reject: \"+a)}function s(e){var n=e.length%4;return Uint8Array.from(atob(e.replace(/-/g,\"+\").replace(/_/g,\"/\").padEnd(e.length+(0===n?0:4-n),\"=\")),(function(e){return e.charCodeAt(0)})).buffer}function i(e){return btoa(Array.from(new Uint8Array(e),(function(e){return String.fromCharCode(e)})).join(\"\")).replace(/\\+/g,\"-\").replace(/\\//g,\"_\").replace(/=+$/,\"\")}function l(e){if(null!==t&&null!==a){if(\"success\"!=e.status){var n=a;return t=null,a=null,void n(new DOMException(e.data.domExceptionMessage,e.data.domExceptionName))}var r=u(e.data),o=t;t=null,a=null,o(r)}else console.log(\"Reply failure: Resolve: \"+t+\" and reject: \"+a)}function u(e){return e.rawId=s(e.rawId),e.response.clientDataJSON=s(e.response.clientDataJSON),e.response.hasOwnProperty(\"attestationObject\")&&(e.response.attestationObject=s(e.response.attestationObject)),e.response.hasOwnProperty(\"authenticatorData\")&&(e.response.authenticatorData=s(e.response.authenticatorData)),e.response.hasOwnProperty(\"signature\")&&(e.response.signature=s(e.response.signature)),e.response.hasOwnProperty(\"userHandle\")&&(e.response.userHandle=s(e.response.userHandle)),e.getClientExtensionResults=function(){return{}},e.response.getTransports=function(){return e.response.hasOwnProperty(\"transports\")?e.response.transports:[]},e}e.create=function(n){if(!(\"publicKey\"in n))return e.originalCreateFunction(n);var r=new Promise((function(e,n){t=e,a=n})),o=n.publicKey;if(o.hasOwnProperty(\"challenge\")){var s=i(o.challenge);o.challenge=s}if(o.hasOwnProperty(\"user\")&&o.user.hasOwnProperty(\"id\")){var l=i(o.user.id);o.user.id=l}if(o.hasOwnProperty(\"excludeCredentials\")&&Array.isArray(o.excludeCredentials)&&o.excludeCredentials.length>0)for(var u=0;u<o.excludeCredentials.length;u++){var c=o.excludeCredentials[u];c&&c.hasOwnProperty(\"id\")&&(c.id=i(c.id))}var p={type:\"create\",request:o},_=JSON.stringify(p);return __webauthn_interface__.postMessage(_),r},e.get=function(t){if(!(\"publicKey\"in t))return e.originalGetFunction(t);var a=new Promise((function(e,t){n=e,r=t})),o=t.publicKey;if(o.hasOwnProperty(\"challenge\")){var s=i(o.challenge);o.challenge=s}var l={type:\"get\",request:o},u=JSON.stringify(l);return __webauthn_interface__.postMessage(u),a},e.onReplyGet=o,e.CM_base64url_decode=s,e.CM_base64url_encode=i,e.onReplyCreate=l}(__webauthn_hooks__||(__webauthn_hooks__={})),__webauthn_hooks__.originalGetFunction=navigator.credentials.get,__webauthn_hooks__.originalCreateFunction=navigator.credentials.create,navigator.credentials.get=__webauthn_hooks__.get,navigator.credentials.create=__webauthn_hooks__.create,window.PublicKeyCredential=function(){},window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable=function(){return Promise.resolve(!0)};\n         "

    .line 2
    .line 3
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mPasskeyRegistrationScript:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final finalizeBeforeSendingResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;->onResultReady()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->emitTelemetryForCertBasedAuthResults(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 13
    .line 14
    instance-of p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;->onResultReady()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->promptSmartcardRemovalForResult(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mActivity:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initializeAuthUxJavaScriptApi(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->shouldExposeJavaScriptInterface(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string p2, "AzureActiveDirectoryWebViewClient"

    .line 10
    .line 11
    const-string v0, "Adding AuthUx JavaScript Interface"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/microsoft/identity/common/internal/broker/AuthUxJavaScriptInterface;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "broker"

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final isWebCpInWebviewFeatureEnabled(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUtid:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mIsWebViewWebCpEnabledInBrokerlessCase:Z

    .line 4
    .line 5
    const-string v2, "Not running on AuthService, WebCP in WebView feature enabled? "

    .line 6
    .line 7
    const-string v3, "AzureActiveDirectoryWebViewClient:isWebCpInWebviewFeatureEnabled"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {v5}, Lcom/microsoft/identity/common/PropertyBagUtil;->isRunningOnAuthService(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    invoke-static {v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 44
    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "login_hint"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string p1, "CommonTenantInfoProvider:getTenantId"

    .line 78
    .line 79
    const-string v0, "mTenantInfoProvider is not initialized!"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    const/4 v0, 0x0

    .line 85
    :goto_1
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    const-string p0, "Home tenantId is empty"

    .line 92
    .line 93
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 94
    .line 95
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v4

    .line 99
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;

    .line 103
    .line 104
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 109
    .line 110
    invoke-interface {v1, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->getIntValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProviderForTenant(Ljava/lang/String;)Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEB_CP_IN_WEBVIEW:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 118
    .line 119
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string p1, "WebCP in WebView feature is enabled."

    .line 143
    .line 144
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 145
    .line 146
    invoke-static {v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    return p1

    .line 153
    :cond_4
    return v4

    .line 154
    :goto_2
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 155
    .line 156
    const-string p1, "Failed to check if WebCP in WebView feature is enabled."

    .line 157
    .line 158
    invoke-static {v3, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    return v4
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->cleanUp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthFactory:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onPageFinished$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "window.broker.postMessageToBroker = function(message) {     window.broker.receiveAuthUxMessage(JSON.stringify(message)); };"

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onPageFinished$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mPageLoadedCallback:Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;

    .line 5
    .line 6
    invoke-interface {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;->onPageLoaded(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onPageStarted$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p2}, Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;->trackNewUrlStatus(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mPasskeyRegistrationScript:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->isAllowedOrigin(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    const-string p3, "Executing onPageStarted PasskeyRegistration script for URL: "

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget p3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p3, "AzureActiveDirectoryWebViewClient"

    .line 30
    .line 31
    invoke-static {p3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mPasskeyRegistrationScript:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onPageStarted$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "OAuth2WebViewClient:checkStartUrl"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    const-string v0, "onPageStarted: Null url for page to load."

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const-string v0, "onPageStarted: Non-hierarchical loading uri."

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "start url: "

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v2, "code"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isEmpty(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const-string v3, " Path: "

    .line 64
    .line 65
    const-string v4, " Host: "

    .line 66
    .line 67
    const-string v5, "Scheme:"

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 72
    .line 73
    const-string v2, "onPageStarted: URI has no auth code (\'code\') query parameter."

    .line 74
    .line 75
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 119
    .line 120
    const-string v2, "Auth code is returned for the loading url."

    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->shouldExposeJavaScriptInterface(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const-string v1, "broker"

    .line 169
    .line 170
    const-string v2, "OAuth2WebViewClient:onPageStarted"

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    const-string v0, "Adding AuthUx JavaScript Interface"

    .line 175
    .line 176
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/AuthUxJavaScriptInterface;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded$1:Z

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded$1:Z

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    const-string v0, "Removing AuthUx JavaScript Interface"

    .line 196
    .line 197
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mAuthUxJavaScriptInterfaceAdded$1:Z

    .line 205
    .line 206
    :cond_4
    :goto_1
    const-string v0, "WebView starts loading."

    .line 207
    .line 208
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "CN=MS-Organization-Access"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 26
    .line 27
    const-string p0, "AzureActiveDirectoryWebViewClient:onReceivedClientCertRequest"

    .line 28
    .line 29
    const-string p1, "Cancelling the TLS request, not responding to TLS challenge triggered by device authentication."

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthChallengeHandler:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;->cleanUp()V

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;

    .line 49
    .line 50
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;Landroid/webkit/ClientCertRequest;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCertBasedAuthFactory:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->createCertBasedAuthChallengeHandler(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;->updateLatestUrlStatus(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Code:"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;->updateLatestUrlStatus(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->sendErrorToCallback(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method

.method public final onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "WebResourceError - isForMainFrame? "

    .line 6
    .line 7
    invoke-static {v1, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 12
    .line 13
    const-string v1, "OAuth2WebViewClient:onReceivedError"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Failing url: "

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->sendErrorToCallback(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string p1, "OAuth2WebViewClient:onReceivedHttpAuthRequest"

    .line 4
    .line 5
    const-string p4, "Receive the http auth request. Start the dialog to ask for creds. "

    .line 6
    .line 7
    invoke-static {p1, p4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Host:"

    .line 13
    .line 14
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {p1, p3}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;-><init>(Landroid/webkit/HttpAuthHandler;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    .line 33
    .line 34
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mActivity:Landroidx/fragment/app/u;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 37
    .line 38
    invoke-direct {p2, p3, p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;-><init>(Landroidx/fragment/app/u;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->processChallenge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "HTTP Error Code: "

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;->updateLatestUrlStatus(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mUrlLoadTracker:Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/IUrlLoadTracker;->updateLatestUrlStatus(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->onReceivedSslError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onReceivedSslError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string p2, "Received SSL Error during request. For more info see: https://go.microsoft.com/fwlink/?linkid=2138180. Error: "

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 23
    .line 24
    const-string p2, "OAuth2WebViewClient:onReceivedSslError"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-long v0, p2

    .line 39
    new-instance p2, Lzd4;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    const-string v3, "web_view_ssl_primary_error_code"

    .line 43
    .line 44
    invoke-direct {p2, v2, v3}, Lzd4;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 v0, 0x2

    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    if-ne p2, v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    new-instance p2, Lr40;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Lr40;->b:Ljava/util/Comparator;

    .line 83
    .line 84
    :goto_0
    array-length p2, p1

    .line 85
    if-ge v2, p2, :cond_2

    .line 86
    .line 87
    aget-object p2, p1, v2

    .line 88
    .line 89
    check-cast p2, Lzd4;

    .line 90
    .line 91
    if-eqz p2, :cond_1

    .line 92
    .line 93
    iget-object p2, p2, Lzd4;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_1

    .line 100
    .line 101
    aput-object v1, p1, v2

    .line 102
    .line 103
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance p2, Lr40;

    .line 107
    .line 108
    sget-object v0, Lr40;->b:Ljava/util/Comparator;

    .line 109
    .line 110
    invoke-direct {p2, p1, v0}, Lha4;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->sWebViewSslErrorCount:Lge;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    sget-object p2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 123
    .line 124
    invoke-interface {p1, p2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 131
    .line 132
    const-string p2, "Code:-11"

    .line 133
    .line 134
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-direct {p1, p2, p3, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mCompletionCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 146
    .line 147
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WebView render process gone, crashed? : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->sendErrorToCallback(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final openLinkInBrowser(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AzureActiveDirectoryWebViewClient:openLinkInBrowser"

    .line 4
    .line 5
    const-string v1, "Try to open url link in browser"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "browser://"

    .line 11
    .line 12
    const-string v2, "https://"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v2, "android.intent.action.VIEW"

    .line 21
    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string p0, "Unable to find an app to resolve the activity."

    .line 52
    .line 53
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final processAuthenticatorActivationAppLink(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "AzureActiveDirectoryWebViewClient:processAuthenticatorActivationAppLink"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v1, "android.intent.action.VIEW"

    .line 9
    .line 10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x10000000

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getActivity()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "Launched Authenticator via activation app link."

    .line 44
    .line 45
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p1, "No application found to handle activation app link. Opening in browser."

    .line 54
    .line 55
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->openLinkInBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_0
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 65
    .line 66
    const-string v1, "Failed to launch Authenticator via activation app link."

    .line 67
    .line 68
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->openLinkInBrowser(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final processWebsiteRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ProcessWebsiteRequest"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->createSpanWithAttributesFromParent(Ljava/lang/String;)Lr86;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    const-string v1, "&ismdmurl=1"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->processDeviceCaRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_3
    const-string p1, "https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal"

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const-string p1, "AzureActiveDirectoryWebViewClient"

    .line 42
    .line 43
    const-string v1, "Redirect to Playstore to install Company Portal app."

    .line 44
    .line 45
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mInWebCpFlow:Z

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string p1, "AzureActiveDirectoryWebViewClient:handlePlaystoreLaunchUrlFromWebCp"

    .line 55
    .line 56
    const-string v1, "Handling playstore launch URL from WebCP."

    .line 57
    .line 58
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->openLinkInBrowser(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->getCompletionCallback()Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/16 p2, 0x8

    .line 76
    .line 77
    invoke-static {p2}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p1, p2}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->handleBrowserRedirect(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_2
    move-exception p2

    .line 94
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    :goto_3
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 99
    .line 100
    const-string p2, "AzureActiveDirectoryWebViewClient:processWebsiteRequest"

    .line 101
    .line 102
    const-string v0, "Failed to open link in browser."

    .line 103
    .line 104
    invoke-static {p2, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "unexpected_error"

    .line 108
    .line 109
    const-string p2, "No browser found to open the link."

    .line 110
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->returnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final setRequestHeaders(Ljava/util/HashMap;)V
    .locals 0
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mRequestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final shouldExposeJavaScriptInterface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->mActivity:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->isRunningOnAuthService(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    new-instance p0, Ljava/net/URI;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string p1, ".microsoftonline.com"

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    const-string p1, ".microsoft.com"

    .line 44
    .line 45
    invoke-static {p0, p1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-string p1, ".microsoftonline.us"

    .line 52
    .line 53
    invoke-static {p0, p1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    const-string p1, ".microsoftonline.cn"

    .line 60
    .line 61
    invoke-static {p0, p1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sget-object p1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_JS_API_FOR_AUTHUX:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 72
    .line 73
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    return p0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string v1, "URISyntaxException received. uri: "

    .line 83
    .line 84
    const-string v2, ", Message: "

    .line 85
    .line 86
    invoke-static {v1, p1, v2}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    const-string p1, "AuthUxJavaScriptInterface"

    .line 104
    .line 105
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 19
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/AzureActiveDirectoryWebViewClient;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "Redirect to empty url in web view."

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method
