.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageLoaded(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$000(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Landroid/widget/ProgressBar;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    const-string v3, "window.expectedUrl = \'%s\';%n%s"

    .line 16
    .line 17
    const-string v4, "UTF-8"

    .line 18
    .line 19
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$100(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    const-string v3, "WebViewAuthorizationFragment:onCreateView"

    .line 41
    .line 42
    const-string v4, "Inject expectedUrl failed."

    .line 43
    .line 44
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-boolean v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mAuthResultSent:Z

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    aget-object v3, v1, v2

    .line 52
    .line 53
    invoke-static {v3}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$200(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Landroid/webkit/WebView;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    aget-object v1, v1, v2

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_MULTIPLE_WINDOWS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 74
    .line 75
    invoke-interface {v1, v3}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$200(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Landroid/webkit/WebView;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v1, "https://"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const-string v1, "/tlr/start"

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    move v0, v2

    .line 114
    :goto_2
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void
.end method
