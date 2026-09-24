.class public final Lkc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkc2;

.field public static final b:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkc2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkc2;->a:Lkc2;

    .line 7
    .line 8
    new-instance v0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$listType$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$listType$1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lkc2;->b:Ljava/lang/reflect/Type;

    .line 18
    .line 19
    return-void
.end method

.method public static a(JLjava/util/List;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 30
    .line 31
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getEndMs()Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    sget-object v12, Ljc2;->PROCESS_RESTARTED:Ljc2;

    .line 42
    .line 43
    const/16 v14, 0x177

    .line 44
    .line 45
    const/4 v15, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    invoke-static/range {v3 .. v15}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->copy$default(Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public static b(JLjava/util/List;)J
    .locals 9

    .line 1
    const-wide/32 v0, 0x5265c00

    .line 2
    .line 3
    .line 4
    sub-long v0, p0, v0

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_4

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 23
    .line 24
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getEndMs()Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-wide v5, p0

    .line 36
    :goto_1
    cmp-long v7, v5, p0

    .line 37
    .line 38
    if-lez v7, :cond_2

    .line 39
    .line 40
    move-wide v5, p0

    .line 41
    :cond_2
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getStartMs()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    cmp-long v4, v7, v0

    .line 46
    .line 47
    if-gez v4, :cond_3

    .line 48
    .line 49
    move-wide v7, v0

    .line 50
    :cond_3
    cmp-long v4, v5, v7

    .line 51
    .line 52
    if-lez v4, :cond_0

    .line 53
    .line 54
    sub-long/2addr v5, v7

    .line 55
    add-long/2addr v5, v2

    .line 56
    move-wide v2, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return-wide v2
.end method

.method public static c(Ljava/lang/String;Ljc2;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkc2;->a:Lkc2;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {}, Lkc2;->d()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    invoke-static {v4, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move-object v7, v6

    .line 46
    check-cast v7, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 47
    .line 48
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getNote()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v17

    .line 66
    const/16 v18, 0x77

    .line 67
    .line 68
    const/16 v19, 0x0

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const-wide/16 v10, 0x0

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    move-object/from16 v16, p1

    .line 78
    .line 79
    invoke-static/range {v7 .. v19}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->copy$default(Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_0
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v5, v2, v3}, Lkc2;->e(Ljava/util/ArrayList;J)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v4}, Lkc2;->g(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    const-string v7, "DataSyncFgsRuntimeLedger"

    .line 100
    .line 101
    invoke-static {v2, v3, v5}, Lkc2;->b(JLjava/util/List;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "Finished dataSync FGS session: id="

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", outcome="

    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-object/from16 v0, p1

    .line 124
    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ", used24h="

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, "ms"

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    const/4 v10, 0x4

    .line 146
    const/4 v11, 0x0

    .line 147
    const/4 v9, 0x0

    .line 148
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 153
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw v0
.end method

.method public static d()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "diagnostics/data_sync_fgs_runtime_ledger.json"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sget-object v2, Lov2;->a:Lov2;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    new-instance v3, Ljava/io/InputStreamReader;

    .line 42
    .line 43
    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/io/BufferedReader;

    .line 47
    .line 48
    const/16 v0, 0x2000

    .line 49
    .line 50
    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    sget-object v0, Lw14;->a:Lgv7;

    .line 54
    .line 55
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v3, Lkc2;->b:Ljava/lang/reflect/Type;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/a;->b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    move-object v0, v2

    .line 74
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object v6, v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v3, v0

    .line 83
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    :try_start_4
    invoke-static {v1, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :goto_0
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 90
    .line 91
    const/16 v8, 0x8

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const-string v4, "DataSyncFgsRuntimeLedger"

    .line 95
    .line 96
    const-string v5, "Failed to read dataSync FGS ledger"

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v2
.end method

.method public static e(Ljava/util/ArrayList;J)Ljava/util/List;
    .locals 6

    .line 1
    const-wide/32 v0, 0x5265c00

    .line 2
    .line 3
    .line 4
    sub-long v0, p1, v0

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v4, v3

    .line 26
    check-cast v4, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 27
    .line 28
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->getEndMs()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-wide v4, p1

    .line 40
    :goto_1
    cmp-long v4, v4, v0

    .line 41
    .line 42
    if-ltz v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/16 p0, 0xc8

    .line 49
    .line 50
    invoke-static {p0, v2}, Lel1;->q1(ILjava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static g(Ljava/util/List;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "diagnostics/data_sync_fgs_runtime_ledger.json"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    sget-object v0, Lw14;->a:Lgv7;

    .line 37
    .line 38
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object p0, v0

    .line 67
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 68
    .line 69
    .line 70
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    move-object v3, p0

    .line 74
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    const/16 v5, 0x8

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v1, "DataSyncFgsRuntimeLedger"

    .line 80
    .line 81
    const-string v2, "Failed to save dataSync FGS ledger"

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v3

    .line 6
    new-instance v0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v9, Ljc2;->START_BLOCKED_QUOTA:Ljc2;

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    move-object v8, p2

    .line 27
    move-object v10, p3

    .line 28
    move v6, p4

    .line 29
    move/from16 v7, p5

    .line 30
    .line 31
    invoke-direct/range {v0 .. v10}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lkc2;->d()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v3, v4}, Lkc2;->e(Ljava/util/ArrayList;J)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lkc2;->g(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method

.method public final declared-synchronized h(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 14

    .line 1
    const-string v0, "Started "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v4

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 20
    .line 21
    const/16 v12, 0x188

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    move-object v3, p1

    .line 28
    move-object/from16 v9, p2

    .line 29
    .line 30
    move/from16 v7, p3

    .line 31
    .line 32
    move/from16 v8, p4

    .line 33
    .line 34
    invoke-direct/range {v1 .. v13}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkc2;->d()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v1, v6}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v4, v5}, Lkc2;->e(Ljava/util/ArrayList;J)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lkc2;->g(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 53
    .line 54
    const-string v7, "DataSyncFgsRuntimeLedger"

    .line 55
    .line 56
    invoke-static {v4, v5, v1}, Lkc2;->b(JLjava/util/List;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " dataSync FGS session: id="

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ", used24h="

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, "ms"

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    const/4 v10, 0x4

    .line 94
    const/4 v11, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-object v2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object p1, v0

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p1
.end method
