.class public Lcom/microsoft/identity/common/internal/broker/BrokerResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAadDeviceIdRecord:Lcom/microsoft/identity/common/java/dto/AadDeviceIdRecord;
    .annotation runtime Ly77;
        value = "broker_aad_device_id_record"
    .end annotation
.end field

.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "access_token"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority"
    .end annotation
.end field

.field private mCachedAt:J
    .annotation runtime Ly77;
        value = "cached_at"
    .end annotation
.end field

.field private mCliTelemErrorCode:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "cli_telem_error_code"
    .end annotation
.end field

.field private mCliTelemSubErrorCode:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "cli_telem_suberror_code"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_id"
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_info"
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "correlation_id"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "environment"
    .end annotation
.end field

.field private mErrorCode:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "broker_error_code"
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "broker_error_message"
    .end annotation
.end field

.field private final mExceptionType:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "broker_exception_type"
    .end annotation
.end field

.field private mExpiresOn:J
    .annotation runtime Ly77;
        value = "expires_on"
    .end annotation
.end field

.field private mExtendedExpiresOn:J
    .annotation runtime Ly77;
        value = "ext_expires_on"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "family_id"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "home_account_id"
    .end annotation
.end field

.field private mHttpResponseBody:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "http_response_body"
    .end annotation
.end field

.field private mHttpResponseHeaders:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "http_response_headers"
    .end annotation
.end field

.field private mHttpStatusCode:I
    .annotation runtime Ly77;
        value = "http_response_code"
    .end annotation
.end field

.field private mIdToken:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "id_token"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "local_account_id"
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "refresh_token"
    .end annotation
.end field

.field private mRefreshTokenAge:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "refresh_token_age"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "scopes"
    .end annotation
.end field

.field private mServicedFromCache:Z
    .annotation runtime Ly77;
        value = "serviced_from_cache"
    .end annotation
.end field

.field private mSpeRing:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "spe_ring"
    .end annotation
.end field

.field private mSubErrorCode:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "oauth_sub_error"
    .end annotation
.end field

.field private mSuccess:Z
    .annotation runtime Ly77;
        value = "success"
    .end annotation
.end field

.field private mTenantId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "tenant_id"
    .end annotation
.end field

.field private final mTenantProfileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "tenant_profile_cache_records"
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "token_type"
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAccessToken:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHomeAccountId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTokenType:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    iput-wide v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExpiresOn:J

    .line 52
    .line 53
    iput-wide v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExtendedExpiresOn:J

    .line 54
    .line 55
    iput-wide v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCachedAt:J

    .line 56
    .line 57
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    .line 71
    .line 72
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mServicedFromCache:Z

    .line 75
    .line 76
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpStatusCode:I

    .line 105
    .line 106
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$3000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$3100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAadDeviceIdRecord:Lcom/microsoft/identity/common/java/dto/AadDeviceIdRecord;

    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCliTelemErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExceptionType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFamilyId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHttpResponseBody()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHttpResponseHeaders()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRefreshTokenAge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpeRing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTenantProfileData()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isServicedFromCache()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mServicedFromCache:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSuccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    .line 2
    .line 3
    return p0
.end method
