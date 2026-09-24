.class public abstract Lak3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 8
    .line 9
    const/4 v5, 0x6

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v2, p1

    .line 14
    invoke-direct/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    move-object p1, v0

    .line 21
    move-object v3, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->refreshLocalMetadataFile(Lkj3;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean v0, p0, Lkj3;->b:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lpz4;->g:Lpz4;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ldv;->l(Ljl0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :goto_1
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Failed saving folder metadata at "

    .line 43
    .line 44
    invoke-static {p0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 49
    .line 50
    const/16 v5, 0x8

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const-string v1, "FolderBackupHelper"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move-object v2, p1

    .line 69
    :goto_2
    invoke-direct {p0, v2}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method
