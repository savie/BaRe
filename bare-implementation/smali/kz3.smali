.class public abstract Lkz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Loe;

.field public final d:Lme;

.field public final e:Ldf;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Li19;

.field public final i:Llk;

.field public final j:Lpz3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Null context is not permitted."

    .line 5
    .line 6
    invoke-static {p1, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Api must not be null."

    .line 10
    .line 11
    invoke-static {p3, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 15
    .line 16
    invoke-static {p5, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "The provided context did not have an application context."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lkz3;->a:Landroid/content/Context;

    .line 29
    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x1e

    .line 33
    .line 34
    if-lt v1, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-object p1, p0, Lkz3;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p3, p0, Lkz3;->c:Loe;

    .line 45
    .line 46
    iput-object p4, p0, Lkz3;->d:Lme;

    .line 47
    .line 48
    iget-object v1, p5, Ljz3;->b:Landroid/os/Looper;

    .line 49
    .line 50
    iput-object v1, p0, Lkz3;->f:Landroid/os/Looper;

    .line 51
    .line 52
    new-instance v1, Ldf;

    .line 53
    .line 54
    invoke-direct {v1, p3, p4, p1}, Ldf;-><init>(Loe;Lme;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lkz3;->e:Ldf;

    .line 58
    .line 59
    new-instance p1, Li19;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Li19;-><init>(Lkz3;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lkz3;->h:Li19;

    .line 65
    .line 66
    invoke-static {v0}, Lpz3;->g(Landroid/content/Context;)Lpz3;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lkz3;->j:Lpz3;

    .line 71
    .line 72
    iget-object p3, p1, Lpz3;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iput p3, p0, Lkz3;->g:I

    .line 79
    .line 80
    iget-object p3, p5, Ljz3;->a:Llk;

    .line 81
    .line 82
    iput-object p3, p0, Lkz3;->i:Llk;

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    instance-of p3, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 87
    .line 88
    if-nez p3, :cond_2

    .line 89
    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-ne p3, p4, :cond_2

    .line 99
    .line 100
    invoke-static {p2}, Lvt4;->getFragment(Landroid/app/Activity;)Lbu4;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string p3, "ConnectionlessLifecycleHelper"

    .line 105
    .line 106
    const-class p4, La19;

    .line 107
    .line 108
    invoke-interface {p2, p4, p3}, Lbu4;->b(Ljava/lang/Class;Ljava/lang/String;)Lvt4;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    check-cast p3, La19;

    .line 113
    .line 114
    if-nez p3, :cond_1

    .line 115
    .line 116
    new-instance p3, La19;

    .line 117
    .line 118
    sget-object p4, Llz3;->c:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-direct {p3, p2, p1}, La19;-><init>(Lbu4;Lpz3;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object p2, p3, La19;->e:Lp50;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Lp50;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3}, Lpz3;->b(La19;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p1, p1, Lpz3;->n:Ln29;

    .line 132
    .line 133
    const/4 p2, 0x7

    .line 134
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final a()Lvq;
    .locals 4

    .line 1
    new-instance v0, Lvq;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lvq;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lp50;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lp50;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Lp50;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 22
    .line 23
    :cond_0
    iget-object v2, v0, Lvq;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lp50;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lp50;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lkz3;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lvq;->d:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Lvq;->c:Ljava/lang/Object;

    .line 47
    .line 48
    return-object v0
.end method

.method public final b(ILr19;)Lcom/google/android/gms/tasks/Task;
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkz3;->i:Llk;

    .line 7
    .line 8
    iget-object v3, p0, Lkz3;->j:Lpz3;

    .line 9
    .line 10
    iget-object v10, v3, Lpz3;->n:Ln29;

    .line 11
    .line 12
    iget v4, p2, Lr19;->c:I

    .line 13
    .line 14
    if-eqz v4, :cond_6

    .line 15
    .line 16
    iget-object v5, p0, Lkz3;->e:Ldf;

    .line 17
    .line 18
    invoke-virtual {v3}, Lpz3;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljq6;->i()Ljq6;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Ljq6;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lkq6;

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-boolean v7, v2, Lkq6;->b:Z

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    iget-boolean v2, v2, Lkq6;->c:Z

    .line 41
    .line 42
    iget-object v7, v3, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lg19;

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget-object v8, v7, Lg19;->b:Lne;

    .line 53
    .line 54
    instance-of v9, v8, Laz3;

    .line 55
    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    check-cast v8, Laz3;

    .line 59
    .line 60
    iget-object v9, v8, Laz3;->u:Ljo9;

    .line 61
    .line 62
    if-eqz v9, :cond_1

    .line 63
    .line 64
    invoke-virtual {v8}, Laz3;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_1

    .line 69
    .line 70
    invoke-static {v7, v8, v4}, Ln19;->a(Lg19;Laz3;I)Lis1;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget v8, v7, Lg19;->t:I

    .line 77
    .line 78
    add-int/2addr v8, v6

    .line 79
    iput v8, v7, Lg19;->t:I

    .line 80
    .line 81
    iget-boolean v6, v2, Lis1;->c:Z

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v6, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :goto_1
    new-instance v2, Ln19;

    .line 89
    .line 90
    const-wide/16 v7, 0x0

    .line 91
    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-wide v11, v7

    .line 100
    :goto_2
    if-eqz v6, :cond_5

    .line 101
    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    :cond_5
    move-wide v8, v7

    .line 107
    move-wide v6, v11

    .line 108
    invoke-direct/range {v2 .. v9}, Ln19;-><init>(Lpz3;ILdf;JJ)V

    .line 109
    .line 110
    .line 111
    :goto_3
    if-eqz v2, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    new-instance v5, Ld19;

    .line 121
    .line 122
    invoke-direct {v5, v10}, Ld19;-><init>(Ln29;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 126
    .line 127
    .line 128
    :cond_6
    new-instance v2, Ly19;

    .line 129
    .line 130
    invoke-direct {v2, p1, p2, v0, v1}, Ly19;-><init>(ILr19;Lcom/google/android/gms/tasks/TaskCompletionSource;Llk;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, v3, Lpz3;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    .line 135
    new-instance p2, Lp19;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-direct {p2, v2, p1, p0}, Lp19;-><init>(Le29;ILkz3;)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x4

    .line 145
    invoke-virtual {v10, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v10, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0
.end method
