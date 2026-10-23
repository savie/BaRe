.class public final Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;
.super Lj9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private assertionCallback:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private errorCallback:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$assertionCallback$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$assertionCallback$1;-><init>(Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->assertionCallback:Lmt3;

    .line 26
    .line 27
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$errorCallback$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$errorCallback$1;-><init>(Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 2

    .line 1
    check-cast p2, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->getAssertionCallback()Lmt3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->assertionCallback:Lmt3;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->getErrorCallback()Lmt3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 17
    .line 18
    new-instance p0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string p1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->getPendingIntent()Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p2, Lrd4;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p2, p1, v0, v1, v1}, Lrd4;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 41
    .line 42
    .line 43
    const-string p1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "null_object"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 7
    .line 8
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 9
    .line 10
    const-string p2, "Result intent from legacy FIDO2 API was null."

    .line 11
    .line 12
    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    const/4 v2, -0x1

    .line 20
    if-eq p2, v2, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 23
    .line 24
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 25
    .line 26
    const-string v0, "Activity closed with result code: "

    .line 27
    .line 28
    invoke-static {p2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "bad_activity_result_code"

    .line 33
    .line 34
    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    const-string p2, "FIDO2_CREDENTIAL_EXTRA"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 50
    .line 51
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 52
    .line 53
    const-string p2, "Credential result from Intent is null."

    .line 54
    .line 55
    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    sget-object p2, Lna6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lrs9;->d([BLandroid/os/Parcelable$Creator;)Lgx6;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lna6;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lna6;->n()Ld80;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    instance-of v2, p2, Lo80;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    check-cast p2, Lo80;

    .line 82
    .line 83
    iget-object p1, p2, Lo80;->b:Ljava/lang/String;

    .line 84
    .line 85
    iget-object p2, p2, Lo80;->a:Lxx2;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 92
    .line 93
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    const-string p1, "AuthenticatorResponse has a null error message."

    .line 102
    .line 103
    :cond_3
    invoke-direct {v0, p2, p1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_4
    instance-of v2, p2, Lm80;

    .line 111
    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    check-cast p2, Lm80;

    .line 115
    .line 116
    iget-object v2, p2, Lm80;->e:Lwk9;

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    move-object v3, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v2}, Lwk9;->o()[B

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :goto_0
    if-nez v3, :cond_6

    .line 127
    .line 128
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 129
    .line 130
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 131
    .line 132
    const-string p2, "UserHandle value in AuthenticatorAssertionResponse is null."

    .line 133
    .line 134
    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->assertionCallback:Lmt3;

    .line 142
    .line 143
    iget-object v0, p2, Lm80;->b:Lwk9;

    .line 144
    .line 145
    invoke-virtual {v0}, Lwk9;->o()[B

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/16 v3, 0xb

    .line 150
    .line 151
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v4, p2, Lm80;->c:Lwk9;

    .line 159
    .line 160
    invoke-virtual {v4}, Lwk9;->o()[B

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object p2, p2, Lm80;->d:Lwk9;

    .line 172
    .line 173
    invoke-virtual {p2}, Lwk9;->o()[B

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    if-nez v2, :cond_7

    .line 185
    .line 186
    move-object v2, v1

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {v2}, Lwk9;->o()[B

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    iget-object p1, p1, Lna6;->a:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget v3, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->a:I

    .line 205
    .line 206
    new-instance v3, Lorg/json/JSONObject;

    .line 207
    .line 208
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v5, "id"

    .line 212
    .line 213
    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    const-string p1, "authenticatorData"

    .line 217
    .line 218
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    const-string p1, "clientDataJSON"

    .line 222
    .line 223
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    const-string p1, "signature"

    .line 227
    .line 228
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    const-string p1, "userHandle"

    .line 232
    .line 233
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    return-object v1

    .line 247
    :cond_8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->errorCallback:Lmt3;

    .line 248
    .line 249
    new-instance p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 250
    .line 251
    const-string p2, "unknown_error"

    .line 252
    .line 253
    const-string v0, "The legacy FIDO2 API response value is something unexpected which we currently cannot handle."

    .line 254
    .line 255
    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    return-object v1
.end method
