.class public final Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field private account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

.field private refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

.field private v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;


# virtual methods
.method public final accessToken(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "account is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final build()Lcom/microsoft/identity/common/java/cache/CacheRecord;
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/java/cache/CacheRecord;-><init>(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final idToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final refreshToken(Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CacheRecord.CacheRecordBuilder(account="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", accessToken="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", refreshToken="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", idToken="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", v1IdToken="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final v1IdToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 2
    .line 3
    return-void
.end method
