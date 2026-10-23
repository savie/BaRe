.class public final Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
.super Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "api_start_event"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Microsoft.MSAL.api_event"

    .line 10
    .line 11
    const-string v1, "Microsoft.MSAL.event_type"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final put$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final putApiId$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "Microsoft.MSAL.api_id"

    .line 4
    .line 5
    invoke-super {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "apiId is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Microsoft.MSAL.sdk_name"

    .line 20
    .line 21
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string v0, "Microsoft.MSAL.sdk_version"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Microsoft.MSAL.redirect_uri"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRedirectUri()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "Microsoft.MSAL.client_id"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getClientId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-super {p0, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "Microsoft.MSAL.broker_protocol_version"

    .line 60
    .line 61
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    move-object v0, p1

    .line 69
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "Microsoft.MSAL.authority"

    .line 92
    .line 93
    invoke-super {p0, v3, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v2, "Microsoft.MSAL.authority_type"

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityTypeString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getClaimsRequestJson()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    const-string v1, "false"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "true"

    .line 119
    .line 120
    :goto_0
    const-string v2, "Microsoft.MSAL.claim_request"

    .line 121
    .line 122
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "Microsoft.MSAL.scope_size"

    .line 144
    .line 145
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "Microsoft.MSAL.scope_value"

    .line 157
    .line 158
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    const-string v1, "Microsoft.MSAL.authentication_scheme"

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v2, "Microsoft.MSAL.user_agent"

    .line 198
    .line 199
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    const-string v1, "Microsoft.MSAL.login_hint"

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getLoginHint()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-super {p0, v1, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getExtraQueryStringParameters()Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v2, "Microsoft.MSAL.query_params"

    .line 230
    .line 231
    invoke-super {p0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_9

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getPrompt()Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v1, "Microsoft.MSAL.prompt_behavior"

    .line 249
    .line 250
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_9
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 254
    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_a

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "Microsoft.MSAL.user_id"

    .line 274
    .line 275
    invoke-super {p0, v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->isForceRefresh()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    const-string v0, "Microsoft.MSAL.force_refresh"

    .line 287
    .line 288
    invoke-super {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_b
    :goto_1
    return-void
.end method
