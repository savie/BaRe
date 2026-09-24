.class public abstract Lvm3;
.super Leh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# virtual methods
.method public abstract getBackupLink()Ljava/lang/String;
.end method

.method public abstract getBackupSize()Ljava/lang/Long;
.end method

.method public final getDate()J
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Ljj3;->a:Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvm3;->getTimestamp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljj3;->a:Ljava/time/format/DateTimeFormatter;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvm3;->getBackupLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract getManifestLink()Ljava/lang/String;
.end method

.method public abstract getManifestSize()Ljava/lang/Long;
.end method

.method public final getSize()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvm3;->getBackupSize()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0}, Lvm3;->getManifestSize()Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v2, v0

    .line 18
    return-wide v2
.end method

.method public abstract getTimestamp()Ljava/lang/String;
.end method

.method public final isValid()Z
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvm3;->getBackupLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lvm3;->getBackupSize()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lvm3;->getManifestLink()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lvm3;->getManifestSize()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    cmp-long p0, v0, v2

    .line 44
    .line 45
    if-lez p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method
