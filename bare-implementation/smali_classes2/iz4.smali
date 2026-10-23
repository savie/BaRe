.class public final Liz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz4$a;
    }
.end annotation


# static fields
.field public static final Companion:Liz4$a;


# instance fields
.field private apkSize:J

.field private final backup:Lgm;

.field private backupId:Ljava/lang/String;

.field private backupTag:Ljava/lang/String;

.field private backupVersion:Ljava/lang/String;

.field private backupVersionCode:J

.field private dataEncryptionInfo:Ljava/lang/String;

.field private dataSize:J

.field private dateBackup:J

.field private dateBackupString:Ljava/lang/String;

.field private dateBackupUpdatedString:Ljava/lang/String;

.field private dateUpdated:Ljava/lang/Long;

.field private expansionSize:J

.field private extDataEncryptionInfo:Ljava/lang/String;

.field private extDataSize:J

.field private isDataEncrypted:Z

.field private isExtDataEncrypted:Z

.field private isMediaEncrypted:Z

.field private mediaEncryptionInfo:Ljava/lang/String;

.field private mediaSize:J

.field private metadata:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

.field private sharedLibsSize:J

.field private splitsApkSize:J

.field private totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Liz4$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Liz4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Liz4;->Companion:Liz4$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lgm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Liz4;->backup:Lgm;

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Liz4;->backupId:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic copy$default(Liz4;Lgm;ILjava/lang/Object;)Liz4;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Liz4;->backup:Lgm;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Liz4;->copy(Lgm;)Liz4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lgm;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backup:Lgm;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lgm;)Liz4;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Liz4;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Liz4;-><init>(Lgm;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Liz4;

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
    check-cast p1, Liz4;

    .line 12
    .line 13
    iget-object p0, p0, Liz4;->backup:Lgm;

    .line 14
    .line 15
    iget-object p1, p1, Liz4;->backup:Lgm;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getApkSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->apkSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBackup()Lgm;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backup:Lgm;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backupTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backupVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackupVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->backupVersionCode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDataEncryptionInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->dataEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->dataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDateBackup()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->dateBackup:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDateBackupString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->dateBackupString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackupUpdatedString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->dateBackupUpdatedString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateUpdated()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->dateUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpansionSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->expansionSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtDataEncryptionInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->extDataEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->extDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMediaEncryptionInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->mediaEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->mediaSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->metadata:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->sharedLibsSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSplitsApkSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->splitsApkSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotalApkSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->apkSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Liz4;->splitsApkSize:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Liz4;->sharedLibsSize:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getTotalSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Liz4;->totalSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hasApk()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->apkSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasBackups()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Liz4;->hasApk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Liz4;->hasData()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Liz4;->hasExtData()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Liz4;->hasMedia()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Liz4;->hasExpansion()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    return v1

    .line 57
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    return p0

    .line 81
    :cond_2
    return v1
.end method

.method public final hasData()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->dataSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasExpansion()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->expansionSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasExtData()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->extDataSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasMedia()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->mediaSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasSharedLibs()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->sharedLibsSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasSplitApks()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Liz4;->splitsApkSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Liz4;->backup:Lgm;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgm;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDataEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Liz4;->isDataEncrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isExtDataEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Liz4;->isExtDataEncrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isMediaEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Liz4;->isMediaEncrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setApkSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->apkSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setBackupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liz4;->backupId:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setBackupTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->backupTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBackupVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->backupVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBackupVersionCode(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->backupVersionCode:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Liz4;->isDataEncrypted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEncryptionInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->dataEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->dataSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackup(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->dateBackup:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackupString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->dateBackupString:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackupUpdatedString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->dateBackupUpdatedString:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateUpdated(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->dateUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpansionSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->expansionSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Liz4;->isExtDataEncrypted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataEncryptionInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->extDataEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtDataSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->extDataSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Liz4;->isMediaEncrypted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaEncryptionInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->mediaEncryptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->mediaSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMetadata(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz4;->metadata:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->sharedLibsSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitsApkSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->splitsApkSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Liz4;->totalSize:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Liz4;->backup:Lgm;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "LocalAppBackupInfo(backup="

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
