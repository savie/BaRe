.class public final Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final APP_TASKS_DIR_NAME:Ljava/lang/String; = "app_tasks"

.field public static final INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

.field private static isCleanupComplete:Z = false

.field private static final logTag:Ljava/lang/String; = "AppsWorkingDir"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final cleanupAppTasksDir$lambda$0()Lbe8;
    .locals 6

    .line 1
    sget-boolean v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->isCleanupComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->isCleanupComplete:Z

    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getFilesCacheDirPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 17
    .line 18
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Ld45;->b:Ld45;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    sget-object v3, Ldz5;->a:Ldz5;

    .line 42
    .line 43
    invoke-static {}, Ldz5;->n()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getUserFolderCacheDirPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    array-length v3, v1

    .line 80
    const/4 v4, 0x0

    .line 81
    :goto_1
    if-ge v4, v3, :cond_3

    .line 82
    .line 83
    aget-object v5, v1, v4

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {v0, v2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :catch_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    .line 117
    :try_start_0
    const-string v2, "AppsWorkingDir:cleanupAppTasksDir()"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->cleanupAppTasksDir$lambda$0$1(Ljava/lang/String;Ljava/lang/String;)Lbe8;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    :goto_3
    sget-object v0, Lbe8;->a:Lbe8;

    .line 124
    .line 125
    return-object v0
.end method

.method private static final cleanupAppTasksDir$lambda$0$1(Ljava/lang/String;Ljava/lang/String;)Lbe8;
    .locals 8

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    const-string v1, "app_tasks"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, p0, v1, v2}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lq63;->j()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    array-length v1, p0

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    array-length p0, p0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Cleaning "

    .line 53
    .line 54
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, " items from dir: "

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v6, 0x4

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v3, p1

    .line 76
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 83
    .line 84
    return-object p0
.end method

.method private final getAppTasksDirectory(J)Lq63;
    .locals 1

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    sget-boolean v0, Lmp6;->g:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getNormalDir(J)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lmp6;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getShizukuSupportedDir()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getNormalDir(J)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    new-instance p1, Lq63;

    .line 28
    .line 29
    const-string p2, "app_tasks"

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method private final getFilesCacheDirPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "cache"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method private final getNormalDir(J)Ljava/io/File;
    .locals 18

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getFilesCacheDirPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "Unable to create files cache dir at "

    .line 25
    .line 26
    invoke-static {v0, v1}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    :goto_0
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Lq63;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-direct {v1, v0, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-lez v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    cmp-long v3, v3, p1

    .line 59
    .line 60
    if-lez v3, :cond_2

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_2
    sget-object v3, Lp93;->a:Lp93;

    .line 65
    .line 66
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v4, "Internal Storage doesn\'t have enough space for the task. Needed: "

    .line 79
    .line 80
    const-string v5, ", Available: "

    .line 81
    .line 82
    invoke-static {v4, v3, v5, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 87
    .line 88
    const/4 v10, 0x4

    .line 89
    const/4 v11, 0x0

    .line 90
    const-string v7, "AppsWorkingDir"

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v4, "Invalid free space amount in Internal Storage: "

    .line 102
    .line 103
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    const/16 v16, 0x4

    .line 114
    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    const-string v13, "AppsWorkingDir"

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object v1, Lzn7;->q:Lyn7;

    .line 124
    .line 125
    invoke-virtual {v1}, Lyn7;->d()Lzn7;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-boolean v3, v1, Lzn7;->b:Z

    .line 130
    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 134
    .line 135
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    invoke-static {v3}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    move-object v5, v4

    .line 166
    check-cast v5, Ljava/io/File;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    const/4 v7, 0x0

    .line 184
    invoke-static {v5, v6, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_4

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    move-object v4, v2

    .line 192
    :goto_2
    check-cast v4, Ljava/io/File;

    .line 193
    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    move-object v2, v4

    .line 203
    :cond_6
    if-eqz v2, :cond_7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    new-instance v2, Ljava/io/File;

    .line 207
    .line 208
    invoke-direct/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getUserFolderCacheDirPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 216
    .line 217
    :goto_4
    return-object v0

    .line 218
    :cond_9
    return-object v2
.end method

.method private final getShizukuSupportedDir()Ljava/io/File;
    .locals 6

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    if-nez p0, :cond_2

    .line 22
    .line 23
    :cond_1
    new-instance p0, Lry5;

    .line 24
    .line 25
    sget-object v0, Ld45;->b:Ld45;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lq63;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "SwiftBackup"

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    invoke-direct {v1, v2, v3, v4}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {p0, v0, v1}, Lry5;-><init>(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/io/File;

    .line 58
    .line 59
    iget-object p0, p0, Lry5;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object p0, v0

    .line 65
    :cond_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "Need to use working directory at "

    .line 72
    .line 73
    const-string v3, " where Shizuku/ADB can access read/write files"

    .line 74
    .line 75
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v4, 0x4

    .line 80
    const/4 v5, 0x0

    .line 81
    const-string v1, "AppsWorkingDir"

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_3
    const/4 p0, 0x0

    .line 89
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 90
    .line 91
    invoke-static {p0, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0
.end method

.method private final getUserFolderCacheDirPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p0}, Lqy5;->f(ZLzn7;)Lry5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lry5;->e:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final cleanupAppTasksDir()Lbe8;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->cleanupAppTasksDir$lambda$0()Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return-object p0
.end method

.method public final getWorkingDir(Ljava/lang/String;J)Lq63;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq63;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getAppTasksDirectory(J)Lq63;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-direct {v0, p2, p0, p1}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string p0, "Unable to create working dir at "

    .line 22
    .line 23
    invoke-static {v0, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method
