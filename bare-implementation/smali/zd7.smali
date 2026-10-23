.class public final Lzd7;
.super Lcom/topjohnwu/superuser/Shell;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public final b:Lr77;

.field public final c:Z

.field public final d:Ljava/lang/Process;

.field public final e:Lyd7;

.field public final f:Lxd7;

.field public final k:Lxd7;


# direct methods
.method public constructor <init>(Lex0;Ljava/lang/Process;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lzd7;->a:I

    .line 6
    .line 7
    iget v0, p1, Lex0;->b:I

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    iput-boolean v0, p0, Lzd7;->c:Z

    .line 20
    .line 21
    iput-object p2, p0, Lzd7;->d:Ljava/lang/Process;

    .line 22
    .line 23
    new-instance v0, Lyd7;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v4, v1, Ljava/io/BufferedOutputStream;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .line 38
    .line 39
    move-object v1, v4

    .line 40
    :goto_1
    invoke-direct {v0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lzd7;->e:Lyd7;

    .line 44
    .line 45
    new-instance v0, Lxd7;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Lxd7;-><init>(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lzd7;->f:Lxd7;

    .line 55
    .line 56
    new-instance v0, Lxd7;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {v0, p2}, Lxd7;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lzd7;->k:Lxd7;

    .line 66
    .line 67
    new-instance p2, Lr77;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, p2, Lr77;->a:Z

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p2, Lr77;->b:Ljava/util/ArrayDeque;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput-object v0, p2, Lr77;->c:Ljava/util/concurrent/FutureTask;

    .line 83
    .line 84
    iput-object p2, p0, Lzd7;->b:Lr77;

    .line 85
    .line 86
    new-instance v0, Lme2;

    .line 87
    .line 88
    invoke-direct {v0, p0, v2}, Lme2;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :try_start_0
    iget-wide v0, p1, Lex0;->a:J

    .line 96
    .line 97
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    .line 99
    invoke-interface {p2, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lzd7;->a:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception p1

    .line 113
    goto :goto_5

    .line 114
    :catch_1
    move-exception p1

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception p1

    .line 117
    goto :goto_3

    .line 118
    :catch_3
    move-exception p1

    .line 119
    goto :goto_4

    .line 120
    :goto_2
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    .line 121
    .line 122
    const-string v0, "Shell check interrupted"

    .line 123
    .line 124
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw p2

    .line 128
    :goto_3
    new-instance p2, Ljava/io/IOException;

    .line 129
    .line 130
    const-string v0, "Shell check timeout"

    .line 131
    .line 132
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    instance-of p2, p1, Ljava/io/IOException;

    .line 141
    .line 142
    if-eqz p2, :cond_2

    .line 143
    .line 144
    check-cast p1, Ljava/io/IOException;

    .line 145
    .line 146
    throw p1

    .line 147
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 148
    .line 149
    const-string v0, "Unknown ExecutionException"

    .line 150
    .line 151
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_5
    iget-object p2, p0, Lzd7;->b:Lr77;

    .line 156
    .line 157
    invoke-virtual {p2}, Lr77;->shutdownNow()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lzd7;->a()V

    .line 161
    .line 162
    .line 163
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lzd7;->a:I

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lzd7;->e:Lyd7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lyd7;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :try_start_1
    iget-object v0, p0, Lzd7;->k:Lxd7;

    .line 10
    .line 11
    invoke-virtual {v0}, Lxd7;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    :try_start_2
    iget-object v0, p0, Lzd7;->f:Lxd7;

    .line 15
    .line 16
    invoke-virtual {v0}, Lxd7;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    .line 18
    .line 19
    :catch_2
    iget-object p0, p0, Lzd7;->d:Ljava/lang/Process;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget v0, p0, Lzd7;->a:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lzd7;->b:Lr77;

    .line 7
    .line 8
    invoke-virtual {v0}, Lr77;->shutdownNow()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lzd7;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final declared-synchronized execTask(Lpd7;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lzd7;->a:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lzd7;->f:Lxd7;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->a(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lzd7;->k:Lxd7;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v0, p0, Lzd7;->e:Lyd7;

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lzd7;->e:Lyd7;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    iget-object v0, p0, Lzd7;->e:Lyd7;

    .line 29
    .line 30
    iget-object v1, p0, Lzd7;->f:Lxd7;

    .line 31
    .line 32
    iget-object v2, p0, Lzd7;->k:Lxd7;

    .line 33
    .line 34
    invoke-interface {p1, v0, v1, v2}, Lpd7;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lzd7;->a()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lee7;

    .line 45
    .line 46
    invoke-direct {p1}, Lee7;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_0
    new-instance p1, Lee7;

    .line 51
    .line 52
    invoke-direct {p1}, Lee7;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    throw p1
.end method

.method public final getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lzd7;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final isAlive()Z
    .locals 2

    .line 1
    iget v0, p0, Lzd7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object p0, p0, Lzd7;->d:Ljava/lang/Process;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :catch_0
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final newJob()Lod7;
    .locals 1

    .line 1
    new-instance v0, Lrh4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrh4;-><init>(Lzd7;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final waitAndClose(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 1
    iget v0, p0, Lzd7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lzd7;->b:Lr77;

    .line 8
    .line 9
    invoke-virtual {v0}, Lr77;->shutdown()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lr77;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lzd7;->a()V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lzd7;->a:I

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method
