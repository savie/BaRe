.class public abstract Lud5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb7;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lud5;->a:Lgv7;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Landroid/app/role/RoleManager;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/app/role/RoleManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/app/role/RoleManager;

    .line 17
    .line 18
    return-object v0
.end method

.method public static b(Ljava/util/List;Z)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lvd5;

    .line 23
    .line 24
    invoke-virtual {v1}, Lvd5;->getDriveId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Ljd1;

    .line 39
    .line 40
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljd1;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Ltb1;->a:Ltb1;

    .line 53
    .line 54
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Ltb1;->b(Lzv1;)Lxh2;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lxh2;->c()Ljq6;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljq6;->q()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p1, 0x1

    .line 72
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lvd5;

    .line 87
    .line 88
    invoke-virtual {v0}, Lvd5;->getLocalFile()Lq63;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lq63;->h()Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    return p1
.end method

.method public static c(Z)V
    .locals 15

    .line 1
    const-string v0, "max_sms_backups"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "prefs"

    .line 15
    .line 16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    if-lez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v0, v1

    .line 28
    :goto_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lez v2, :cond_2

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    :cond_2
    if-eqz v1, :cond_6

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-static {}, Lud5;->e()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-static {}, Lud5;->f()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-le v2, v0, :cond_6

    .line 59
    .line 60
    new-instance v2, La01;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-direct {v2, v3}, La01;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1, p0}, Lud5;->b(Ljava/util/List;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    const-string p0, "cloud"

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const-string p0, "local"

    .line 92
    .line 93
    :goto_3
    const-string v2, ". Deleted "

    .line 94
    .line 95
    const-string v4, " older "

    .line 96
    .line 97
    const-string v5, "Max SMS backups limit="

    .line 98
    .line 99
    invoke-static {v5, v0, v2, v4, v1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, " backups."

    .line 104
    .line 105
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v7, 0x4

    .line 110
    const/4 v8, 0x0

    .line 111
    const-string v4, "SmsBackupHelper"

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    const-string v0, "Error when trying to delete "

    .line 125
    .line 126
    const-string v1, " older backups"

    .line 127
    .line 128
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    const/4 v13, 0x4

    .line 133
    const/4 v14, 0x0

    .line 134
    const-string v10, "SmsBackupHelper"

    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    return-void
.end method

.method public static d(Lvd5;)Z
    .locals 10

    .line 1
    const-string v0, "downloadFromCloud: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lvd5;->isCloudItem()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lvd5;->getDriveId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lvd5;->getRemoteFileSize()Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lvd5;->getLocalFile()Lq63;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    const-wide/16 v8, 0x0

    .line 37
    .line 38
    cmp-long p0, v4, v8

    .line 39
    .line 40
    if-lez p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    :goto_1
    move-wide v5, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-wide/16 v1, -0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_2
    new-instance v2, Lfo2;

    .line 56
    .line 57
    const/16 v4, 0x14

    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Ltb1;->a:Ltb1;

    .line 63
    .line 64
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v2}, Ltb1;->c(Lfo2;)Lno2;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lno2;->b()Lke;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lke;->c()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 83
    .line 84
    const-string v4, "SmsBackupHelper"

    .line 85
    .line 86
    invoke-virtual {v1}, Lke;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/4 v7, 0x4

    .line 95
    const/4 v8, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v1, v0

    .line 103
    goto :goto_4

    .line 104
    :cond_2
    :goto_3
    invoke-virtual {v1}, Lke;->e()Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 109
    .line 110
    .line 111
    return v0

    .line 112
    :goto_4
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_3
    const-string p0, "Item isn\'t a cloud item"

    .line 119
    .line 120
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/4 p0, 0x0

    .line 124
    return p0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ltb1;->a:Ltb1;

    .line 7
    .line 8
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ltb1;->j()Lui1;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v1, Lui1;->b:Ljava/lang/Exception;

    .line 17
    .line 18
    const-string v3, "SmsBackupHelper"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v1, "getBackupsFromCloud: "

    .line 23
    .line 24
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    iget-object v1, v1, Lui1;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v1, "getBackupsFromCloud: FileList is EMPTY"

    .line 37
    .line 38
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lpg1;

    .line 57
    .line 58
    sget-object v3, Lvd5;->Companion:Lvd5$a;

    .line 59
    .line 60
    iget-object v4, v2, Lpg1;->a:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, v2, Lpg1;->b:Ljava/lang/String;

    .line 63
    .line 64
    iget-wide v6, v2, Lpg1;->c:J

    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v3, v4, v5, v2}, Lvd5$a;->fromFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance v1, Lb01;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, v2}, Lb01;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lq63;

    .line 22
    .line 23
    sget-object v3, Lry5;->u:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v3, v3, Lry5;->j:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-direct {v2, v3, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lq63;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Lzz0;

    .line 43
    .line 44
    invoke-direct {v3, v4}, Lzz0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lq63;->D(Ljava/io/FilenameFilter;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lq63;

    .line 68
    .line 69
    sget-object v4, Lvd5;->Companion:Lvd5$a;

    .line 70
    .line 71
    invoke-virtual {v3}, Lq63;->p()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v4, v3, v1, v1}, Lvd5$a;->fromFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance v1, Lnx;

    .line 86
    .line 87
    const/4 v2, 0x7

    .line 88
    invoke-direct {v1, v2}, Lnx;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 102
    .line 103
    .line 104
    return-object v1
.end method

.method public static g()Lq63;
    .locals 2

    .line 1
    invoke-static {}, Lud5;->i()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mms_data"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static h()Landroid/app/role/RoleManager;
    .locals 1

    .line 1
    sget-object v0, Lud5;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/role/RoleManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public static i()Lq63;
    .locals 4

    .line 1
    new-instance v0, Lq63;

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
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "messages_backup"

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v0, v1, v2, v3}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static j()Z
    .locals 2

    .line 1
    invoke-static {}, Lb67;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lud5;->h()Landroid/app/role/RoleManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "android.app.role.SMS"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 29
    .line 30
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public static k(Lq63;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "v3"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-class v1, Lqv1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {}, Lud5;->i()Lq63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lq63;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-static {p0}, Lmz6;->m(Lq63;)Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v5, 0x0

    .line 54
    const-string v6, "prefs"

    .line 55
    .line 56
    const-string v7, "messages_backup_mms"

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    :try_start_1
    new-instance v0, Lq63;

    .line 61
    .line 62
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 63
    .line 64
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v8, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lyx5;->c()Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :try_start_2
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    invoke-interface {v8, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v5
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_1
    move v6, v2

    .line 96
    :goto_1
    if-nez v6, :cond_2

    .line 97
    .line 98
    :try_start_3
    const-string v5, "messages_backup/conversations"

    .line 99
    .line 100
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    :cond_2
    invoke-static {p0, v0, v3, v5}, Lmz6;->j(Lq63;Lq63;Ljava/util/ArrayList;Ljava/util/List;)Ljz6;

    .line 105
    .line 106
    .line 107
    move p0, v2

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    move-object v0, v6

    .line 110
    new-instance v6, Lq63;

    .line 111
    .line 112
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 113
    .line 114
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-direct {v6, v8, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 126
    .line 127
    .line 128
    move-object v3, v7

    .line 129
    invoke-static {}, Lyx5;->c()Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    :try_start_4
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 134
    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    invoke-interface {v8, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v5
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :catch_2
    move v0, v2

    .line 147
    :goto_2
    if-nez v0, :cond_5

    .line 148
    .line 149
    :try_start_5
    const-string v0, "messages_backup/mms_data"

    .line 150
    .line 151
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    :cond_5
    move-object v9, v5

    .line 156
    const/4 v10, 0x0

    .line 157
    const/16 v11, 0x28

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    move-object v5, p0

    .line 161
    invoke-static/range {v5 .. v11}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    iget-boolean p0, p0, Lfw5;->a:Z

    .line 166
    .line 167
    :goto_3
    if-eqz p0, :cond_8

    .line 168
    .line 169
    invoke-static {}, Lud5;->i()Lq63;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    const-string v0, "conversations"

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    sget-object v0, Lw14;->a:Lgv7;

    .line 180
    .line 181
    invoke-static {p0, v1}, Lw14;->e(Lq63;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-le v0, v2, :cond_6

    .line 196
    .line 197
    new-instance v0, Llw1;

    .line 198
    .line 199
    const/4 v1, 0x3

    .line 200
    invoke-direct {v0, v1}, Llw1;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v4, v0}, Ljl1;->H0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_4
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 211
    .line 212
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const/4 v9, 0x4

    .line 217
    const/4 v10, 0x0

    .line 218
    const-string v6, "SmsBackupHelper"

    .line 219
    .line 220
    const/4 v8, 0x0

    .line 221
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    move-object v5, p0

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    .line 231
    :try_start_6
    sget-object p0, Lw14;->a:Lgv7;

    .line 232
    .line 233
    invoke-static {v5, v1}, Lw14;->e(Lq63;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_8

    .line 242
    .line 243
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-le p0, v2, :cond_8

    .line 251
    .line 252
    new-instance p0, Lc01;

    .line 253
    .line 254
    invoke-direct {p0, v3}, Lc01;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v4, p0}, Ljl1;->H0(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :catch_3
    move-exception v0

    .line 262
    move-object p0, v0

    .line 263
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 264
    .line 265
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const/4 v9, 0x4

    .line 270
    const/4 v10, 0x0

    .line 271
    const-string v6, "SmsBackupHelper"

    .line 272
    .line 273
    const/4 v8, 0x0

    .line 274
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_8
    :goto_5
    return-object v4
.end method
