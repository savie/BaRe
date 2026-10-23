.class public final Lcom/microsoft/identity/common/java/cache/CacheRecord;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/cache/ICacheRecord;


# instance fields
.field private final mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field private final mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private final mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

.field private final mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

.field private final mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "account is marked non-null but is null"

    .line 18
    .line 19
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    if-eqz p1, :cond_9

    .line 7
    .line 8
    const-class v2, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-eqz v3, :cond_3

    .line 33
    .line 34
    :goto_0
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_5

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-eqz v3, :cond_5

    .line 49
    .line 50
    :goto_1
    return v1

    .line 51
    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 54
    .line 55
    if-eqz v2, :cond_6

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_7

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    if-eqz v3, :cond_7

    .line 65
    .line 66
    :goto_2
    return v1

    .line 67
    :cond_7
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 70
    .line 71
    if-eqz p0, :cond_8

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_8
    if-nez p1, :cond_9

    .line 79
    .line 80
    return v0

    .line 81
    :cond_9
    :goto_3
    return v1
.end method

.method public getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->hashCode()I

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->hashCode()I

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
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->hashCode()I

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
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :cond_3
    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CacheRecord(mAccount="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mAccessToken="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", mRefreshToken="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", mIdToken="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", mV1IdToken="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
