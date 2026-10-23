.class public final Ljz;
.super Lkz;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lji;

.field public final c:Ljava/util/List;

.field public final d:Lyu;

.field public final e:Z

.field public final f:Z

.field public final g:Lhk;

.field public final h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;


# direct methods
.method public constructor <init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V
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
    invoke-direct {p0, p1}, Lkz;-><init>(Lji;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ljz;->b:Lji;

    .line 14
    .line 15
    iput-object p2, p0, Ljz;->c:Ljava/util/List;

    .line 16
    .line 17
    iput-object p3, p0, Ljz;->d:Lyu;

    .line 18
    .line 19
    iput-boolean p4, p0, Ljz;->e:Z

    .line 20
    .line 21
    iput-boolean p5, p0, Ljz;->f:Z

    .line 22
    .line 23
    iput-object p6, p0, Ljz;->g:Lhk;

    .line 24
    .line 25
    iput-object p7, p0, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    if-eqz p7, :cond_0

    .line 34
    .line 35
    new-instance p2, Lhk;

    .line 36
    .line 37
    invoke-virtual {p7}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p4, 0x1

    .line 46
    invoke-direct {p2, p3, p1, p4}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Ljz;->g:Lhk;

    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    const-string p0, "AppParts empty!"

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0
.end method


# virtual methods
.method public final a()Lji;
    .locals 0

    .line 1
    iget-object p0, p0, Ljz;->b:Lji;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

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
    instance-of v1, p1, Ljz;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Ljz;

    .line 11
    .line 12
    iget-object v1, p0, Ljz;->b:Lji;

    .line 13
    .line 14
    iget-object v2, p1, Ljz;->b:Lji;

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
    iget-object v1, p0, Ljz;->c:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p1, Ljz;->c:Ljava/util/List;

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
    iget-object v1, p0, Ljz;->d:Lyu;

    .line 35
    .line 36
    iget-object v2, p1, Ljz;->d:Lyu;

    .line 37
    .line 38
    if-eq v1, v2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-boolean v1, p0, Ljz;->e:Z

    .line 42
    .line 43
    iget-boolean v2, p1, Ljz;->e:Z

    .line 44
    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-boolean v1, p0, Ljz;->f:Z

    .line 49
    .line 50
    iget-boolean v2, p1, Ljz;->f:Z

    .line 51
    .line 52
    if-eq v1, v2, :cond_6

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    iget-object v1, p0, Ljz;->g:Lhk;

    .line 56
    .line 57
    iget-object v2, p1, Ljz;->g:Lhk;

    .line 58
    .line 59
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_7
    iget-object p0, p0, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 67
    .line 68
    iget-object p1, p1, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 69
    .line 70
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_8

    .line 75
    .line 76
    :goto_0
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ljz;->b:Lji;

    .line 2
    .line 3
    invoke-virtual {v0}, Lji;->hashCode()I

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
    iget-object v2, p0, Ljz;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Ljz;->d:Lyu;

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
    iget-boolean v0, p0, Ljz;->e:Z

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Lfz5;->h(IIZ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v2, p0, Ljz;->f:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Ljz;->g:Lhk;

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
    mul-int/2addr v2, v1

    .line 44
    const/4 v0, 0x0

    .line 45
    iget-object p0, p0, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 46
    .line 47
    if-nez p0, :cond_0

    .line 48
    .line 49
    move p0, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :goto_0
    add-int/2addr v2, p0

    .line 56
    mul-int/2addr v2, v1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/2addr p0, v2

    .line 62
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ljz;->g:Lhk;

    .line 2
    .line 3
    iget-object v0, v0, Lhk;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Restore(appParts="

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Ljz;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", restorePermissionsMode="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Ljz;->d:Lyu;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", restoreSpecialPermissions="

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-boolean v3, p0, Ljz;->e:Z

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", restoreSsaid="

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Ljz;->f:Z

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ", localBackupId="

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ", cloudBackupId="

    .line 63
    .line 64
    const-string v3, ", isForceRedo=false)"

    .line 65
    .line 66
    invoke-static {v2, v0, p0, v1, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
