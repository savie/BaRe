.class public final Lwj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lqp3;

.field public final b:Lkj3;

.field public final c:Lmt3;

.field public final d:Lq63;

.field public final e:Lyn3;

.field public final f:Lv55;


# direct methods
.method public constructor <init>(Lqp3;Lkj3;Lmt3;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lwj3;->a:Lqp3;

    .line 11
    .line 12
    iput-object p2, p0, Lwj3;->b:Lkj3;

    .line 13
    .line 14
    iput-object p3, p0, Lwj3;->c:Lmt3;

    .line 15
    .line 16
    iget-object p1, p2, Lkj3;->e:Lgv7;

    .line 17
    .line 18
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lq63;

    .line 23
    .line 24
    iput-object p1, p0, Lwj3;->d:Lq63;

    .line 25
    .line 26
    new-instance p1, Lyn3;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lwj3;->e:Lyn3;

    .line 32
    .line 33
    new-instance p1, Lv55;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lv55;-><init>(Lkj3;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lwj3;->f:Lv55;

    .line 39
    .line 40
    return-void
.end method

.method public static b(Lwj3;Lxp1;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
    .locals 9

    .line 1
    iget-object v1, p0, Lwj3;->d:Lq63;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v3, "createFolderBaseBackup"

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v1}, Lq63;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    move-object p0, v0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    move-object v5, p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v1}, Lq63;->E(Lq63;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v0, Ltj3;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, p0, v2}, Ltj3;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Lwj3;->c(Lxp1;Ltj3;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v1}, Lq63;->h()Z

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :goto_1
    :try_start_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    const-string v4, "Error creating base backup"

    .line 45
    .line 46
    const/16 v7, 0x8

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const-string p1, "Unknown error during base backup"

    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lq63;->h()Z

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :goto_2
    invoke-virtual {v1}, Lq63;->h()Z

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public static d(Lwj3;Lq63;Lxp1;I)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
    .locals 7

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    iget-object p3, p0, Lwj3;->d:Lq63;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "createFolderIncBackup"

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p3}, Lq63;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {p3}, Lcy0;->e(Lq63;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    move-object p0, v0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    move-object v3, p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p3}, Lq63;->E(Lq63;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    new-instance v0, Lf7;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, p0, v2}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v0}, Lwj3;->e(Lq63;Lxp1;Lf7;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p3}, Lq63;->h()Z

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    :try_start_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    const-string v2, "Error creating incremental backup"

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    const-string p1, "Unknown error during incremental backup"

    .line 67
    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Lq63;->h()Z

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :goto_2
    invoke-virtual {p3}, Lq63;->h()Z

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static i(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, 0x1

    .line 9
    .line 10
    sub-long/2addr p0, v0

    .line 11
    const-wide/16 v2, 0x200

    .line 12
    .line 13
    div-long/2addr p0, v2

    .line 14
    add-long/2addr p0, v0

    .line 15
    const-wide v0, 0x3fffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v0, p0, v0

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const-wide p0, 0x7fffffffffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    return-wide p0

    .line 30
    :cond_1
    mul-long/2addr p0, v2

    .line 31
    return-wide p0
.end method

.method public static j(JJ)J
    .locals 4

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    sub-long v2, v0, p0

    .line 7
    .line 8
    cmp-long v2, v2, p2

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    add-long/2addr p0, p2

    .line 14
    return-wide p0
.end method


# virtual methods
.method public final a(Lq63;)Lvj3;
    .locals 2

    .line 1
    iget-object v0, p0, Lwj3;->b:Lkj3;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lkj3;->g()Lq63;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lym5;

    .line 13
    .line 14
    const-string p1, "No base backup found. Create base backup first."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object v1, p0, Lwj3;->f:Lv55;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lv55;->a(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0}, Lkj3;->e()Lq63;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lwj3;->e:Lyn3;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lyn3;->d(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lyn3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lvj3;

    .line 48
    .line 49
    invoke-direct {v1, v0, p0, p1}, Lvj3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/Changes;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Manifest;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final c(Lxp1;Ltj3;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v10, v0, Lwj3;->b:Lkj3;

    .line 4
    .line 5
    invoke-virtual {v10}, Lkj3;->e()Lq63;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lq63;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    invoke-virtual {v2}, Lq63;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {v10}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 22
    .line 23
    .line 24
    move-result-object v12

    .line 25
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_8

    .line 30
    .line 31
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    iget-object v14, v0, Lwj3;->e:Lyn3;

    .line 36
    .line 37
    invoke-virtual {v14, v2}, Lyn3;->d(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v15, v1}, Lyn3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Collection;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-wide/16 v5, 0x0

    .line 81
    .line 82
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_0

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 93
    .line 94
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    add-long/2addr v5, v7

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v10}, Lkj3;->b()Lq63;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4, v5, v6}, Lpj7;->b(Lq63;J)Loj7;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v4, :cond_7

    .line 109
    .line 110
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 111
    .line 112
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v7, "Creating base backup from "

    .line 117
    .line 118
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v18

    .line 122
    const/16 v20, 0x4

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    const-string v17, "createFolderBaseBackup"

    .line 127
    .line 128
    const/16 v19, 0x0

    .line 129
    .line 130
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object v4, Lp93;->a:Lp93;

    .line 134
    .line 135
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string v7, "Streaming folder files into archive ("

    .line 144
    .line 145
    const-string v8, ")"

    .line 146
    .line 147
    invoke-static {v7, v4, v8}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v18

    .line 151
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const-wide/16 v7, 0x400

    .line 159
    .line 160
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_3

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Ljava/lang/String;

    .line 171
    .line 172
    const/16 v22, 0x0

    .line 173
    .line 174
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 183
    .line 184
    if-eqz v9, :cond_1

    .line 185
    .line 186
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 187
    .line 188
    .line 189
    move-result-wide v18

    .line 190
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    :goto_2
    move-object v11, v1

    .line 195
    goto :goto_3

    .line 196
    :cond_1
    move-object/from16 v9, v22

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :goto_3
    const-wide/16 v0, 0x200

    .line 200
    .line 201
    if-nez v9, :cond_2

    .line 202
    .line 203
    move-object v9, v2

    .line 204
    move-object/from16 v20, v3

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 208
    .line 209
    .line 210
    move-result-wide v18

    .line 211
    move-object v9, v2

    .line 212
    move-object/from16 v20, v3

    .line 213
    .line 214
    invoke-static/range {v18 .. v19}, Lwj3;->i(J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    invoke-static {v0, v1, v2, v3}, Lwj3;->j(JJ)J

    .line 219
    .line 220
    .line 221
    move-result-wide v0

    .line 222
    :goto_4
    invoke-static {v7, v8, v0, v1}, Lwj3;->j(JJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    move-object/from16 v0, p0

    .line 227
    .line 228
    move-object v2, v9

    .line 229
    move-object v1, v11

    .line 230
    move-object/from16 v3, v20

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_3
    move-object v11, v1

    .line 234
    move-object v9, v2

    .line 235
    move-object/from16 v20, v3

    .line 236
    .line 237
    const/16 v22, 0x0

    .line 238
    .line 239
    const-wide/16 v0, 0x1

    .line 240
    .line 241
    cmp-long v2, v7, v0

    .line 242
    .line 243
    if-gez v2, :cond_4

    .line 244
    .line 245
    move-wide v7, v0

    .line 246
    :cond_4
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    move-object/from16 v0, p0

    .line 251
    .line 252
    move-wide v4, v5

    .line 253
    move-wide v6, v7

    .line 254
    move-object v2, v9

    .line 255
    move-object/from16 v3, v20

    .line 256
    .line 257
    move-object/from16 v8, p1

    .line 258
    .line 259
    move-object/from16 v9, p2

    .line 260
    .line 261
    invoke-virtual/range {v0 .. v9}, Lwj3;->f(Lq63;Lq63;Ljava/util/ArrayList;JJLxp1;Lqt3;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    const-string v1, "Verification disabled, using scanned state"

    .line 271
    .line 272
    const-string v2, "FolderScanner"

    .line 273
    .line 274
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    const/16 v20, 0x4

    .line 278
    .line 279
    const/16 v21, 0x0

    .line 280
    .line 281
    const-string v18, "Preparing backup manifest"

    .line 282
    .line 283
    const/16 v19, 0x0

    .line 284
    .line 285
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance v23, Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 289
    .line 290
    sget-object v26, Lorg/swiftapps/swiftbackup/folders/data/BackupType;->BASE:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 291
    .line 292
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 297
    .line 298
    .line 299
    move-result-wide v28

    .line 300
    invoke-virtual {v10}, Lkj3;->e()Lq63;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v30

    .line 308
    new-instance v1, Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 309
    .line 310
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v3}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-direct {v1, v2, v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 323
    .line 324
    .line 325
    new-instance v32, Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 326
    .line 327
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    sget-object v6, Lov2;->a:Lov2;

    .line 340
    .line 341
    invoke-static {v11}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    move-object v7, v6

    .line 346
    move-object v9, v6

    .line 347
    move-object/from16 v4, v32

    .line 348
    .line 349
    invoke-direct/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 350
    .line 351
    .line 352
    const/16 v24, 0x1

    .line 353
    .line 354
    const-string v25, "base"

    .line 355
    .line 356
    const/16 v27, 0x0

    .line 357
    .line 358
    move-object/from16 v31, v1

    .line 359
    .line 360
    invoke-direct/range {v23 .. v32}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v1, v23

    .line 364
    .line 365
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget-object v0, v0, Lwj3;->f:Lv55;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static {v2, v1}, Lv55;->b(Lq63;Lorg/swiftapps/swiftbackup/folders/data/Manifest;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lq63;->k()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    const-string v2, " file doesn\'t exist or is 0 Bytes"

    .line 386
    .line 387
    if-eqz v1, :cond_6

    .line 388
    .line 389
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v1}, Lq63;->k()Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-eqz v3, :cond_5

    .line 398
    .line 399
    new-instance v2, Lpw5;

    .line 400
    .line 401
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v2, Lpw5;->a:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Lq63;

    .line 407
    .line 408
    iget-object v1, v2, Lpw5;->b:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v1, Lq63;

    .line 411
    .line 412
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v13, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    invoke-virtual {v1}, Lq63;->A()J

    .line 421
    .line 422
    .line 423
    move-result-wide v8

    .line 424
    new-instance v2, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 425
    .line 426
    new-instance v3, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 427
    .line 428
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    const/4 v6, 0x0

    .line 448
    const/4 v7, 0x0

    .line 449
    invoke-direct/range {v3 .. v10}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;-><init>(IIIIJLjava/time/Duration;)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v2, v0, v1, v3}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;-><init>(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V

    .line 453
    .line 454
    .line 455
    return-object v2

    .line 456
    :cond_5
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    return-object v22

    .line 468
    :cond_6
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    return-object v22

    .line 480
    :cond_7
    const/16 v22, 0x0

    .line 481
    .line 482
    iget-object v0, v4, Loj7;->a:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    return-object v22

    .line 488
    :cond_8
    const/16 v22, 0x0

    .line 489
    .line 490
    const-string v0, "Base backup already exists at "

    .line 491
    .line 492
    invoke-static {v12, v0}, Lc6;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-object v22

    .line 496
    :cond_9
    const/16 v22, 0x0

    .line 497
    .line 498
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    const-string v1, "Source folder does not exist or is not a directory: "

    .line 503
    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    return-object v22
.end method

.method public final e(Lq63;Lxp1;Lf7;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget-object v1, v0, Lwj3;->b:Lkj3;

    .line 8
    .line 9
    invoke-virtual {v1}, Lkj3;->e()Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lq63;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_f

    .line 18
    .line 19
    invoke-virtual {v2}, Lq63;->x()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_f

    .line 24
    .line 25
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    const/4 v8, 0x4

    .line 28
    const/4 v9, 0x0

    .line 29
    const-string v13, "createFolderIncBackup"

    .line 30
    .line 31
    const-string v6, "Checking for changes since last backup"

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v5, v13

    .line 35
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p1}, Lwj3;->a(Lq63;)Lvj3;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v5, v3, Lvj3;->a:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 43
    .line 44
    iget-object v6, v3, Lvj3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 45
    .line 46
    iget-object v3, v3, Lvj3;->c:Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 47
    .line 48
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    const/4 v9, 0x0

    .line 56
    const-string v6, "No changes detected since last backup"

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    move-object v5, v13

    .line 60
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;->INSTANCE:Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesAdded()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v7, v0, Lwj3;->e:Lyn3;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v4}, Lyn3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Collection;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v7, v8}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7, v4}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    const-wide/16 v14, 0x0

    .line 100
    .line 101
    move-object/from16 v18, v4

    .line 102
    .line 103
    move-object v9, v5

    .line 104
    move-wide v4, v14

    .line 105
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_2

    .line 110
    .line 111
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Ljava/lang/String;

    .line 116
    .line 117
    const/16 v19, 0x0

    .line 118
    .line 119
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 128
    .line 129
    if-eqz v11, :cond_1

    .line 130
    .line 131
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    move-wide v11, v14

    .line 137
    :goto_1
    add-long/2addr v4, v11

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    const/16 v19, 0x0

    .line 140
    .line 141
    invoke-virtual {v1}, Lkj3;->b()Lq63;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-static {v8, v4, v5}, Lpj7;->b(Lq63;J)Loj7;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    if-nez v8, :cond_e

    .line 150
    .line 151
    sget-object v8, Ljj3;->a:Ljava/time/format/DateTimeFormatter;

    .line 152
    .line 153
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    sget-object v11, Ljj3;->a:Ljava/time/format/DateTimeFormatter;

    .line 161
    .line 162
    invoke-virtual {v11, v8}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    new-instance v8, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 170
    .line 171
    invoke-virtual {v1}, Lkj3;->b()Lq63;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-direct {v8, v1, v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;-><init>(Lq63;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_3

    .line 183
    .line 184
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 185
    .line 186
    const/16 v16, 0x4

    .line 187
    .line 188
    const/16 v17, 0x0

    .line 189
    .line 190
    const-string v14, "Creating incremental backup with only deletions (empty archive payload)"

    .line 191
    .line 192
    const/4 v15, 0x0

    .line 193
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_3
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const-string v14, "Creating incremental backup with "

    .line 204
    .line 205
    const-string v15, " changed items"

    .line 206
    .line 207
    invoke-static {v1, v14, v15}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    const/16 v16, 0x4

    .line 212
    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    const/4 v15, 0x0

    .line 216
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    sget-object v1, Lp93;->a:Lp93;

    .line 220
    .line 221
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v14, "Streaming folder files into archive ("

    .line 230
    .line 231
    const-string v15, ")"

    .line 232
    .line 233
    invoke-static {v14, v1, v15}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    const/4 v15, 0x0

    .line 238
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :goto_2
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    const-wide/16 v13, 0x400

    .line 250
    .line 251
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    if-eqz v15, :cond_6

    .line 256
    .line 257
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    check-cast v15, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 272
    .line 273
    if-eqz v0, :cond_4

    .line 274
    .line 275
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 276
    .line 277
    .line 278
    move-result-wide v15

    .line 279
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    move-object v15, v0

    .line 284
    :goto_4
    move-object/from16 p1, v1

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_4
    move-object/from16 v15, v19

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :goto_5
    const-wide/16 v0, 0x200

    .line 291
    .line 292
    if-nez v15, :cond_5

    .line 293
    .line 294
    move-object/from16 v17, v2

    .line 295
    .line 296
    move-object/from16 v20, v3

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_5
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 300
    .line 301
    .line 302
    move-result-wide v15

    .line 303
    move-object/from16 v17, v2

    .line 304
    .line 305
    move-object/from16 v20, v3

    .line 306
    .line 307
    invoke-static/range {v15 .. v16}, Lwj3;->i(J)J

    .line 308
    .line 309
    .line 310
    move-result-wide v2

    .line 311
    invoke-static {v0, v1, v2, v3}, Lwj3;->j(JJ)J

    .line 312
    .line 313
    .line 314
    move-result-wide v0

    .line 315
    :goto_6
    invoke-static {v13, v14, v0, v1}, Lwj3;->j(JJ)J

    .line 316
    .line 317
    .line 318
    move-result-wide v13

    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move-object/from16 v1, p1

    .line 322
    .line 323
    move-object/from16 v2, v17

    .line 324
    .line 325
    move-object/from16 v3, v20

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_6
    move-object/from16 p1, v1

    .line 329
    .line 330
    move-object/from16 v17, v2

    .line 331
    .line 332
    move-object/from16 v20, v3

    .line 333
    .line 334
    const-wide/16 v0, 0x1

    .line 335
    .line 336
    cmp-long v2, v13, v0

    .line 337
    .line 338
    move-object v12, v6

    .line 339
    move-object v3, v7

    .line 340
    if-gez v2, :cond_7

    .line 341
    .line 342
    move-wide v6, v0

    .line 343
    move-object v14, v8

    .line 344
    move-object v13, v9

    .line 345
    move-object/from16 v2, v17

    .line 346
    .line 347
    move-object/from16 v8, p2

    .line 348
    .line 349
    move-object/from16 v9, p3

    .line 350
    .line 351
    move-object/from16 v0, p0

    .line 352
    .line 353
    move-object/from16 v1, p1

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_7
    move-wide v6, v13

    .line 357
    move-object/from16 v0, p0

    .line 358
    .line 359
    move-object/from16 v1, p1

    .line 360
    .line 361
    move-object/from16 v2, v17

    .line 362
    .line 363
    move-object v14, v8

    .line 364
    move-object v13, v9

    .line 365
    move-object/from16 v8, p2

    .line 366
    .line 367
    move-object/from16 v9, p3

    .line 368
    .line 369
    :goto_7
    invoke-virtual/range {v0 .. v9}, Lwj3;->f(Lq63;Lq63;Ljava/util/ArrayList;JJLxp1;Lqt3;)V

    .line 370
    .line 371
    .line 372
    move-object/from16 v17, v2

    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_8

    .line 379
    .line 380
    const-string v1, "FolderScanner"

    .line 381
    .line 382
    const-string v2, "Verification disabled, using scanned state"

    .line 383
    .line 384
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-object v6, v12

    .line 388
    goto :goto_8

    .line 389
    :cond_8
    new-instance v6, Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 390
    .line 391
    sget-object v1, Lpv2;->a:Lpv2;

    .line 392
    .line 393
    sget-object v2, Lov2;->a:Lov2;

    .line 394
    .line 395
    invoke-direct {v6, v1, v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 396
    .line 397
    .line 398
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 413
    .line 414
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesDeleted()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_9

    .line 430
    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Ljava/lang/String;

    .line 436
    .line 437
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_9
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesDeleted()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    new-instance v4, Ljava/util/HashSet;

    .line 456
    .line 457
    const/16 v5, 0xc

    .line 458
    .line 459
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    invoke-static {v5}, Lx65;->q0(I)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 468
    .line 469
    .line 470
    invoke-static {v2, v4}, Lel1;->t1(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 471
    .line 472
    .line 473
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 474
    .line 475
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    add-int/2addr v7, v5

    .line 492
    invoke-direct {v2, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    new-instance v5, Lll1;

    .line 503
    .line 504
    invoke-direct {v5, v1}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 505
    .line 506
    .line 507
    new-instance v1, Lox;

    .line 508
    .line 509
    const/16 v7, 0xe

    .line 510
    .line 511
    invoke-direct {v1, v4, v7}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 512
    .line 513
    .line 514
    new-instance v7, Lme3;

    .line 515
    .line 516
    const/4 v8, 0x0

    .line 517
    invoke-direct {v7, v5, v8, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 518
    .line 519
    .line 520
    new-instance v1, Lle3;

    .line 521
    .line 522
    invoke-direct {v1, v7}, Lle3;-><init>(Lme3;)V

    .line 523
    .line 524
    .line 525
    :goto_a
    invoke-virtual {v1}, Lle3;->hasNext()Z

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    if-eqz v5, :cond_a

    .line 530
    .line 531
    invoke-virtual {v1}, Lle3;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    check-cast v5, Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    goto :goto_a

    .line 541
    :cond_a
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    new-instance v5, Lll1;

    .line 549
    .line 550
    invoke-direct {v5, v1}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 551
    .line 552
    .line 553
    new-instance v1, Lcz;

    .line 554
    .line 555
    const/16 v6, 0x9

    .line 556
    .line 557
    invoke-direct {v1, v4, v6}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 558
    .line 559
    .line 560
    new-instance v4, Lme3;

    .line 561
    .line 562
    invoke-direct {v4, v5, v8, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 563
    .line 564
    .line 565
    new-instance v1, Lle3;

    .line 566
    .line 567
    invoke-direct {v1, v4}, Lle3;-><init>(Lme3;)V

    .line 568
    .line 569
    .line 570
    :goto_b
    invoke-virtual {v1}, Lle3;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    if-eqz v4, :cond_b

    .line 575
    .line 576
    invoke-virtual {v1}, Lle3;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    check-cast v4, Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    goto :goto_b

    .line 586
    :cond_b
    new-instance v1, Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 587
    .line 588
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-direct {v1, v3, v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 593
    .line 594
    .line 595
    new-instance v21, Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 596
    .line 597
    const-string v2, "inc-"

    .line 598
    .line 599
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v23

    .line 603
    sget-object v24, Lorg/swiftapps/swiftbackup/folders/data/BackupType;->INCREMENTAL:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    .line 604
    .line 605
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getBackupId()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v25

    .line 609
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 614
    .line 615
    .line 616
    move-result-wide v26

    .line 617
    invoke-virtual/range {v17 .. v17}, Lq63;->v()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v28

    .line 621
    new-instance v2, Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 622
    .line 623
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-static {v1}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-direct {v2, v3, v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 636
    .line 637
    .line 638
    new-instance v30, Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 639
    .line 640
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesDeleted()Ljava/util/List;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    invoke-static/range {v18 .. v18}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesDeleted()Ljava/util/List;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v1}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    move-object/from16 v4, v30

    .line 665
    .line 666
    invoke-direct/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 667
    .line 668
    .line 669
    const/16 v22, 0x1

    .line 670
    .line 671
    move-object/from16 v29, v2

    .line 672
    .line 673
    invoke-direct/range {v21 .. v30}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/BackupType;Ljava/lang/String;JLjava/lang/String;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/Changes;)V

    .line 674
    .line 675
    .line 676
    move-object/from16 v1, v21

    .line 677
    .line 678
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    iget-object v0, v0, Lwj3;->f:Lv55;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-static {v2, v1}, Lv55;->b(Lq63;Lorg/swiftapps/swiftbackup/folders/data/Manifest;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lq63;->k()Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    const-string v2, " file doesn\'t exist or is 0 Bytes"

    .line 699
    .line 700
    if-eqz v1, :cond_d

    .line 701
    .line 702
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {v1}, Lq63;->k()Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-eqz v3, :cond_c

    .line 711
    .line 712
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    invoke-static {v10, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 717
    .line 718
    .line 719
    move-result-object v21

    .line 720
    invoke-virtual {v1}, Lq63;->A()J

    .line 721
    .line 722
    .line 723
    move-result-wide v19

    .line 724
    new-instance v2, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    .line 725
    .line 726
    new-instance v14, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 727
    .line 728
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 733
    .line 734
    .line 735
    move-result v15

    .line 736
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 741
    .line 742
    .line 743
    move-result v16

    .line 744
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 749
    .line 750
    .line 751
    move-result v17

    .line 752
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesDeleted()Ljava/util/List;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 757
    .line 758
    .line 759
    move-result v18

    .line 760
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    invoke-direct/range {v14 .. v21}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;-><init>(IIIIJLjava/time/Duration;)V

    .line 764
    .line 765
    .line 766
    invoke-direct {v2, v0, v1, v14}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;-><init>(Lq63;Lq63;Lorg/swiftapps/swiftbackup/folders/data/BackupStats;)V

    .line 767
    .line 768
    .line 769
    return-object v2

    .line 770
    :cond_c
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    return-object v19

    .line 782
    :cond_d
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    return-object v19

    .line 794
    :cond_e
    iget-object v0, v8, Loj7;->a:Ljava/lang/String;

    .line 795
    .line 796
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    return-object v19

    .line 800
    :cond_f
    move-object/from16 v17, v2

    .line 801
    .line 802
    const/16 v19, 0x0

    .line 803
    .line 804
    invoke-virtual/range {v17 .. v17}, Lq63;->v()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    const-string v1, "Source folder does not exist or is not a directory: "

    .line 809
    .line 810
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    return-object v19
.end method

.method public final f(Lq63;Lq63;Ljava/util/ArrayList;JJLxp1;Lqt3;)V
    .locals 13

    .line 1
    move-object/from16 v10, p9

    .line 2
    .line 3
    const-string v11, "createFolderArchive"

    .line 4
    .line 5
    cmp-long v0, p6, p4

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    move-wide/from16 v0, p4

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v0, p6

    .line 13
    .line 14
    :goto_0
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-gez v4, :cond_1

    .line 19
    .line 20
    move-wide v7, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-wide v7, v0

    .line 23
    :goto_1
    iget-object v0, p0, Lwj3;->b:Lkj3;

    .line 24
    .line 25
    iget-object v0, v0, Lkj3;->h:Lgv7;

    .line 26
    .line 27
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, [C

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    move-object v0, v2

    .line 38
    :cond_2
    if-eqz v0, :cond_3

    .line 39
    .line 40
    array-length v1, v0

    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_3
    move-object v6, v2

    .line 46
    new-instance v9, Lkh6;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v10, v0, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance v0, Luj3;

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    move-object v1, p1

    .line 69
    move-object v2, p2

    .line 70
    move-object/from16 v3, p3

    .line 71
    .line 72
    move-object/from16 v5, p8

    .line 73
    .line 74
    invoke-direct/range {v0 .. v10}, Luj3;-><init>(Lq63;Lq63;Ljava/util/ArrayList;Lwj3;Lxp1;[CJLkh6;Lqt3;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Luj3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    array-length p0, v6

    .line 83
    invoke-static {v6, v12, p0, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, Lq63;->k()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {v10, p0, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string p1, " file doesn\'t exist or is 0 Bytes"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object p0, v0

    .line 120
    :try_start_1
    sget-object p2, Lvr6;->INSTANCE:Lvr6;

    .line 121
    .line 122
    const-string v0, "Error streaming folder archive"

    .line 123
    .line 124
    const/16 v1, 0x8

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    move-object/from16 p5, p0

    .line 129
    .line 130
    move-object/from16 p4, v0

    .line 131
    .line 132
    move/from16 p7, v1

    .line 133
    .line 134
    move-object/from16 p8, v2

    .line 135
    .line 136
    move-object/from16 p6, v3

    .line 137
    .line 138
    move-object/from16 p3, v11

    .line 139
    .line 140
    invoke-static/range {p2 .. p8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lq63;->h()Z

    .line 144
    .line 145
    .line 146
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    move-object p0, v0

    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    array-length p1, v6

    .line 152
    invoke-static {v6, v12, p1, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 153
    .line 154
    .line 155
    :cond_6
    throw p0
.end method

.method public final g(Lq63;Lq63;Ljava/lang/String;Lwn3;Liw;[C)V
    .locals 22

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    iget-wide v1, v0, Lwn3;->h:J

    .line 4
    .line 5
    const-wide/16 v3, 0x1

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-gez v5, :cond_0

    .line 10
    .line 11
    move-wide v8, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide v8, v1

    .line 14
    :goto_0
    new-instance v10, Lkh6;

    .line 15
    .line 16
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 20
    .line 21
    new-instance v1, Ljd0;

    .line 22
    .line 23
    sget-object v16, Lf27;->Basic:Lf27;

    .line 24
    .line 25
    iget-object v0, v0, Lwn3;->c:Ljava/util/List;

    .line 26
    .line 27
    sget-object v19, Liz6;->Auto:Liz6;

    .line 28
    .line 29
    new-instance v2, Lck;

    .line 30
    .line 31
    const/16 v3, 0x13

    .line 32
    .line 33
    move-object/from16 v7, p0

    .line 34
    .line 35
    invoke-direct {v2, v7, v3}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lkw;

    .line 39
    .line 40
    move-object/from16 v11, p5

    .line 41
    .line 42
    invoke-direct/range {v6 .. v11}, Lkw;-><init>(Lwj3;JLkh6;Liw;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Lmz6;->g(Lmt3;)Lqo6;

    .line 46
    .line 47
    .line 48
    move-result-object v21

    .line 49
    const/4 v15, 0x0

    .line 50
    move-object/from16 v12, p1

    .line 51
    .line 52
    move-object/from16 v13, p2

    .line 53
    .line 54
    move-object/from16 v14, p3

    .line 55
    .line 56
    move-object/from16 v17, p6

    .line 57
    .line 58
    move-object/from16 v18, v0

    .line 59
    .line 60
    move-object v11, v1

    .line 61
    move-object/from16 v20, v2

    .line 62
    .line 63
    invoke-direct/range {v11 .. v21}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lh07;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v11}, Lmz6;->f(Ljd0;)Ljz6;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final h(Lq63;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Lnn3;)Lrm6;
    .locals 45

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    .line 2
    iget-object v9, v1, Lwj3;->b:Lkj3;

    invoke-virtual {v9}, Lkj3;->g()Lq63;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 3
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v11, "restoreFolder"

    const-string v4, "Building restore chain"

    const/4 v5, 0x0

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 4
    iget-object v2, v1, Lwj3;->f:Lv55;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lv55;->a:Lkj3;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v0}, Lv55;->a(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v4

    .line 7
    :goto_0
    new-instance v5, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    invoke-direct {v5, v0, v4}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;-><init>(Lq63;Lorg/swiftapps/swiftbackup/folders/data/Manifest;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getBackupType()Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    move-result-object v0

    sget-object v5, Lorg/swiftapps/swiftbackup/folders/data/BackupType;->BASE:Lorg/swiftapps/swiftbackup/folders/data/BackupType;

    const/16 v16, 0x0

    if-ne v0, v5, :cond_4e

    .line 9
    invoke-static {v3}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getManifest()Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 12
    invoke-virtual/range {p1 .. p1}, Lq63;->j()Z

    move-result v5

    move-object/from16 v7, p3

    .line 13
    iget-object v10, v7, Lnn3;->b:Ljava/lang/String;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v7, v16

    :goto_1
    if-eqz v7, :cond_2

    .line 16
    iget-boolean v10, v7, Lnn3;->c:Z

    if-ne v10, v5, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v7, v16

    :goto_2
    if-eqz v7, :cond_2

    .line 17
    iget-object v7, v7, Lnn3;->d:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    goto :goto_3

    :cond_2
    move-object/from16 v7, v16

    .line 18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lq63;->j()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static/range {p1 .. p1}, Lq63;->E(Lq63;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lq63;->j()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    .line 19
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to create target folder: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    return-object v16

    .line 21
    :cond_4
    :goto_4
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Restoring to "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 22
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v12, v6

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "/"

    const-string v15, "Skipping backup "

    if-eqz v13, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v6, v12, 0x1

    if-ltz v12, :cond_11

    .line 24
    check-cast v13, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    .line 25
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getFile()Lq63;

    move-result-object v12

    .line 26
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v2}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    move-result-object v19

    .line 28
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    :goto_6
    move-object/from16 v1, v16

    goto :goto_9

    .line 29
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    move-result-object v1

    invoke-static {v1, v12}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    move-result-object v1

    goto :goto_9

    .line 31
    :cond_7
    invoke-virtual {v2}, Lkj3;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    goto :goto_6

    .line 33
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    move-object/from16 p3, v1

    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    move-result-object v1

    invoke-static {v1, v12}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v1, p3

    goto :goto_7

    :cond_a
    move-object/from16 v19, v16

    :goto_8
    check-cast v19, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    move-result-object v1

    .line 34
    :goto_9
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getManifest()Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v12

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getChanges()Lorg/swiftapps/swiftbackup/folders/data/Changes;

    move-result-object v12

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->hasOnlyDeletions()Z

    move-result v12

    if-eqz v1, :cond_b

    if-eqz v12, :cond_c

    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v1, v10

    goto :goto_d

    .line 35
    :cond_c
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getManifest()Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v12

    .line 36
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getChanges()Lorg/swiftapps/swiftbackup/folders/data/Changes;

    move-result-object v14

    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    move-result-object v14

    .line 37
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getChanges()Lorg/swiftapps/swiftbackup/folders/data/Changes;

    move-result-object v15

    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    move-result-object v15

    .line 38
    invoke-static {v14, v15}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 39
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getChanges()Lorg/swiftapps/swiftbackup/folders/data/Changes;

    move-result-object v12

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesAdded()Ljava/util/List;

    move-result-object v12

    .line 40
    invoke-static {v14, v12}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    .line 41
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v19, v2

    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v3

    .line 43
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_c

    :cond_d
    :goto_b
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_a

    .line 44
    :cond_e
    :goto_c
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .line 45
    new-instance v2, Lim6;

    invoke-direct {v2, v1, v13, v14}, Lim6;-><init>(Lq63;Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;Ljava/util/ArrayList;)V

    move-object v1, v10

    goto :goto_e

    .line 46
    :goto_d
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ": Empty backup (only deletions)"

    .line 47
    invoke-static {v15, v6, v14, v3, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 48
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v2, v16

    :goto_e
    if-eqz v2, :cond_10

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object v10, v1

    move v12, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v6, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_5

    .line 50
    :cond_11
    invoke-static {}, Lfl1;->F0()V

    throw v16

    :cond_12
    move-object v1, v10

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v1, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 53
    check-cast v3, Lim6;

    .line 54
    iget-object v3, v3, Lim6;->c:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 56
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v0, Lov2;->a:Lov2;

    move-object/from16 v17, v1

    goto/16 :goto_15

    .line 57
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    if-ltz v6, :cond_16

    check-cast v12, Ljava/util/List;

    .line 59
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/String;

    move-object/from16 v17, v1

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    const/16 v10, 0xa

    goto :goto_11

    :cond_15
    move v6, v13

    goto :goto_10

    .line 61
    :cond_16
    invoke-static {}, Lfl1;->F0()V

    throw v16

    :cond_17
    move-object/from16 v17, v1

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v12, v3, 0x1

    if-ltz v3, :cond_1b

    .line 64
    check-cast v6, Ljava/util/List;

    .line 65
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v0

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_18

    goto :goto_14

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 68
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_14
    move-object/from16 v0, v19

    const/16 v10, 0xa

    goto :goto_13

    :cond_1a
    move-object/from16 v19, v0

    .line 69
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v12

    const/16 v10, 0xa

    goto :goto_12

    :cond_1b
    invoke-static {}, Lfl1;->F0()V

    throw v16

    :cond_1c
    move-object v0, v1

    .line 70
    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v2, 0x0

    :goto_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v10, 0x1

    if-eqz v3, :cond_30

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v19, v2, 0x1

    if-ltz v2, :cond_2f

    .line 72
    move-object v12, v3

    check-cast v12, Lim6;

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_1d

    goto :goto_17

    :cond_1d
    if-eqz v7, :cond_1e

    .line 75
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_17
    move-object/from16 v22, v0

    move-object v0, v2

    move-object v13, v4

    move/from16 v21, v5

    move-object v2, v7

    const/16 v18, 0x0

    goto/16 :goto_20

    .line 76
    :cond_1e
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    if-eqz v7, :cond_1f

    .line 77
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v6

    goto :goto_18

    :cond_1f
    move-object/from16 v6, v16

    :goto_18
    if-eqz v7, :cond_20

    .line 78
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_20

    invoke-static {v13}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    goto :goto_19

    :cond_20
    move-object/from16 v13, v16

    .line 79
    :goto_19
    sget-object v20, Lxj3;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    move-object/from16 v22, v0

    aget v0, v20, v21

    if-eq v0, v10, :cond_2a

    move/from16 v20, v10

    const/4 v10, 0x2

    if-eq v0, v10, :cond_22

    const/4 v10, 0x3

    if-ne v0, v10, :cond_21

    goto :goto_1a

    :cond_21
    invoke-static {}, Lq;->j()V

    return-object v16

    .line 80
    :cond_22
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    move-object v2, v7

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/String;

    .line 82
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    move-object/from16 v18, v13

    move-object v13, v4

    move-object/from16 v4, v18

    move-object/from16 v23, v10

    move-object/from16 v10, v21

    const/16 v18, 0x0

    move/from16 v21, v5

    move-object v5, v6

    move-object/from16 v6, p1

    .line 83
    invoke-static/range {v2 .. v7}, Lz85;->D(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lq63;Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v24, v5

    move-object v5, v3

    move-object v3, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v4

    move-object v4, v2

    goto/16 :goto_1e

    :cond_23
    move-object/from16 v23, v10

    move-object/from16 v24, v13

    move-object/from16 v10, v21

    const/16 v18, 0x0

    move-object v13, v4

    move/from16 v21, v5

    move-object v4, v2

    move-object v5, v3

    move-object/from16 v3, p1

    .line 84
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    if-nez v2, :cond_25

    :cond_24
    move/from16 v7, v18

    goto :goto_1e

    :cond_25
    if-eqz v6, :cond_26

    .line 85
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    goto :goto_1c

    :cond_26
    move-object/from16 v25, v16

    :goto_1c
    if-eqz v4, :cond_27

    if-eqz v25, :cond_24

    .line 86
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v25}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    move-result-wide v28

    cmp-long v7, v26, v28

    if-nez v7, :cond_24

    .line 87
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getMtime()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v25}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getMtime()J

    move-result-wide v28

    cmp-long v2, v26, v28

    if-nez v2, :cond_24

    :goto_1d
    move/from16 v7, v20

    goto :goto_1e

    .line 88
    :cond_27
    invoke-virtual {v3, v7}, Lq63;->J(Ljava/lang/String;)Lq63;

    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lq63;->j()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 90
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    move-result-wide v25

    invoke-virtual {v7}, Lq63;->A()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-nez v25, :cond_24

    .line 91
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getMtime()J

    move-result-wide v25

    invoke-virtual {v7}, Lq63;->z()J

    move-result-wide v27

    cmp-long v2, v25, v27

    if-nez v2, :cond_24

    goto :goto_1d

    :goto_1e
    if-nez v7, :cond_28

    .line 92
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object v7, v4

    move-object v3, v5

    move-object v4, v13

    move/from16 v5, v21

    move-object/from16 v10, v23

    move-object/from16 v13, v24

    goto/16 :goto_1b

    :cond_29
    move-object/from16 v3, p1

    move-object v13, v4

    move/from16 v21, v5

    const/16 v18, 0x0

    move-object v2, v7

    goto :goto_20

    :cond_2a
    move/from16 v21, v5

    move-object/from16 v24, v13

    const/16 v18, 0x0

    move-object v5, v3

    move-object v13, v4

    move-object v4, v7

    move-object/from16 v3, p1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-object/from16 v20, v6

    move-object v6, v3

    move-object v3, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v10

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v4, v24

    .line 95
    invoke-static/range {v2 .. v7}, Lz85;->D(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lq63;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 96
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v24, v4

    move-object v6, v5

    move-object/from16 v10, v20

    move-object v4, v2

    move-object v5, v3

    move-object/from16 v3, p1

    goto :goto_1f

    :cond_2c
    move-object v2, v4

    .line 97
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 98
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 99
    iget-object v0, v12, Lim6;->a:Lq63;

    .line 100
    invoke-virtual {v0}, Lq63;->q()Ljava/lang/String;

    move-result-object v0

    const-string v3, " since no files to extract"

    .line 101
    invoke-static {v15, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v3, v14

    const/4 v14, 0x4

    move-object v0, v15

    const/4 v15, 0x0

    move-object v4, v13

    const/4 v13, 0x0

    move-object v7, v4

    const/16 v5, 0xa

    move-object v4, v0

    .line 102
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v6, v16

    goto :goto_21

    :cond_2d
    move-object v7, v13

    move-object v3, v14

    move-object v4, v15

    const/16 v5, 0xa

    .line 103
    new-instance v6, Lwn3;

    .line 104
    iget-object v10, v12, Lim6;->a:Lq63;

    .line 105
    iget-object v12, v12, Lim6;->b:Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    .line 106
    invoke-direct {v6, v10, v12, v0}, Lwn3;-><init>(Lq63;Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;Ljava/util/List;)V

    :goto_21
    if-eqz v6, :cond_2e

    .line 107
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    move-object v14, v3

    move-object v15, v4

    move-object v4, v7

    move/from16 v5, v21

    move-object/from16 v0, v22

    move-object v7, v2

    move/from16 v2, v19

    goto/16 :goto_16

    .line 108
    :cond_2f
    invoke-static {}, Lfl1;->F0()V

    throw v16

    :cond_30
    move/from16 v21, v5

    move-object v2, v7

    move/from16 v20, v10

    move-object v3, v14

    const/16 v5, 0xa

    const/16 v18, 0x0

    move-object v7, v4

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v22

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwn3;

    .line 111
    iget-wide v12, v6, Lwn3;->h:J

    add-long v24, v24, v12

    goto :goto_22

    .line 112
    :cond_31
    new-instance v6, Lkh6;

    .line 113
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v0, v18

    move-wide/from16 v12, v22

    :goto_23
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v14, ")"

    const-string v15, " ("

    if-eqz v10, :cond_47

    add-int/lit8 v10, v0, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 p3, v6

    move-object v6, v0

    check-cast v6, Lwn3;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    iget-object v5, v6, Lwn3;->a:Lq63;

    move-object/from16 v26, v7

    iget-object v7, v6, Lwn3;->d:Ljava/util/List;

    move-wide/from16 v27, v12

    iget-object v13, v6, Lwn3;->a:Lq63;

    iget-object v12, v6, Lwn3;->c:Ljava/util/List;

    .line 117
    invoke-virtual {v5}, Lq63;->q()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v1

    const-string v1, "Processing backup "

    move-object/from16 v30, v2

    const-string v2, ": "

    .line 118
    invoke-static {v1, v10, v3, v2, v0}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v10

    .line 120
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    move-object v2, v14

    const/4 v14, 0x4

    move-object v5, v15

    const/4 v15, 0x0

    move-object/from16 v31, v13

    const/4 v13, 0x0

    move/from16 v32, v20

    move/from16 v20, v1

    move-object v1, v12

    move-object v12, v0

    move-object v0, v2

    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 121
    iget-object v2, v6, Lwn3;->b:Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    .line 122
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getManifest()Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v2

    .line 123
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v12, v22

    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_33

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 124
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    move-result-object v15

    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    if-eqz v14, :cond_32

    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    move-result-wide v14

    goto :goto_25

    :cond_32
    move-wide/from16 v14, v22

    :goto_25
    add-long/2addr v12, v14

    goto :goto_24

    .line 125
    :cond_33
    new-instance v2, Liw;

    move-object v10, v6

    const/4 v6, 0x2

    move-object/from16 v33, v1

    move-object v1, v2

    move-object v15, v4

    move-wide/from16 v18, v12

    move-wide/from16 v13, v27

    move-object/from16 v2, p3

    move-object v12, v10

    move-object/from16 p3, v11

    const/16 v11, 0xa

    move-object/from16 v10, p1

    move-object/from16 v42, v5

    move-object/from16 v5, p0

    move-wide/from16 v43, v24

    move-object/from16 v25, v3

    move-object/from16 v24, v7

    move-wide/from16 v3, v43

    move-object/from16 v7, v42

    invoke-direct/range {v1 .. v6}, Liw;-><init>(Lkh6;JLjava/lang/Object;I)V

    move-object v6, v1

    move-wide/from16 v27, v3

    .line 126
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 127
    iget-wide v3, v12, Lwn3;->f:J

    .line 128
    invoke-static/range {v31 .. v31}, Lmz6;->m(Lq63;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 129
    sget-object v1, Lp93;->a:Lp93;

    .line 130
    iget-object v1, v12, Lwn3;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    .line 132
    sget-object v34, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual/range {v31 .. v31}, Lq63;->q()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v41, v1

    const-string v1, "Extracting archive: "

    .line 133
    invoke-static {v1, v11, v7, v5, v0}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x4

    const/16 v39, 0x0

    .line 134
    const-string v35, "restoreFolderArchive"

    const/16 v37, 0x0

    invoke-static/range {v34 .. v39}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    cmp-long v0, v18, v3

    if-gez v0, :cond_34

    goto :goto_26

    :cond_34
    move-wide/from16 v3, v18

    .line 135
    :goto_26
    invoke-static {v10, v3, v4}, Lpj7;->b(Lq63;J)Loj7;

    move-result-object v0

    if-nez v0, :cond_45

    .line 136
    invoke-static/range {v31 .. v31}, Lmz6;->n(Lq63;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lxy6;

    if-eqz v11, :cond_44

    .line 137
    iget-object v0, v11, Lxy6;->i:Lwy6;

    .line 138
    sget-object v1, Lwy6;->None:Lwy6;

    if-ne v0, v1, :cond_35

    .line 139
    iget-object v4, v11, Lxy6;->a:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v5, v12

    move-object/from16 v10, v26

    move-object v12, v2

    move-object/from16 v2, v31

    .line 140
    invoke-virtual/range {v1 .. v7}, Lwj3;->g(Lq63;Lq63;Ljava/lang/String;Lwn3;Liw;[C)V

    const/16 v40, 0xa

    move-object/from16 v3, p1

    move-object/from16 v34, v9

    move-object/from16 v9, v24

    move-object/from16 v11, v41

    goto/16 :goto_2e

    :cond_35
    move-object v5, v12

    move-object/from16 v10, v26

    move-object v12, v2

    .line 141
    iget-object v0, v9, Lkj3;->a:Ljava/lang/String;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    sget-object v1, Ld45;->b:Ld45;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 145
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-static {}, Lb45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lnq7;->u0(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 157
    move-object v4, v3

    check-cast v4, [C

    .line 158
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    .line 159
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 161
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 163
    check-cast v3, [C

    .line 164
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v3

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 166
    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [C

    .line 168
    array-length v4, v4

    if-nez v4, :cond_39

    goto :goto_29

    .line 169
    :cond_39
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 170
    :cond_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 171
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object/from16 v0, v16

    :goto_2a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    iget-object v4, v11, Lxy6;->a:Ljava/lang/String;
    :try_end_1
    .catch Lsz6; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v3, v31

    move-object/from16 v31, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move/from16 v40, v1

    move-object/from16 v34, v9

    move-object/from16 v9, v24

    move-object/from16 v1, p0

    move-object/from16 v24, v11

    move-object/from16 v11, v41

    .line 173
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lwj3;->g(Lq63;Lq63;Ljava/lang/String;Lwn3;Liw;[C)V
    :try_end_2
    .catch Lsz6; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v2, v32

    goto :goto_2c

    :catchall_0
    move-exception v0

    goto/16 :goto_31

    :catch_0
    move-exception v0

    goto :goto_2b

    :catchall_1
    move-exception v0

    move-object/from16 v31, v2

    goto/16 :goto_31

    :catch_1
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v31, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move/from16 v40, v1

    move-object/from16 v34, v9

    move-object/from16 v9, v24

    move-object/from16 v1, p0

    move-object/from16 v24, v11

    move-object/from16 v11, v41

    :goto_2b
    move-object/from16 v1, v31

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v41, v11

    move-object/from16 v11, v24

    move/from16 v1, v40

    move-object/from16 v24, v9

    move-object/from16 v9, v34

    goto :goto_2a

    :cond_3b
    move-object/from16 v3, p1

    move/from16 v40, v1

    move-object/from16 v31, v2

    move-object/from16 v34, v9

    move-object/from16 v9, v24

    move-object/from16 v11, v41

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 174
    :goto_2c
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    .line 175
    invoke-static {v7}, Lx50;->o0([C)V

    goto :goto_2d

    :cond_3c
    if-eqz v2, :cond_40

    .line 176
    :goto_2e
    sget-object v0, Lxn3;->EXTRACT:Lxn3;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 179
    invoke-virtual {v11, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3d
    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v35, v22

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxn3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move-wide/from16 v37, v13

    if-eqz v2, :cond_3e

    .line 182
    iget-wide v13, v5, Lwn3;->g:J

    goto :goto_30

    :cond_3e
    move-wide/from16 v13, v22

    :goto_30
    add-long v35, v13, v35

    move-wide/from16 v13, v37

    goto :goto_2f

    :cond_3f
    move-wide/from16 v37, v13

    .line 183
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v33

    .line 184
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-long v6, v37, v18

    .line 185
    iget-wide v13, v12, Lkh6;->a:J

    .line 186
    iget-wide v4, v5, Lwn3;->h:J

    .line 187
    invoke-static {v13, v14, v4, v5}, Lwj3;->j(JJ)J

    move-result-wide v4

    iput-wide v4, v12, Lkh6;->a:J

    move-wide v0, v6

    move-object v6, v12

    move-wide v12, v0

    move-object/from16 v11, p3

    move-object v7, v10

    move-object v4, v15

    move/from16 v0, v20

    move-object/from16 v3, v25

    move-wide/from16 v24, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v20, v32

    move-object/from16 v9, v34

    move/from16 v5, v40

    const/16 v18, 0x0

    goto/16 :goto_23

    .line 188
    :cond_40
    const-string v1, "Error during archive extraction due to wrong password"

    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v16

    .line 189
    :goto_31
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 190
    invoke-static {v2}, Lx50;->o0([C)V

    goto :goto_32

    .line 191
    :cond_41
    throw v0

    .line 192
    :cond_42
    const-string v0, "Archive entry is encrypted but no candidate passwords are available"

    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    return-object v16

    .line 193
    :cond_43
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    const/4 v2, 0x0

    .line 194
    invoke-static {v2, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 195
    throw v0

    :cond_44
    move-object/from16 v2, v31

    .line 196
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Folder backup expected 1 entry in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    return-object v16

    .line 197
    :cond_45
    iget-object v0, v0, Loj7;->a:Ljava/lang/String;

    .line 198
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    return-object v16

    :cond_46
    move-object/from16 v2, v31

    .line 199
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported folder backup format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    return-object v16

    :cond_47
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v30, v2

    move-object v10, v7

    move-object/from16 p3, v11

    move-wide/from16 v37, v12

    move-object v0, v14

    move-object v7, v15

    move/from16 v2, v18

    move-object v15, v4

    if-eqz v21, :cond_48

    .line 201
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    move-object/from16 v5, p2

    if-ne v5, v4, :cond_48

    move-object/from16 v4, v30

    .line 202
    invoke-static {v3, v10, v4}, Lpn3;->b(Lq63;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    :cond_48
    const/16 v3, 0x64

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lwj3;->c:Lmt3;

    invoke-interface {v1, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lp93;->a:Lp93;

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    move v6, v2

    goto :goto_34

    .line 206
    :cond_49
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v2

    :cond_4a
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    add-int/lit8 v6, v6, 0x1

    if-ltz v6, :cond_4b

    goto :goto_33

    .line 208
    :cond_4b
    invoke-static {}, Lfl1;->E0()V

    throw v16

    .line 209
    :cond_4c
    :goto_34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_4d

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_4d
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const-string v10, " and "

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Restored "

    .line 212
    invoke-static {v4, v3, v7, v1, v0}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    move-object v1, v15

    const/4 v15, 0x0

    move-object/from16 v11, p3

    move-object v10, v2

    move-wide/from16 v6, v37

    .line 213
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 214
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    .line 215
    new-instance v2, Lrm6;

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    invoke-direct {v2, v1, v6, v7, v0}, Lrm6;-><init>(IJLjava/time/Duration;)V

    return-object v2

    :cond_4e
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move v2, v6

    move-object/from16 v34, v9

    move-object/from16 v3, p1

    .line 219
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getParentBackupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 220
    const-string v6, "base"

    .line 221
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 222
    invoke-virtual/range {v19 .. v19}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    move-result-object v2

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_35

    :cond_4f
    move-object/from16 v2, v16

    :goto_35
    if-eqz v2, :cond_54

    .line 223
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    move-result-object v2

    :goto_36
    move-object/from16 v16, v2

    goto :goto_38

    .line 224
    :cond_50
    const-string v6, "inc-"

    invoke-static {v0, v6, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 225
    invoke-virtual/range {v19 .. v19}, Lkj3;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 226
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_51

    goto :goto_38

    .line 227
    :cond_51
    invoke-static {v0, v6}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    goto :goto_37

    :cond_53
    move-object/from16 v9, v16

    :goto_37
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    if-eqz v9, :cond_54

    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    move-result-object v2

    goto :goto_36

    :cond_54
    :goto_38
    if-eqz v16, :cond_56

    .line 229
    invoke-static/range {v16 .. v16}, Lv55;->a(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    move-result-object v0

    .line 230
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCreated()J

    move-result-wide v9

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCreated()J

    move-result-wide v12

    cmp-long v2, v9, v12

    if-lez v2, :cond_55

    move-object v4, v0

    move-object/from16 v0, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v9, v34

    goto/16 :goto_0

    .line 231
    :cond_55
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentManifest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parentManifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x4

    const/16 v26, 0x0

    const-string v22, "ManifestManager"

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 232
    new-instance v1, Lzv0;

    .line 233
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCreated()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCreated()J

    move-result-wide v4

    const-string v0, "Timestamp not monotonic: "

    const-string v6, " <= "

    .line 234
    invoke-static {v0, v6, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 237
    throw v1

    .line 238
    :cond_56
    new-instance v1, Lzv0;

    const-string v2, "Missing parent manifest: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 240
    throw v1

    .line 241
    :cond_57
    const-string v1, "Unknown backupId: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    return-object v16

    .line 242
    :cond_58
    new-instance v0, Lzv0;

    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getBackupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Incremental backup missing parentBackupId: "

    .line 243
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 245
    throw v0

    .line 246
    :cond_59
    new-instance v0, Lym5;

    const-string v1, "No backups found"

    .line 247
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 248
    throw v0
.end method
