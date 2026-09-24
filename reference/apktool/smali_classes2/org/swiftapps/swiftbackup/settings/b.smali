.class public final Lorg/swiftapps/swiftbackup/settings/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getDefaultStrategy$delegate$cp()Los4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 10
    .line 11
    return-object v0
.end method

.method public static b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getLegacyArchiveStrategy$delegate$cp()Los4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 10
    .line 11
    return-object v0
.end method

.method public static c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 6

    .line 1
    const-string v0, "app_backup_archiving"

    .line 2
    .line 3
    sget-object v1, Lw14;->a:Lgv7;

    .line 4
    .line 5
    new-instance v1, Lwi5;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    const-string v3, "GsonHelper"

    .line 13
    .line 14
    const-string v4, "fromPrefs"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static {v3, v4, v5, v1, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isPremium()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_0
    return-object v1

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "prefs"

    .line 60
    .line 61
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move v2, v5

    .line 66
    :goto_0
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "apps_multiple_backups_strategy"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_3
    const-string v0, "editor"

    .line 94
    .line 95
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public static d(Ljava/lang/Integer;)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    if-le p0, v1, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    :goto_0
    return v0
.end method
