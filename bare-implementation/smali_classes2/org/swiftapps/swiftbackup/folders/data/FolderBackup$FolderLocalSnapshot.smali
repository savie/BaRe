.class public abstract Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field private final backupFile$delegate:Los4;

.field private final manifestFile$delegate:Los4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lej;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->backupFile$delegate:Los4;

    .line 17
    .line 18
    new-instance v0, Lfj;

    .line 19
    .line 20
    const/16 v1, 0x18

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->manifestFile$delegate:Los4;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->manifestFile_delegate$lambda$0(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->backupFile_delegate$lambda$0(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final backupFile_delegate$lambda$0(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupDir()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFilename()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final manifestFile_delegate$lambda$0(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupDir()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFilename()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public final delete()V
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->f()Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lq63;->f()Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final exists()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lq63;->k()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public abstract getBackupDir()Lq63;
.end method

.method public final getBackupFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->backupFile$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public abstract getBackupFilename()Ljava/lang/String;
.end method

.method public abstract synthetic getCopy()Ljl0;
.end method

.method public final getDate()J
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lq63;->z()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFilename()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getManifestFile()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->manifestFile$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public abstract getManifestFilename()Ljava/lang/String;
.end method

.method public final getSize()J
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->A()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lq63;->A()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v2, v0

    .line 18
    return-wide v2
.end method

.method public abstract isBaseBackup()Z
.end method
