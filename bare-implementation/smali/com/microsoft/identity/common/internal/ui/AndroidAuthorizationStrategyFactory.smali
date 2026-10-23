.class public final Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBrowserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/o;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mBrowserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getAuthorizationStrategy(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;Ljava/util/List;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mBrowserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->selectBrowser(Ljava/util/List;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/java/browser/Browser;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget-object p3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/o;

    .line 14
    .line 15
    const-string v2, "AndroidAuthorizationStrategyFactory:getAuthorizationStrategy"

    .line 16
    .line 17
    if-eq p1, p3, :cond_2

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p3, "Browser authorization, browser: "

    .line 25
    .line 26
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget p3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 37
    .line 38
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/CurrentTaskBrowserAuthorizationStrategy;

    .line 52
    .line 53
    invoke-direct {p1, v1, v0, p0, p2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;Lcom/microsoft/identity/common/java/browser/Browser;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;

    .line 58
    .line 59
    invoke-direct {p1, v1, v0, p0, p2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;Lcom/microsoft/identity/common/java/browser/Browser;)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p3, "WebView authorization, browser: "

    .line 66
    .line 67
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 78
    .line 79
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;

    .line 83
    .line 84
    invoke-direct {p1, v1, v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method
