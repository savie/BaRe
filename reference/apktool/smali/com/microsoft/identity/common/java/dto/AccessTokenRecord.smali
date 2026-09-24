.class public Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
.super Lcom/microsoft/identity/common/java/dto/Credential;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAccessTokenType:Ljava/lang/String;
    .annotation runtime Ly77;
        alternate = {
            "access_token_type"
        }
        value = "token_type"
    .end annotation
.end field

.field private mApplicationIdentifier:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "application_identifier"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority"
    .end annotation
.end field

.field private mExpiresOn:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "expires_on"
    .end annotation
.end field

.field private mExtendedExpiresOn:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "extended_expires_on"
    .end annotation
.end field

.field private mKid:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "kid"
    .end annotation
.end field

.field private mMamEnrollmentIdentifier:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "mam_enrollment_identifier"
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "realm"
    .end annotation
.end field

.field private mRefreshOn:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "refresh_on"
    .end annotation
.end field

.field private mRequestedClaims:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "requested_claims"
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "target"
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
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

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
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_4

    .line 35
    .line 36
    :goto_0
    return v2

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    .line 40
    .line 41
    if-nez p1, :cond_5

    .line 42
    .line 43
    if-eqz v3, :cond_6

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_6

    .line 51
    .line 52
    :goto_1
    return v2

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    .line 56
    .line 57
    if-nez p1, :cond_7

    .line 58
    .line 59
    if-eqz v3, :cond_8

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_8

    .line 67
    .line 68
    :goto_2
    return v2

    .line 69
    :cond_8
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    .line 72
    .line 73
    if-nez p1, :cond_9

    .line 74
    .line 75
    if-eqz v3, :cond_a

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_a

    .line 83
    .line 84
    :goto_3
    return v2

    .line 85
    :cond_a
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    .line 88
    .line 89
    if-nez p1, :cond_b

    .line 90
    .line 91
    if-eqz v3, :cond_c

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_c

    .line 99
    .line 100
    :goto_4
    return v2

    .line 101
    :cond_c
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    .line 104
    .line 105
    if-nez p1, :cond_d

    .line 106
    .line 107
    if-eqz v3, :cond_e

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_e

    .line 115
    .line 116
    :goto_5
    return v2

    .line 117
    :cond_e
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    .line 120
    .line 121
    if-nez p1, :cond_f

    .line 122
    .line 123
    if-eqz v3, :cond_10

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_f
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_10

    .line 131
    .line 132
    :goto_6
    return v2

    .line 133
    :cond_10
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 136
    .line 137
    if-nez p1, :cond_11

    .line 138
    .line 139
    if-eqz v3, :cond_12

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_11
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_12

    .line 147
    .line 148
    :goto_7
    return v2

    .line 149
    :cond_12
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    .line 152
    .line 153
    if-nez p1, :cond_13

    .line 154
    .line 155
    if-eqz v3, :cond_14

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_13
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_14

    .line 163
    .line 164
    :goto_8
    return v2

    .line 165
    :cond_14
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mApplicationIdentifier:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mApplicationIdentifier:Ljava/lang/String;

    .line 168
    .line 169
    if-nez p1, :cond_15

    .line 170
    .line 171
    if-eqz v3, :cond_16

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_15
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_16

    .line 179
    .line 180
    :goto_9
    return v2

    .line 181
    :cond_16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mMamEnrollmentIdentifier:Ljava/lang/String;

    .line 182
    .line 183
    iget-object p1, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mMamEnrollmentIdentifier:Ljava/lang/String;

    .line 184
    .line 185
    if-nez p0, :cond_17

    .line 186
    .line 187
    if-eqz p1, :cond_18

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-nez p0, :cond_18

    .line 195
    .line 196
    :goto_a
    return v2

    .line 197
    :cond_18
    return v0
.end method

.method public final getAccessTokenType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApplicationIdentifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mApplicationIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpiresOn()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMamEnrollmentIdentifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mMamEnrollmentIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRealm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestedClaims()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x3b

    .line 8
    .line 9
    const/16 v2, 0x2b

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x3b

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_1
    add-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x3b

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move v1, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_2
    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x3b

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_3
    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    .line 60
    .line 61
    mul-int/lit8 v0, v0, 0x3b

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_4
    add-int/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    .line 73
    .line 74
    mul-int/lit8 v0, v0, 0x3b

    .line 75
    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    move v1, v2

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_5
    add-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    .line 86
    .line 87
    mul-int/lit8 v0, v0, 0x3b

    .line 88
    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    move v1, v2

    .line 92
    goto :goto_6

    .line 93
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_6
    add-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 99
    .line 100
    mul-int/lit8 v0, v0, 0x3b

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    move v1, v2

    .line 105
    goto :goto_7

    .line 106
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_7
    add-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    .line 112
    .line 113
    mul-int/lit8 v0, v0, 0x3b

    .line 114
    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    move v1, v2

    .line 118
    goto :goto_8

    .line 119
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    :goto_8
    add-int/2addr v0, v1

    .line 124
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mApplicationIdentifier:Ljava/lang/String;

    .line 125
    .line 126
    mul-int/lit8 v0, v0, 0x3b

    .line 127
    .line 128
    if-nez v1, :cond_9

    .line 129
    .line 130
    move v1, v2

    .line 131
    goto :goto_9

    .line 132
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :goto_9
    add-int/2addr v0, v1

    .line 137
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mMamEnrollmentIdentifier:Ljava/lang/String;

    .line 138
    .line 139
    mul-int/lit8 v0, v0, 0x3b

    .line 140
    .line 141
    if-nez p0, :cond_a

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_a
    add-int/2addr v0, v2

    .line 149
    return v0
.end method

.method public final isExpired()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    new-instance p0, Ljava/util/Date;

    .line 16
    .line 17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final setAccessTokenType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApplicationIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mApplicationIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiresOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtendedExpiresOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setKid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMamEnrollmentIdentifier()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mMamEnrollmentIdentifier:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public final setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
