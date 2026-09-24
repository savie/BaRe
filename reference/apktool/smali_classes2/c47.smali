.class public final Lc47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lc47;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc47;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc47;->a:Lc47;

    .line 7
    .line 8
    return-void
.end method

.method public static b()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 17

    .line 1
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    new-instance v0, Lb47;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    const-string v2, "GsonHelper"

    .line 11
    .line 12
    const-string v3, "fromPrefs"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v3, v4, v0, v1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 24
    .line 25
    const/16 v15, 0x1fff

    .line 26
    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    invoke-direct/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;-><init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_0
    return-object v0
.end method

.method public static d()Z
    .locals 2

    .line 1
    invoke-static {}, Lc47;->b()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x14

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static f(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V
    .locals 3

    .line 1
    const v0, 0x7f130344

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " (20/20)"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p0, v2, v0, v1}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ScheduleRepo"

    .line 3
    .line 4
    const-string v1, "Fetching on demand"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lai8;->b()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lai8;->h()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    const-string v3, "ScheduleRepo"

    .line 22
    .line 23
    const-string v4, "Internet not available, fetching from cache"

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lc47;->b()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lc47;->e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "schedule_data"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v1}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v2, v0, Lxe3;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    check-cast v0, Lxe3;

    .line 61
    .line 62
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 63
    .line 64
    const-class v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    instance-of v1, v0, Lwe3;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 78
    .line 79
    const-string v3, "ScheduleRepo"

    .line 80
    .line 81
    check-cast v0, Lwe3;

    .line 82
    .line 83
    iget-object v0, v0, Lwe3;->n:Lwc2;

    .line 84
    .line 85
    iget-object v4, v0, Lwc2;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x4

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v1, 0x0

    .line 98
    :goto_0
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lc47;->e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_2
    monitor-exit p0

    .line 104
    return v1

    .line 105
    :cond_3
    :try_start_2
    new-instance v0, Lmn5;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw v0
.end method

.method public final declared-synchronized c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lc47;->b()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/d;->a(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withNormalizedScheduleOrder()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lw14;->a:Lgv7;

    .line 10
    .line 11
    const-string v0, "schedule_data"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lre3;->k()Lzc2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "schedule_data"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method
