.class public Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;
.super Lcom/microsoft/identity/common/java/authorities/Authority;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final transient TAG:Ljava/lang/String; = "AzureActiveDirectoryAuthority"


# instance fields
.field public mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
    .annotation runtime Ly77;
        value = "audience"
    .end annotation
.end field

.field public mFlightParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "flight_parameters"
    .end annotation
.end field

.field private mMultipleCloudsSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 6
    .line 7
    new-instance v1, Lcom/microsoft/identity/common/java/authorities/AllAccounts;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/authorities/AllAccounts;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 13
    .line 14
    const-string v1, "AAD"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 23
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 24
    const-string p1, "AAD"

    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    return-void
.end method

.method public static convertToDefaultAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "common"

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Led8;->setPath(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Led8;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v1, "malformed_url"

    .line 21
    .line 22
    const-string v2, "Cannot construct common authority URL"

    .line 23
    .line 24
    invoke-static {v1, v2, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const-string p0, "authorityUrl is marked non-null but is null"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method private static getAzureActiveDirectoryCloud(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getCloudUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ":getAzureActiveDirectoryCloud"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "AAD cloud URL was malformed."

    .line 39
    .line 40
    invoke-static {p0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    const-string p0, "audience is marked non-null but is null"

    .line 45
    .line 46
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method


# virtual methods
.method public createOAuth2Configuration()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ":createOAuth2Configuration"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, "Creating OAuth2Configuration"

    .line 21
    .line 22
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setAuthorityUrl(Ljava/net/URL;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "Setting slice parameters..."

    .line 57
    .line 58
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setSlice(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setDataCenter(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    iget-object v3, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mFlightParameters:Ljava/util/Map;

    .line 88
    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "Setting flight parameters..."

    .line 107
    .line 108
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mFlightParameters:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getFlightParameters()Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setMultipleCloudsSupported(Z)V

    .line 156
    .line 157
    .line 158
    return-object v0
.end method

.method public createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->createOAuth2Configuration()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string p0, "parameters is marked non-null but is null"

    .line 14
    .line 15
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAuthorityUri()Ljava/net/URI;
    .locals 4

    .line 1
    const-string v0, "https://"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAzureActiveDirectoryCloud(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getCloudUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredNetworkHostName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v2, v0}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v0, v2

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Led8;->getPathSegments()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Led8;->setPathSegments(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v0}, Led8;->build()Ljava/net/URI;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object p0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Authority URI is invalid."

    .line 87
    .line 88
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public isMSAAuthority()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "consumers"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "9188040d-6c67-4c5b-b112-36a304b66dad"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public isMultipleCloudsSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSameCloudAsAuthority(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    sget v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->a:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAzureActiveDirectoryCloud(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAzureActiveDirectoryCloud(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_2
    const-string p0, "authorityToCheck is marked non-null but is null"

    .line 56
    .line 57
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v0
.end method

.method public setMultipleCloudsSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 2
    .line 3
    return-void
.end method
