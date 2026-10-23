.class public final Lcf3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lzc2;Z)Ll73;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    sget-object v0, Ld45;->b:Ld45;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget-object p0, Lwe3;->o:Lwe3;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    :try_start_1
    iget-object p1, p0, Lzc2;->a:Lwj6;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Luj6;

    .line 48
    .line 49
    invoke-direct {v1, p1, p0, v0, p1}, Luj6;-><init>(Lwj6;Lzc2;Lcom/google/android/gms/tasks/TaskCompletionSource;Lwj6;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lwj6;->n(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Leb2;

    .line 64
    .line 65
    new-instance p1, Lxe3;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p0}, Lxe3;-><init>(Leb2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    move-object p0, v0

    .line 76
    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v1, "readReference: "

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v4, 0x4

    .line 93
    const/4 v5, 0x0

    .line 94
    const-string v1, "FireSynchronizer"

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Lwe3;

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lwe3;-><init>(Lwc2;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method

.method public static b(Lzc2;Lmt3;)Lve3;
    .locals 9

    .line 1
    const-string v1, "runTransaction: "

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v2, Ld45;->b:Ld45;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance p0, Lue3;

    .line 32
    .line 33
    sget-object p1, Lye3;->c:Lye3;

    .line 34
    .line 35
    iget-object p1, p1, Lye3;->b:Lwc2;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lue3;-><init>(Lwc2;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    .line 56
    .line 57
    :try_start_1
    new-instance v4, Lbf3;

    .line 58
    .line 59
    invoke-direct {v4, p1, v3, v2, v0}, Lbf3;-><init>(Lmt3;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lzc2;->b:Lgy5;

    .line 63
    .line 64
    invoke-static {p1}, Lui8;->d(Lgy5;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lzc2;->a:Lwj6;

    .line 68
    .line 69
    new-instance v3, Lb9;

    .line 70
    .line 71
    invoke-direct {v3, p0, v4}, Lb9;-><init>(Lzc2;Lbf3;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lwj6;->n(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    const-wide/16 v3, 0x1e

    .line 80
    .line 81
    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 88
    .line 89
    const-string p1, "Firebase transaction timed out after 30s"

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 99
    .line 100
    const-string v4, "FireSynchronizer"

    .line 101
    .line 102
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const/4 v7, 0x4

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v6, 0x0

    .line 113
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance p0, Lue3;

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lue3;-><init>(Lwc2;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    move-object p0, v0

    .line 127
    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    .line 129
    move-object p0, v0

    .line 130
    goto :goto_1

    .line 131
    :goto_0
    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 136
    .line 137
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const/4 v7, 0x4

    .line 146
    const/4 v8, 0x0

    .line 147
    const-string v4, "FireSynchronizer"

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance p0, Lue3;

    .line 154
    .line 155
    invoke-direct {p0, p1}, Lue3;-><init>(Lwc2;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 167
    .line 168
    .line 169
    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 174
    .line 175
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const/4 v7, 0x4

    .line 184
    const/4 v8, 0x0

    .line 185
    const-string v4, "FireSynchronizer"

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance p0, Lue3;

    .line 192
    .line 193
    invoke-direct {p0, p1}, Lue3;-><init>(Lwc2;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    check-cast p0, Lve3;

    .line 204
    .line 205
    if-nez p0, :cond_3

    .line 206
    .line 207
    sget-object p0, Lse3;->a:Lse3;

    .line 208
    .line 209
    :cond_3
    return-object p0
.end method

.method public static c(Lzc2;Ljava/lang/Object;)Laf3;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v0, Ld45;->b:Ld45;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lye3;->c:Lye3;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p0, Lze3;->b:Lze3;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    return-object p0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    move-object p0, v0

    .line 49
    invoke-static {p0}, Lwc2;->a(Ljava/lang/Throwable;)Lwc2;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :try_start_2
    sget-object v0, Ld45;->b:Ld45;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    :catch_2
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "setValue: "

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/4 v5, 0x4

    .line 93
    const/4 v6, 0x0

    .line 94
    const-string v2, "FireSynchronizer"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    new-instance p0, Lye3;

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lye3;-><init>(Lwc2;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method
