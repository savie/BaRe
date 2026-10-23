.class public abstract Lcom/microsoft/identity/common/java/controllers/BaseController;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static addDefaultScopes(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/HashSet;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "commandParameters is marked non-null but is null"

    .line 28
    .line 29
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static finalizeCacheRecordForResult(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    const-string p0, "scheme is marked non-null but is null"

    .line 46
    .line 47
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string p0, "cacheRecord is marked non-null but is null"

    .line 52
    .line 53
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static getAuthorizationRequest(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAuthorizationRequestBuilder(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "correlation_id"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    const-string v2, "BaseController"

    .line 37
    .line 38
    const-string v3, "correlation id from diagnostic context is not a UUID"

    .line 39
    .line 40
    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hasNestedAppParameters()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setBrkRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setBrkClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setCorrelationId(Ljava/util/UUID;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationIdentifier()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setApplicationIdentifier(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    instance-of v2, p1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    move-object v2, p1

    .line 116
    check-cast v2, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->join(Ljava/util/HashSet;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setTokenScope(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    instance-of v3, v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 134
    .line 135
    if-eqz v3, :cond_1

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {p0, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setAuthority(Ljava/net/URL;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->isMultipleCloudsSupported()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-virtual {p0, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setMultipleCloudAware(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStateGenerator()Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;->generate()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {p0, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v3, v3, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationIdentifier()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setApplicationIdentifier(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_1
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraScopesToConsent()Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-eqz v3, :cond_2

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraScopesToConsent()Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getRequestHeaders()Ljava/util/HashMap;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-eqz v4, :cond_3

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getRequestHeaders()Ljava/util/HashMap;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    const-string v4, "x-app-name"

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const-string v4, "x-app-ver"

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationVersion()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v4, "x-ms-PKeyAuth"

    .line 235
    .line 236
    const-string v5, "1.0"

    .line 237
    .line 238
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iput-object v4, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mExtraQueryParams:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getClaimsRequestJson()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {p0, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setClaims(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setRequestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomEnabled()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isWebViewZoomControlsEnabled()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setWebViewZoomControlsEnabled(Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getLoginHint()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setLoginHint(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getDomainHint()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setDomainHint(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPreferredAuthMethod()Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setPreferredAuthMethod(Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->getInstalledCompanyPortalVersion()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-nez v3, :cond_4

    .line 325
    .line 326
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setInstalledCompanyPortalVersion(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_4
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getLoginHint()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-nez p1, :cond_5

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    sget-object v2, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 344
    .line 345
    if-ne p1, v2, :cond_5

    .line 346
    .line 347
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_5
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->join(Ljava/util/HashSet;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 355
    .line 356
    .line 357
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 358
    .line 359
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V

    .line 360
    .line 361
    .line 362
    return-object p1

    .line 363
    :cond_6
    const-string p0, "parameters is marked non-null but is null"

    .line 364
    .line 365
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-object v0

    .line 369
    :cond_7
    const-string p0, "strategy is marked non-null but is null"

    .line 370
    .line 371
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return-object v0
.end method

.method public static getDelimitedDefaultScopeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public static logParameters(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V
    .locals 1

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->isAllowPii()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object v0, Lcom/microsoft/identity/common/java/util/ObjectMapper;->GSON:Lcom/google/gson/a;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static renewAccessToken(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    const-string v0, "strategy is marked non-null but is null"

    .line 2
    .line 3
    if-eqz p3, :cond_f

    .line 4
    .line 5
    const-string v1, "Renewing access token..."

    .line 6
    .line 7
    const-string v2, "BaseController:renewAccessToken"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p4}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->logParameters(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz p3, :cond_6

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    if-eqz p0, :cond_4

    .line 25
    .line 26
    const-string v0, "Requesting tokens..."

    .line 27
    .line 28
    const-string v4, "BaseController:performSilentTokenRequest"

    .line 29
    .line 30
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    check-cast v0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->throwIfNetworkNotAvailable(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getKnownAuthorityResult(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->getKnown()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v5, p3

    .line 69
    check-cast v5, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createRefreshTokenRequest(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hasNestedAppParameters()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setClientId(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setBrkClientId(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setBrkRedirectUri(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setClientId(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->join(Ljava/util/HashSet;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setScope(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRefreshToken(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getClaimsRequestJson()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClaims(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClientAppName(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationVersion()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClientAppVersion(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    sget-object v5, Lcom/microsoft/identity/common/java/request/SdkType;->ADAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 161
    .line 162
    if-ne v1, v5, :cond_1

    .line 163
    .line 164
    const-string v1, "1"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setIdTokenVersion(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getScope()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_2

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v5, "Scopes: ["

    .line 182
    .line 183
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->getScope()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, "]"

    .line 194
    .line 195
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v4, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_2
    invoke-virtual {p3, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_2

    .line 210
    :cond_3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    throw p0

    .line 215
    :cond_4
    const-string v0, "parameters is marked non-null but is null"

    .line 216
    .line 217
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_1
    move-object v0, v3

    .line 221
    goto :goto_2

    .line 222
    :cond_5
    const-string v0, "refreshToken is marked non-null but is null"

    .line 223
    .line 224
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_6
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :goto_2
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IResult;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_b

    .line 243
    .line 244
    const-string p4, "Token request was successful"

    .line 245
    .line 246
    invoke-static {v2, p4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hasNestedAppParameters()Z

    .line 250
    .line 251
    .line 252
    move-result p4

    .line 253
    if-eqz p4, :cond_9

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 260
    .line 261
    move-object p4, p3

    .line 262
    check-cast p4, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 263
    .line 264
    invoke-static {p3, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getAuthorizationRequest(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    if-eqz p2, :cond_8

    .line 269
    .line 270
    if-eqz p4, :cond_7

    .line 271
    .line 272
    const-string v1, "MicrosoftStsAccountCredentialAdapter"

    .line 273
    .line 274
    const-string v2, "Creating Account"

    .line 275
    .line 276
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 280
    .line 281
    invoke-virtual {p4, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-direct {v1, v2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;)V

    .line 286
    .line 287
    .line 288
    invoke-static {p4, p3, p2}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createAccessToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {p4, p3, p2}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v2}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 307
    .line 308
    .line 309
    invoke-static {p4, p3, p2}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken(Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_7
    const-string p2, "oAuth2Strategy is marked non-null but is null"

    .line 330
    .line 331
    invoke-static {p2}, Lf6;->n(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_8
    const-string p2, "microsoftStsTokenResponse is marked non-null but is null"

    .line 336
    .line 337
    invoke-static {p2}, Lf6;->n(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_9
    invoke-static {p3, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getAuthorizationRequest(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 342
    .line 343
    .line 344
    move-result-object p4

    .line 345
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {p2, p3, p4, v1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Ljava/util/ArrayList;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    :goto_3
    const/4 p2, 0x0

    .line 354
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    check-cast p3, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 359
    .line 360
    new-instance p4, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 361
    .line 362
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {p3, v1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-direct {p4, p3, v3, p0, p2}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/ArrayList;Lcom/microsoft/identity/common/java/request/SdkType;Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    if-eqz p0, :cond_a

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    invoke-virtual {p4, p2}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setSpeRing(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {p4, p0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    new-instance p0, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;

    .line 401
    .line 402
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    const-string p3, "Microsoft.MSAL.spe_info"

    .line 414
    .line 415
    invoke-virtual {p0, p3, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_a
    new-instance p0, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;

    .line 423
    .line 424
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 428
    .line 429
    .line 430
    :goto_4
    invoke-virtual {p1, p4}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_b
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    if-eqz p0, :cond_e

    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    new-instance p3, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    const-string v1, "Error: "

    .line 459
    .line 460
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v1, " Suberror: "

    .line 467
    .line 468
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p3

    .line 478
    invoke-static {v2, p3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    const-string p3, "invalid_grant"

    .line 482
    .line 483
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p3

    .line 487
    if-eqz p3, :cond_c

    .line 488
    .line 489
    const-string p3, "bad_token"

    .line 490
    .line 491
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_c

    .line 496
    .line 497
    invoke-interface {p4}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    new-instance p2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string p3, "Refresh token is invalid, attempting to delete the RT from cache, result:"

    .line 508
    .line 509
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :cond_c
    const-string p1, "service_not_available"

    .line 523
    .line 524
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result p0

    .line 528
    if-nez p0, :cond_d

    .line 529
    .line 530
    return-void

    .line 531
    :cond_d
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 534
    .line 535
    .line 536
    move-result-object p2

    .line 537
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getStatusCode()I

    .line 538
    .line 539
    .line 540
    move-result p2

    .line 541
    const-string p3, "AAD is not available."

    .line 542
    .line 543
    invoke-direct {p0, p1, p3, p2}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 544
    .line 545
    .line 546
    throw p0

    .line 547
    :cond_e
    const-string p0, "Invalid state, No token success or error response on the token result"

    .line 548
    .line 549
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :cond_f
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    return-void
.end method


# virtual methods
.method public abstract acquireToken(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract acquireTokenSilent(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract canEqual(Lcom/microsoft/identity/common/java/controllers/BaseController;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->canEqual(Lcom/microsoft/identity/common/java/controllers/BaseController;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public abstract getCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDeviceMode(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
.end method

.method public abstract removeCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
