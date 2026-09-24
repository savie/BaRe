.class public final Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;
.super Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final backupDir:Lq63;

.field private backupFilename:Ljava/lang/String;

.field private isBaseBackup:Z

.field private manifestFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lq63;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 8
    .line 9
    const-string p1, "folder-base.fld"

    .line 10
    .line 11
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupFilename:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "folder-base.flm"

    .line 14
    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->manifestFilename:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->isBaseBackup:Z

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;Lq63;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->copy(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;-><init>(Lq63;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

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

.method public getBackupDir()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBackupFilename()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;Lq63;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getManifestFilename()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->manifestFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 2
    .line 3
    iget-object p0, p0, Lq63;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isBaseBackup()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->isBaseBackup:Z

    .line 2
    .line 3
    return p0
.end method

.method public setBackupFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupFilename:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setBaseBackup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->isBaseBackup:Z

    .line 2
    .line 3
    return-void
.end method

.method public setManifestFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->manifestFilename:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;->backupDir:Lq63;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "BaseBackup(backupDir="

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
