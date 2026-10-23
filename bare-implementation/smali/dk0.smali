.class public final Ldk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lix0;

.field public final b:Lny2;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lny2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldk0;->b:Lny2;

    .line 5
    .line 6
    new-instance p1, Lix0;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1}, Lix0;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ldk0;->a:Lix0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldk0;->a:Lix0;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v2, v1, Lix0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lwy5;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v2

    .line 18
    goto :goto_4

    .line 19
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lix0;->g()Lwy5;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    monitor-exit v1

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    :try_start_3
    iget-object v1, p0, Ldk0;->a:Lix0;

    .line 28
    .line 29
    invoke-virtual {v1}, Lix0;->g()Lwy5;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iput-boolean v0, p0, Ldk0;->c:Z

    .line 36
    .line 37
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    iput-boolean v0, p0, Ldk0;->c:Z

    .line 39
    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :try_start_4
    monitor-exit p0

    .line 44
    goto :goto_3

    .line 45
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :try_start_5
    throw v1

    .line 47
    :catchall_2
    move-exception v1

    .line 48
    goto :goto_6

    .line 49
    :catch_0
    move-exception v1

    .line 50
    goto :goto_5

    .line 51
    :cond_2
    :goto_3
    iget-object v1, p0, Ldk0;->b:Lny2;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lny2;->c(Lwy5;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 59
    :goto_5
    :try_start_8
    iget-object v2, p0, Ldk0;->b:Lny2;

    .line 60
    .line 61
    iget-object v2, v2, Lny2;->p:Lk15;

    .line 62
    .line 63
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v5, " was interruppted"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v2, v3, v4, v1}, Lk15;->u(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 91
    .line 92
    .line 93
    iput-boolean v0, p0, Ldk0;->c:Z

    .line 94
    .line 95
    return-void

    .line 96
    :goto_6
    iput-boolean v0, p0, Ldk0;->c:Z

    .line 97
    .line 98
    throw v1
.end method
