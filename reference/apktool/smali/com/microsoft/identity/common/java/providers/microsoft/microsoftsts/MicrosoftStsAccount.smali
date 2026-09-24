.class public final Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/dto/IAccountRecord;


# instance fields
.field private final mDisplayableId:Ljava/lang/String;

.field private mEnvironment:Ljava/lang/String;

.field private final mFamilyName:Ljava/lang/String;

.field private final mGivenName:Ljava/lang/String;

.field private final mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

.field private final mMiddleName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPasswordChangeUrl:Ljava/net/URL;

.field private final mPasswordExpiresOn:Ljava/util/Date;

.field private final mRawClientInfo:Ljava/lang/String;

.field private final mTenantId:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;

.field private final mUtid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Init: MicrosoftAccount"

    .line 5
    .line 6
    const-string v1, "MicrosoftAccount"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->getRawClientInfo()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mRawClientInfo:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->getTokenClaims()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "oid"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const-string v4, "MicrosoftAccount:getUniqueId"

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    const-string v2, "Using ObjectId as uniqueId"

    .line 41
    .line 42
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "sub"

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    const-string v2, "Using Subject as uniqueId"

    .line 67
    .line 68
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object v0, v3

    .line 79
    :goto_0
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "name"

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mName:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "given_name"

    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;

    .line 106
    .line 107
    const-string v0, "family_name"

    .line 108
    .line 109
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mFamilyName:Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "middle_name"

    .line 118
    .line 119
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mMiddleName:Ljava/lang/String;

    .line 126
    .line 127
    const-string v0, "tid"

    .line 128
    .line 129
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_2

    .line 140
    .line 141
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Ljava/lang/String;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->getUtid()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_3

    .line 159
    .line 160
    const-string v0, "realm is not returned from server. Use utid as realm."

    .line 161
    .line 162
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->getUtid()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const-string v0, "realm and utid is not returned from server. Use empty string as default tid."

    .line 173
    .line 174
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, ""

    .line 178
    .line 179
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 180
    .line 181
    :goto_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->getUid()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->getUtid()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;

    .line 192
    .line 193
    const-string p2, "pwd_exp"

    .line 194
    .line 195
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    const-wide/16 v4, 0x0

    .line 200
    .line 201
    if-eqz p2, :cond_4

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v6

    .line 211
    goto :goto_2

    .line 212
    :cond_4
    move-wide v6, v4

    .line 213
    :goto_2
    cmp-long p2, v6, v4

    .line 214
    .line 215
    if-lez p2, :cond_5

    .line 216
    .line 217
    new-instance p2, Ljava/util/GregorianCalendar;

    .line 218
    .line 219
    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 220
    .line 221
    .line 222
    const/16 v0, 0xd

    .line 223
    .line 224
    long-to-int v2, v6

    .line 225
    invoke-virtual {p2, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordExpiresOn:Ljava/util/Date;

    .line 233
    .line 234
    :cond_5
    iput-object v3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;

    .line 235
    .line 236
    const-string p2, "pwd_url"

    .line 237
    .line 238
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-nez p2, :cond_6

    .line 249
    .line 250
    :try_start_0
    new-instance p2, Ljava/net/URL;

    .line 251
    .line 252
    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 257
    return-void

    .line 258
    :catch_0
    move-exception p0

    .line 259
    const-string p1, "Failed to parse passwordChangeUrl."

    .line 260
    .line 261
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

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
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->equals$com$microsoft$identity$common$java$providers$microsoft$MicrosoftAccount(Ljava/lang/Object;)Z

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

.method public final equals$com$microsoft$identity$common$java$providers$microsoft$MicrosoftAccount(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 13
    .line 14
    instance-of v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_2
    if-eq p0, p1, :cond_3

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_3
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    monitor-enter v0

    .line 29
    :try_start_1
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_5

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_5
    monitor-enter p0

    .line 47
    :try_start_2
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    if-nez p1, :cond_6

    .line 55
    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_7

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez p1, :cond_8

    .line 77
    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_9

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_9
    monitor-enter p0

    .line 91
    :try_start_4
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 92
    .line 93
    monitor-exit p0

    .line 94
    monitor-enter v0

    .line 95
    :try_start_5
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 96
    .line 97
    monitor-exit v0

    .line 98
    if-nez p1, :cond_a

    .line 99
    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_b

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_b
    monitor-enter p0

    .line 113
    :try_start_6
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 114
    .line 115
    monitor-exit p0

    .line 116
    monitor-enter v0

    .line 117
    :try_start_7
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 118
    .line 119
    monitor-exit v0

    .line 120
    if-nez p1, :cond_c

    .line 121
    .line 122
    if-eqz v1, :cond_d

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_d

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_d
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-nez p1, :cond_e

    .line 143
    .line 144
    if-eqz v1, :cond_f

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_e
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_f

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_f
    monitor-enter p0

    .line 157
    :try_start_8
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 158
    .line 159
    monitor-exit p0

    .line 160
    monitor-enter v0

    .line 161
    :try_start_9
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 162
    .line 163
    monitor-exit v0

    .line 164
    if-nez p1, :cond_10

    .line 165
    .line 166
    if-eqz v1, :cond_11

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_11

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_11
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getPasswordExpiresOn()Ljava/util/Date;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getPasswordExpiresOn()Ljava/util/Date;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-nez p1, :cond_12

    .line 187
    .line 188
    if-eqz v1, :cond_13

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_13

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_13
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 203
    .line 204
    if-nez p1, :cond_14

    .line 205
    .line 206
    if-eqz v1, :cond_15

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_15

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_15
    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;

    .line 220
    .line 221
    if-nez p1, :cond_16

    .line 222
    .line 223
    if-eqz v1, :cond_17

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-nez p1, :cond_17

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getFamilyName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getFamilyName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-nez p1, :cond_18

    .line 242
    .line 243
    if-eqz v1, :cond_19

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_19

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_19
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getMiddleName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getMiddleName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-nez p1, :cond_1a

    .line 262
    .line 263
    if-eqz v1, :cond_1b

    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_1b

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_1b
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getEnvironment()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getEnvironment()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-nez p1, :cond_1c

    .line 282
    .line 283
    if-eqz v1, :cond_1d

    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_1c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_1d

    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_1d
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mRawClientInfo:Ljava/lang/String;

    .line 294
    .line 295
    iget-object p1, v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mRawClientInfo:Ljava/lang/String;

    .line 296
    .line 297
    if-nez p0, :cond_1e

    .line 298
    .line 299
    if-eqz p1, :cond_1f

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    if-nez p0, :cond_1f

    .line 307
    .line 308
    :goto_0
    const/4 p0, 0x0

    .line 309
    return p0

    .line 310
    :cond_1f
    :goto_1
    const/4 p0, 0x1

    .line 311
    return p0

    .line 312
    :catchall_0
    move-exception p0

    .line 313
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 314
    throw p0

    .line 315
    :catchall_1
    move-exception p1

    .line 316
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 317
    throw p1

    .line 318
    :catchall_2
    move-exception p0

    .line 319
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 320
    throw p0

    .line 321
    :catchall_3
    move-exception p1

    .line 322
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 323
    throw p1

    .line 324
    :catchall_4
    move-exception p0

    .line 325
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 326
    throw p0

    .line 327
    :catchall_5
    move-exception p1

    .line 328
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 329
    throw p1

    .line 330
    :catchall_6
    move-exception p0

    .line 331
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 332
    throw p0

    .line 333
    :catchall_7
    move-exception p1

    .line 334
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 335
    throw p1

    .line 336
    :catchall_8
    move-exception p0

    .line 337
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 338
    throw p0

    .line 339
    :catchall_9
    move-exception p1

    .line 340
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 341
    throw p1
.end method

.method public final declared-synchronized getAlternativeAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getAlternativeAccountId(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final declared-synchronized getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getAvatarUrl(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final declared-synchronized getClientInfo()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mRawClientInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mEnvironment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getFamilyName()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mFamilyName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getFirstName()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getHomeAccountId()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    .line 10
    :try_start_2
    monitor-exit p0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    :try_start_4
    monitor-exit p0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 36
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :catchall_2
    move-exception v0

    .line 38
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 39
    :try_start_8
    throw v0

    .line 40
    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 41
    throw v0
.end method

.method public final declared-synchronized getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getLocalAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    throw v0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    throw v0

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    goto :goto_0
.end method

.method public final declared-synchronized getMiddleName()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mMiddleName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getPasswordExpiresOn()Ljava/util/Date;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordExpiresOn:Ljava/util/Date;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public final declared-synchronized getRealm()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    throw v0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    throw v0

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    mul-int/lit8 v0, v0, 0x3b

    .line 10
    .line 11
    const/16 v2, 0x2b

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    monitor-enter p0

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    mul-int/lit8 v0, v0, 0x3b

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    add-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    mul-int/lit8 v0, v0, 0x3b

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_2
    add-int/2addr v0, v1

    .line 52
    monitor-enter p0

    .line 53
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    mul-int/lit8 v0, v0, 0x3b

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    move v1, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_3
    add-int/2addr v0, v1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    monitor-exit p0

    .line 71
    mul-int/lit8 v0, v0, 0x3b

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    move v1, v2

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_4
    add-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    mul-int/lit8 v0, v0, 0x3b

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    move v1, v2

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_5
    add-int/2addr v0, v1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    mul-int/lit8 v0, v0, 0x3b

    .line 102
    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    move v1, v2

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :goto_6
    add-int/2addr v0, v1

    .line 112
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getPasswordExpiresOn()Ljava/util/Date;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    mul-int/lit8 v0, v0, 0x3b

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    .line 120
    move v1, v2

    .line 121
    goto :goto_7

    .line 122
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :goto_7
    add-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 128
    .line 129
    mul-int/lit8 v0, v0, 0x3b

    .line 130
    .line 131
    if-nez v1, :cond_8

    .line 132
    .line 133
    move v1, v2

    .line 134
    goto :goto_8

    .line 135
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    :goto_8
    add-int/2addr v0, v1

    .line 140
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;

    .line 141
    .line 142
    mul-int/lit8 v0, v0, 0x3b

    .line 143
    .line 144
    if-nez v1, :cond_9

    .line 145
    .line 146
    move v1, v2

    .line 147
    goto :goto_9

    .line 148
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    :goto_9
    add-int/2addr v0, v1

    .line 153
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getFamilyName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    mul-int/lit8 v0, v0, 0x3b

    .line 158
    .line 159
    if-nez v1, :cond_a

    .line 160
    .line 161
    move v1, v2

    .line 162
    goto :goto_a

    .line 163
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    :goto_a
    add-int/2addr v0, v1

    .line 168
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getMiddleName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    mul-int/lit8 v0, v0, 0x3b

    .line 173
    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    move v1, v2

    .line 177
    goto :goto_b

    .line 178
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    :goto_b
    add-int/2addr v0, v1

    .line 183
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getEnvironment()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    mul-int/lit8 v0, v0, 0x3b

    .line 188
    .line 189
    if-nez v1, :cond_c

    .line 190
    .line 191
    move v1, v2

    .line 192
    goto :goto_c

    .line 193
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :goto_c
    add-int/2addr v0, v1

    .line 198
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mRawClientInfo:Ljava/lang/String;

    .line 199
    .line 200
    mul-int/lit8 v0, v0, 0x3b

    .line 201
    .line 202
    if-nez p0, :cond_d

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    :goto_d
    add-int/2addr v0, v2

    .line 210
    return v0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    throw v0

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    throw v0

    .line 217
    :catchall_2
    move-exception v0

    .line 218
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 219
    throw v0

    .line 220
    :catchall_3
    move-exception v0

    .line 221
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 222
    throw v0

    .line 223
    :catchall_4
    move-exception v0

    .line 224
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 225
    throw v0
.end method

.method public final declared-synchronized setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mEnvironment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "\'} "

    .line 2
    .line 3
    const-string v1, "\', mFamilyName=\'"

    .line 4
    .line 5
    const-string v2, "\', mGivenName=\'"

    .line 6
    .line 7
    const-string v3, "\', mIDToken="

    .line 8
    .line 9
    const-string v4, "\', mUtid=\'"

    .line 10
    .line 11
    const-string v5, "\', mUid=\'"

    .line 12
    .line 13
    const-string v6, "\', mName=\'"

    .line 14
    .line 15
    const-string v7, "\', mUserId=\'"

    .line 16
    .line 17
    const-string v8, "MicrosoftAccount{mDisplayableId=\'"

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v8, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mDisplayableId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v7, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUserId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v6, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUid:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mUtid:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mIDToken:Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 66
    .line 67
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ", mPasswordChangeUrl="

    .line 71
    .line 72
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordChangeUrl:Ljava/net/URL;

    .line 76
    .line 77
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, ", mPasswordExpiresOn="

    .line 81
    .line 82
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mPasswordExpiresOn:Ljava/util/Date;

    .line 86
    .line 87
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, ", mTenantId=\'"

    .line 91
    .line 92
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mTenantId:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mGivenName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->mFamilyName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    .line 131
    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw v0
.end method
