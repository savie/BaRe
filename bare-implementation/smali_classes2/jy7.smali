.class public final Ljy7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lwo5;

.field public b:Z

.field public c:Z

.field public d:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwo5;

    .line 5
    .line 6
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 7
    .line 8
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "backup_restore_channel"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->c()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lwo5;->r:I

    .line 22
    .line 23
    const v1, 0x7f0801f6

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lwo5;->u:Landroid/app/Notification;

    .line 27
    .line 28
    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 29
    .line 30
    iput-object v0, p0, Ljy7;->a:Lwo5;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Ljy7;->c:Z

    .line 34
    .line 35
    new-instance v0, Ljava/util/Timer;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Ljy7;->d:Ljava/util/Timer;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 12

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 2
    .line 3
    invoke-static {}, Lzx7;->a()Landroid/app/PendingIntent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ljy7;->a:Lwo5;

    .line 8
    .line 9
    iput-object v0, v1, Lwo5;->g:Landroid/app/PendingIntent;

    .line 10
    .line 11
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    const v0, 0x7f1300f1

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v2, Lorg/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver;->a:I

    .line 21
    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-class v4, Lorg/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/high16 v4, 0x44000000    # 512.0f

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lwo5;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v4, Lvo5;

    .line 50
    .line 51
    const v6, 0x7f08014e

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v6, v0, v2}, Lvo5;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-virtual {v1, v0}, Lwo5;->c(I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lhy7;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, v1, Lwo5;->e:Ljava/lang/CharSequence;

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lwo5;->c(I)V

    .line 75
    .line 76
    .line 77
    const/16 v0, 0x64

    .line 78
    .line 79
    iput v0, v1, Lwo5;->m:I

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput v0, v1, Lwo5;->n:I

    .line 83
    .line 84
    iput-boolean v5, v1, Lwo5;->o:Z

    .line 85
    .line 86
    new-instance v7, Liy7;

    .line 87
    .line 88
    invoke-direct {v7, p0}, Liy7;-><init>(Ljy7;)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-object v6, p0, Ljy7;->d:Ljava/util/Timer;

    .line 92
    .line 93
    const-wide/16 v8, 0x0

    .line 94
    .line 95
    const-wide/16 v10, 0x7d0

    .line 96
    .line 97
    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 103
    .line 104
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/4 v5, 0x4

    .line 109
    const/4 v6, 0x0

    .line 110
    const-string v2, "TaskNotificationHelper"

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "TaskNotificationHelper"

    .line 117
    .line 118
    const-string v3, "Retrying timer setup with new instance"

    .line 119
    .line 120
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Ljava/util/Timer;

    .line 124
    .line 125
    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v6, p0, Ljy7;->d:Ljava/util/Timer;

    .line 129
    .line 130
    const-wide/16 v8, 0x0

    .line 131
    .line 132
    const-wide/16 v10, 0x7d0

    .line 133
    .line 134
    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 135
    .line 136
    .line 137
    :goto_0
    invoke-virtual {p0}, Ljy7;->c()Landroid/app/Notification;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Ljy7;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    :try_start_1
    iget-object v0, p0, Ljy7;->d:Ljava/util/Timer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    :goto_0
    :try_start_2
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0xc

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    throw v0
.end method

.method public final declared-synchronized c()Landroid/app/Notification;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lhy7;->a:Lhy7;

    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 5
    .line 6
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 7
    .line 8
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Ljy7;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Ljy7;->a:Lwo5;

    .line 20
    .line 21
    invoke-virtual {v0}, Lwo5;->a()Landroid/app/Notification;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Ljy7;->d:Ljava/util/Timer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lwo5;

    .line 37
    .line 38
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 39
    .line 40
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "backup_restore_channel"

    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->c()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lwo5;->r:I

    .line 54
    .line 55
    iget-object v1, v0, Lwo5;->u:Landroid/app/Notification;

    .line 56
    .line 57
    const v2, 0x7f0801f6

    .line 58
    .line 59
    .line 60
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    invoke-virtual {v0, v1}, Lwo5;->c(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const v2, 0x7f1300f3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lwo5;->e:Ljava/lang/CharSequence;

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lwo5;->c(I)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x64

    .line 89
    .line 90
    iput v1, v0, Lwo5;->m:I

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    iput v1, v0, Lwo5;->n:I

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, v0, Lwo5;->o:Z

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    iput-object v1, v0, Lwo5;->l:Ljava/lang/CharSequence;

    .line 100
    .line 101
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 102
    .line 103
    invoke-static {}, Lzx7;->a()Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, Lwo5;->g:Landroid/app/PendingIntent;

    .line 108
    .line 109
    invoke-virtual {v0}, Lwo5;->a()Landroid/app/Notification;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :goto_1
    iget-boolean v1, p0, Ljy7;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    :try_start_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const/16 v2, 0xc

    .line 125
    .line 126
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    :catch_0
    :cond_2
    monitor-exit p0

    .line 130
    return-object v0

    .line 131
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw v0
.end method

.method public final d()V
    .locals 18

    .line 1
    const-string v0, "TaskNotificationHelper"

    .line 2
    .line 3
    const-string v1, "showCompleteNotification() called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p0

    .line 9
    .line 10
    iget-object v0, v0, Ljy7;->d:Ljava/util/Timer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 18
    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.intent.action.MAIN"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "android.intent.category.LAUNCHER"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/high16 v1, 0x10200000

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/high16 v2, 0xc000000

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v6, 0x0

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lrw6;

    .line 83
    .line 84
    iget-object v5, v5, Lrw6;->c:Lqw6;

    .line 85
    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    iget-object v6, v5, Lqw6;->a:Lpw6;

    .line 89
    .line 90
    :cond_1
    if-eqz v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    sget-object v4, Lhy7;->a:Lhy7;

    .line 97
    .line 98
    invoke-static {}, Lhy7;->c()Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->hasErrors()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 109
    .line 110
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->getMsg()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const/4 v11, 0x4

    .line 123
    const/4 v12, 0x0

    .line 124
    const-string v8, "TaskNotificationHelper"

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->getMsg()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    const/4 v7, 0x1

    .line 139
    if-lez v5, :cond_4

    .line 140
    .line 141
    move v5, v7

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    move v5, v3

    .line 144
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lhy7;->f()Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_5

    .line 154
    .line 155
    sget-object v9, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 156
    .line 157
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const v10, 0x7f1305c7

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object v0, v6

    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    move-object v0, v6

    .line 194
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_9

    .line 199
    .line 200
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Lpw6;

    .line 205
    .line 206
    instance-of v11, v10, Lc40;

    .line 207
    .line 208
    if-eqz v11, :cond_8

    .line 209
    .line 210
    move-object v11, v10

    .line 211
    check-cast v11, Lc40;

    .line 212
    .line 213
    invoke-virtual {v11}, Lpw6;->g()Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-nez v12, :cond_8

    .line 218
    .line 219
    iget-object v0, v11, Lc40;->v:Lpw5;

    .line 220
    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    iget-object v0, v0, Lpw5;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v0, Landroid/graphics/Bitmap;

    .line 226
    .line 227
    move-object v11, v0

    .line 228
    goto :goto_3

    .line 229
    :cond_6
    move-object v11, v6

    .line 230
    :goto_3
    :try_start_0
    check-cast v10, Lc40;

    .line 231
    .line 232
    iget-object v0, v10, Lc40;->m:Ljava/util/List;

    .line 233
    .line 234
    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Lkz;

    .line 239
    .line 240
    invoke-virtual {v0}, Lkz;->a()Lji;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lji;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :catch_0
    move-exception v0

    .line 253
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-nez v0, :cond_7

    .line 260
    .line 261
    const-string v0, ""

    .line 262
    .line 263
    :cond_7
    move-object v14, v0

    .line 264
    const/16 v16, 0x4

    .line 265
    .line 266
    const/16 v17, 0x0

    .line 267
    .line 268
    const-string v13, "TaskNotificationHelper"

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 275
    .line 276
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const v10, 0x7f130079

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :goto_4
    move-object v0, v11

    .line 294
    goto :goto_2

    .line 295
    :cond_8
    invoke-virtual {v10}, Lpw6;->j()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_9
    :goto_5
    const/4 v12, 0x0

    .line 304
    const/16 v13, 0x3f

    .line 305
    .line 306
    const/4 v9, 0x0

    .line 307
    const/4 v10, 0x0

    .line 308
    const/4 v11, 0x0

    .line 309
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    const-string v9, "play_notification_sounds"

    .line 314
    .line 315
    :try_start_1
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 316
    .line 317
    if-eqz v10, :cond_a

    .line 318
    .line 319
    invoke-interface {v10, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    goto :goto_6

    .line 324
    :cond_a
    const-string v9, "prefs"

    .line 325
    .line 326
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :catch_1
    move v6, v7

    .line 331
    :goto_6
    if-nez v6, :cond_b

    .line 332
    .line 333
    const-string v9, "task_completion_channel_silent"

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_b
    if-nez v5, :cond_c

    .line 337
    .line 338
    const-string v9, "task_completion_channel_success"

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_c
    const-string v9, "task_completion_channel_error"

    .line 342
    .line 343
    :goto_7
    new-instance v10, Lwo5;

    .line 344
    .line 345
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 346
    .line 347
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    invoke-direct {v10, v11, v9}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    if-nez v5, :cond_10

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-eqz v9, :cond_d

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    if-eqz v11, :cond_f

    .line 372
    .line 373
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    check-cast v11, Lpw6;

    .line 378
    .line 379
    iget-object v11, v11, Lpw6;->a:Lcz7;

    .line 380
    .line 381
    invoke-virtual {v11}, Lcz7;->b()Z

    .line 382
    .line 383
    .line 384
    move-result v11

    .line 385
    if-nez v11, :cond_e

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_f
    :goto_8
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 389
    .line 390
    const v2, 0x7f1300b5

    .line 391
    .line 392
    .line 393
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    goto :goto_d

    .line 398
    :cond_10
    :goto_9
    if-nez v5, :cond_14

    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-eqz v9, :cond_11

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_13

    .line 416
    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    check-cast v9, Lpw6;

    .line 422
    .line 423
    iget-object v9, v9, Lpw6;->a:Lcz7;

    .line 424
    .line 425
    invoke-virtual {v9}, Lcz7;->c()Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    if-nez v9, :cond_12

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_13
    :goto_a
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 433
    .line 434
    const v2, 0x7f130490

    .line 435
    .line 436
    .line 437
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    goto :goto_d

    .line 442
    :cond_14
    :goto_b
    sget-object v2, Lhy7;->b:Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->hasErrors()Z

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    if-eqz v9, :cond_16

    .line 449
    .line 450
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->isOnlySafeErrors()Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-eqz v4, :cond_15

    .line 455
    .line 456
    const v4, 0x7f13024a

    .line 457
    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_15
    const v4, 0x7f130249

    .line 461
    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_16
    const v4, 0x7f130248

    .line 465
    .line 466
    .line 467
    :goto_c
    sget-object v9, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 468
    .line 469
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const-string v9, ": "

    .line 474
    .line 475
    invoke-static {v2, v9, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    :goto_d
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->c()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    iput v4, v10, Lwo5;->r:I

    .line 484
    .line 485
    const v4, 0x7f0801f6

    .line 486
    .line 487
    .line 488
    iget-object v9, v10, Lwo5;->u:Landroid/app/Notification;

    .line 489
    .line 490
    iput v4, v9, Landroid/app/Notification;->icon:I

    .line 491
    .line 492
    invoke-virtual {v10, v0}, Lwo5;->d(Landroid/graphics/Bitmap;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v2}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iput-object v0, v10, Lwo5;->e:Ljava/lang/CharSequence;

    .line 500
    .line 501
    if-nez v5, :cond_17

    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_17
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 505
    .line 506
    const v0, 0x7f130104

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    :goto_e
    invoke-static {v8}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iput-object v0, v10, Lwo5;->f:Ljava/lang/CharSequence;

    .line 518
    .line 519
    iput-object v1, v10, Lwo5;->g:Landroid/app/PendingIntent;

    .line 520
    .line 521
    new-array v0, v7, [J

    .line 522
    .line 523
    const-wide/16 v1, 0x1f4

    .line 524
    .line 525
    aput-wide v1, v0, v3

    .line 526
    .line 527
    iput-object v0, v9, Landroid/app/Notification;->vibrate:[J

    .line 528
    .line 529
    iput v3, v10, Lwo5;->i:I

    .line 530
    .line 531
    if-eqz v6, :cond_18

    .line 532
    .line 533
    invoke-static {v10, v5}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->g(Lwo5;Z)V

    .line 534
    .line 535
    .line 536
    :cond_18
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    const/16 v1, 0x235

    .line 541
    .line 542
    invoke-virtual {v10}, Lwo5;->a()Landroid/app/Notification;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 547
    .line 548
    .line 549
    return-void
.end method

.method public final e(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Ljy7;->a:Lwo5;

    .line 2
    .line 3
    iput p2, p0, Lwo5;->m:I

    .line 4
    .line 5
    iput p1, p0, Lwo5;->n:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lwo5;->o:Z

    .line 9
    .line 10
    invoke-static {p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "%"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lwo5;->l:Ljava/lang/CharSequence;

    .line 36
    .line 37
    return-void
.end method
