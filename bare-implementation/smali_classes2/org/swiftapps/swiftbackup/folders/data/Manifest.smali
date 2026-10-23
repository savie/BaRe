.class public final Lorg/swiftapps/swiftbackup/folders/data/Manifest;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final backupId:Ljava/lang/String;

.field private final backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

.field private final changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

.field private final created:J

.field private final currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

.field private final manifestVersion:I

.field private final parentBackupId:Ljava/lang/String;

.field private final sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 20
    .line 21
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 24
    .line 25
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 26
    .line 27
    iput-wide p5, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 28
    .line 29
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 32
    .line 33
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/Manifest;ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget-wide p5, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p10, p10, 0x80

    .line 44
    .line 45
    if-eqz p10, :cond_7

    .line 46
    .line 47
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 48
    .line 49
    :cond_7
    move-object p10, p8

    .line 50
    move-object p11, p9

    .line 51
    move-object p9, p7

    .line 52
    move-wide p7, p5

    .line 53
    move-object p5, p3

    .line 54
    move-object p6, p4

    .line 55
    move p3, p1

    .line 56
    move-object p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->copy(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final baseOriginalSize()J
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    add-long/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-wide v0
.end method

.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Lorg/swiftapps/swiftbackup/folders/data/BackupType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Lorg/swiftapps/swiftbackup/folders/data/FolderState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Lorg/swiftapps/swiftbackup/folders/data/Changes;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 17
    .line 18
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 50
    .line 51
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 70
    .line 71
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 81
    .line 82
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 83
    .line 84
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    return v0
.end method

.method public final getBackupId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupType()Lorg/swiftapps/swiftbackup/folders/data/BackupType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChanges()Lorg/swiftapps/swiftbackup/folders/data/Changes;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCreated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getManifestVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getParentBackupId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourcePath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 37
    .line 38
    invoke-static {v3, v4, v2, v1}, Lxs1;->f(JII)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 49
    .line 50
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr v2, v0

    .line 55
    mul-int/2addr v2, v1

    .line 56
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v2

    .line 63
    return p0
.end method

.method public final incrementalOriginalSize()J
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    move-wide v3, v1

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 37
    .line 38
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move-wide v5, v1

    .line 56
    :goto_1
    add-long/2addr v3, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-wide v3
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->manifestVersion:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->backupType:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->parentBackupId:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->created:J

    .line 10
    .line 11
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->sourcePath:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->currentState:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->changes:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v9, "Manifest(manifestVersion="

    .line 20
    .line 21
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", backupId="

    .line 28
    .line 29
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", backupType="

    .line 36
    .line 37
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", parentBackupId="

    .line 44
    .line 45
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", created="

    .line 52
    .line 53
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", sourcePath="

    .line 60
    .line 61
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", currentState="

    .line 68
    .line 69
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", changes="

    .line 76
    .line 77
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ")"

    .line 84
    .line 85
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
