.class public Lcom/microsoft/identity/common/java/dto/AccountRecord;
.super Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/dto/IAccountRecord;


# instance fields
.field private mAlternativeAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "alternative_account_id"
    .end annotation
.end field

.field private mAuthorityType:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority_type"
    .end annotation
.end field

.field private mAvatarUrl:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "avatar_url"
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_info"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "environment"
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "family_name"
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "first_name"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "home_account_id"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "local_account_id"
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "middle_name"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "name"
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "realm"
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getHomeAccountId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getEnvironment()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getRealm()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getLocalAccountId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getUsername()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "MSSTS"

    .line 35
    .line 36
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getClientInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mClientInfo:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getAlternativeAccountId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getFirstName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getFamilyName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getMiddleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mMiddleName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getAvatarUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    if-eqz p1, :cond_15

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
    goto/16 :goto_9

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v3, :cond_3

    .line 36
    .line 37
    :goto_0
    return v1

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    if-eqz v3, :cond_5

    .line 52
    .line 53
    :goto_1
    return v1

    .line 54
    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_7

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    if-eqz v3, :cond_7

    .line 68
    .line 69
    :goto_2
    return v1

    .line 70
    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_8

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_9

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_8
    if-eqz v3, :cond_9

    .line 84
    .line 85
    :goto_3
    return v1

    .line 86
    :cond_9
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v2, :cond_a

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_b

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_a
    if-eqz v3, :cond_b

    .line 100
    .line 101
    :goto_4
    return v1

    .line 102
    :cond_b
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v2, :cond_c

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_d

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_c
    if-eqz v3, :cond_d

    .line 116
    .line 117
    :goto_5
    return v1

    .line 118
    :cond_d
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v2, :cond_e

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_f

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_e
    if-eqz v3, :cond_f

    .line 132
    .line 133
    :goto_6
    return v1

    .line 134
    :cond_f
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v2, :cond_10

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_11

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_10
    if-eqz v3, :cond_11

    .line 148
    .line 149
    :goto_7
    return v1

    .line 150
    :cond_11
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v2, :cond_12

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_13

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_12
    if-eqz v3, :cond_13

    .line 164
    .line 165
    :goto_8
    return v1

    .line 166
    :cond_13
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    .line 169
    .line 170
    if-eqz p0, :cond_14

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    return p0

    .line 177
    :cond_14
    if-nez p1, :cond_15

    .line 178
    .line 179
    return v0

    .line 180
    :cond_15
    :goto_9
    return v1
.end method

.method public final getAuthorityType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mClientInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHomeAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRealm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v2, v1

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move v2, v1

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_7

    .line 101
    :cond_7
    move v2, v1

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_8

    .line 114
    :cond_8
    move v2, v1

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz p0, :cond_9

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :cond_9
    add-int/2addr v0, v1

    .line 127
    return v0
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
