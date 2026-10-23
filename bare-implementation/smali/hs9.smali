.class public final Lhs9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lur9;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Ltt9;


# direct methods
.method public constructor <init>(Ltt9;Lur9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhs9;->g:Ltt9;

    .line 5
    .line 6
    iput-object p2, p0, Lhs9;->e:Lur9;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lhs9;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    iput p1, p0, Lhs9;->b:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lhs1;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lhs9;->g:Ltt9;

    .line 2
    .line 3
    iget-object v0, v0, Ltt9;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lhs9;->e:Lur9;

    .line 6
    .line 7
    invoke-static {v0, v1}, La69;->a(Landroid/content/Context;Lur9;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v5
    :try_end_0
    .catch Lj59; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lhs9;->b:I

    .line 13
    .line 14
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    if-lt v0, v2, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lwa9;->a(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhs9;->g:Ltt9;

    .line 41
    .line 42
    iget-object v2, v0, Ltt9;->d:Lks1;

    .line 43
    .line 44
    iget-object v3, v0, Ltt9;->b:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v8, p0, Lhs9;->e:Lur9;

    .line 47
    .line 48
    move-object v6, p0

    .line 49
    move-object v4, p1

    .line 50
    move-object v7, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Lks1;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lhs9;Ljava/util/concurrent/Executor;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iput-boolean p0, v6, Lhs9;->c:Z

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    iget-object p0, v0, Ltt9;->c:Ljj9;

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p1, v0, Ltt9;->c:Ljj9;

    .line 67
    .line 68
    iget-wide v2, v0, Ltt9;->f:J

    .line 69
    .line 70
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    .line 72
    .line 73
    sget-object p0, Lhs1;->f:Lhs1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object p0, v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 p0, 0x2

    .line 83
    :try_start_2
    iput p0, v6, Lhs9;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    :try_start_3
    iget-object p0, v0, Ltt9;->d:Lks1;

    .line 86
    .line 87
    iget-object p1, v0, Ltt9;->b:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v6}, Lks1;->a(Landroid/content/Context;Lhs9;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    :catch_0
    :try_start_4
    new-instance p0, Lhs1;

    .line 93
    .line 94
    const/16 p1, 0x10

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p2}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    iget-object p0, p0, Lj59;->a:Lhs1;

    .line 111
    .line 112
    :goto_1
    return-object p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lhs9;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhs9;->g:Ltt9;

    .line 2
    .line 3
    iget-object v1, v0, Ltt9;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Ltt9;->c:Ljj9;

    .line 7
    .line 8
    iget-object v2, p0, Lhs9;->e:Lur9;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lhs9;->d:Landroid/os/IBinder;

    .line 15
    .line 16
    iput-object p1, p0, Lhs9;->f:Landroid/content/ComponentName;

    .line 17
    .line 18
    iget-object v0, p0, Lhs9;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/content/ServiceConnection;

    .line 39
    .line 40
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iput v3, p0, Lhs9;->b:I

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhs9;->g:Ltt9;

    .line 2
    .line 3
    iget-object v1, v0, Ltt9;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Ltt9;->c:Ljj9;

    .line 7
    .line 8
    iget-object v2, p0, Lhs9;->e:Lur9;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lhs9;->d:Landroid/os/IBinder;

    .line 16
    .line 17
    iput-object p1, p0, Lhs9;->f:Landroid/content/ComponentName;

    .line 18
    .line 19
    iget-object v0, p0, Lhs9;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/content/ServiceConnection;

    .line 40
    .line 41
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lhs9;->b:I

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method
