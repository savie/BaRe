.class Lcom/pcloud/sdk/internal/c;
.super Lcom/pcloud/sdk/internal/RealRemoteEntry;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laj6;


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "contenttype"
    .end annotation
.end field

.field private fileId:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "fileid"
    .end annotation
.end field

.field private hasThumbnail:Ljava/lang/Boolean;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "thumb"
    .end annotation
.end field

.field private hash:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "hash"
    .end annotation
.end field

.field private size:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "size"
    .end annotation
.end field


# virtual methods
.method public final c()Laj6;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    check-cast p1, Lcom/pcloud/sdk/internal/c;

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/pcloud/sdk/internal/c;->fileId:J

    .line 29
    .line 30
    iget-wide v3, p1, Lcom/pcloud/sdk/internal/c;->fileId:J

    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget-wide v1, p0, Lcom/pcloud/sdk/internal/c;->size:J

    .line 38
    .line 39
    iget-wide v3, p1, Lcom/pcloud/sdk/internal/c;->size:J

    .line 40
    .line 41
    cmp-long v1, v1, v3

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/pcloud/sdk/internal/c;->contentType:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p1, Lcom/pcloud/sdk/internal/c;->contentType:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v0

    .line 57
    :cond_5
    iget-object p0, p0, Lcom/pcloud/sdk/internal/c;->hash:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/pcloud/sdk/internal/c;->hash:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    mul-int/2addr v0, v1

    .line 8
    iget-wide v2, p0, Lcom/pcloud/sdk/internal/c;->fileId:J

    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    ushr-long v5, v2, v4

    .line 13
    .line 14
    xor-long/2addr v2, v5

    .line 15
    long-to-int v2, v2

    .line 16
    add-int/2addr v0, v2

    .line 17
    mul-int/2addr v0, v1

    .line 18
    iget-object v2, p0, Lcom/pcloud/sdk/internal/c;->contentType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Lcom/pcloud/sdk/internal/c;->size:J

    .line 25
    .line 26
    ushr-long v4, v2, v4

    .line 27
    .line 28
    xor-long/2addr v2, v4

    .line 29
    long-to-int v2, v2

    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget-object p0, p0, Lcom/pcloud/sdk/internal/c;->hash:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, v0

    .line 39
    return p0
.end method

.method public final size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pcloud/sdk/internal/c;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->a()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->d()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-wide v5, p0, Lcom/pcloud/sdk/internal/c;->size:J

    .line 20
    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "%s | ID:%s | Created:%s | Modified: %s | Size:%s"

    .line 30
    .line 31
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
