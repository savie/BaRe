.class public final Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final backupFile:Lq63;

.field private final backupId:Ljava/lang/String;

.field private final backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

.field private final created:J

.field private final manifestFile:Lq63;

.field private final stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;JLq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 22
    .line 23
    iput-wide p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 24
    .line 25
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 26
    .line 27
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 28
    .line 29
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;Ljava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;JLq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;
    .locals 0

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 26
    .line 27
    if-eqz p9, :cond_4

    .line 28
    .line 29
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p8, p8, 0x20

    .line 32
    .line 33
    if-eqz p8, :cond_5

    .line 34
    .line 35
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 36
    .line 37
    :cond_5
    move-object p8, p6

    .line 38
    move-object p9, p7

    .line 39
    move-object p7, p5

    .line 40
    move-wide p5, p3

    .line 41
    move-object p3, p1

    .line 42
    move-object p4, p2

    .line 43
    move-object p2, p0

    .line 44
    invoke-virtual/range {p2 .. p9}, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;JLq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/folders/data/BackupType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;JLq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;

    .line 17
    .line 18
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;JLq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 32
    .line 33
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 41
    .line 42
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 52
    .line 53
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 63
    .line 64
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 65
    .line 66
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_7

    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    return v0
.end method

.method public final getBackupFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupType()Lorg/swiftapps/swiftbackup/folders/data/BackupType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCreated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getManifestFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStats()Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 19
    .line 20
    invoke-static {v3, v4, v2, v1}, Lxs1;->f(JII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 25
    .line 26
    iget-object v2, v2, Lq63;->a:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    mul-int/2addr v2, v1

    .line 34
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 35
    .line 36
    iget-object v0, v0, Lq63;->a:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v2

    .line 43
    mul-int/2addr v0, v1

    .line 44
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, v0

    .line 51
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->created:J

    .line 6
    .line 7
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->manifestFile:Lq63;

    .line 8
    .line 9
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->backupFile:Lq63;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupInfo;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "BackupInfo(backupId="

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", backupType="

    .line 24
    .line 25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", created="

    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", manifestFile="

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", backupFile="

    .line 48
    .line 49
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", stats="

    .line 56
    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
