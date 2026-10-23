.class public abstract Lcom/microsoft/identity/common/java/foci/FociQueryUtilities;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static createTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Ljava/util/UUID;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createRefreshTokenRequest(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setClientId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setScope(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, p5}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setCorrelationId(Ljava/util/UUID;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRefreshToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "2"

    .line 35
    .line 36
    invoke-virtual {p4, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setIdTokenVersion(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p4

    .line 40
    :cond_0
    const-string p0, "redirectUri is marked non-null but is null"

    .line 41
    .line 42
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    const-string p0, "refreshToken is marked non-null but is null"

    .line 47
    .line 48
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    const-string p0, "scopes is marked non-null but is null"

    .line 53
    .line 54
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    const-string p0, "clientId is marked non-null but is null"

    .line 59
    .line 60
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public static tryFociTokenWithGivenClientId(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IAccountRecord;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "https://devicemgmt.teams.microsoft.com/.default "

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    if-eqz p2, :cond_5

    .line 8
    .line 9
    if-eqz p4, :cond_4

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Led8;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Led8;->setScheme()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Led8;->setHost(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p4}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getRealm()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string v3, "common"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p4}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getRealm()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_0
    invoke-virtual {v2, v3}, Led8;->setPath(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 52
    .line 53
    invoke-virtual {v2}, Led8;->build()Ljava/net/URI;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setAuthorityUrl(Ljava/net/URL;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->build()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v7, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 77
    .line 78
    invoke-direct {v7, v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string p3, "FociQueryUtilities:tryFociTokenWithGivenClientId"

    .line 86
    .line 87
    const-string v1, "87749df4-7ccf-48f8-aa87-704bad0e0e16"

    .line 88
    .line 89
    if-eq p1, v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getDelimitedDefaultScopeString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    move-object v4, v0

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    :goto_2
    const-string v1, "SetScopeForDMAgentForFoci"

    .line 105
    .line 106
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getDelimitedDefaultScopeString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "Teams agent client ID - making a test request with teams agent resource."

    .line 131
    .line 132
    invoke-static {p3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, "Create the token request with correlationId ["

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, "]"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {p3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move-object v3, p1

    .line 166
    move-object v6, p2

    .line 167
    invoke-static/range {v3 .. v8}, Lcom/microsoft/identity/common/java/foci/FociQueryUtilities;->createTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Ljava/util/UUID;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v0, "Start refreshing token (to verify foci) with correlationId ["

    .line 174
    .line 175
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {p3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v0, "Is the client ID able to use the foci? ["

    .line 198
    .line 199
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, "] with correlationId ["

    .line 210
    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-static {p3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-eqz p2, :cond_3

    .line 232
    .line 233
    invoke-virtual {v7, p4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAuthorizationRequestBuilder(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p2, v6}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2, v8}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setCorrelationId(Ljava/util/UUID;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    new-instance p4, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 253
    .line 254
    invoke-direct {p4, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V

    .line 255
    .line 256
    .line 257
    const-string p2, "Saving records to cache with client id"

    .line 258
    .line 259
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-static {p3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;

    .line 271
    .line 272
    invoke-virtual {p0, v7, p4, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 273
    .line 274
    .line 275
    :cond_3
    return-void

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    move-object p0, v0

    .line 278
    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    move-object p1, v0

    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    :goto_4
    throw p0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    move-object p0, v0

    .line 290
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 291
    .line 292
    const-string p2, "malformed_url"

    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    invoke-direct {p1, p2, p3, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :cond_4
    const-string p0, "accountRecord is marked non-null but is null"

    .line 303
    .line 304
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_5
    const-string p0, "redirectUri is marked non-null but is null"

    .line 309
    .line 310
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_6
    const-string p0, "clientId is marked non-null but is null"

    .line 315
    .line 316
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_7
    const-string p0, "brokerOAuth2TokenCache is marked non-null but is null"

    .line 321
    .line 322
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-void
.end method
