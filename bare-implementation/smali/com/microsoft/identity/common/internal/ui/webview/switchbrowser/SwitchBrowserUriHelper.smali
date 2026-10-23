.class public abstract Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final STATE_VALIDATION_REQUIRED$delegate:Lgv7;

.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgv7;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;->INSTANCE:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgv7;-><init>(Lbt3;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->STATE_VALIDATION_REQUIRED$delegate:Lgv7;

    .line 9
    .line 10
    return-void
.end method

.method public static buildProcessUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "malformed_url"

    .line 9
    .line 10
    const-string v4, "SwitchBrowserUriHelper:buildProcessUri"

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_5

    .line 19
    .line 20
    const-string v5, "action_uri"

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_4

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_4

    .line 33
    .line 34
    const-string v6, "SwitchBrowserUriHelper:validateActionUri"

    .line 35
    .line 36
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 37
    .line 38
    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v7}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    :try_start_1
    new-instance v7, Ljava/net/URL;

    .line 45
    .line 46
    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    invoke-static {v7}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isValidCloudHost(Ljava/net/URL;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "Authority \'"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, "\' is not a valid AAD authority"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 80
    .line 81
    const-string v1, "unknown_authority"

    .line 82
    .line 83
    invoke-direct {v0, v1, p0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 87
    .line 88
    invoke-static {v6, p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :catch_0
    move-exception v7

    .line 93
    const-string v8, "Malformed action URI: \'"

    .line 94
    .line 95
    const/16 v9, 0x27

    .line 96
    .line 97
    invoke-static {v9, v8, v5}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    sget v9, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    invoke-static {v6, v8, v7}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v8, v7}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception v3

    .line 111
    sget v7, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 112
    .line 113
    const-string v7, "Failed to perform cloud discovery for AAD authorities."

    .line 114
    .line 115
    invoke-static {v6, v7, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    const-string v6, "io_error"

    .line 119
    .line 120
    invoke-static {v6, v7, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    const-string v3, "state"

    .line 124
    .line 125
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance v6, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->STATE_VALIDATION_REQUIRED$delegate:Lgv7;

    .line 138
    .line 139
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    if-eqz p0, :cond_1

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    .line 159
    invoke-virtual {v6, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 164
    .line 165
    const-string v0, "missing_parameter"

    .line 166
    .line 167
    const-string v1, "State is null or empty"

    .line 168
    .line 169
    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 173
    .line 174
    invoke-static {v4, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_2
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/String;

    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    return-object p0

    .line 233
    :cond_4
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 234
    .line 235
    const-string v0, "switch browser action uri is null or empty"

    .line 236
    .line 237
    invoke-direct {p0, v3, v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 241
    .line 242
    invoke-static {v4, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw p0

    .line 246
    :cond_5
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 247
    .line 248
    const-string v0, "switch browser code is null or empty"

    .line 249
    .line 250
    invoke-direct {p0, v3, v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 254
    .line 255
    invoke-static {v4, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw p0
.end method

.method public static statesMatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->STATE_VALIDATION_REQUIRED$delegate:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "SwitchBrowserUriHelper:statesMatch"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    const-string p0, "State validation is not required."

    .line 23
    .line 24
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, "state_mismatch"

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v4, "state"

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 68
    .line 69
    const-string p0, "States match."

    .line 70
    .line 71
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 76
    .line 77
    const-string p1, "State does not match with the auth request state."

    .line 78
    .line 79
    invoke-direct {p0, v3, p1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 87
    .line 88
    const-string p1, "Authorization request state is null."

    .line 89
    .line 90
    invoke-direct {p0, v3, p1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_3
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 98
    .line 99
    const-string p1, "State is null."

    .line 100
    .line 101
    invoke-direct {p0, v3, p1, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    throw p0
.end method
