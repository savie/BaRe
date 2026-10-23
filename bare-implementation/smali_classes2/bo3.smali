.class public final Lbo3;
.super Leo3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final b:Ljava/util/List;

.field public final c:Lkj3;

.field public d:Lkj3;

.field public final e:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

.field public final f:Lxp1;

.field public final g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V
    .locals 8

    .line 121
    const-string v0, "compression_level_folders"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 122
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v0, "prefs"

    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    :goto_0
    sget-object v0, Lxp1;->Companion:Lwp1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lwp1;->a()[Lxp1;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lxp1;->getLevel()I

    move-result v5

    if-ne v5, v2, :cond_1

    move-object v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    sget-object v0, Lxp1;->Companion:Lwp1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    move-result-object v1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    .line 125
    invoke-direct/range {v2 .. v7}, Lbo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Lxp1;)V

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Lxp1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 17
    .line 18
    iput-object p2, p0, Lbo3;->b:Ljava/util/List;

    .line 19
    .line 20
    iput-object p3, p0, Lbo3;->c:Lkj3;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lbo3;->d:Lkj3;

    .line 24
    .line 25
    iput-object p4, p0, Lbo3;->e:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 26
    .line 27
    iput-object p5, p0, Lbo3;->f:Lxp1;

    .line 28
    .line 29
    invoke-virtual {p4}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium()Z

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    if-eqz p5, :cond_0

    .line 34
    .line 35
    sget-object p5, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 36
    .line 37
    invoke-virtual {p5}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    if-nez p5, :cond_0

    .line 42
    .line 43
    sget-object p4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 44
    .line 45
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object p4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 49
    .line 50
    :cond_0
    iput-object p4, p0, Lbo3;->g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 51
    .line 52
    sget-object p4, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 53
    .line 54
    invoke-virtual {p4}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    if-nez p4, :cond_4

    .line 59
    .line 60
    if-nez p3, :cond_4

    .line 61
    .line 62
    new-instance p3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    if-eqz p4, :cond_2

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    move-object p5, p4

    .line 82
    check-cast p5, Lq05;

    .line 83
    .line 84
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 85
    .line 86
    if-eq p5, v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    sget-object p2, Lq05;->DEVICE:Lq05;

    .line 99
    .line 100
    invoke-static {p2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move-object p2, p3

    .line 106
    :cond_4
    :goto_1
    iput-object p2, p0, Lbo3;->h:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_5

    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    const-string p0, "Locations empty!"

    .line 116
    .line 117
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method


# virtual methods
.method public final a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbo3;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lji8;->r(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lbo3;->c:Lkj3;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
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
    instance-of v1, p1, Lbo3;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lbo3;

    .line 11
    .line 12
    iget-object v1, p0, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 13
    .line 14
    iget-object v2, p1, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

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
    iget-object v1, p0, Lbo3;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p1, Lbo3;->b:Ljava/util/List;

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
    iget-object v1, p0, Lbo3;->c:Lkj3;

    .line 35
    .line 36
    iget-object v2, p1, Lbo3;->c:Lkj3;

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
    iget-object v1, p0, Lbo3;->d:Lkj3;

    .line 46
    .line 47
    iget-object v2, p1, Lbo3;->d:Lkj3;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    iget-object v1, p0, Lbo3;->e:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 57
    .line 58
    iget-object v2, p1, Lbo3;->e:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 59
    .line 60
    if-eq v1, v2, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    iget-object p0, p0, Lbo3;->f:Lxp1;

    .line 64
    .line 65
    iget-object p1, p1, Lbo3;->f:Lxp1;

    .line 66
    .line 67
    if-eq p0, p1, :cond_7

    .line 68
    .line 69
    :goto_0
    const/4 p0, 0x0

    .line 70
    return p0

    .line 71
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hashCode()I

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
    iget-object v2, p0, Lbo3;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lbo3;->c:Lkj3;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    add-int/2addr v0, v3

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v3, p0, Lbo3;->d:Lkj3;

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_1
    add-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v3, p0, Lbo3;->e:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v0

    .line 48
    mul-int/2addr v3, v1

    .line 49
    iget-object p0, p0, Lbo3;->f:Lxp1;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    add-int/2addr p0, v3

    .line 56
    mul-int/lit16 p0, p0, 0x3c1

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v0, p0

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Backup("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "folderItem="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, ", locations="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lbo3;->h:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lbo3;->c:Lkj3;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, ", backupToSync="

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v1, p0, Lbo3;->d:Lkj3;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, ", backupToUpload="

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, ", backupStrategy="

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lbo3;->g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, ", compressionLevel="

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lbo3;->f:Lxp1;

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p0, ")"

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method
