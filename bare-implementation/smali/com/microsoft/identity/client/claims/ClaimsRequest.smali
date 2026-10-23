.class public Lcom/microsoft/identity/client/claims/ClaimsRequest;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ID_TOKEN:Ljava/lang/String; = "id_token"

.field public static final USERINFO:Ljava/lang/String; = "userinfo"


# instance fields
.field private mAccessTokenClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation
.end field

.field private mIdTokenClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
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
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method private static deserializeClaimsRequest(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 3

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/gson/a;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 26
    .line 27
    return-object p0
.end method

.method public static getClaimsRequestFromJsonString(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->deserializeClaimsRequest(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->serializeClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/microsoft/identity/client/claims/RequestedClaim;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setName(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setAdditionalInformation(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static serializeClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;-><init>()V

    .line 14
    .line 15
    .line 16
    const-class v3, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v3}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 19
    .line 20
    .line 21
    const-class v1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lt14;->e:Z

    .line 28
    .line 29
    new-instance v1, Lcom/google/gson/a;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 32
    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

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
    check-cast p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-eqz v3, :cond_3

    .line 27
    .line 28
    :goto_0
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_5

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    if-eqz v3, :cond_5

    .line 43
    .line 44
    :goto_1
    return v2

    .line 45
    :cond_5
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 48
    .line 49
    if-eqz p0, :cond_6

    .line 50
    .line 51
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_6
    if-nez p1, :cond_7

    .line 57
    .line 58
    return v0

    .line 59
    :cond_7
    return v2
.end method

.method public getAccessTokenClaimsRequested()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIdTokenClaimsRequested()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserInfoClaimsRequested()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    return v0
.end method

.method public requestClaimInAccessToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestClaimInIdToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestClaimInUserInfo(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
