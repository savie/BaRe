.class final Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$filteredTokens:Ljava/util/ArrayList;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$redirects:Ljava/util/Map;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$subIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$filteredTokens:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p2, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$subIndex:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$redirects:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$result:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$filteredTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$subIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$redirects:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v5, v1

    .line 22
    check-cast v5, Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "TokenCacheItemMigrationAdapter"

    .line 25
    .line 26
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v8, 0x0

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v6, Ljava/net/URL;

    .line 51
    .line 52
    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v6}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setAuthorityUrl(Ljava/net/URL;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getResource()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_0

    .line 71
    .line 72
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getDelimitedDefaultScopeString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getResource()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    const-string v6, "/.default"

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " "

    .line 101
    .line 102
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getDelimitedDefaultScopeString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_0
    new-instance v6, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->build()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    move-object v10, v6

    .line 126
    new-instance v6, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 127
    .line 128
    invoke-direct {v6, v3, v10}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 129
    .line 130
    .line 131
    move-object v3, v0

    .line 132
    invoke-static/range {v2 .. v7}, Lcom/microsoft/identity/common/java/foci/FociQueryUtilities;->createTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Ljava/util/UUID;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v6, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenRequest;)Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_1

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->setClientId(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    new-instance v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsRefreshToken;

    .line 160
    .line 161
    invoke-direct {v3, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Ljava/net/URL;

    .line 165
    .line 166
    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredCacheHostName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->setEnvironment(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 181
    .line 182
    invoke-direct {v0, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v8, v0

    .line 186
    goto :goto_2

    .line 187
    :cond_1
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v3, "TokenRequest was unsuccessful."

    .line 192
    .line 193
    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_3

    .line 201
    .line 202
    invoke-static {v7, v0}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->logTokenResultError(Ljava/util/UUID;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 207
    .line 208
    const-string v2, "v1Resource is marked non-null but is null"

    .line 209
    .line 210
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    const-string v2, "Failed to request new refresh token..."

    .line 215
    .line 216
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 220
    .line 221
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$result:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 229
    .line 230
    .line 231
    return-void
.end method
