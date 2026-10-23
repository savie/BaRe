.class public final Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;
.super Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final backupFile:Lq63;

.field private final manifestFile:Lq63;

.field private final stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;


# direct methods
.method public constructor <init>(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 18
    .line 19
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->copy(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 11
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;-><init>(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getBackupFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getManifestFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStats()Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->manifestFile:Lq63;

    .line 2
    .line 3
    iget-object v0, v0, Lq63;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->backupFile:Lq63;

    .line 12
    .line 13
    iget-object v1, v1, Lq63;->a:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v1

    .line 29
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;->stats:Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Success(stats="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
