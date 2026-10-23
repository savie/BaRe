.class public final Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;
.super Lcom/microsoft/identity/common/java/commands/TokenCommand;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/TokenCommand;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    return v0
.end method

.method public final execute()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "Executing with controller: "

    .line 2
    .line 3
    const-string v1, ":execute"

    .line 4
    .line 5
    const-string v2, "SilentTokenCommand"

    .line 6
    .line 7
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllerFactory()Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move v7, v6

    .line 36
    move-object v6, v5

    .line 37
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-ge v7, v8, :cond_4

    .line 42
    .line 43
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-static {v9, v10}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    check-cast v9, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Lcom/microsoft/identity/common/java/controllers/BaseController;->acquireTokenSilent(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_2

    .line 112
    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v8, ": Succeeded"

    .line 148
    .line 149
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-static {v9, v8}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/UiRequiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    goto :goto_2

    .line 172
    :catch_0
    move-exception v8

    .line 173
    goto :goto_3

    .line 174
    :catch_1
    move-exception v8

    .line 175
    goto :goto_3

    .line 176
    :goto_2
    if-eqz v6, :cond_0

    .line 177
    .line 178
    :try_start_2
    throw v6

    .line 179
    :catchall_1
    move-exception p0

    .line 180
    goto :goto_5

    .line 181
    :cond_0
    throw p0

    .line 182
    :goto_3
    if-nez v7, :cond_1

    .line 183
    .line 184
    move-object v6, v8

    .line 185
    :cond_1
    add-int/lit8 v9, v7, 0x1

    .line 186
    .line 187
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-ge v9, v10, :cond_3

    .line 192
    .line 193
    const-string v9, "invalid_grant"

    .line 194
    .line 195
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-nez v9, :cond_2

    .line 204
    .line 205
    const-string v9, "no_tokens_found"

    .line 206
    .line 207
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-nez v9, :cond_2

    .line 216
    .line 217
    const-string v9, "no_account_found"

    .line 218
    .line 219
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_3

    .line 228
    .line 229
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_3
    throw v6

    .line 234
    :cond_4
    if-nez v5, :cond_5

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-eqz p0, :cond_6

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_6
    invoke-static {v5}, Lcom/microsoft/identity/common/PropertyBagUtil;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)Lcom/microsoft/identity/common/java/exception/BaseException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :goto_4
    return-object v5

    .line 253
    :goto_5
    :try_start_3
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :catchall_2
    move-exception v0

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    :goto_6
    throw p0
.end method
