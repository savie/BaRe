.class public final Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final GSON:Lcom/google/gson/a;

.field private static final httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

.field private static final sConfigCache:Ljava/util/HashMap;

.field private static final sOpenIdProviderConfigurationIssuerValidationFailedCount:Lge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->sConfigCache:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 13
    .line 14
    const-string v0, "openid_provider_configuration_issuer_validation_failed_count"

    .line 15
    .line 16
    const-string v1, "Track failure in validating OpenID Provider configuration issuer"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createLongCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lzh8;->d:Lge;

    .line 22
    .line 23
    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->sOpenIdProviderConfigurationIssuerValidationFailedCount:Lge;

    .line 24
    .line 25
    new-instance v0, Lcom/google/gson/a;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/google/gson/a;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->GSON:Lcom/google/gson/a;

    .line 31
    .line 32
    return-void
.end method

.method private static cacheConfiguration(Ljava/net/URI;Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->sConfigCache:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "parsedConfig is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static getConfigRequestBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "/"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    const-string p0, "/v2.0"

    .line 27
    .line 28
    invoke-static {v0, p0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const-string p0, "issuerUrl is marked non-null but is null"

    .line 34
    .line 35
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method private declared-synchronized loadOpenIdProviderConfigurationInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    const-string v0, "OpenId Provider Configuration metadata failed to load with status: "

    .line 2
    .line 3
    const-string v1, "Using request URL: "

    .line 4
    .line 5
    const-string v2, "/.well-known/openid-configuration"

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    :try_start_0
    const-string v3, "OpenIdProviderConfigurationClient:loadOpenIdProviderConfigurationInternal"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :try_start_1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->getConfigRequestBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "/.well-known/openid-configuration"

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :catch_1
    move-exception p1

    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :catch_2
    move-exception p1

    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :goto_0
    new-instance v2, Ljava/net/URI;

    .line 56
    .line 57
    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object p2, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->sConfigCache:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 67
    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    const-string p1, "Using cached metadata result."

    .line 71
    .line 72
    invoke-static {v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-object p2

    .line 77
    :cond_1
    :try_start_2
    const-string p2, "Config URL is valid."

    .line 78
    .line 79
    invoke-static {v3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {v3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object p2, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v3, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    sget-object v4, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p2, v4, v1, v3, v5}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/AbstractMap;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const/16 v3, 0xc8

    .line 125
    .line 126
    if-ne v3, v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_3

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->parseMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OPENID_ISSUER_VALIDATION_REPORTING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 151
    .line 152
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->validateIssuer(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;Ljava/lang/String;)Lr40;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-eqz p1, :cond_2

    .line 163
    .line 164
    sget-object p1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->sOpenIdProviderConfigurationIssuerValidationFailedCount:Lge;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    :cond_2
    invoke-static {v2, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->cacheConfiguration(Ljava/net/URI;Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)V
    :try_end_2
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    .line 172
    monitor-exit p0

    .line 173
    return-object p2

    .line 174
    :cond_3
    :try_start_3
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 175
    .line 176
    const-string p2, "failed_to_load_openid_configuration"

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p1, v5, p2, v0}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 195
    .line 196
    const-string p2, "requestUrl is marked non-null but is null"

    .line 197
    .line 198
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
    :try_end_3
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :goto_1
    :try_start_4
    new-instance p2, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 203
    .line 204
    const-string v0, "failed_to_load_openid_configuration"

    .line 205
    .line 206
    const-string v1, "IOException while requesting metadata"

    .line 207
    .line 208
    invoke-direct {p2, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p2

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 213
    .line 214
    const-string p2, "tenantedAuthorityString is marked non-null but is null"

    .line 215
    .line 216
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    throw p1
.end method

.method private static parseMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->GSON:Lcom/google/gson/a;

    .line 4
    .line 5
    const-class v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "body is marked non-null but is null"

    .line 15
    .line 16
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static validateIssuer(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;Ljava/lang/String;)Lr40;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    new-instance v1, Ls40;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v2}, Ls40;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;->getIssuer()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "openid_issuer_invalid_reason"

    .line 19
    .line 20
    const-string v4, "OpenIdProviderConfigurationClient:validateIssuer"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string p0, "Issuer is missing in the metadata."

    .line 25
    .line 26
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "issuer_missing"

    .line 30
    .line 31
    invoke-virtual {v1, v3, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ls40;->a()Lr40;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;->getIssuer()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v2, "openid_config_request_authority"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "openid_issuer"

    .line 56
    .line 57
    invoke-virtual {v1, v2, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    .line 64
    .line 65
    :try_start_1
    new-instance p0, Ljava/net/URL;

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->isValidated()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->isValidated()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isPublicAzureActiveDirectoryCloud(Ljava/net/URL;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :catch_1
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_0
    return-object v0

    .line 115
    :cond_3
    const-string p0, "issuer_aad_host_mismatch"

    .line 116
    .line 117
    invoke-virtual {v1, v3, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ls40;->a()Lr40;

    .line 121
    .line 122
    .line 123
    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    return-object p0

    .line 125
    :goto_1
    const-string p1, "Failed to complete AAD cloud discovery."

    .line 126
    .line 127
    invoke-static {v4, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :goto_2
    const-string p1, "Request URL is malformed."

    .line 132
    .line 133
    invoke-static {v4, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_3
    const-string p0, "issuer_validation_skipped"

    .line 137
    .line 138
    invoke-virtual {v1, v3, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ls40;->a()Lr40;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :catch_2
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "Issuer URL is malformed. "

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string p0, "issuer_malformed"

    .line 169
    .line 170
    invoke-virtual {v1, v3, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ls40;->a()Lr40;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_5
    const-string p0, "config is marked non-null but is null"

    .line 179
    .line 180
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized loadOpenIdProviderConfigurationFromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfigurationInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    return-object p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string v0, "authorityUrl is marked non-null but is null"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public final declared-synchronized loadOpenIdProviderConfigurationFromAuthorityWithExtraParams(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfigurationInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string p2, "authorityUrl is marked non-null but is null"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
