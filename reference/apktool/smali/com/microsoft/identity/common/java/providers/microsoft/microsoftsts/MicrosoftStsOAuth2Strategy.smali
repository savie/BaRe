.class public Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;
.super Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy<",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsRefreshToken;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

.field private final mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "?dc="

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->isUsingOpenIdConfiguration()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getAuthorityUrl()Ljava/net/URL;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfigurationFromAuthorityWithExtraParams(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p2

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    new-instance p2, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getAuthorityUrl()Ljava/net/URL;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfigurationFromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 100
    .line 101
    :goto_0
    iget-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;->getTokenEndpoint()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->setTokenEndpoint(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getTokenEndpoint()Ljava/net/URL;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->setTokenEndpoint(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_1
    const-string v0, "MicrosoftStsOAuth2Strategy"

    .line 130
    .line 131
    const-string v1, "There was a problem with loading the openIdConfiguration"

    .line 132
    .line 133
    invoke-static {v0, v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getTokenEndpoint()Ljava/net/URL;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->setTokenEndpoint(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getTokenEndpoint()Ljava/net/URL;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->setTokenEndpoint(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_3
    const-string p0, "config is marked non-null but is null"

    .line 161
    .line 162
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/4 p0, 0x0

    .line 166
    throw p0
.end method


# virtual methods
.method public final createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "Creating account from TokenResponse..."

    .line 5
    .line 6
    const-string v2, "MicrosoftStsOAuth2Strategy:createAccount"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v3, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 30
    .line 31
    invoke-direct {p1, v1, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "MicrosoftStsAccount"

    .line 35
    .line 36
    const-string v1, "Init: MicrosoftStsAccount"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->setEnvironment(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p1, "Failed to construct IDToken or ClientInfo"

    .line 51
    .line 52
    invoke-static {v2, p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "Failed with Exception"

    .line 56
    .line 57
    invoke-static {p0, v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_0
    const-string p0, "response is marked non-null but is null"

    .line 67
    .line 68
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public final createAuthorizationRequestBuilder(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 4

    .line 1
    const-string v0, "Creating AuthorizationRequestBuilder"

    .line 2
    .line 3
    const-string v1, "MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Creating AuthorizationRequestBuilder..."

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getAuthorityUrl()Ljava/net/URL;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setAuthority(Ljava/net/URL;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const-string v3, "Setting slice params..."

    .line 34
    .line 35
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setLibraryName(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryVersion()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setLibraryVersion(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getFlightParameters()Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setFlightParameters(Ljava/util/HashMap;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getMultipleCloudsSupported()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setMultipleCloudAware(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setOpenIdProviderConfiguration(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleEntry;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_1

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setUid(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setUtid(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Builder w/ uid: ["

    .line 133
    .line 134
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, "]"

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v3, "Builder w/ utid: ["

    .line 161
    .line 162
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    return-object v0
.end method

.method public final createRefreshTokenRequest(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const-string v0, "MicrosoftStsOAuth2Strategy:createRefreshTokenRequest"

    .line 4
    .line 5
    const-string v1, "Creating refresh token request"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "refresh_token"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mStrategyParameters:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->asymmetricKeyExists()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getRequestConfirmation()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 61
    .line 62
    .line 63
    check-cast p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 78
    .line 79
    .line 80
    check-cast p1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-object v0

    .line 90
    :cond_4
    const-string p0, "authScheme is marked non-null but is null"

    .line 91
    .line 92
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final createTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 5
    .line 6
    if-eqz p3, :cond_9

    .line 7
    .line 8
    const-string v1, "MicrosoftStsOAuth2Strategy:createTokenRequest"

    .line 9
    .line 10
    const-string v2, "Creating TokenRequest..."

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getMultipleCloudsSupported()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "MicrosoftStsOAuth2Strategy"

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getMultipleCloudAware()Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    :cond_0
    const-string v1, "get cloud specific authority based on authorization response."

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getCloudInstanceHostName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getCloudInstanceHostName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v1, v3}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getCloudInstanceHostName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Led8;->setHost(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Led8;->build()Ljava/net/URI;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string p1, "malformed_url"

    .line 88
    .line 89
    const-string p2, "Failed to construct token endpoint from getCloudInstanceHostName()"

    .line 90
    .line 91
    invoke-static {p1, p2, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 96
    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->setTokenEndpoint(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->getPkceCodeVerifier()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setCodeVerifier(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->getCode()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setCode(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setClientId(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->getTokenScope()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setScope(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClaims()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClaims(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :try_start_1
    sget-object p1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v1, "correlation_id"

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setCorrelationId(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_1
    move-exception p1

    .line 170
    const-string v1, "MicrosoftSTSOAuth2Strategy"

    .line 171
    .line 172
    const-string v3, "Correlation id on diagnostic context is not a UUID."

    .line 173
    .line 174
    invoke-static {v1, v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getDeviceCode()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_4

    .line 182
    .line 183
    const-string p1, "urn:ietf:params:oauth:grant-type:device_code"

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getDeviceCode()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setDeviceCode(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    const-string p1, "authorization_code"

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_2
    instance-of p1, p3, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 202
    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mStrategyParameters:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    check-cast p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->asymmetricKeyExists()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_5

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string p3, "Generated new PoP asymmetric key with thumbprint: "

    .line 233
    .line 234
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getRequestConfirmation()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_6
    instance-of p0, p3, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 256
    .line 257
    if-eqz p0, :cond_7

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 260
    .line 261
    .line 262
    check-cast p3, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 263
    .line 264
    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_7
    instance-of p0, p3, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 273
    .line 274
    if-eqz p0, :cond_8

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setTokenType()V

    .line 277
    .line 278
    .line 279
    check-cast p3, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 280
    .line 281
    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRequestConfirmation(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_8
    :goto_3
    return-object v0

    .line 289
    :cond_9
    const-string p0, "authScheme is marked non-null but is null"

    .line 290
    .line 291
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-object v0

    .line 295
    :cond_a
    const-string p0, "request is marked non-null but is null"

    .line 296
    .line 297
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-object v0
.end method

.method public final getDeviceAtPopThumbprint()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "MicrosoftStsOAuth2Strategy"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mStrategyParameters:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v1, v1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    move-object p0, v1

    .line 43
    :goto_0
    if-eqz p0, :cond_2

    .line 44
    .line 45
    check-cast p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->asymmetricKeyExists()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getAsymmetricKeyThumbprint()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    const-string v2, "Key exists. But failed to load thumbprint."

    .line 60
    .line 61
    invoke-static {v0, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_1
    const-string p0, "Symmetric keys do not exist."

    .line 69
    .line 70
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_2
    const-string p0, "DevicePopManager does not exist."

    .line 75
    .line 76
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-object v1
.end method

.method public getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v1, "MicrosoftStsOAuth2Strategy:getIssuerCacheIdentifierFromTokenEndpoint"

    .line 12
    .line 13
    const-string v2, "Getting issuer cache identifier from token endpoint failed due to malformed URL (mTokenEndpoint)..."

    .line 14
    .line 15
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    move-object v1, v0

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredCacheHostName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "Using preferred cache host name..."

    .line 32
    .line 33
    const-string v1, "MicrosoftStsOAuth2Strategy:getIssuerCacheIdentifierFromAuthority"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Preferred cache hostname: ["

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "]"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    move-object v0, p0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final performTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->performTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x191

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "WWW-Authenticate"

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "MicrosoftStsOAuth2Strategy:performTokenRequest"

    .line 32
    .line 33
    const-string v3, "Receiving device certificate challenge request. "

    .line 34
    .line 35
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeObjectToFormUrlEncoded(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Ljava/util/TreeMap;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v4, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "correlation_id"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    const-string v5, "client-request-id"

    .line 62
    .line 63
    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getPlatformIdParameters()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "x-client-SKU"

    .line 74
    .line 75
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v4, "x-client-Ver"

    .line 83
    .line 84
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryVersion()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v4, "x-app-name"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->getClientAppName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v4, "x-app-ver"

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->getClientAppVersion()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/util/List;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "Device certificate challenge request. "

    .line 127
    .line 128
    const-string v2, "MicrosoftStsOAuth2Strategy#performPkeyAuthRequest"

    .line 129
    .line 130
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "Challenge header: "

    .line 136
    .line 137
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallengeFactory;->getPKeyAuthChallengeFromTokenEndpointResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeader()Ljava/util/HashMap;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v3, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 170
    .line 171
    .line 172
    const-string p1, "Content-Type"

    .line 173
    .line 174
    const-string v2, "application/x-www-form-urlencoded"

    .line 175
    .line 176
    invoke-virtual {v3, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 180
    .line 181
    const-string p1, "UTF-8"

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v1, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 191
    .line 192
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/AbstractMap;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 193
    .line 194
    .line 195
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object p0

    .line 197
    :catch_0
    move-exception p0

    .line 198
    const-string p1, "unsupported_encoding"

    .line 199
    .line 200
    const-string v0, "Unsupported encoding"

    .line 201
    .line 202
    invoke-static {p1, v0, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    const/4 p0, 0x0

    .line 206
    return-object p0

    .line 207
    :cond_0
    return-object v0
.end method
