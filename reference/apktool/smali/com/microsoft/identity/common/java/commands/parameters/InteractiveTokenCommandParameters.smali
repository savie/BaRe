.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final accountTransferToken:Ljava/lang/String;

.field private final authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final brokerBrowserSupportEnabled:Z

.field private final transient browserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final extraQueryStringParameters:Ljava/util/List;
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

.field private final extraQueryStringParametersForWebApps:Ljava/util/List;
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

.field private final extraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq03;
    .end annotation
.end field

.field private final handleNullTaskAffinity:Z
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final isWebViewZoomControlsEnabled:Z
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final isWebViewZoomEnabled:Z
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

.field private final transient preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

.field private final prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final transient requestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final suppressBrokerAccountPicker:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$1500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->browserSafeList:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$1600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$1700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$1800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->requestHeaders:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$1900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 57
    .line 58
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 63
    .line 64
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParameters:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraScopesToConsent:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$2900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 93
    .line 94
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->requestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_1
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 13
    .line 14
    instance-of v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_3
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 31
    .line 32
    if-eq p1, v1, :cond_4

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_4
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 39
    .line 40
    if-eq p1, v1, :cond_5

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_5
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 47
    .line 48
    if-eq p1, v1, :cond_6

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_6
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 55
    .line 56
    if-eq p1, v1, :cond_7

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_7
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 63
    .line 64
    if-eq p1, v1, :cond_8

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_8
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 71
    .line 72
    if-nez v1, :cond_9

    .line 73
    .line 74
    if-eqz p1, :cond_a

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_a

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_a
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 89
    .line 90
    if-nez p1, :cond_b

    .line 91
    .line 92
    if-eqz v1, :cond_c

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_c

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_c
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 107
    .line 108
    if-nez p1, :cond_d

    .line 109
    .line 110
    if-eqz v1, :cond_e

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_e

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_e
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-nez p1, :cond_f

    .line 130
    .line 131
    if-eqz v1, :cond_10

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_10

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_10
    const/4 p1, 0x0

    .line 142
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 143
    .line 144
    if-nez v1, :cond_11

    .line 145
    .line 146
    move-object v2, p1

    .line 147
    goto :goto_0

    .line 148
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 154
    .line 155
    if-nez v1, :cond_12

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .line 162
    .line 163
    :goto_1
    if-nez v2, :cond_13

    .line 164
    .line 165
    if-eqz p1, :cond_14

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_13
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_14

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_14
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraScopesToConsent()Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraScopesToConsent()Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez p1, :cond_15

    .line 184
    .line 185
    if-eqz v1, :cond_16

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_16

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_16
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 198
    .line 199
    if-nez p0, :cond_17

    .line 200
    .line 201
    if-eqz p1, :cond_18

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_18

    .line 209
    .line 210
    :goto_2
    const/4 p0, 0x0

    .line 211
    return p0

    .line 212
    :cond_18
    :goto_3
    const/4 p0, 0x1

    .line 213
    return p0
.end method

.method public final getAccountTransferToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBrowserSafeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getExtraQueryStringParameters()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParameters:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getExtraScopesToConsent()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraScopesToConsent:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getHandleNullTaskAffinity()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getPreferredAuthMethod()Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferredBrowser()Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestHeaders()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->requestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3b

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 8
    .line 9
    const/16 v2, 0x61

    .line 10
    .line 11
    const/16 v3, 0x4f

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x3b

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_1
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x3b

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    move v1, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v1, v2

    .line 38
    :goto_2
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x3b

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->handleNullTaskAffinity:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move v1, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v1, v2

    .line 48
    :goto_3
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x3b

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    move v2, v3

    .line 56
    :cond_4
    add-int/2addr v0, v2

    .line 57
    mul-int/lit8 v0, v0, 0x3b

    .line 58
    .line 59
    const/16 v1, 0x2b

    .line 60
    .line 61
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 62
    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    move v2, v1

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_4
    add-int/2addr v0, v2

    .line 72
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->prompt:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 73
    .line 74
    mul-int/lit8 v0, v0, 0x3b

    .line 75
    .line 76
    if-nez v2, :cond_6

    .line 77
    .line 78
    move v2, v1

    .line 79
    goto :goto_5

    .line 80
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_5
    add-int/2addr v0, v2

    .line 85
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 86
    .line 87
    mul-int/lit8 v0, v0, 0x3b

    .line 88
    .line 89
    if-nez v2, :cond_7

    .line 90
    .line 91
    move v2, v1

    .line 92
    goto :goto_6

    .line 93
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :goto_6
    add-int/2addr v0, v2

    .line 98
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    mul-int/lit8 v0, v0, 0x3b

    .line 103
    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    move v2, v1

    .line 107
    goto :goto_7

    .line 108
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_7
    add-int/2addr v0, v2

    .line 113
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->extraQueryStringParametersForWebApps:Ljava/util/List;

    .line 114
    .line 115
    if-nez v2, :cond_9

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    goto :goto_8

    .line 119
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    move-object v2, v3

    .line 125
    :goto_8
    mul-int/lit8 v0, v0, 0x3b

    .line 126
    .line 127
    if-nez v2, :cond_a

    .line 128
    .line 129
    move v2, v1

    .line 130
    goto :goto_9

    .line 131
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    :goto_9
    add-int/2addr v0, v2

    .line 136
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraScopesToConsent()Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    mul-int/lit8 v0, v0, 0x3b

    .line 141
    .line 142
    if-nez v2, :cond_b

    .line 143
    .line 144
    move v2, v1

    .line 145
    goto :goto_a

    .line 146
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    :goto_a
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v0, v0, 0x3b

    .line 152
    .line 153
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->accountTransferToken:Ljava/lang/String;

    .line 154
    .line 155
    if-nez p0, :cond_c

    .line 156
    .line 157
    goto :goto_b

    .line 158
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    :goto_b
    add-int/2addr v0, v1

    .line 163
    return v0
.end method

.method public final isBrokerBrowserSupportEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->brokerBrowserSupportEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSuppressBrokerAccountPicker()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->suppressBrokerAccountPicker:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isWebViewZoomControlsEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isWebViewZoomEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public abstract toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;"
        }
    .end annotation
.end method
