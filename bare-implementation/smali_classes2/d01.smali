.class public abstract Ld01;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
    check-cast v1, Lrz0;

    .line 23
    .line 24
    invoke-virtual {v1}, Lrz0;->getDriveId()Ljava/lang/String;

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
    check-cast v0, Lrz0;

    .line 87
    .line 88
    invoke-virtual {v0}, Lrz0;->getLocalFile()Lq63;

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
    const-string v0, "max_call_backups"

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
    invoke-static {}, Ld01;->e()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-static {}, Ld01;->f()Ljava/util/ArrayList;

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
    const/4 v3, 0x0

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
    invoke-static {v1, p0}, Ld01;->b(Ljava/util/List;Z)Z

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
    const-string v5, "Max Call Logs backups limit="

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
    const-string v4, "CallsBackupHelper"

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
    const-string v10, "CallsBackupHelper"

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

.method public static d(Lrz0;)Z
    .locals 9

    .line 1
    const-string v0, "downloadFromCloud: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lrz0;->isCloudItem()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lrz0;->getDriveId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lrz0;->getRemoteFileSize()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lrz0;->getLocalFile()Lq63;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    cmp-long p0, v1, v5

    .line 37
    .line 38
    if-lez p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    :goto_1
    move-wide v5, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const-wide/16 v1, -0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :goto_2
    new-instance v2, Lfo2;

    .line 54
    .line 55
    const/16 v4, 0x15

    .line 56
    .line 57
    invoke-direct/range {v2 .. v7}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Ltb1;->a:Ltb1;

    .line 61
    .line 62
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v2}, Ltb1;->c(Lfo2;)Lno2;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lno2;->b()Lke;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lke;->c()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    const-string v4, "CallsBackupHelper"

    .line 83
    .line 84
    invoke-virtual {v1}, Lke;->b()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const/4 v7, 0x4

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object v1, v0

    .line 101
    goto :goto_4

    .line 102
    :cond_2
    :goto_3
    invoke-virtual {v1}, Lke;->e()Z

    .line 103
    .line 104
    .line 105
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 107
    .line 108
    .line 109
    return v0

    .line 110
    :goto_4
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_3
    const-string p0, "Item isn\'t a cloud item"

    .line 117
    .line 118
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 p0, 0x0

    .line 122
    return p0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 10

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
    invoke-virtual {v1}, Ltb1;->f()Lui1;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v1, Lui1;->b:Ljava/lang/Exception;

    .line 17
    .line 18
    const-string v3, "getBackupsFromCloud: "

    .line 19
    .line 20
    const-string v4, "CallsBackupHelper"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    :try_start_0
    sget-object v5, Lrz0;->Companion:Lrz0$a;

    .line 59
    .line 60
    iget-object v6, v2, Lpg1;->a:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v7, v2, Lpg1;->b:Ljava/lang/String;

    .line 63
    .line 64
    iget-wide v8, v2, Lpg1;->c:J

    .line 65
    .line 66
    invoke-virtual {v5, v6, v7, v8, v9}, Lrz0$a;->fromFileName(Ljava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance v1, Lb01;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {v1, v2}, Lb01;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 8

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
    move-result-object v4

    .line 30
    iget-object v4, v4, Lry5;->l:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-direct {v2, v4, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lq63;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    new-instance v4, Lzz0;

    .line 43
    .line 44
    invoke-direct {v4, v3}, Lzz0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v4}, Lq63;->D(Ljava/io/FilenameFilter;)Ljava/util/ArrayList;

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
    sget-object v4, Lrz0;->Companion:Lrz0$a;

    .line 70
    .line 71
    invoke-virtual {v3}, Lq63;->p()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-wide/16 v6, -0x1

    .line 76
    .line 77
    invoke-virtual {v4, v3, v1, v6, v7}, Lrz0$a;->fromFileName(Ljava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Lnx;

    .line 88
    .line 89
    invoke-direct {v1, v5}, Lnx;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 6

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->Companion:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lr92;->a(Landroid/net/Uri;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    if-lt v1, v2, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 45
    .line 46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    new-instance v4, Lnu;

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    invoke-direct {v4, v5}, Lnu;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->withSourceSimSlotIndex(ILmt3;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v0, v1

    .line 63
    :cond_1
    new-instance v1, Lc01;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v1, v2}, Lc01;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method public static h()Lq63;
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
    const-string v2, "calls_backup"

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

.method public static i(Lq63;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "v3"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Ld01;->h()Lq63;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lq63;->j()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-static {p0}, Lmz6;->m(Lq63;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v3, 0x2

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lq63;

    .line 50
    .line 51
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 52
    .line 53
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v4, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lyx5;->b()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {p0, v0, v3, v1}, Lmz6;->j(Lq63;Lq63;Ljava/util/ArrayList;Ljava/util/List;)Ljz6;

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v4, Lq63;

    .line 77
    .line 78
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 79
    .line 80
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v0, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lyx5;->b()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v8, 0x0

    .line 99
    const/16 v9, 0x38

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    move-object v3, p0

    .line 104
    invoke-static/range {v3 .. v9}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iget-boolean p0, p0, Lfw5;->a:Z

    .line 109
    .line 110
    :goto_1
    if-eqz p0, :cond_2

    .line 111
    .line 112
    invoke-static {}, Ld01;->h()Lq63;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string v0, "call_logs"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    sget-object v0, Lw14;->a:Lgv7;

    .line 123
    .line 124
    const-class v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 125
    .line 126
    invoke-static {p0, v0}, Lw14;->e(Lq63;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_2

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :cond_2
    return-object v2

    .line 140
    :goto_2
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 141
    .line 142
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const/4 v7, 0x4

    .line 147
    const/4 v8, 0x0

    .line 148
    const-string v4, "CallsBackupHelper"

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_3
    move-object v3, p0

    .line 156
    new-instance p0, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lw14;->a:Lgv7;

    .line 162
    .line 163
    const-class v0, Lsz0;

    .line 164
    .line 165
    invoke-static {v3, v0}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lsz0;

    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    invoke-virtual {v0}, Lsz0;->getItems()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :cond_4
    if-eqz v1, :cond_5

    .line 178
    .line 179
    invoke-virtual {v0}, Lsz0;->getItems()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 188
    .line 189
    invoke-virtual {v0}, Lsz0;->getItems()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_5
    const-string v0, "CallsBackupHelper"

    .line 198
    .line 199
    const-string v1, "inBackground: Invalid wrapper item"

    .line 200
    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return-object p0
.end method
