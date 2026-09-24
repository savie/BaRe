.class public final Ldo3;
.super Leo3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final b:Lkj3;

.field public final c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public final d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 11
    .line 12
    iput-object p2, p0, Ldo3;->b:Lkj3;

    .line 13
    .line 14
    iput-object p3, p0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 15
    .line 16
    iput-object p4, p0, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 17
    .line 18
    iput-object p5, p0, Ldo3;->e:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-static {p1, p2, p2}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Ldo3;->b:Lkj3;

    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    .locals 0

    .line 1
    iget-object p0, p0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Ldo3;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Ldo3;

    .line 11
    .line 12
    iget-object v1, p0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 13
    .line 14
    iget-object v2, p1, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 15
    .line 16
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Ldo3;->b:Lkj3;

    .line 24
    .line 25
    iget-object v2, p1, Ldo3;->b:Lkj3;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v1, p0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 35
    .line 36
    iget-object v2, p1, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 37
    .line 38
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v1, p0, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 46
    .line 47
    iget-object v2, p1, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 48
    .line 49
    if-eq v1, v2, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-object p0, p0, Ldo3;->e:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Ldo3;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_6

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Ldo3;->b:Lkj3;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/2addr v2, v0

    .line 43
    mul-int/lit8 v2, v2, 0x1f

    .line 44
    .line 45
    iget-object p0, p0, Ldo3;->e:Ljava/lang/String;

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    move p0, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :goto_2
    add-int/2addr v2, p0

    .line 56
    mul-int/lit8 v2, v2, 0x1f

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v2

    .line 63
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object p0, p0, Ldo3;->e:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    const-string p0, "default"

    .line 28
    .line 29
    :cond_1
    const-string v2, ", cloudBackupId="

    .line 30
    .line 31
    const-string v3, ", customTargetFolderPath="

    .line 32
    .line 33
    const-string v4, "Restore(localBackupId="

    .line 34
    .line 35
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, ", isForceRedo=false)"

    .line 40
    .line 41
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
