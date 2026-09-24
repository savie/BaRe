.class public final Lz35;
.super Lgu2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lz35;->d:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 2
    .line 3
    const-string p1, "36f9b5c8a6ecd241cdd9aa474afbf5f3"

    .line 4
    .line 5
    const-string v0, "0f100f6712f2f5bacf9f9234e2a4be02"

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-direct {p0, v1, v0, p1}, Lgu2;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lfw6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "CREATE TABLE IF NOT EXISTS `SMessage` (`time` INTEGER NOT NULL, `messageType` INTEGER NOT NULL, `title` TEXT NOT NULL, `msg` TEXT NOT NULL, `color` TEXT, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)"

    .line 5
    .line 6
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "CREATE TABLE IF NOT EXISTS `app_cached_data` (`pkgName` TEXT NOT NULL, `name` TEXT NOT NULL, `isInstalled` INTEGER, `isEnabled` INTEGER, `isLaunchable` INTEGER, `locale` TEXT, PRIMARY KEY(`pkgName`))"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 15
    .line 16
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'36f9b5c8a6ecd241cdd9aa474afbf5f3\')"

    .line 20
    .line 21
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c(Lfw6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "DROP TABLE IF EXISTS `SMessage`"

    .line 5
    .line 6
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "DROP TABLE IF EXISTS `app_cached_data`"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final s(Lfw6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final t(Lfw6;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lz35;->d:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 5
    .line 6
    invoke-virtual {p0}, Leo6;->d()Lkg4;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object v0, p0, Lkg4;->b:Lmb8;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "PRAGMA query_only"

    .line 16
    .line 17
    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lnw6;->F()Z

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v3}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v1, "PRAGMA temp_store = MEMORY"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "PRAGMA recursive_triggers = 1"

    .line 40
    .line 41
    invoke-static {v1, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "DROP TABLE IF EXISTS room_table_modification_log"

    .line 45
    .line 46
    invoke-static {v1, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, v0, Lmb8;->d:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 54
    .line 55
    invoke-static {v1, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 60
    .line 61
    const-string v2, "TEMP"

    .line 62
    .line 63
    const-string v3, ""

    .line 64
    .line 65
    invoke-static {v1, v2, v3}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, v0, Lmb8;->h:Lds5;

    .line 73
    .line 74
    iget-object v0, p1, Lds5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    :try_start_1
    iput-boolean v1, p1, Lds5;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    :goto_1
    iget-object p0, p0, Lkg4;->h:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter p0

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :catchall_2
    move-exception p1

    .line 99
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final u(Lfw6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final v(Lfw6;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnc8;->p()Lww4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lnw6;->i0()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lnw6;->R(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Lww4;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lnc8;->h(Lww4;)Lww4;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v2}, Lww4;->listIterator(I)Ljava/util/ListIterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    move-object v0, p0

    .line 44
    check-cast v0, Lvw4;

    .line 45
    .line 46
    invoke-virtual {v0}, Lvw4;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lvw4;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "room_fts_content_sync_"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const-string v1, "DROP TRIGGER IF EXISTS "

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    return-void

    .line 77
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    invoke-static {v0, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final w(Lfw6;)Lko6;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lnw7;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const-string v3, "time"

    .line 16
    .line 17
    const-string v4, "INTEGER"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-direct/range {v2 .. v8}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v3, "time"

    .line 25
    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v4, Lnw7;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x1

    .line 33
    const-string v5, "messageType"

    .line 34
    .line 35
    const-string v6, "INTEGER"

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    invoke-direct/range {v4 .. v10}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v2, "messageType"

    .line 43
    .line 44
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v5, Lnw7;

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x1

    .line 51
    const-string v6, "title"

    .line 52
    .line 53
    const-string v7, "TEXT"

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-direct/range {v5 .. v11}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const-string v2, "title"

    .line 61
    .line 62
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance v6, Lnw7;

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x1

    .line 69
    const-string v7, "msg"

    .line 70
    .line 71
    const-string v8, "TEXT"

    .line 72
    .line 73
    const/4 v9, 0x1

    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-direct/range {v6 .. v12}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v2, "msg"

    .line 79
    .line 80
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance v7, Lnw7;

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x1

    .line 87
    const-string v8, "color"

    .line 88
    .line 89
    const-string v9, "TEXT"

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    invoke-direct/range {v7 .. v13}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string v2, "color"

    .line 96
    .line 97
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v8, Lnw7;

    .line 101
    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v14, 0x1

    .line 104
    const-string v9, "id"

    .line 105
    .line 106
    const-string v10, "INTEGER"

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    const/4 v12, 0x1

    .line 110
    invoke-direct/range {v8 .. v14}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    const-string v2, "id"

    .line 114
    .line 115
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lqw7;

    .line 129
    .line 130
    const-string v5, "SMessage"

    .line 131
    .line 132
    invoke-direct {v4, v5, v1, v2, v3}, Lqw7;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v5, v0}, Lzh8;->C(Ljava/lang/String;Lfw6;)Lqw7;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v4, v1}, Lqw7;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const-string v3, "\n Found:\n"

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    if-nez v2, :cond_0

    .line 147
    .line 148
    new-instance v0, Lko6;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, "SMessage(org.swiftapps.swiftbackup.model.logger.SMessage).\n Expected:\n"

    .line 153
    .line 154
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1, v5}, Lko6;-><init>(Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v6, Lnw7;

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x1

    .line 183
    const-string v7, "pkgName"

    .line 184
    .line 185
    const-string v8, "TEXT"

    .line 186
    .line 187
    const/4 v9, 0x1

    .line 188
    const/4 v10, 0x1

    .line 189
    invoke-direct/range {v6 .. v12}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string v2, "pkgName"

    .line 193
    .line 194
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    new-instance v7, Lnw7;

    .line 198
    .line 199
    const/4 v12, 0x0

    .line 200
    const/4 v13, 0x1

    .line 201
    const-string v8, "name"

    .line 202
    .line 203
    const-string v9, "TEXT"

    .line 204
    .line 205
    const/4 v11, 0x0

    .line 206
    invoke-direct/range {v7 .. v13}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    const-string v2, "name"

    .line 210
    .line 211
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    new-instance v8, Lnw7;

    .line 215
    .line 216
    const/4 v13, 0x0

    .line 217
    const/4 v14, 0x1

    .line 218
    const-string v9, "isInstalled"

    .line 219
    .line 220
    const-string v10, "INTEGER"

    .line 221
    .line 222
    const/4 v12, 0x0

    .line 223
    invoke-direct/range {v8 .. v14}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    const-string v2, "isInstalled"

    .line 227
    .line 228
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    new-instance v9, Lnw7;

    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    const/4 v15, 0x1

    .line 235
    const-string v10, "isEnabled"

    .line 236
    .line 237
    const-string v11, "INTEGER"

    .line 238
    .line 239
    const/4 v13, 0x0

    .line 240
    invoke-direct/range {v9 .. v15}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    const-string v2, "isEnabled"

    .line 244
    .line 245
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    new-instance v10, Lnw7;

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    const/16 v16, 0x1

    .line 252
    .line 253
    const-string v11, "isLaunchable"

    .line 254
    .line 255
    const-string v12, "INTEGER"

    .line 256
    .line 257
    const/4 v14, 0x0

    .line 258
    invoke-direct/range {v10 .. v16}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    const-string v2, "isLaunchable"

    .line 262
    .line 263
    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    new-instance v11, Lnw7;

    .line 267
    .line 268
    const/16 v16, 0x0

    .line 269
    .line 270
    const/16 v17, 0x1

    .line 271
    .line 272
    const-string v12, "locale"

    .line 273
    .line 274
    const-string v13, "TEXT"

    .line 275
    .line 276
    const/4 v15, 0x0

    .line 277
    invoke-direct/range {v11 .. v17}, Lnw7;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 278
    .line 279
    .line 280
    const-string v2, "locale"

    .line 281
    .line 282
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 286
    .line 287
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 288
    .line 289
    .line 290
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 291
    .line 292
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 293
    .line 294
    .line 295
    new-instance v6, Lqw7;

    .line 296
    .line 297
    const-string v7, "app_cached_data"

    .line 298
    .line 299
    invoke-direct {v6, v7, v1, v2, v4}, Lqw7;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v7, v0}, Lzh8;->C(Ljava/lang/String;Lfw6;)Lqw7;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v6, v0}, Lqw7;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_1

    .line 311
    .line 312
    new-instance v1, Lko6;

    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v4, "app_cached_data(org.swiftapps.swiftbackup.appslist.data.AppCachedDataItem).\n Expected:\n"

    .line 317
    .line 318
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-direct {v1, v0, v5}, Lko6;-><init>(Ljava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    return-object v1

    .line 338
    :cond_1
    new-instance v0, Lko6;

    .line 339
    .line 340
    const/4 v1, 0x1

    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-direct {v0, v2, v1}, Lko6;-><init>(Ljava/lang/String;Z)V

    .line 343
    .line 344
    .line 345
    return-object v0
.end method
