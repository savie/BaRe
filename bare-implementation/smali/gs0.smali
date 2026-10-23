.class public final Lgs0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgs0;

.field public static b:Z

.field public static c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

.field public static final d:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgs0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgs0;->a:Lgs0;

    .line 7
    .line 8
    new-instance v0, Lzk;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lgv7;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lgs0;->d:Lgv7;

    .line 20
    .line 21
    return-void
.end method

.method public static c(Ljava/lang/String;Lis0;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 33
    .line 34
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListType()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p0, p1, :cond_2

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    return p0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_1
    sget-object v0, Lw14;->a:Lgv7;

    .line 17
    .line 18
    const-string v0, "GsonHelper"

    .line 19
    .line 20
    const-string v1, "fromPrefs"

    .line 21
    .line 22
    new-instance v2, Lfs0;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0xc

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v0, v1, v4, v2, v3}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 35
    .line 36
    invoke-static {v0}, Les0;->a(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lgs0;->e(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 50
    .line 51
    const-string v2, "BlacklistRepo"

    .line 52
    .line 53
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x4

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lvr6;->de$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    monitor-exit p0

    .line 65
    return-object v0

    .line 66
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 67
    .line 68
    const-string v1, "Method called from main thread"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    throw v0
.end method

.method public final b()Z
    .locals 9

    .line 1
    const-string v0, "BlacklistRepo"

    .line 2
    .line 3
    const-string v1, "Fetching on demand"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lai8;->b()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :cond_0
    move-object v1, v0

    .line 33
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v1, :cond_7

    .line 41
    .line 42
    invoke-static {}, Lai8;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "blacklistApps"

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :try_start_1
    sget-object v3, Ld45;->b:Ld45;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    :cond_2
    move-object v3, v0

    .line 80
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    move-object v0, v1

    .line 89
    :cond_3
    const/4 v1, 0x0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    const/4 v7, 0x4

    .line 95
    const/4 v8, 0x0

    .line 96
    const-string v4, "BlacklistRepo"

    .line 97
    .line 98
    const-string v5, "Firebase blacklist ref unexpectedly null after auth/network checks."

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return v1

    .line 105
    :cond_4
    invoke-static {v0, v2}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    instance-of v3, v0, Lxe3;

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    check-cast v0, Lxe3;

    .line 114
    .line 115
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 116
    .line 117
    const-class v3, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 124
    .line 125
    invoke-virtual {p0, v0, v1}, Lgs0;->d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V

    .line 126
    .line 127
    .line 128
    return v2

    .line 129
    :cond_5
    instance-of p0, v0, Lwe3;

    .line 130
    .line 131
    if-eqz p0, :cond_6

    .line 132
    .line 133
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 134
    .line 135
    check-cast v0, Lwe3;

    .line 136
    .line 137
    iget-object p0, v0, Lwe3;->n:Lwc2;

    .line 138
    .line 139
    iget-object v4, p0, Lwc2;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const/4 v6, 0x4

    .line 145
    const/4 v7, 0x0

    .line 146
    const-string v3, "BlacklistRepo"

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return v1

    .line 153
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 154
    .line 155
    .line 156
    return v1

    .line 157
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lgs0;->a()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 158
    .line 159
    .line 160
    return v2
.end method

.method public final d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Les0;->a(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lw14;->a:Lgv7;

    .line 6
    .line 7
    const-string v0, "blacklist_data"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lre3;->k()Lzc2;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "blacklistApps"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    :cond_0
    move-object v1, v0

    .line 46
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object p2, v0

    .line 56
    :goto_1
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0, p1}, Lgs0;->e(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final declared-synchronized e(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {p1, v0, v1, v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->copy$default(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    sput-object v0, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 14
    .line 15
    sget-object p1, Lgs0;->d:Lgv7;

    .line 16
    .line 17
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lex6;

    .line 22
    .line 23
    sget-object v0, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method
