.class public abstract Lcom/microsoft/identity/client/internal/MsalUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->builder()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v0, Lcom/microsoft/identity/client/PublicClientApplication;->a:I

    .line 84
    .line 85
    const-string v0, "8.3.2"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isPowerOptCheckForEnabled()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static createInteractiveTokenCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/client/AcquireTokenParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isEmpty(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v1, v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v1, v2

    .line 52
    :goto_0
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    instance-of v3, v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    check-cast v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getMultipleCloudsSupported()Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3, p0, v1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->builder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->activity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getFragment()Landroidx/fragment/app/o;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromActivity(Landroid/app/Activity;Landroidx/fragment/app/o;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-static {v5}, Lcom/microsoft/identity/client/internal/MsalUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 184
    .line 185
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 210
    .line 211
    sget-object v4, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 212
    .line 213
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 218
    .line 219
    sget v4, Lcom/microsoft/identity/client/PublicClientApplication;->a:I

    .line 220
    .line 221
    const-string v4, "8.3.2"

    .line 222
    .line 223
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getPreferredBrowser()Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredBrowser(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getBrowserSafeList()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->browserSafeList(Ljava/util/List;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 250
    .line 251
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const/4 v3, 0x1

    .line 262
    if-eqz v1, :cond_5

    .line 263
    .line 264
    move v1, v3

    .line 265
    goto :goto_2

    .line 266
    :cond_5
    const/4 v1, 0x0

    .line 267
    :goto_2
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh(Z)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 272
    .line 273
    new-instance v1, Ljava/util/HashSet;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 287
    .line 288
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getExtraScopesToConsent()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraScopesToConsent(Ljava/util/List;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getExtraQueryStringParameters()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const/16 v4, 0x1c

    .line 301
    .line 302
    const-string v5, "1"

    .line 303
    .line 304
    const-string v6, "webauthn"

    .line 305
    .line 306
    if-nez v1, :cond_6

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebauthnCapable()Ljava/lang/Boolean;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_6

    .line 317
    .line 318
    move-object v9, v2

    .line 319
    goto :goto_4

    .line 320
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 321
    .line 322
    if-eqz v1, :cond_7

    .line 323
    .line 324
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    :goto_3
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebauthnCapable()Ljava/lang/Boolean;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    new-instance v8, Ljava/util/AbstractMap$SimpleEntry;

    .line 340
    .line 341
    invoke-direct {v8, v6, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    new-instance v9, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .line 348
    .line 349
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .line 351
    if-ge v10, v4, :cond_8

    .line 352
    .line 353
    const-string v1, "Device is running on an Android version less than 9 (API 28), which is the minimum level for passkeys."

    .line 354
    .line 355
    const-string v7, "AndroidPlatformUtil:UpdateWithOrDeleteWebAuthnParam"

    .line 356
    .line 357
    invoke-static {v7, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_8
    if-eqz v1, :cond_9

    .line 365
    .line 366
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_9

    .line 371
    .line 372
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_9
    :goto_4
    invoke-virtual {p1, v9}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->extraQueryStringParameters(Ljava/util/ArrayList;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_d

    .line 384
    .line 385
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    if-eqz v7, :cond_a

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    goto :goto_5

    .line 404
    :cond_a
    check-cast v1, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-eqz v7, :cond_c

    .line 423
    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    check-cast v7, Ljava/util/Map$Entry;

    .line 429
    .line 430
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    check-cast v8, Lcom/microsoft/identity/client/TenantProfile;

    .line 435
    .line 436
    invoke-virtual {v8}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    if-eqz v8, :cond_b

    .line 441
    .line 442
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    check-cast v7, Lcom/microsoft/identity/client/TenantProfile;

    .line 447
    .line 448
    invoke-virtual {v7}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-static {v7}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    const-string v8, "Missing from the token response"

    .line 457
    .line 458
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    if-nez v8, :cond_b

    .line 463
    .line 464
    move-object v1, v7

    .line 465
    goto :goto_5

    .line 466
    :cond_c
    move-object v1, v2

    .line 467
    goto :goto_5

    .line 468
    :cond_d
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getLoginHint()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    :goto_5
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->loginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 477
    .line 478
    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->domainHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 483
    .line 484
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccountRecord()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 493
    .line 494
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 499
    .line 500
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    if-eqz v0, :cond_e

    .line 505
    .line 506
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    goto :goto_6

    .line 511
    :cond_e
    sget-object v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 512
    .line 513
    :goto_6
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->authorizationAgent(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->brokerBrowserSupportEnabled()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getPrompt()Lcom/microsoft/identity/client/Prompt;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 526
    .line 527
    if-nez v0, :cond_f

    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_f
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getPrompt()Lcom/microsoft/identity/client/Prompt;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-eq v0, v3, :cond_13

    .line 539
    .line 540
    const/4 v3, 0x2

    .line 541
    if-eq v0, v3, :cond_12

    .line 542
    .line 543
    const/4 v3, 0x3

    .line 544
    if-eq v0, v3, :cond_11

    .line 545
    .line 546
    const/4 v3, 0x4

    .line 547
    if-eq v0, v3, :cond_10

    .line 548
    .line 549
    goto :goto_7

    .line 550
    :cond_10
    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->UNSET:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_11
    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->CREATE:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_12
    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->CONSENT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_13
    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    .line 560
    .line 561
    :goto_7
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->prompt(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebViewZoomControlsEnabled()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomControlsEnabled(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebViewZoomEnabled()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->isWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isHandleNullTaskAffinityEnabled()Ljava/lang/Boolean;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->handleNullTaskAffinity(Z)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isPowerOptCheckForEnabled()Ljava/lang/Boolean;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 606
    .line 607
    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 612
    .line 613
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->preferredAuthMethod()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getExtraQueryStringParameters()Ljava/util/List;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    new-instance v0, Ljava/util/HashMap;

    .line 622
    .line 623
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    .line 625
    .line 626
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 627
    .line 628
    if-ge v1, v4, :cond_14

    .line 629
    .line 630
    goto/16 :goto_a

    .line 631
    .line 632
    :cond_14
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 633
    .line 634
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-nez v1, :cond_15

    .line 643
    .line 644
    goto/16 :goto_a

    .line 645
    .line 646
    :cond_15
    if-eqz p2, :cond_18

    .line 647
    .line 648
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-eqz v1, :cond_16

    .line 653
    .line 654
    goto :goto_8

    .line 655
    :cond_16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object p2

    .line 659
    :cond_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    if-eqz v1, :cond_18

    .line 664
    .line 665
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    check-cast v1, Ljava/util/Map$Entry;

    .line 670
    .line 671
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    if-eqz v2, :cond_17

    .line 680
    .line 681
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-eqz v1, :cond_17

    .line 690
    .line 691
    goto :goto_9

    .line 692
    :cond_18
    :goto_8
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebauthnCapable()Ljava/lang/Boolean;

    .line 693
    .line 694
    .line 695
    move-result-object p2

    .line 696
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 697
    .line 698
    .line 699
    move-result p2

    .line 700
    if-nez p2, :cond_19

    .line 701
    .line 702
    goto :goto_a

    .line 703
    :cond_19
    :goto_9
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getWebauthnVersion()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p2

    .line 707
    if-nez p2, :cond_1a

    .line 708
    .line 709
    goto :goto_a

    .line 710
    :cond_1a
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getWebauthnVersion()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object p2

    .line 714
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    const-string v1, "1.0"

    .line 718
    .line 719
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    const-string v2, "x-ms-PassKeyAuth"

    .line 724
    .line 725
    const-string v3, "CommandParametersAdapter:addPasskeyHeader"

    .line 726
    .line 727
    if-nez v1, :cond_1c

    .line 728
    .line 729
    const-string v1, "1.1"

    .line 730
    .line 731
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result p2

    .line 735
    if-nez p2, :cond_1b

    .line 736
    .line 737
    new-instance p2, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    const-string v1, "Unsupported WebAuthn version: "

    .line 740
    .line 741
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getWebauthnVersion()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p0

    .line 755
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 756
    .line 757
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    goto :goto_a

    .line 761
    :cond_1b
    const-string p0, "1.1/passkey"

    .line 762
    .line 763
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 767
    .line 768
    const-string p0, "Passkey header added for WebAuthn version 1.1"

    .line 769
    .line 770
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    goto :goto_a

    .line 774
    :cond_1c
    const-string p0, "1.0/passkey"

    .line 775
    .line 776
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 780
    .line 781
    const-string p0, "Passkey header added for WebAuthn version 1.0"

    .line 782
    .line 783
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    :goto_a
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->requestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    return-object p0
.end method

.method public static createRemoveAccountCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->builder()Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 92
    .line 93
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 100
    .line 101
    sget v0, Lcom/microsoft/identity/client/PublicClientApplication;->a:I

    .line 102
    .line 103
    const-string v0, "8.3.2"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getBrowserSafeList()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->browserSafeList(Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isPowerOptCheckForEnabled()Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->build()Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static createSilentTokenCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getMultipleCloudsSupported()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->getClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getForceRefresh()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 55
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 60
    .line 61
    .line 62
    new-instance v3, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    .line 63
    .line 64
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;->builder()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v5}, Lcom/microsoft/identity/client/internal/MsalUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 158
    .line 159
    sget-object v4, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 160
    .line 161
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 166
    .line 167
    sget v4, Lcom/microsoft/identity/client/PublicClientApplication;->a:I

    .line 168
    .line 169
    const-string v4, "8.3.2"

    .line 170
    .line 171
    invoke-virtual {p1, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh(Z)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccountRecord()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 204
    .line 205
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isPowerOptCheckForEnabled()Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 224
    .line 225
    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 231
    .line 232
    new-instance p1, Ljava/util/HashSet;

    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0
.end method

.method private static getClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 1

    .line 1
    instance-of p2, p2, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientCapabilities()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    new-instance p2, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 19
    .line 20
    invoke-direct {p2}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, ","

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->setValues(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "xms_cc"

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimInAccessToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object p0
.end method

.method private static getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static throwOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "method: "

    .line 13
    .line 14
    const-string v1, " may not be called from main thread."

    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalArgumentException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    instance-of v0, p0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p0, Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;

    .line 43
    .line 44
    const-string v0, " cannot be null or empty"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "illegal_argument_exception"

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public static validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    const-string p0, " cannot be null or empty"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
