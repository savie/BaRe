.class public final Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final access$getNameValueStore(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    const-class p2, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    const-class p1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p0, "Only Long and String are natively supported as types"

    .line 41
    .line 42
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    :goto_0
    new-instance p1, Lcom/microsoft/identity/common/internal/util/SharedPrefStringNameValueStorage;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;-><init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    :goto_1
    new-instance p1, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;-><init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public static getRequestBundleForAcquireTokenInteractive(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "MsalBrokerRequestAdapter:brokerRequestFromAcquireTokenParameters"

    .line 4
    .line 5
    const-string v1, "Constructing result bundle from AcquireTokenOperationParameters."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;->_toJson(Ljava/util/List;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getExtraOptions()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getExtraOptions()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;->_toJson(Ljava/util/List;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v2, v1

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getRequestHeaders()Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getRequestHeaders()Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/RequestHeaderSerializationUtil;->toJson(Ljava/util/HashMap;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v3, v1

    .line 59
    :goto_2
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authority(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v5, " "

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->scope(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->redirect(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->clientId(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childRedirectUri(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childClientId(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getLoginHint()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->userName(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraQueryStringParameter(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraOptions(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->requestHeaders(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v2, "UNSET"

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_3
    invoke-virtual {v4, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->prompt(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getClaimsRequestJson()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->claims(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->isForceRefresh()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->forceRefresh(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->correlationId(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationName(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationVersion()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationVersion(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->msalVersion(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->environment(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 229
    .line 230
    if-eqz v0, :cond_4

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->isMultipleCloudsSupported()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    goto :goto_4

    .line 243
    :cond_4
    const/4 v0, 0x0

    .line 244
    :goto_4
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->multipleCloudsSupported(Z)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isBrokerBrowserSupportEnabled()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_5

    .line 252
    .line 253
    const-string v0, "BROWSER"

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_5
    const-string v0, "WEBVIEW"

    .line 257
    .line 258
    :goto_5
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authorizationAgent(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->powerOptCheckEnabled(Z)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;

    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-interface {v1}, Lrj7;->getTraceId()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-interface {v1}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-interface {v1}, Lrj7;->getTraceFlags()Lz88;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-interface {v1}, Lz88;->asByte()B

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags(B)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->build()Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->spanContext(Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPreferredBrowser()Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredBrowser(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPreferredAuthMethod()Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredAuthMethod(Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getAccountTransferToken()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->accountTransferToken(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->isSuppressBrokerAccountPicker()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->suppressAccountPicker(Z)V

    .line 362
    .line 363
    .line 364
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 365
    .line 366
    if-eqz v0, :cond_6

    .line 367
    .line 368
    move-object v0, p0

    .line 369
    check-cast v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->getSignInWithGoogleCredential()Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->signInWithGoogleCredential(Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;)V

    .line 376
    .line 377
    .line 378
    :cond_6
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->getRequestBundleFromBrokerRequest(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    return-object p0
.end method

.method public static getRequestBundleForAcquireTokenSilent(Landroid/content/Context;Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "MsalBrokerRequestAdapter:brokerRequestFromSilentOperationParameters"

    .line 4
    .line 5
    const-string v1, "Constructing result bundle from AcquireTokenSilentOperationParameters."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getExtraOptions()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getExtraOptions()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/QueryParamsAdapter;->_toJson(Ljava/util/List;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authority(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->scope(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->redirect(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraOptions(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->clientId(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildRedirectUri()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childRedirectUri(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getChildClientId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childClientId(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->homeAccountId(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->localAccountId(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->userName(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getClaimsRequestJson()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->claims(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->isForceRefresh()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->forceRefresh(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->correlationId(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationName(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationVersion()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationVersion(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->msalVersion(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->environment(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 188
    .line 189
    if-eqz v0, :cond_1

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->isMultipleCloudsSupported()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    goto :goto_1

    .line 202
    :cond_1
    const/4 v0, 0x0

    .line 203
    :goto_1
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->multipleCloudsSupported(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->powerOptCheckEnabled(Z)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {v2}, Lrj7;->getTraceId()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v2}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v2}, Lrj7;->getTraceFlags()Lz88;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-interface {v2}, Lz88;->asByte()B

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags(B)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->build()Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->spanContext(Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->getRequestBundleFromBrokerRequest(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 298
    .line 299
    const-string p2, "caller.info.uid"

    .line 300
    .line 301
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    return-object p1
.end method

.method public static getRequestBundleForGetAccounts(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "account.clientid.key"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "account.redirect"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "common.broker.protocol.version.name"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "8.0"

    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string v1, "can.construct.accounts.from.prt.id.token"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    const-string p1, "required.broker.protocol.version.name"

    .line 55
    .line 56
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-object v0
.end method

.method private static getRequestBundleFromBrokerRequest(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string v0, "Broker Result, raw payload size:"

    .line 2
    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "5.0"

    .line 9
    .line 10
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "broker_request_v2"

    .line 15
    .line 16
    const-class v4, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 17
    .line 18
    const-string v5, "MsalBrokerRequestAdapter:getRequestBundleFromBrokerRequest"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->getGsonInstance()Lcom/google/gson/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p0, v4}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->compressString(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    array-length v0, v0

    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " ,compressed bytes size: "

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    array-length v0, v6

    .line 55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 63
    .line 64
    invoke-static {v5, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "broker_request_v2_compressed"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 75
    .line 76
    const-string v2, "Compression to bytes failed, sending broker request as json String"

    .line 77
    .line 78
    invoke-static {v5, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->getGsonInstance()Lcom/google/gson/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p0, v4}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "Broker protocol version: "

    .line 94
    .line 95
    const-string v2, " lower than compression changes, sending as string"

    .line 96
    .line 97
    invoke-static {v0, p1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    invoke-static {v5, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->getGsonInstance()Lcom/google/gson/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p0, v4}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    const-string p0, "common.broker.protocol.version.name"

    .line 118
    .line 119
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-nez p0, :cond_1

    .line 127
    .line 128
    const-string p0, "required.broker.protocol.version.name"

    .line 129
    .line 130
    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_1
    const-string p0, "9.0"

    .line 134
    .line 135
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    const-string p1, "should.send.pkeyauth.header"

    .line 140
    .line 141
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method
