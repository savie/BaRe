.class public final Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "Error is returned from webview redirect"

    .line 4
    .line 5
    const-string v1, "MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "error: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " errorDescription: "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 41
    .line 42
    invoke-direct {p1, p0, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    const-string p0, "error is marked non-null but is null"

    .line 47
    .line 48
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final createAuthorizationResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;
    .locals 6

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_9

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getAuthorizationFinalUri()Ljava/net/URI;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ldj7;->A(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "The authorization request was intentionally cancelled."

    .line 17
    .line 18
    const-string v3, "username"

    .line 19
    .line 20
    sget-object v4, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 21
    .line 22
    const-string v5, "AuthorizationResultFactory:createAuthorizationResult"

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "Unknown result code returned ["

    .line 30
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Lfz5;->v(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "]"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "Unknown error"

    .line 55
    .line 56
    invoke-static {v4, p1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_0
    invoke-static {v5, p0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "authorization_timed_out"

    .line 65
    .line 66
    const-string p1, "The authorization request timed out."

    .line 67
    .line 68
    sget-object p2, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->TIMED_OUT:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 69
    .line 70
    invoke-static {p2, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_1
    const-string p0, "Insufficient Device Registration, need to perform update WPJ with hardware backed keys"

    .line 76
    .line 77
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "insufficient_device_registration"

    .line 81
    .line 82
    const-string p1, "Device registration needs to be upgraded with strong keys"

    .line 83
    .line 84
    invoke-static {v4, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->setUpnToWpj(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_2
    const-string p0, "MDM required. Launching Intune MDM link on browser."

    .line 107
    .line 108
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p0, "device_needs_to_be_managed"

    .line 112
    .line 113
    const-string p1, "Device needs to be managed to access the resource"

    .line 114
    .line 115
    invoke-static {v4, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_3
    const-string p1, "SDK cancelled the authorization request."

    .line 121
    .line 122
    invoke-static {v5, p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p0, "auth_cancelled_by_sdk"

    .line 126
    .line 127
    const-string p1, "Sdk cancelled the auth flow as the app launched a new interactive auth request."

    .line 128
    .line 129
    sget-object p2, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->SDK_CANCEL:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 130
    .line 131
    invoke-static {p2, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_4
    const-string p0, "Device Registration needed, need to start WPJ"

    .line 137
    .line 138
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "device_registration_needed"

    .line 142
    .line 143
    const-string p1, "Device needs to be registered to access the resource"

    .line 144
    .line 145
    invoke-static {v4, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->setUpnToWpj(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const-string v0, "token_protection_required"

    .line 171
    .line 172
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->setTokenProtectionRequired(Z)V

    .line 183
    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_5
    const-string p1, "The authorization server returned an invalid response."

    .line 187
    .line 188
    const-string v1, "authorization_failed"

    .line 189
    .line 190
    if-nez v0, :cond_0

    .line 191
    .line 192
    const-string p2, "returned URL is null or empty."

    .line 193
    .line 194
    invoke-static {v5, p0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4, v1, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getState()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SERVER_CLIENT_DATA_TELEMETRY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 215
    .line 216
    invoke-interface {v2, v3}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_1

    .line 221
    .line 222
    const-string v2, "clientdata"

    .line 223
    .line 224
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v2}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->fromPipeDelimited(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    if-eqz v2, :cond_1

    .line 235
    .line 236
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->emitToSpan()V

    .line 237
    .line 238
    .line 239
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    const-string p0, "Invalid server response, empty query string from the webview redirect."

    .line 246
    .line 247
    const-string p2, "MicrosoftStsAuthorizationResultFactory:parseUrlAndCreateAuthorizationResponse"

    .line 248
    .line 249
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v1, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0

    .line 257
    :cond_2
    const-string v2, "code"

    .line 258
    .line 259
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_6

    .line 264
    .line 265
    const-string p1, "state"

    .line 266
    .line 267
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Ljava/lang/String;

    .line 272
    .line 273
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    const-string v3, "state_mismatch"

    .line 284
    .line 285
    const-string v5, "MicrosoftStsAuthorizationResultFactory:validateAndCreateAuthorizationResult"

    .line 286
    .line 287
    if-eqz v2, :cond_3

    .line 288
    .line 289
    const-string p0, "State parameter is not returned from the webview redirect."

    .line 290
    .line 291
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string p0, "State is not returned"

    .line 295
    .line 296
    invoke-static {v4, v3, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :cond_3
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-nez v2, :cond_5

    .line 306
    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-nez p2, :cond_4

    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_4
    const-string p2, "Auth code is successfully returned from webview redirect."

    .line 315
    .line 316
    invoke-static {v5, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    new-instance p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;

    .line 320
    .line 321
    invoke-direct {p2, v1, p1, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    .line 323
    .line 324
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 325
    .line 326
    invoke-direct {p1, p2, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V

    .line 327
    .line 328
    .line 329
    sget-object p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->SUCCESS:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 330
    .line 331
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->setAuthorizationStatus(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->setAuthorizationResponse(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;)V

    .line 335
    .line 336
    .line 337
    return-object p1

    .line 338
    :cond_5
    :goto_0
    const-string p0, "State parameter returned from the redirect is not same as the one sent in request."

    .line 339
    .line 340
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string p0, "Returned state from authorize endpoint is not the same as the one sent"

    .line 344
    .line 345
    invoke-static {v4, v3, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    return-object p0

    .line 350
    :cond_6
    const-string p0, "error"

    .line 351
    .line 352
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-eqz p2, :cond_7

    .line 357
    .line 358
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    check-cast p0, Ljava/lang/String;

    .line 363
    .line 364
    const-string p1, "error_subcode"

    .line 365
    .line 366
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    check-cast p1, Ljava/lang/String;

    .line 371
    .line 372
    const-string p2, "error_description"

    .line 373
    .line 374
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    check-cast p2, Ljava/lang/String;

    .line 379
    .line 380
    const-string v0, "Error is returned from webview redirect"

    .line 381
    .line 382
    const-string v1, "MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse"

    .line 383
    .line 384
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v2, "error: "

    .line 390
    .line 391
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v2, "error subcode:"

    .line 398
    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string p1, " errorDescription: "

    .line 406
    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;

    .line 421
    .line 422
    invoke-direct {p1, p0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    new-instance p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 426
    .line 427
    invoke-direct {p0, v4, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V

    .line 428
    .line 429
    .line 430
    return-object p0

    .line 431
    :cond_7
    invoke-static {v4, v1, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    return-object p0

    .line 436
    :pswitch_6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getException()Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    if-eqz p0, :cond_8

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-static {v4, p1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :cond_8
    :pswitch_7
    const-string p0, "Device needs to have broker installed, we expect the apps to call usback when the broker is installed"

    .line 456
    .line 457
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string p0, "broker_needs_to_be_installed"

    .line 461
    .line 462
    const-string p1, "Device needs to have broker installed"

    .line 463
    .line 464
    invoke-static {v4, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 473
    .line 474
    .line 475
    move-result-object p2

    .line 476
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    check-cast p1, Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->setUpnToWpj(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    return-object p0

    .line 486
    :pswitch_8
    invoke-static {v5, p0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const-string p0, "user_cancelled"

    .line 490
    .line 491
    const-string p1, "User pressed device back button to cancel the flow."

    .line 492
    .line 493
    sget-object p2, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;->USER_CANCEL:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 494
    .line 495
    invoke-static {p2, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    return-object p0

    .line 500
    :cond_9
    const-string p1, "request is marked non-null but is null"

    .line 501
    .line 502
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    return-object p0

    .line 506
    nop

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
