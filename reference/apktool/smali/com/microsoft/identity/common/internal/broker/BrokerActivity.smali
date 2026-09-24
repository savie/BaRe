.class public final Lcom/microsoft/identity/common/internal/broker/BrokerActivity;
.super Landroid/app/Activity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mBrokerIntentStarted:Ljava/lang/Boolean;

.field private mBrokerInteractiveRequestIntent:Landroid/content/Intent;

.field private mBrokerResultReceived:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerIntentStarted:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerResultReceived:Ljava/lang/Boolean;

    .line 9
    .line 10
    return-void
.end method

.method private static returnsExceptionOnActivityUnexpectedlyKilled()V
    .locals 7

    .line 1
    const-string v0, "BrokerResultAdapterFactory"

    .line 2
    .line 3
    const-string v1, "Using MsalBrokerResultAdapter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 11
    .line 12
    const-string v1, "Broker request cancelled"

    .line 13
    .line 14
    const-string v2, "The activity is killed unexpectedly."

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    const-string v1, "MsalBrokerResultAdapter:bundleFromBaseException"

    .line 23
    .line 24
    const-string v2, "Constructing result bundle from ClientException"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->errorCode(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getSubErrorCode()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->subErrorCode(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->errorMessage(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "com.microsoft.identity.common.exception.ClientException"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->exceptionType(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getCorrelationId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->correlationId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getCliTelemErrorCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->cliTelemErrorCode(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getCliTelemSubErrorCode()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->cliTelemSubErrorCode(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getSpeRing()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->speRing(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getRefreshTokenAge()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->refreshTokenAge(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 100
    .line 101
    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "Broker Result, raw payload size:"

    .line 110
    .line 111
    new-instance v2, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->getGsonInstance()Lcom/google/gson/a;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-class v5, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 121
    .line 122
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v4, "5.0"

    .line 127
    .line 128
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    const-string v4, "broker_result_v2"

    .line 133
    .line 134
    const-string v5, "MsalBrokerResultAdapter:bundleFromBrokerResult"

    .line 135
    .line 136
    if-eqz v3, :cond_0

    .line 137
    .line 138
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->compressString(Ljava/lang/String;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    array-length v1, v1

    .line 154
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, " ,compressed bytes "

    .line 158
    .line 159
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    array-length v1, v3

    .line 163
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v5, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v1, "broker_result_v2_compressed"

    .line 174
    .line 175
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 181
    .line 182
    const-string v3, "Failed to compress Broker Result, sending as jsonString "

    .line 183
    .line 184
    invoke-static {v5, v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_0
    const-string v1, "Broker protocol version: null lower than compression changes, sending as string"

    .line 192
    .line 193
    invoke-static {v5, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    const-string v0, "broker_request_v2_success"

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/16 v1, 0x3eb

    .line 210
    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v2, "com.microsoft.identity.client.request.code"

    .line 216
    .line 217
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    .line 219
    .line 220
    const/16 v1, 0x7d1

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v2, "com.microsoft.identity.client.result.code"

    .line 227
    .line 228
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 232
    .line 233
    const-string v2, "return_broker_interactive_acquire_token_result"

    .line 234
    .line 235
    invoke-virtual {v1, v2, v0}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "Result received from Broker Request code: "

    .line 2
    .line 3
    const-string v1, " Result code: "

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    const-string v0, "BrokerActivity:onActivityResult"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerResultReceived:Ljava/lang/Boolean;

    .line 19
    .line 20
    const/16 p1, 0x7d4

    .line 21
    .line 22
    if-eq p2, p1, :cond_1

    .line 23
    .line 24
    const/16 p1, 0x7d1

    .line 25
    .line 26
    if-eq p2, p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x7d2

    .line 29
    .line 30
    if-ne p2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->returnsExceptionOnActivityUnexpectedlyKilled()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const-string p1, "Completing interactive request "

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 p3, 0x3eb

    .line 51
    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    const-string v0, "com.microsoft.identity.client.request.code"

    .line 57
    .line 58
    invoke-virtual {p1, v0, p3}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    .line 60
    .line 61
    const-string p3, "com.microsoft.identity.client.result.code"

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p3, p2}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    .line 69
    .line 70
    sget-object p2, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 71
    .line 72
    const-string p3, "return_broker_interactive_acquire_token_result"

    .line 73
    .line 74
    invoke-virtual {p2, p3, p1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "broker_intent"

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/content/Intent;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerInteractiveRequestIntent:Landroid/content/Intent;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p0, "BrokerActivity:onCreate"

    .line 30
    .line 31
    const-string p1, "Extras is null."

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/content/Intent;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerInteractiveRequestIntent:Landroid/content/Intent;

    .line 44
    .line 45
    const-string v0, "broker_intent_started"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerIntentStarted:Ljava/lang/Boolean;

    .line 56
    .line 57
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerResultReceived:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->returnsExceptionOnActivityUnexpectedlyKilled()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerIntentStarted:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerIntentStarted:Ljava/lang/Boolean;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerInteractiveRequestIntent:Landroid/content/Intent;

    .line 17
    .line 18
    const/16 v1, 0x3e9

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "broker_intent"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerInteractiveRequestIntent:Landroid/content/Intent;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;->mBrokerIntentStarted:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string v0, "broker_intent_started"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
