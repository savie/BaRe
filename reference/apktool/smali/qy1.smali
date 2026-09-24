.class public final Lqy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Lf80;

.field public final synthetic e:Lsy1;


# direct methods
.method public constructor <init>(Lsy1;JLjava/lang/Throwable;Ljava/lang/Thread;Lf80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqy1;->e:Lsy1;

    .line 5
    .line 6
    iput-wide p2, p0, Lqy1;->a:J

    .line 7
    .line 8
    iput-object p4, p0, Lqy1;->b:Ljava/lang/Throwable;

    .line 9
    .line 10
    iput-object p5, p0, Lqy1;->c:Ljava/lang/Thread;

    .line 11
    .line 12
    iput-object p6, p0, Lqy1;->d:Lf80;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    iget-wide v2, p0, Lqy1;->a:J

    .line 4
    .line 5
    div-long v0, v2, v0

    .line 6
    .line 7
    iget-object v4, p0, Lqy1;->e:Lsy1;

    .line 8
    .line 9
    invoke-virtual {v4}, Lsy1;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const-string v6, "FirebaseCrashlytics"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    const-string p0, "Tried to write a fatal exception while no session was open."

    .line 19
    .line 20
    invoke-static {v6, p0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v7}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    iget-object v8, v4, Lsy1;->c:Lyf1;

    .line 29
    .line 30
    invoke-virtual {v8}, Lyf1;->p()V

    .line 31
    .line 32
    .line 33
    iget-object v9, v4, Lsy1;->m:Lca3;

    .line 34
    .line 35
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v8, "Persisting fatal event for session "

    .line 39
    .line 40
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const/4 v10, 0x2

    .line 45
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-eqz v10, :cond_1

    .line 50
    .line 51
    invoke-static {v6, v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v13, Laz2;

    .line 55
    .line 56
    sget-object v6, Lpv2;->a:Lpv2;

    .line 57
    .line 58
    invoke-direct {v13, v5, v0, v1, v6}, Laz2;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 59
    .line 60
    .line 61
    const-string v12, "crash"

    .line 62
    .line 63
    const/4 v14, 0x1

    .line 64
    iget-object v10, p0, Lqy1;->b:Ljava/lang/Throwable;

    .line 65
    .line 66
    iget-object v11, p0, Lqy1;->c:Ljava/lang/Thread;

    .line 67
    .line 68
    invoke-virtual/range {v9 .. v14}, Lca3;->i(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Laz2;Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2, v3}, Lsy1;->d(J)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lqy1;->d:Lf80;

    .line 76
    .line 77
    invoke-virtual {v4, v0, v1, v0}, Lsy1;->b(ZLf80;Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lpy0;

    .line 81
    .line 82
    invoke-direct {v0}, Lpy0;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lpy0;->a:Ljava/lang/String;

    .line 86
    .line 87
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v4, v0, v2}, Lsy1;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v4, Lsy1;->b:Lka2;

    .line 93
    .line 94
    invoke-virtual {v0}, Lka2;->b()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    invoke-static {v7}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_2
    iget-object v0, v1, Lf80;->i:Ljava/io/Serializable;

    .line 106
    .line 107
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, v4, Lsy1;->e:Ls02;

    .line 120
    .line 121
    iget-object v1, v1, Ls02;->a:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lo02;

    .line 124
    .line 125
    new-instance v2, Ls79;

    .line 126
    .line 127
    invoke-direct {v2, p0, v5}, Ls79;-><init>(Lqy1;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method
