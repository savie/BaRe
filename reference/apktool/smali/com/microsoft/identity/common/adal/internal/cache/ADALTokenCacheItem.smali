.class public Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mExpiresOn:Ljava/util/Date;

.field private mExtendedExpiresOn:Ljava/util/Date;

.field private mFamilyClientId:Ljava/lang/String;

.field private mIsMultiResourceRefreshToken:Z

.field private mRawIdToken:Ljava/lang/String;

.field private mRefreshtoken:Ljava/lang/String;

.field private mResource:Ljava/lang/String;

.field private mSpeRing:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;

.field private mUserInfo:Lcom/microsoft/identity/common/java/adal/ADALUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getResource()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getAccessToken()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRawIdToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getUserInfo()Lcom/microsoft/identity/common/java/adal/ADALUserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/java/adal/ADALUserInfo;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getExpiresOn()Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getIsMultiResourceRefreshToken()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getTenantId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getExtendedExpiresOn()Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getSpeRing()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 79
    throw p0
.end method

.method public static getAsFRTTokenCacheItem(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;-><init>(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setResource(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setAccessToken(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static getAsMRRTTokenCacheItem(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;-><init>(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setResource(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setAccessToken(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExpiresOn()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    return-object p0
.end method

.method public final getExtendedExpiresOn()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    return-object p0
.end method

.method public final getFamilyClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIsMultiResourceRefreshToken()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    .line 2
    .line 3
    return p0
.end method

.method public getRawIdToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResource()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserInfo()Lcom/microsoft/identity/common/java/adal/ADALUserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/java/adal/ADALUserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExpiresOn(Ljava/util/Date;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/Date;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    .line 14
    .line 15
    return-void
.end method

.method public final setExtendedExpiresOn(Ljava/util/Date;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/Date;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    .line 14
    .line 15
    return-void
.end method

.method public final setFamilyClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsMultiResourceRefreshToken(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRawIdToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserInfo(Lcom/microsoft/identity/common/java/adal/ADALUserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/java/adal/ADALUserInfo;

    .line 2
    .line 3
    return-void
.end method
