.class public final synthetic Lgz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lwz5;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lwz5;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgz5;->a:Lwz5;

    .line 5
    .line 6
    iput-boolean p2, p0, Lgz5;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lgz5;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v1, p0, Lgz5;->a:Lwz5;

    .line 2
    .line 3
    iget-object v6, v1, Lwz5;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    iget-object v0, v1, Lwz5;->y:Lu00;

    .line 6
    .line 7
    iget-object v2, v1, Lwz5;->h:Lrz5;

    .line 8
    .line 9
    sget-object v3, Lrz5;->a:Lrz5;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v4

    .line 17
    :goto_0
    const-string v5, "Not in disconnected state: %s"

    .line 18
    .line 19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v3, v5, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lrz5;->b:Lrz5;

    .line 27
    .line 28
    iput-object v2, v1, Lwz5;->h:Lrz5;

    .line 29
    .line 30
    iget-wide v2, v1, Lwz5;->B:J

    .line 31
    .line 32
    const-wide/16 v7, 0x1

    .line 33
    .line 34
    add-long/2addr v2, v7

    .line 35
    iput-wide v2, v1, Lwz5;->B:J

    .line 36
    .line 37
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 38
    .line 39
    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v7, "Trying to fetch auth token"

    .line 43
    .line 44
    new-array v8, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    invoke-virtual {v0, v7, v9, v8}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v7, v1, Lwz5;->v:Lyu1;

    .line 51
    .line 52
    new-instance v8, Lty3;

    .line 53
    .line 54
    invoke-direct {v8, v5}, Lty3;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v10, v7, Lyu1;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v10, Lk58;

    .line 60
    .line 61
    iget-object v7, v7, Lyu1;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    .line 65
    new-instance v11, Lro;

    .line 66
    .line 67
    const/4 v12, 0x3

    .line 68
    invoke-direct {v11, v12, v7, v8}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v7, p0, Lgz5;->b:Z

    .line 72
    .line 73
    invoke-interface {v10, v7, v11}, Lk58;->a(ZLro;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 81
    .line 82
    invoke-direct {v7}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v8, "Trying to fetch app check token"

    .line 86
    .line 87
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0, v8, v9, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lwz5;->w:Lyu1;

    .line 93
    .line 94
    new-instance v4, Lz28;

    .line 95
    .line 96
    const/16 v8, 0xd

    .line 97
    .line 98
    invoke-direct {v4, v7, v8}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    iget-object v8, v0, Lyu1;->a:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v8, Lk58;

    .line 104
    .line 105
    iget-object v0, v0, Lyu1;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    .line 109
    new-instance v9, Lro;

    .line 110
    .line 111
    invoke-direct {v9, v12, v0, v4}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-boolean p0, p0, Lgz5;->c:Z

    .line 115
    .line 116
    invoke-interface {v8, p0, v9}, Lk58;->a(ZLro;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    filled-new-array {v5, p0}, [Lcom/google/android/gms/tasks/Task;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    new-instance v0, Lhz5;

    .line 132
    .line 133
    move-object v4, v5

    .line 134
    move-object v5, p0

    .line 135
    invoke-direct/range {v0 .. v5}, Lhz5;-><init>(Lwz5;JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    new-instance v0, Liz5;

    .line 143
    .line 144
    invoke-direct {v0, v1, v2, v3}, Liz5;-><init>(Lwz5;J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 148
    .line 149
    .line 150
    return-void
.end method
