.class public final Lokhttp3/internal/concurrent/TaskRunner$runnable$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->k:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->k:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->b()Lokhttp3/internal/concurrent/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 14
    monitor-exit v0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :goto_0
    const-wide/16 v4, -0x1

    .line 27
    .line 28
    :try_start_1
    iget-object v6, v1, Lokhttp3/internal/concurrent/Task;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v6, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 34
    .line 35
    iget-object v6, v6, Lokhttp3/internal/concurrent/TaskRunner;->b:Ljava/util/logging/Logger;

    .line 36
    .line 37
    iget-object v7, v1, Lokhttp3/internal/concurrent/Task;->c:Lokhttp3/internal/concurrent/TaskQueue;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    const-string v11, "starting"

    .line 55
    .line 56
    invoke-static {v6, v1, v7, v11}, Lokhttp3/internal/concurrent/TaskLoggerKt;->a(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    move-wide v9, v4

    .line 63
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->a()J

    .line 64
    .line 65
    .line 66
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v13

    .line 73
    sub-long/2addr v13, v9

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v9, "finished run in "

    .line 80
    .line 81
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {v13, v14}, Lokhttp3/internal/concurrent/TaskLoggerKt;->b(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v6, v1, v7, v8}, Lokhttp3/internal/concurrent/TaskLoggerKt;->a(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v6, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 99
    .line 100
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    invoke-static {v6, v1, v11, v12, v2}, Lokhttp3/internal/concurrent/TaskRunner;->a(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->b()Lokhttp3/internal/concurrent/Task;

    .line 105
    .line 106
    .line 107
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-nez v7, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    move-object v1, v7

    .line 116
    goto :goto_0

    .line 117
    :catchall_1
    move-exception v2

    .line 118
    :try_start_6
    monitor-exit v6

    .line 119
    throw v2

    .line 120
    :catchall_2
    move-exception v2

    .line 121
    if-eqz v8, :cond_4

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 124
    .line 125
    .line 126
    move-result-wide v11

    .line 127
    sub-long/2addr v11, v9

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v9, "failed a run in "

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {v11, v12}, Lokhttp3/internal/concurrent/TaskLoggerKt;->b(J)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-static {v6, v1, v7, v8}, Lokhttp3/internal/concurrent/TaskLoggerKt;->a(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    :goto_2
    :try_start_7
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 154
    .line 155
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 156
    const/4 v6, 0x0

    .line 157
    :try_start_8
    invoke-static {p0, v1, v4, v5, v6}, Lokhttp3/internal/concurrent/TaskRunner;->a(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 158
    .line 159
    .line 160
    :try_start_9
    monitor-exit p0

    .line 161
    instance-of p0, v2, Ljava/lang/InterruptedException;

    .line 162
    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :catchall_3
    move-exception p0

    .line 177
    goto :goto_3

    .line 178
    :cond_5
    :try_start_a
    throw v2

    .line 179
    :catchall_4
    move-exception v1

    .line 180
    monitor-exit p0

    .line 181
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 182
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :catchall_5
    move-exception p0

    .line 187
    monitor-exit v0

    .line 188
    throw p0
.end method
