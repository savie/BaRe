.class public abstract Laq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile a:Lz84;

.field public static volatile b:Z

.field public static final c:Ljava/lang/Object;

.field public static final d:Landroid/os/Handler;

.field public static final e:Lxp6;

.field public static f:J

.field public static final g:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laq6;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Laq6;->d:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lxp6;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Laq6;->e:Lxp6;

    .line 25
    .line 26
    new-instance v0, Lel;

    .line 27
    .line 28
    const/16 v1, 0x12

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lgv7;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Laq6;->g:Lgv7;

    .line 39
    .line 40
    return-void
.end method

.method public static a()Lz84;
    .locals 4

    .line 1
    sget-object v0, Laq6;->a:Lz84;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    sput-object v1, Laq6;->a:Lz84;

    .line 25
    .line 26
    return-object v1
.end method

.method public static b()V
    .locals 3

    .line 1
    const-string v0, "RootServiceManager"

    .line 2
    .line 3
    const-string v1, "Binding service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Laq6;->b:Z

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    sget-object v1, Laq6;->g:Lgv7;

    .line 14
    .line 15
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/content/Context;

    .line 20
    .line 21
    const-class v2, Lgp6;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Li41;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v1, v0, v2}, Li41;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Li41;->run()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object v0, Laq6;->d:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static c()Lz84;
    .locals 9

    .line 1
    sget-object v0, Laq6;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Laq6;->a()Lz84;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-exit v0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    sget v1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 13
    .line 14
    invoke-static {}, Lk55;->j()Lzd7;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    monitor-enter v0

    .line 27
    :try_start_1
    invoke-static {}, Laq6;->a()Lz84;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :cond_2
    :try_start_2
    sget-boolean v1, Laq6;->b:Z

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    sget-wide v7, Laq6;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    sub-long/2addr v5, v7

    .line 48
    cmp-long v1, v7, v3

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-wide/16 v7, 0x7d0

    .line 53
    .line 54
    cmp-long v1, v5, v7

    .line 55
    .line 56
    if-gez v1, :cond_3

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object v2

    .line 60
    :cond_3
    :try_start_3
    invoke-static {}, Laq6;->b()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v1, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    const-string v1, "RootServiceManager"

    .line 82
    .line 83
    const-string v2, "RootService IPC requested on main thread; binding queued without blocking"

    .line 84
    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-static {}, Laq6;->a()Lz84;

    .line 89
    .line 90
    .line 91
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    monitor-exit v0

    .line 93
    return-object v1

    .line 94
    :cond_5
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    const-wide/16 v7, 0x2710

    .line 99
    .line 100
    add-long/2addr v5, v7

    .line 101
    :goto_1
    sget-object v1, Laq6;->a:Lz84;

    .line 102
    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    sget-boolean v1, Laq6;->b:Z

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    sub-long v7, v5, v7

    .line 114
    .line 115
    cmp-long v1, v7, v3

    .line 116
    .line 117
    if-lez v1, :cond_6

    .line 118
    .line 119
    :try_start_5
    sget-object v1, Laq6;->c:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v1, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 130
    .line 131
    .line 132
    const-string v1, "RootServiceManager"

    .line 133
    .line 134
    const-string v3, "Interrupted while binding elevated service"

    .line 135
    .line 136
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .line 138
    .line 139
    monitor-exit v0

    .line 140
    return-object v2

    .line 141
    :cond_6
    :try_start_7
    sget-object v1, Laq6;->a:Lz84;

    .line 142
    .line 143
    if-nez v1, :cond_7

    .line 144
    .line 145
    sget-boolean v1, Laq6;->b:Z

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    sput-boolean v1, Laq6;->b:Z

    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    sput-wide v3, Laq6;->f:J

    .line 157
    .line 158
    const-string v1, "RootServiceManager"

    .line 159
    .line 160
    const-string v3, "Failed to initialize IPC interface!"

    .line 161
    .line 162
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-static {}, Laq6;->a()Lz84;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    const-string v2, "RootServiceManager"

    .line 172
    .line 173
    const-string v3, "Elevated service initialized"

    .line 174
    .line 175
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    .line 177
    .line 178
    move-object v2, v1

    .line 179
    :cond_8
    monitor-exit v0

    .line 180
    return-object v2

    .line 181
    :goto_2
    monitor-exit v0

    .line 182
    throw v1

    .line 183
    :catchall_1
    move-exception v1

    .line 184
    monitor-exit v0

    .line 185
    throw v1
.end method
