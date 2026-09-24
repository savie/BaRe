.class public final Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;
.super Lcom/microsoft/identity/common/java/controllers/BaseController;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAuthorizationFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

.field private mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationFuture:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final acquireToken(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ArgumentException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "LocalMSALController:acquireToken"

    .line 4
    .line 5
    const-string v1, "Acquiring token..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "101"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->validate()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->addDefaultScopes(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/HashSet;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->build$1()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "LocalMSALController"

    .line 53
    .line 54
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->logParameters(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    check-cast v4, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->throwIfNetworkNotAvailable(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lcom/microsoft/identity/common/java/authorities/Authority;->getKnownAuthorityResult(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->getKnown()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    new-instance v4, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->build()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/authorities/Authority;->createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    check-cast v4, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->throwIfNetworkNotAvailable(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getAuthorizationStrategyFactory()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getBrowserSafeList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPreferredBrowser()Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->getAuthorizationStrategy(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;Ljava/util/List;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iput-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;

    .line 161
    .line 162
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getAuthorizationRequest(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iput-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;

    .line 169
    .line 170
    invoke-virtual {v5, v4, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->requestAuthorization(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;)Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    new-instance v5, Lcom/microsoft/identity/common/java/telemetry/events/UiShownEvent;

    .line 175
    .line 176
    invoke-direct {v5}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v6, "ui_shown_event"

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v6, "Microsoft.MSAL.ui_event"

    .line 185
    .line 186
    const-string v7, "Microsoft.MSAL.event_type"

    .line 187
    .line 188
    invoke-virtual {v5, v7, v6}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v6, "true"

    .line 192
    .line 193
    const-string v7, "Microsoft.MSAL.ui_visible"

    .line 194
    .line 195
    invoke-virtual {v5, v7, v6}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v5}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationFuture:Ljava/util/concurrent/Future;

    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    iput-object v5, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationFuture:Ljava/util/concurrent/Future;

    .line 211
    .line 212
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setAuthorizationResult(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IResult;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    sget-object v6, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->SUCCESS:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 223
    .line 224
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_6

    .line 229
    .line 230
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const-string v6, "request is marked non-null but is null"

    .line 237
    .line 238
    if-eqz v3, :cond_5

    .line 239
    .line 240
    if-eqz v4, :cond_4

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isPowerOptCheckEnabled()Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    check-cast v7, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 255
    .line 256
    invoke-virtual {v7, v8}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->throwIfNetworkNotAvailable(Z)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {p1, v3, v4, v7}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->createTokenRequest(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClientAppName(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationVersion()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->setClientAppVersion(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    instance-of v4, v2, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;

    .line 282
    .line 283
    if-eqz v4, :cond_0

    .line 284
    .line 285
    move-object v4, v2

    .line 286
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;

    .line 287
    .line 288
    invoke-interface {v4}, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;->getExtraParameters()Ljava/lang/Iterable;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->setExtraParameters(Ljava/lang/Iterable;)V

    .line 293
    .line 294
    .line 295
    :cond_0
    const-string v4, "BaseController:performTokenRequest"

    .line 296
    .line 297
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->logExposedFieldsOfObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    const-string v4, "BaseController"

    .line 305
    .line 306
    invoke-static {v4, v3}, Lcom/microsoft/identity/common/java/util/FileUtil;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IResult;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_6

    .line 317
    .line 318
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    if-eqz p0, :cond_3

    .line 329
    .line 330
    if-eqz v3, :cond_2

    .line 331
    .line 332
    if-eqz v4, :cond_1

    .line 333
    .line 334
    const-string v5, "BaseController:saveTokens"

    .line 335
    .line 336
    const-string v6, "Saving tokens..."

    .line 337
    .line 338
    invoke-static {v5, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, p1, p0, v3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    const/4 p1, 0x0

    .line 346
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 351
    .line 352
    new-instance v4, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 359
    .line 360
    .line 361
    sget-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 362
    .line 363
    invoke-direct {v4, v3, p0, v2, p1}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/ArrayList;Lcom/microsoft/identity/common/java/request/SdkType;Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V

    .line 367
    .line 368
    .line 369
    goto :goto_0

    .line 370
    :cond_1
    const-string p0, "tokenCache is marked non-null but is null"

    .line 371
    .line 372
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v5

    .line 376
    :cond_2
    const-string p0, "tokenResponse is marked non-null but is null"

    .line 377
    .line 378
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return-object v5

    .line 382
    :cond_3
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object v5

    .line 386
    :cond_4
    const-string p0, "response is marked non-null but is null"

    .line 387
    .line 388
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-object v5

    .line 392
    :cond_5
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    return-object v5

    .line 396
    :cond_6
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 397
    .line 398
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 408
    .line 409
    .line 410
    return-object v0

    .line 411
    :cond_7
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 412
    .line 413
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    throw p0
.end method

.method public final acquireTokenSilent(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Lcom/microsoft/identity/common/java/exception/ArgumentException;,
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    const-string v1, "Renewing access token..."

    .line 2
    .line 3
    const-string v2, "Access token is expired. Removing from cache..."

    .line 4
    .line 5
    const-string v3, "LocalMSALController:acquireTokenSilent"

    .line 6
    .line 7
    const-string v0, "Acquiring token silently..."

    .line 8
    .line 9
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 17
    .line 18
    .line 19
    move-object/from16 v4, p1

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 22
    .line 23
    .line 24
    const-string v5, "103"

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 33
    .line 34
    invoke-direct {v6}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;->validate()V

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/microsoft/identity/common/java/controllers/BaseController;->addDefaultScopes(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/HashSet;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;->toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-string v9, "No accounts found for clientId ["

    .line 63
    .line 64
    const-string v0, "B2C"

    .line 65
    .line 66
    const-string v10, "no_account_found"

    .line 67
    .line 68
    const-string v11, "]"

    .line 69
    .line 70
    if-eqz v7, :cond_d

    .line 71
    .line 72
    const-string v12, "BaseController:getCachedAccountRecord"

    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    if-eqz v13, :cond_c

    .line 79
    .line 80
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    invoke-virtual {v13}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityTypeString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v14}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityTypeString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 109
    .line 110
    .line 111
    move-result-object v16

    .line 112
    invoke-interface/range {v16 .. v16}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    move/from16 v17, v0

    .line 121
    .line 122
    invoke-interface/range {v16 .. v16}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    invoke-interface/range {v16 .. v16}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-eqz v17, :cond_4

    .line 135
    .line 136
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    if-eqz v14, :cond_3

    .line 144
    .line 145
    if-eqz v15, :cond_2

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v0, v4, v14}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v4, "MsalOAuth2TokenCache:getAccountByHomeAccountId"

    .line 153
    .line 154
    new-instance v14, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    move-object/from16 v16, v0

    .line 157
    .line 158
    const-string v0, "homeAccountId: ["

    .line 159
    .line 160
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_1

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_0

    .line 201
    .line 202
    move-object v0, v4

    .line 203
    goto :goto_2

    .line 204
    :cond_1
    const/4 v0, 0x0

    .line 205
    goto :goto_2

    .line 206
    :cond_2
    const-string v0, "homeAccountId is marked non-null but is null"

    .line 207
    .line 208
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    move-object/from16 v17, v5

    .line 212
    .line 213
    :goto_1
    const/4 v13, 0x0

    .line 214
    goto/16 :goto_a

    .line 215
    .line 216
    :cond_3
    const-string v0, "clientId is marked non-null but is null"

    .line 217
    .line 218
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    invoke-virtual {v15, v4, v14, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :goto_2
    if-eqz v0, :cond_5

    .line 231
    .line 232
    move-object v13, v0

    .line 233
    move-object/from16 v17, v5

    .line 234
    .line 235
    goto/16 :goto_a

    .line 236
    .line 237
    :cond_5
    const-string v0, "Account not found in app cache.."

    .line 238
    .line 239
    invoke-static {v12, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_7

    .line 253
    .line 254
    const-string v4, "BaseController:getAccountWithFRTIfAvailable"

    .line 255
    .line 256
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    invoke-interface {v14}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    invoke-virtual {v0, v14}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getFamilyRefreshTokenForHomeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_6

    .line 273
    .line 274
    :try_start_0
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 275
    .line 276
    .line 277
    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_4

    .line 278
    move/from16 v16, v13

    .line 279
    .line 280
    :try_start_1
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_2

    .line 284
    move-object/from16 v17, v5

    .line 285
    .line 286
    :try_start_2
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v14, v15, v13, v0, v5}, Lcom/microsoft/identity/common/java/foci/FociQueryUtilities;->tryFociTokenWithGivenClientId(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IAccountRecord;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-interface {v5}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    const/4 v13, 0x0

    .line 306
    invoke-virtual {v0, v13, v15, v5}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 307
    .line 308
    .line 309
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    goto :goto_7

    .line 311
    :catch_0
    move-exception v0

    .line 312
    goto :goto_5

    .line 313
    :catch_1
    move-exception v0

    .line 314
    goto :goto_5

    .line 315
    :catch_2
    move-exception v0

    .line 316
    :goto_3
    move-object/from16 v17, v5

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :catch_3
    move-exception v0

    .line 320
    goto :goto_3

    .line 321
    :catch_4
    move-exception v0

    .line 322
    :goto_4
    move-object/from16 v17, v5

    .line 323
    .line 324
    move/from16 v16, v13

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :catch_5
    move-exception v0

    .line 328
    goto :goto_4

    .line 329
    :goto_5
    const-string v5, "Error while attempting to validate client: "

    .line 330
    .line 331
    const-string v13, " is part of family "

    .line 332
    .line 333
    invoke-static {v5, v15, v13}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_6
    move-object/from16 v17, v5

    .line 353
    .line 354
    move/from16 v16, v13

    .line 355
    .line 356
    const-string v0, "No Foci tokens found for homeAccountId "

    .line 357
    .line 358
    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :goto_6
    const/4 v0, 0x0

    .line 366
    goto :goto_7

    .line 367
    :cond_7
    move-object/from16 v17, v5

    .line 368
    .line 369
    const-string v0, "msalOAuth2TokenCache is marked non-null but is null"

    .line 370
    .line 371
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :cond_8
    move-object/from16 v17, v5

    .line 377
    .line 378
    move/from16 v16, v13

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :goto_7
    if-nez v0, :cond_b

    .line 382
    .line 383
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->isAllowPii()Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_9

    .line 400
    .line 401
    const-string v2, "], homeAccountId ["

    .line 402
    .line 403
    invoke-static {v9, v0, v2, v1, v11}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const/4 v4, 0x0

    .line 408
    invoke-static {v4, v12, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_9
    const/4 v4, 0x0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v12, v0, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .line 430
    .line 431
    :goto_8
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 432
    .line 433
    if-eqz v16, :cond_a

    .line 434
    .line 435
    const-string v1, "homeAccountId"

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_a
    const-string v1, "localAccountId"

    .line 439
    .line 440
    :goto_9
    const-string v2, "No cached accounts found for the supplied "

    .line 441
    .line 442
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-direct {v0, v10, v1, v4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_b
    move-object v13, v0

    .line 451
    goto :goto_a

    .line 452
    :cond_c
    move-object/from16 v17, v5

    .line 453
    .line 454
    const/4 v4, 0x0

    .line 455
    const-string v0, "No cached accounts found for the supplied homeAccountId and clientId"

    .line 456
    .line 457
    invoke-static {v10, v0, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :cond_d
    move-object/from16 v17, v5

    .line 463
    .line 464
    const-string v0, "parameters is marked non-null but is null"

    .line 465
    .line 466
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_1

    .line 470
    .line 471
    :goto_a
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 472
    .line 473
    .line 474
    move-result-object v14

    .line 475
    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;

    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v14}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->build()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationIdentifier()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getMamEnrollmentId()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v11

    .line 514
    const-string v4, " "

    .line 515
    .line 516
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v12

    .line 524
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    if-eqz v9, :cond_12

    .line 528
    .line 529
    if-eqz v13, :cond_11

    .line 530
    .line 531
    if-eqz v14, :cond_10

    .line 532
    .line 533
    monitor-enter v8

    .line 534
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-virtual/range {v8 .. v14}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    invoke-virtual {v13}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    invoke-virtual {v8, v5, v9, v10}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    :cond_e
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-eqz v9, :cond_f

    .line 567
    .line 568
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    check-cast v9, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 573
    .line 574
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 575
    .line 576
    .line 577
    move-result-object v10

    .line 578
    invoke-virtual {v13, v10}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-nez v10, :cond_e

    .line 583
    .line 584
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_b

    .line 588
    :catchall_0
    move-exception v0

    .line 589
    goto :goto_c

    .line 590
    :cond_f
    monitor-exit v8

    .line 591
    goto :goto_e

    .line 592
    :goto_c
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    throw v0

    .line 594
    :cond_10
    const-string v4, "authScheme is marked non-null but is null"

    .line 595
    .line 596
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :goto_d
    const/4 v4, 0x0

    .line 600
    goto :goto_e

    .line 601
    :cond_11
    const-string v4, "account is marked non-null but is null"

    .line 602
    .line 603
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    goto :goto_d

    .line 607
    :cond_12
    const-string v4, "clientId is marked non-null but is null"

    .line 608
    .line 609
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    goto :goto_d

    .line 613
    :goto_e
    const/4 v5, 0x0

    .line 614
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    check-cast v9, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 619
    .line 620
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 628
    .line 629
    .line 630
    move-result-object v10

    .line 631
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    if-eqz v9, :cond_20

    .line 635
    .line 636
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 637
    .line 638
    .line 639
    move-result-object v10

    .line 640
    if-nez v10, :cond_13

    .line 641
    .line 642
    goto/16 :goto_11

    .line 643
    .line 644
    :cond_13
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    if-nez v10, :cond_14

    .line 649
    .line 650
    goto/16 :goto_11

    .line 651
    .line 652
    :cond_14
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->isForceRefresh()Z

    .line 653
    .line 654
    .line 655
    move-result v10

    .line 656
    if-nez v10, :cond_1e

    .line 657
    .line 658
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 663
    .line 664
    .line 665
    move-result-object v11

    .line 666
    if-eqz v10, :cond_1d

    .line 667
    .line 668
    if-eqz v11, :cond_1c

    .line 669
    .line 670
    instance-of v12, v10, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 671
    .line 672
    const/4 v13, 0x1

    .line 673
    if-eqz v12, :cond_16

    .line 674
    .line 675
    move-object v12, v10

    .line 676
    check-cast v12, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 677
    .line 678
    invoke-virtual {v12}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 679
    .line 680
    .line 681
    move-result-object v15

    .line 682
    invoke-virtual {v15}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v15

    .line 686
    invoke-static {v15}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v15

    .line 690
    if-eqz v15, :cond_15

    .line 691
    .line 692
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v10

    .line 696
    const-string v12, "."

    .line 697
    .line 698
    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v12

    .line 702
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v10

    .line 706
    aget-object v10, v10, v13

    .line 707
    .line 708
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v11

    .line 712
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 713
    .line 714
    .line 715
    move-result v10

    .line 716
    goto :goto_f

    .line 717
    :cond_15
    invoke-virtual {v12}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 718
    .line 719
    .line 720
    move-result-object v12

    .line 721
    invoke-virtual {v10}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 722
    .line 723
    .line 724
    move-result-object v10

    .line 725
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v10

    .line 729
    invoke-virtual {v12, v10}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v11

    .line 737
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result v10

    .line 741
    goto :goto_f

    .line 742
    :cond_16
    move v10, v13

    .line 743
    :goto_f
    if-eqz v10, :cond_1e

    .line 744
    .line 745
    move-object v10, v0

    .line 746
    check-cast v10, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 747
    .line 748
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    instance-of v11, v14, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 752
    .line 753
    if-eqz v11, :cond_18

    .line 754
    .line 755
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 756
    .line 757
    .line 758
    move-result-object v11

    .line 759
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getKid()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    invoke-virtual {v10}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getDeviceAtPopThumbprint()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v10

    .line 767
    invoke-static {v10}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 768
    .line 769
    .line 770
    move-result v12

    .line 771
    if-eqz v12, :cond_17

    .line 772
    .line 773
    move v10, v5

    .line 774
    goto :goto_10

    .line 775
    :cond_17
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v10

    .line 779
    goto :goto_10

    .line 780
    :cond_18
    instance-of v10, v14, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 781
    .line 782
    if-eqz v10, :cond_19

    .line 783
    .line 784
    check-cast v14, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 785
    .line 786
    invoke-virtual {v14}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v10

    .line 790
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 791
    .line 792
    .line 793
    move-result-object v11

    .line 794
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getKid()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v11

    .line 798
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 799
    .line 800
    .line 801
    move-result v10

    .line 802
    goto :goto_10

    .line 803
    :cond_19
    move v10, v13

    .line 804
    :goto_10
    if-nez v10, :cond_1a

    .line 805
    .line 806
    goto :goto_11

    .line 807
    :cond_1a
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 808
    .line 809
    .line 810
    move-result-object v10

    .line 811
    invoke-virtual {v10}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->isExpired()Z

    .line 812
    .line 813
    .line 814
    move-result v10

    .line 815
    if-eqz v10, :cond_1b

    .line 816
    .line 817
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    invoke-virtual {v8, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 825
    .line 826
    .line 827
    invoke-static {v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-static {v7, v6, v8, v0, v9}, Lcom/microsoft/identity/common/java/controllers/BaseController;->renewAccessToken(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V

    .line 831
    .line 832
    .line 833
    goto :goto_12

    .line 834
    :cond_1b
    const-string v0, "Returning silent result"

    .line 835
    .line 836
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    check-cast v0, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 844
    .line 845
    new-instance v1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 846
    .line 847
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 852
    .line 853
    .line 854
    sget-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 855
    .line 856
    invoke-direct {v1, v0, v4, v2, v13}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/ArrayList;Lcom/microsoft/identity/common/java/request/SdkType;Z)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V

    .line 860
    .line 861
    .line 862
    goto :goto_12

    .line 863
    :cond_1c
    const-string v0, "accessTokenRecord is marked non-null but is null"

    .line 864
    .line 865
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const/4 v4, 0x0

    .line 869
    return-object v4

    .line 870
    :cond_1d
    const/4 v4, 0x0

    .line 871
    const-string v0, "requestAuthority is marked non-null but is null"

    .line 872
    .line 873
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    return-object v4

    .line 877
    :cond_1e
    :goto_11
    invoke-interface {v9}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    if-eqz v2, :cond_1f

    .line 882
    .line 883
    invoke-static {v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-static {v7, v6, v8, v0, v9}, Lcom/microsoft/identity/common/java/controllers/BaseController;->renewAccessToken(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V

    .line 887
    .line 888
    .line 889
    :goto_12
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 890
    .line 891
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0, v6}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)V

    .line 895
    .line 896
    .line 897
    move-object/from16 v1, v17

    .line 898
    .line 899
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 903
    .line 904
    .line 905
    return-object v6

    .line 906
    :cond_1f
    move-object/from16 v1, v17

    .line 907
    .line 908
    new-instance v0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 909
    .line 910
    const-string v2, "no_tokens_found"

    .line 911
    .line 912
    const-string v3, "No refresh token was found. "

    .line 913
    .line 914
    const/4 v4, 0x0

    .line 915
    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 919
    .line 920
    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-static {v2}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 930
    .line 931
    .line 932
    throw v0

    .line 933
    :cond_20
    const/4 v4, 0x0

    .line 934
    const-string v0, "cacheRecord is marked non-null but is null"

    .line 935
    .line 936
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    return-object v4
.end method

.method public final canEqual(Lcom/microsoft/identity/common/java/controllers/BaseController;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final getCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;
    .locals 2
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

    .line 1
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "106"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Microsoft.MSAL.accounts_number"

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "_is_successful"

    .line 51
    .line 52
    const-string v1, "true"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final getDeviceMode(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string p0, "LocalMSALController:getDeviceMode"

    .line 2
    .line 3
    const-string p1, "LocalMSALController is not eligible to use the broker. Do not check sharedDevice mode and return false immediately."

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 3

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "LocalMSALController:onFinishAuthorizationSession"

    .line 4
    .line 5
    const-string v1, "Completing authorization..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "1032"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "Microsoft.MSAL.result_code"

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, v2, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "Microsoft.MSAL.request_code"

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, p2, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;

    .line 42
    .line 43
    invoke-static {p3}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromPropertyBag(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->completeAuthorization(ILcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationFuture:Ljava/util/concurrent/Future;

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    instance-of p3, p2, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 57
    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_0

    .line 65
    .line 66
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;->mAuthorizationFuture:Ljava/util/concurrent/Future;

    .line 67
    .line 68
    check-cast p0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setException(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    throw p1
.end method

.method public final removeCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "107"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getRealm()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p0, v1

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    invoke-virtual {v2, v3, v1, p0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    xor-int/lit8 p0, p0, 0x1

    .line 66
    .line 67
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "_is_successful"

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v1, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 85
    .line 86
    .line 87
    return p0
.end method
