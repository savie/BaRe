.class public abstract Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
.super Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private accountTransferToken:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

.field private brokerBrowserSupportEnabled:Z

.field private browserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private extraQueryStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraQueryStringParametersForWebApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handleNullTaskAffinity:Z

.field private isWebViewZoomControlsEnabled:Z

.field private isWebViewZoomEnabled:Z

.field private preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

.field private preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

.field private prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field private requestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

.field private suppressBrokerAccountPicker:Z


# direct methods
.method public static synthetic access$1500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->requestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->brokerBrowserSupportEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->handleNullTaskAffinity:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->accountTransferToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->suppressBrokerAccountPicker:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final $fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->$fillValuesFrom$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->requestHeaders:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->brokerBrowserSupportEnabled:Z

    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomEnabled:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomControlsEnabled:Z

    .line 57
    .line 58
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->handleNullTaskAffinity:Z

    .line 63
    .line 64
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$1000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParameters:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$1100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$1200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraScopesToConsent:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$1300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->accountTransferToken:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->access$1400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->suppressBrokerAccountPicker:Z

    .line 93
    .line 94
    move-object v0, p0

    .line 95
    check-cast v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Landroid/app/Activity;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 108
    .line 109
    return-object v0
.end method

.method public final activity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final authorizationAgent(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final brokerBrowserSupportEnabled()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->brokerBrowserSupportEnabled:Z

    .line 3
    .line 4
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 5
    .line 6
    return-object p0
.end method

.method public final browserSafeList(Ljava/util/List;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public abstract build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract build$1()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
.end method

.method public final extraQueryStringParameters(Ljava/util/ArrayList;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParameters:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final extraScopesToConsent(Ljava/util/List;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final handleNullTaskAffinity(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->handleNullTaskAffinity:Z

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isWebViewZoomControlsEnabled(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomEnabled:Z

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final preferredAuthMethod()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 3
    .line 4
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 5
    .line 6
    return-object p0
.end method

.method public final preferredBrowser(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final prompt(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final requestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->requestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->toString$com$microsoft$identity$common$java$commands$parameters$InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", activity="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", signInWithGoogleCredential="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, ")"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final toString$com$microsoft$identity$common$java$commands$parameters$InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InteractiveTokenCommandParameters.InteractiveTokenCommandParametersBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", browserSafeList="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", preferredBrowser="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", preferredAuthMethod="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", requestHeaders="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->requestHeaders:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", brokerBrowserSupportEnabled="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->brokerBrowserSupportEnabled:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", prompt="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", authorizationAgent="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", isWebViewZoomEnabled="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomEnabled:Z

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", isWebViewZoomControlsEnabled="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomControlsEnabled:Z

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", handleNullTaskAffinity="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->handleNullTaskAffinity:Z

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", extraQueryStringParameters="

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParameters:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, ", extraQueryStringParametersForWebApps="

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", extraScopesToConsent="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraScopesToConsent:Ljava/util/List;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ", accountTransferToken="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->accountTransferToken:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, ", suppressBrokerAccountPicker="

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->suppressBrokerAccountPicker:Z

    .line 161
    .line 162
    const-string v1, ")"

    .line 163
    .line 164
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0
.end method
