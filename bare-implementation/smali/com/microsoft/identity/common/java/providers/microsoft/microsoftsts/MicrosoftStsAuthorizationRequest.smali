.class public Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest<",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient mApplicationIdentifier:Ljava/lang/String;

.field private final mCompanyPortalVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "cpVersion"
    .end annotation
.end field

.field protected final transient mFlightParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

.field private final mPrompt:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "prompt"
    .end annotation
.end field

.field protected final transient mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

.field private final mSwitchBrowser:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "switch_browser"
    .end annotation
.end field

.field private final transient mTokenScope:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "login_req"
    .end annotation
.end field

.field private final mUtid:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "domain_req"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mPrompt:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$100(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mUid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$200(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mUtid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mCompanyPortalVersion:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$500(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mTokenScope:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$600(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$700(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mFlightParameters:Ljava/util/Map;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$800(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mApplicationIdentifier:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$1000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mSwitchBrowser:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final getApplicationIdentifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mApplicationIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationEndpoint()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;->getAuthorizationEndpoint()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getAuthority()Ljava/net/URL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getAuthority()Ljava/net/URL;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "oAuth2/v2.0/authorize"
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :try_start_1
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->appendPathAndQueryToURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    return-object p0

    .line 33
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string v0, "urlToAppend is marked non-null but is null"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p0

    .line 44
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 45
    .line 46
    const-string v1, "malformed_url"

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    const-string p0, "MicrosoftStsAuthorizationRequest:getAuthorizationEndpoint"

    .line 57
    .line 58
    const-string v0, "Authority is null. cannot construct authorization endpoint URL."

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "Authority is null."

    .line 65
    .line 66
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public final getAuthorizationRequestAsHttpRequest()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getAuthorizationRequestAsHttpRequest()Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/net/URI;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mFlightParameters:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParametersIfAbsent(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string v2, "slice"

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParameterIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string v2, "dc"

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParameterIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getLoginHint()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const-string v1, "1"

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    const-string p0, "hsu"

    .line 70
    .line 71
    invoke-virtual {v0, p0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParameterIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SERVER_CLIENT_DATA_TELEMETRY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 79
    .line 80
    invoke-interface {p0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    const-string p0, "clidata"

    .line 87
    .line 88
    invoke-virtual {v0, p0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParameterIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Led8;->build()Ljava/net/URI;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-object p0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 98
    .line 99
    const-string v1, "malformed_url"

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public final getTokenScope()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mTokenScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUtid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->mUtid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
