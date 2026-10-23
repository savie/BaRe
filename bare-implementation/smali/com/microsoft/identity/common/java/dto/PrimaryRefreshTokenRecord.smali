.class public Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;
.super Lcom/microsoft/identity/common/java/dto/Credential;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mExpiresOn:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "expires_on"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "family_id"
    .end annotation
.end field

.field private mPrtProtocolVersion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "prt_protocol_version"
    .end annotation
.end field

.field private mSessionKey:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "session_key"
    .end annotation
.end field

.field private mSessionKeyRollingDate:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "session_key_rolling_date"
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
    instance-of v1, p1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

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
    check-cast v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    .line 88
    .line 89
    if-nez p0, :cond_b

    .line 90
    .line 91
    if-eqz p1, :cond_c

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_c

    .line 99
    .line 100
    :goto_4
    return v2

    .line 101
    :cond_c
    return v0
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
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    .line 60
    .line 61
    mul-int/lit8 v0, v0, 0x3b

    .line 62
    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    :goto_4
    add-int/2addr v0, v2

    .line 71
    return v0
.end method

.method public final isExpired()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long/2addr v0, v2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long p0, v0, v2

    .line 15
    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PrimaryRefreshTokenRecord{mFamilyId=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', mExpiresOn=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', mSessionKey=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', mPrtProtocolVersion=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', mSessionKeyRollingDate=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\'} "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
