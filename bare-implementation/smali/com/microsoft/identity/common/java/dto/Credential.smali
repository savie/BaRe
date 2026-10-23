.class public abstract Lcom/microsoft/identity/common/java/dto/Credential;
.super Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mCachedAt:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "cached_at"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_id"
    .end annotation
.end field

.field private mCredentialType:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "credential_type"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "environment"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "home_account_id"
    .end annotation
.end field

.field private mSecret:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "secret"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_d

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_5

    .line 19
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mClientId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mClientId:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-eqz v3, :cond_3

    .line 35
    .line 36
    :goto_0
    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCredentialType:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mCredentialType:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-eqz v3, :cond_5

    .line 51
    .line 52
    :goto_1
    return v1

    .line 53
    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mEnvironment:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mEnvironment:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_7

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    if-eqz v3, :cond_7

    .line 67
    .line 68
    :goto_2
    return v1

    .line 69
    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mSecret:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mSecret:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_8

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_9

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_8
    if-eqz v3, :cond_9

    .line 83
    .line 84
    :goto_3
    return v1

    .line 85
    :cond_9
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mHomeAccountId:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mHomeAccountId:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_b

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_a
    if-eqz v3, :cond_b

    .line 99
    .line 100
    :goto_4
    return v1

    .line 101
    :cond_b
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCachedAt:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/microsoft/identity/common/java/dto/Credential;->mCachedAt:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz p0, :cond_c

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0

    .line 112
    :cond_c
    if-nez p1, :cond_d

    .line 113
    .line 114
    return v0

    .line 115
    :cond_d
    :goto_5
    return v1
.end method

.method public final getCachedAt()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCachedAt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCredentialType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCredentialType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHomeAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mHomeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecret()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mSecret:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCredentialType:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mEnvironment:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mSecret:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mHomeAccountId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCachedAt:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :cond_5
    add-int/2addr v0, v1

    .line 75
    return v0
.end method

.method public abstract isExpired()Z
.end method

.method public final setCachedAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCachedAt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCredentialType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mCredentialType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mHomeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/Credential;->mSecret:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
