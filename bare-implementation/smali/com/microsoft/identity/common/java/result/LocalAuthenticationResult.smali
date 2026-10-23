.class public final Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAccessTokenRecord:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field private final mCompleteResultFromCache:Ljava/util/ArrayList;

.field private mCorrelationId:Ljava/lang/String;

.field private final mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenAge:Ljava/lang/String;

.field private mSpeRing:Ljava/lang/String;

.field private final mTelemetry:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/ArrayList;Lcom/microsoft/identity/common/java/request/SdkType;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mTelemetry:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    if-eqz p1, :cond_8

    .line 13
    .line 14
    if-eqz p3, :cond_7

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    iput-object p4, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mRefreshToken:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/request/SdkType;->ADAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 50
    .line 51
    if-ne p3, v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    :goto_0
    const-string v1, "LocalAuthenticationResult"

    .line 63
    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Id Token type: "

    .line 69
    .line 70
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const-string v2, "V1 Id Token returned here, "

    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Constructing LocalAuthentication result, AccessTokenRecord null: "

    .line 109
    .line 110
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v3, 0x1

    .line 115
    if-nez p4, :cond_4

    .line 116
    .line 117
    move p4, v3

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move p4, v2

    .line 120
    :goto_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p4, ", AccountRecord null: "

    .line 124
    .line 125
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    move p4, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move p4, v2

    .line 133
    :goto_3
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p4, ", RefreshTokenRecord null or empty: "

    .line 137
    .line 138
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object p4, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mRefreshToken:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {p4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p4

    .line 147
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p4, ", IdTokenRecord null: "

    .line 151
    .line 152
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    if-nez p3, :cond_6

    .line 156
    .line 157
    move v2, v3

    .line 158
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iput-object p2, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mCompleteResultFromCache:Ljava/util/ArrayList;

    .line 169
    .line 170
    return-void

    .line 171
    :cond_7
    const-string p0, "sdkType is marked non-null but is null"

    .line 172
    .line 173
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p4

    .line 177
    :cond_8
    const-string p0, "cacheRecord is marked non-null but is null"

    .line 178
    .line 179
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p4
.end method


# virtual methods
.method public final getCacheRecordWithTenantProfileData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mCompleteResultFromCache:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRefreshTokenAge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScope()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "\\s"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getSpeRing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTelemetry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->mTelemetry:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "telemetry is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
