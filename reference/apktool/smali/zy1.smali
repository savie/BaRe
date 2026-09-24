.class public final Lzy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lka2;

.field public final c:Lc00;

.field public final d:J

.field public e:Lyf1;

.field public f:Lyf1;

.field public g:Z

.field public h:Lsy1;

.field public final i:Lk94;

.field public final j:Lca3;

.field public final k:Lbb;

.field public final l:Lcb;

.field public final m:Loy1;

.field public final n:Lcz1;

.field public final o:Lnh;

.field public final p:Ls02;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lk94;Lcz1;Lka2;Lbb;Lcb;Lca3;Loy1;Lnh;Ls02;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lzy1;->b:Lka2;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lzy1;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lzy1;->i:Lk94;

    .line 13
    .line 14
    iput-object p3, p0, Lzy1;->n:Lcz1;

    .line 15
    .line 16
    iput-object p5, p0, Lzy1;->k:Lbb;

    .line 17
    .line 18
    iput-object p6, p0, Lzy1;->l:Lcb;

    .line 19
    .line 20
    iput-object p7, p0, Lzy1;->j:Lca3;

    .line 21
    .line 22
    iput-object p8, p0, Lzy1;->m:Loy1;

    .line 23
    .line 24
    iput-object p9, p0, Lzy1;->o:Lnh;

    .line 25
    .line 26
    iput-object p10, p0, Lzy1;->p:Ls02;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lzy1;->d:J

    .line 33
    .line 34
    new-instance p1, Lc00;

    .line 35
    .line 36
    const/16 p2, 0x9

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lc00;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lzy1;->c:Lc00;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lf80;)V
    .locals 5

    .line 1
    invoke-static {}, Ls02;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ls02;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lzy1;->e:Lyf1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lyf1;->p()V

    .line 10
    .line 11
    .line 12
    const-string v0, "FirebaseCrashlytics"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "Initialization marker file was created."

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzy1;->k:Lbb;

    .line 28
    .line 29
    new-instance v3, Lq;

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    invoke-direct {v3, v4}, Lq;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lbb;->c(Lq;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lzy1;->h:Lsy1;

    .line 39
    .line 40
    invoke-virtual {v1}, Lsy1;->h()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lf80;->c()Lfa7;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v1, v1, Lfa7;->b:Lea7;

    .line 48
    .line 49
    iget-boolean v1, v1, Lea7;->a:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lzy1;->h:Lsy1;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lsy1;->e(Lf80;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string v1, "Previous sessions could not be finalized."

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, Lzy1;->h:Lsy1;

    .line 72
    .line 73
    iget-object p1, p1, Lf80;->i:Ljava/io/Serializable;

    .line 74
    .line 75
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Lsy1;->i(Lcom/google/android/gms/tasks/Task;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lzy1;->c()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    const/4 p1, 0x3

    .line 95
    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const-string v1, "Collection of crash reports disabled in Crashlytics settings."

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    :try_start_2
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 107
    .line 108
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_1
    :try_start_3
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 113
    .line 114
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lzy1;->c()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_2
    invoke-virtual {p0}, Lzy1;->c()V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public final b(Lf80;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzy1;->p:Ls02;

    .line 2
    .line 3
    iget-object v0, v0, Ls02;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lo02;

    .line 6
    .line 7
    iget-object v0, v0, Lo02;->a:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    new-instance v1, Lpb;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, p0, p1}, Lpb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "FirebaseCrashlytics"

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v1, 0x3

    .line 37
    .line 38
    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :goto_0
    const-string v0, "Crashlytics timed out during initialization."

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_1
    const-string v0, "Crashlytics encountered a problem during initialization."

    .line 55
    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    const-string v0, "Crashlytics was interrupted during initialization."

    .line 61
    .line 62
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 70
    .line 71
    .line 72
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    invoke-static {}, Ls02;->a()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lzy1;->e:Lyf1;

    .line 7
    .line 8
    iget-object v1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lca3;

    .line 11
    .line 12
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/io/File;

    .line 20
    .line 21
    iget-object v1, v1, Lca3;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const-string p0, "Initialization marker file was not properly removed."

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void

    .line 44
    :goto_0
    const-string v1, "Problem encountered deleting Crashlytics initialization marker."

    .line 45
    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final d(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lzy1;->b:Lka2;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iput-boolean v0, p0, Lka2;->f:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_5

    .line 12
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, Lka2;->b:Lcom/google/firebase/FirebaseApp;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lka2;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_1
    iput-object v1, p0, Lka2;->g:Ljava/lang/Boolean;

    .line 27
    .line 28
    iget-object v1, p0, Lka2;->a:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string v2, "firebase_crashlytics_collection_enabled"

    .line 31
    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lka2;->c:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lka2;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    iget-boolean v2, p0, Lka2;->e:Z

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    :try_start_2
    iget-object v0, p0, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lka2;->e:Z

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto :goto_4

    .line 77
    :cond_3
    if-eqz v2, :cond_4

    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 85
    .line 86
    iput-boolean v0, p0, Lka2;->e:Z

    .line 87
    .line 88
    :cond_4
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    :try_start_4
    throw v0

    .line 93
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    throw p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzy1;->p:Ls02;

    .line 2
    .line 3
    iget-object v0, v0, Ls02;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lo02;

    .line 6
    .line 7
    new-instance v1, Luy1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0, p1, p2}, Luy1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 14
    .line 15
    .line 16
    return-void
.end method
