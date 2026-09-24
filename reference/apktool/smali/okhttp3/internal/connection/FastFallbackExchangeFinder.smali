.class public final Lokhttp3/internal/connection/FastFallbackExchangeFinder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/ExchangeFinder;


# instance fields
.field public final a:Lokhttp3/internal/connection/RoutePlanner;

.field public final b:Lokhttp3/internal/concurrent/TaskRunner;

.field public c:J

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->a:Lokhttp3/internal/connection/RoutePlanner;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->b:Lokhttp3/internal/concurrent/TaskRunner;

    .line 10
    .line 11
    const-wide/high16 p1, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide p1, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c:J

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->e:Ljava/util/concurrent/BlockingQueue;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RealConnection;
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->a:Lokhttp3/internal/connection/RoutePlanner;

    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    :try_start_1
    invoke-interface {v4, v1}, Lokhttp3/internal/connection/RoutePlanner;->b(Lokhttp3/internal/connection/RealConnection;)Z

    .line 14
    .line 15
    .line 16
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    throw v2

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v4}, Lokhttp3/internal/connection/RoutePlanner;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_f

    .line 35
    .line 36
    iget-object v3, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->b:Lokhttp3/internal/concurrent/TaskRunner;

    .line 37
    .line 38
    iget-object v3, v3, Lokhttp3/internal/concurrent/TaskRunner;->a:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    iget-wide v7, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c:J

    .line 45
    .line 46
    sub-long/2addr v7, v5

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    cmp-long v3, v7, v9

    .line 56
    .line 57
    if-gtz v3, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v3, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->d()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-wide/32 v7, 0xee6b280

    .line 67
    .line 68
    .line 69
    add-long/2addr v5, v7

    .line 70
    iput-wide v5, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c:J

    .line 71
    .line 72
    :goto_3
    if-nez v3, :cond_7

    .line 73
    .line 74
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    :goto_4
    move-object v3, v1

    .line 83
    goto :goto_5

    .line 84
    :cond_5
    iget-object v5, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->e:Ljava/util/concurrent/BlockingQueue;

    .line 85
    .line 86
    invoke-interface {v5, v7, v8, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 91
    .line 92
    if-nez v3, :cond_6

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    iget-object v5, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->a:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :goto_5
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    iget-object v5, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->a:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 104
    .line 105
    iget-object v6, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x1

    .line 109
    if-nez v6, :cond_8

    .line 110
    .line 111
    iget-object v6, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 112
    .line 113
    if-nez v6, :cond_8

    .line 114
    .line 115
    move v6, v8

    .line 116
    goto :goto_6

    .line 117
    :cond_8
    move v6, v7

    .line 118
    :goto_6
    if-eqz v6, :cond_b

    .line 119
    .line 120
    invoke-virtual {p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5}, Lokhttp3/internal/connection/RoutePlanner$Plan;->d()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_9

    .line 128
    .line 129
    invoke-interface {v5}, Lokhttp3/internal/connection/RoutePlanner$Plan;->g()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :cond_9
    iget-object v5, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 134
    .line 135
    if-nez v5, :cond_a

    .line 136
    .line 137
    iget-object v5, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 138
    .line 139
    if-nez v5, :cond_a

    .line 140
    .line 141
    move v7, v8

    .line 142
    :cond_a
    if-eqz v7, :cond_b

    .line 143
    .line 144
    iget-object v0, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->a:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 145
    .line 146
    invoke-interface {v0}, Lokhttp3/internal/connection/RoutePlanner$Plan;->c()Lokhttp3/internal/connection/RealConnection;

    .line 147
    .line 148
    .line 149
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-virtual {p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c()V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_b
    :try_start_3
    iget-object v5, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 155
    .line 156
    if-eqz v5, :cond_e

    .line 157
    .line 158
    instance-of v6, v5, Ljava/io/IOException;

    .line 159
    .line 160
    if-eqz v6, :cond_d

    .line 161
    .line 162
    if-nez v2, :cond_c

    .line 163
    .line 164
    check-cast v5, Ljava/io/IOException;

    .line 165
    .line 166
    move-object v2, v5

    .line 167
    goto :goto_7

    .line 168
    :cond_c
    invoke-static {v2, v5}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_d
    throw v5

    .line 173
    :cond_e
    :goto_7
    iget-object v3, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 174
    .line 175
    if-eqz v3, :cond_0

    .line 176
    .line 177
    invoke-interface {v4}, Lokhttp3/internal/connection/RoutePlanner;->e()Lw40;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4, v3}, Lw40;->addFirst(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 187
    .line 188
    const-string v1, "Canceled"

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :goto_8
    invoke-virtual {p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->c()V

    .line 195
    .line 196
    .line 197
    throw v0
.end method

.method public final b()Lokhttp3/internal/connection/RoutePlanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->a:Lokhttp3/internal/connection/RoutePlanner;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 21
    .line 22
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->cancel()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->a()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->a:Lokhttp3/internal/connection/RoutePlanner;

    .line 33
    .line 34
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner;->e()Lw40;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lw40;->addLast(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final d()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->a:Lokhttp3/internal/connection/RoutePlanner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lokhttp3/internal/connection/RoutePlanner;->b(Lokhttp3/internal/connection/RealConnection;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v0}, Lokhttp3/internal/connection/RoutePlanner;->f()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v2

    .line 16
    new-instance v3, Lokhttp3/internal/connection/FailedPlan;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lokhttp3/internal/connection/FailedPlan;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    move-object v2, v3

    .line 22
    :goto_0
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    new-instance p0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    invoke-direct {p0, v2, v1, v1, v0}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    instance-of v3, v2, Lokhttp3/internal/connection/FailedPlan;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast v2, Lokhttp3/internal/connection/FailedPlan;

    .line 40
    .line 41
    iget-object p0, v2, Lokhttp3/internal/connection/FailedPlan;->a:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v4, Lokhttp3/internal/_UtilJvmKt;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, " connect "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Lokhttp3/internal/connection/RoutePlanner;->c()Lokhttp3/Address;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 69
    .line 70
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->h()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v3, p0, Lokhttp3/internal/connection/FastFallbackExchangeFinder;->b:Lokhttp3/internal/concurrent/TaskRunner;

    .line 82
    .line 83
    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Lokhttp3/internal/connection/FastFallbackExchangeFinder$launchTcpConnect$1;

    .line 88
    .line 89
    invoke-direct {v4, v0, v2, p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder$launchTcpConnect$1;-><init>(Ljava/lang/String;Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/FastFallbackExchangeFinder;)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;J)V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-object v1
.end method
