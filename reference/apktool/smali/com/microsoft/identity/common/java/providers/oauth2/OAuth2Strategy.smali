.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericAccessToken:",
        "Ljava/lang/Object;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        "GenericAuthorizationRequestBuilder:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;",
        "GenericAuthorizationStrategy::",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;",
        "GenericOAuth2Configuration:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;",
        "GenericOAuth2StrategyParameters:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;",
        "GenericAuthorizationResponse:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;",
        "GenericTokenRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;",
        "GenericTokenResult:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;",
        "GenericAuthorizationResult:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

.field protected final mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field protected final mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2Configuration;"
        }
    .end annotation
.end field

.field protected final mStrategyParameters:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2StrategyParameters;"
        }
    .end annotation
.end field

.field protected mTokenEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mStrategyParameters:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p1, "OAuth2Strategy"

    .line 32
    .line 33
    const-string p2, "No valid platform component to initialize ClockSkewManager with!"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public abstract createTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public final getAuthorityFromTokenEndpoint()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "oauth2/v2.0/token"

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public performTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "OAuth2Strategy:performTokenRequest"

    .line 2
    .line 3
    const-string v1, "Performing token request..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeObjectToFormUrlEncoded(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/TreeMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "correlation_id"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "client-request-id"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getLibraryVersion()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getPlatformIdParameters()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "x-client-SKU"

    .line 52
    .line 53
    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v2, "x-client-Ver"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v2, "Content-Type"

    .line 62
    .line 63
    const-string v3, "application/x-www-form-urlencoded"

    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v2, "x-app-name"

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->getClientAppName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string v2, "x-app-ver"

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->getClientAppVersion()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/net/URL;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 94
    .line 95
    .line 96
    const-string v2, "UTF-8"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 108
    .line 109
    invoke-virtual {v2, v3, p1, v1, v0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/AbstractMap;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getDate()Ljava/util/Date;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getDate()Ljava/util/Date;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 135
    .line 136
    if-eqz p0, :cond_0

    .line 137
    .line 138
    check-cast p0, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 139
    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->onTimestampReceived(J)V

    .line 141
    .line 142
    .line 143
    :cond_0
    return-object p1
.end method

.method public final requestToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "OAuth2Strategy:requestToken"

    .line 2
    .line 3
    const-string v1, "Requesting token..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->performTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "response is marked non-null but is null"

    .line 14
    .line 15
    if-eqz p0, :cond_15

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x190

    .line 22
    .line 23
    if-lt v2, v3, :cond_4

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-string v2, "{}"

    .line 38
    .line 39
    :cond_0
    const-class v3, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;

    .line 40
    .line 41
    sget-object v4, Lcom/microsoft/identity/common/java/util/ObjectMapper;->GSON:Lcom/google/gson/a;

    .line 42
    .line 43
    invoke-virtual {v4, v2, v3}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    .line 51
    .line 52
    const-string v3, "responseBody is marked non-null but is null"

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2
    :try_end_0
    .catch Lgl4; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    new-instance v2, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->setError(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v5, "Received "

    .line 77
    .line 78
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " status code from Server "

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->setStatusCode(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    new-instance v4, Lcom/google/gson/a;

    .line 116
    .line 117
    invoke-direct {v4}, Lcom/google/gson/a;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v3}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->setResponseHeadersJson(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const-string p0, "headersIn is marked non-null but is null"

    .line 129
    .line 130
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->setResponseBody(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v3, v2

    .line 142
    move-object v2, v0

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-class v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 149
    .line 150
    sget-object v4, Lcom/microsoft/identity/common/java/util/ObjectMapper;->GSON:Lcom/google/gson/a;

    .line 151
    .line 152
    invoke-virtual {v4, v2, v3}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 157
    .line 158
    move-object v3, v0

    .line 159
    :goto_2
    new-instance v4, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 160
    .line 161
    invoke-direct {v4, v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;)V

    .line 162
    .line 163
    .line 164
    const-string v3, "MicrosoftStsTokenResponseHandler:handleTokenResponse"

    .line 165
    .line 166
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IResult;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const/4 v5, 0x0

    .line 174
    if-eqz v3, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const-string v6, "x-ms-clitelem"

    .line 181
    .line 182
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/util/List;

    .line 187
    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_5

    .line 195
    .line 196
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->fromXMsCliTelemHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->setCliTelemInfo(Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;)V

    .line 207
    .line 208
    .line 209
    if-eqz v2, :cond_5

    .line 210
    .line 211
    if-eqz v3, :cond_5

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v2, v6}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->setSpeRing(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    const-string v3, "x-ms-clientdata"

    .line 228
    .line 229
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    sget-object v7, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SERVER_CLIENT_DATA_TELEMETRY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 238
    .line 239
    invoke-interface {v6, v7}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_6

    .line 244
    .line 245
    invoke-static {v3}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->fromPipeDelimited(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-eqz v3, :cond_6

    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->emitToSpan()V

    .line 252
    .line 253
    .line 254
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v6, "xms-ccs-requestid"

    .line 260
    .line 261
    invoke-virtual {p0, v6}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    if-eqz v7, :cond_7

    .line 266
    .line 267
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    sget-object v9, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 279
    .line 280
    invoke-interface {v8, v9}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_7

    .line 285
    .line 286
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    :cond_7
    const-string v6, "x-ms-srs"

    .line 290
    .line 291
    invoke-virtual {p0, v6}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    if-eqz p0, :cond_8

    .line 296
    .line 297
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    sget-object v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 309
    .line 310
    invoke-interface {v7, v8}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-eqz v7, :cond_8

    .line 315
    .line 316
    invoke-virtual {v3, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    :cond_8
    if-eqz v2, :cond_a

    .line 320
    .line 321
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExtraParameters()Ljava/lang/Iterable;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    if-eqz p0, :cond_9

    .line 326
    .line 327
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExtraParameters()Ljava/lang/Iterable;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_9

    .line 340
    .line 341
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, Ljava/util/Map$Entry;

    .line 346
    .line 347
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Ljava/lang/String;

    .line 352
    .line 353
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    check-cast v6, Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-virtual {v2, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->setExtraParameters(Ljava/lang/Iterable;)V

    .line 368
    .line 369
    .line 370
    :cond_a
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    if-eqz p0, :cond_b

    .line 375
    .line 376
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    :cond_b
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    if-eqz p0, :cond_14

    .line 388
    .line 389
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccessResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 394
    .line 395
    if-eqz p0, :cond_13

    .line 396
    .line 397
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getTokenType()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    if-eqz v1, :cond_d

    .line 406
    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_c

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_c
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 415
    .line 416
    const-string p1, "]\nActual: ["

    .line 417
    .line 418
    const-string v3, "]"

    .line 419
    .line 420
    const-string v4, "Expected: ["

    .line 421
    .line 422
    invoke-static {v4, v1, p1, v2, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    const-string v1, "auth_scheme_mismatch"

    .line 427
    .line 428
    invoke-direct {p0, v1, p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .line 430
    .line 431
    throw p0

    .line 432
    :cond_d
    :goto_4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getScope()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-eqz v2, :cond_e

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_e
    const-string v2, "urn:aad:tb:update:prt/.default"

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    :goto_5
    const-string v1, "tokens_missing"

    .line 450
    .line 451
    const-string v2, ""

    .line 452
    .line 453
    if-nez v5, :cond_f

    .line 454
    .line 455
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_f

    .line 464
    .line 465
    const-string v3, "access_token"

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    move-object v3, v1

    .line 472
    goto :goto_6

    .line 473
    :cond_f
    move-object v3, v0

    .line 474
    :goto_6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getGrantType()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    const-string v6, "client_credentials"

    .line 479
    .line 480
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-nez v5, :cond_10

    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    if-eqz v5, :cond_10

    .line 495
    .line 496
    const-string v3, " id_token"

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    move-object v3, v1

    .line 503
    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getGrantType()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    if-nez p1, :cond_11

    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 518
    .line 519
    .line 520
    move-result p0

    .line 521
    if-eqz p0, :cond_11

    .line 522
    .line 523
    const-string p0, " refresh_token"

    .line 524
    .line 525
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    goto :goto_7

    .line 530
    :cond_11
    move-object v1, v3

    .line 531
    :goto_7
    if-nez v1, :cond_12

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_12
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 535
    .line 536
    const-string p1, "Missing required tokens of type: "

    .line 537
    .line 538
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-direct {p0, v1, p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    .line 544
    .line 545
    throw p0

    .line 546
    :cond_13
    invoke-static {v1}, Lf6;->n(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    return-object v0

    .line 550
    :cond_14
    :goto_8
    return-object v4

    .line 551
    :cond_15
    invoke-static {v1}, Lf6;->n(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    return-object v0
.end method

.method public final setTokenEndpoint(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    instance-of v0, p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const-string v1, "slice"

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Led8;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    const-string v1, "dc"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, v1, p1}, Led8;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Led8;->build()Ljava/net/URI;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 75
    .line 76
    const-string v0, "malformed_url"

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    return-void
.end method
