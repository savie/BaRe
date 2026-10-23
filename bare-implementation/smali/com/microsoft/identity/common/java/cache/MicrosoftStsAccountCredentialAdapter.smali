.class public final Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static createAccessToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .locals 13

    .line 1
    const-string v0, "pop"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    div-long/2addr v1, v3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    div-long/2addr v5, v3

    .line 15
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    add-long/2addr v7, v5

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    div-long/2addr v5, v3

    .line 29
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshIn()Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshIn()Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    add-long/2addr v9, v5

    .line 49
    new-instance v5, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-direct {v5, v6}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 59
    .line 60
    invoke-direct {v6}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    if-nez v11, :cond_1

    .line 68
    .line 69
    const-string v11, ""

    .line 70
    .line 71
    :cond_1
    sget-object v12, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 72
    .line 73
    const-string v12, "AccessToken"

    .line 74
    .line 75
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_2

    .line 80
    .line 81
    const-string v12, "AccessToken_With_AuthScheme"

    .line 82
    .line 83
    :cond_2
    invoke-virtual {v6, v12}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getRealm()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static {v5, v11}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setExpiresOn(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setRefreshOn(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    div-long/2addr v1, v3

    .line 166
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-nez v3, :cond_3

    .line 171
    .line 172
    const-wide/16 v3, 0x0

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    :goto_1
    add-long/2addr v1, v3

    .line 184
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setExtendedExpiresOn(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setAuthority(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setAccessTokenType(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->getApplicationIdentifier()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v6, p1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setApplicationIdentifier(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setMamEnrollmentIdentifier()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_4

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getDeviceAtPopThumbprint()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v6, p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setKid(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    :cond_4
    return-object v6

    .line 233
    :catch_0
    move-exception p0

    .line 234
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    const/4 p0, 0x0

    .line 238
    return-object p0
.end method

.method public static createIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getRealm()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getCredentialTypeFromVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public static createRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    new-instance v2, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v4, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 23
    .line 24
    const-string v4, "RefreshToken"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method private static getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "\\s+"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x20

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_1
    return-object p1
.end method
