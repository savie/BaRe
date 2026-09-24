.class public final Lbq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static g:Lbq6;


# instance fields
.field public a:Lvp6;

.field public b:Lvp6;

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/util/ArrayMap;

.field public final f:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lbq6;->c:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lbq6;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lbq6;->e:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lbq6;->f:Landroid/util/ArrayMap;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Landroid/content/ServiceConnection;Lyp6;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static d(Landroid/content/Intent;)Lyp6;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {}, Lji8;->m()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Lyp6;

    .line 27
    .line 28
    const-string v2, "com.topjohnwu.superuser.DAEMON_MODE"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-direct {v1, v0, p0}, Lyp6;-><init>(Landroid/content/ComponentName;Z)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    const-string p0, "RootServices outside of the app are not supported"

    .line 39
    .line 40
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    const-string p0, "The intent does not have a component set"

    .line 45
    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method


# virtual methods
.method public final b(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lyp6;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    invoke-static {p1}, Lbq6;->d(Landroid/content/Intent;)Lyp6;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lbq6;->e:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lwp6;

    .line 27
    .line 28
    iget-object v4, p0, Lbq6;->f:Landroid/util/ArrayMap;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    new-instance p0, Lup6;

    .line 33
    .line 34
    invoke-direct {p0, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget p0, v3, Lwp6;->d:I

    .line 41
    .line 42
    add-int/lit8 p0, p0, 0x1

    .line 43
    .line 44
    iput p0, v3, Lwp6;->d:I

    .line 45
    .line 46
    iget-object p0, v3, Lwp6;->b:Landroid/os/IBinder;

    .line 47
    .line 48
    new-instance p1, Lsp6;

    .line 49
    .line 50
    invoke-direct {p1, p3, v0, p0}, Lsp6;-><init>(Landroid/content/ServiceConnection;Lyp6;Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_0
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lbq6;->b:Lvp6;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lbq6;->a:Lvp6;

    .line 71
    .line 72
    :goto_0
    if-nez p0, :cond_2

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    :try_start_0
    iget-object v3, p0, Lvp6;->b:Lb94;

    .line 76
    .line 77
    invoke-interface {v3, p1}, Lb94;->e(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    new-instance v3, Lwp6;

    .line 84
    .line 85
    invoke-direct {v3, v0, p1, p0}, Lwp6;-><init>(Lyp6;Landroid/os/IBinder;Lvp6;)V

    .line 86
    .line 87
    .line 88
    new-instance v5, Lup6;

    .line 89
    .line 90
    invoke-direct {v5, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    new-instance v1, Ltp6;

    .line 100
    .line 101
    invoke-direct {v1, p3, v0, p1}, Ltp6;-><init>(Landroid/content/ServiceConnection;Lyp6;Landroid/os/IBinder;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v1, 0x1c

    .line 113
    .line 114
    if-lt p1, v1, :cond_4

    .line 115
    .line 116
    new-instance p1, Lb32;

    .line 117
    .line 118
    const/4 v1, 0x3

    .line 119
    invoke-direct {p1, v1, p3, v0}, Lb32;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    :cond_4
    return-object v2

    .line 126
    :goto_1
    const-string p2, "IPC"

    .line 127
    .line 128
    invoke-static {p2, p1}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ldr0;->binderDied()V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_5
    const-string p0, "This method can only be called on the main thread"

    .line 136
    .line 137
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v2
.end method

.method public final c(Lyp6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbq6;->e:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lwp6;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lbq6;->f:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lup6;

    .line 38
    .line 39
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lwp6;

    .line 42
    .line 43
    if-eq p1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/content/ServiceConnection;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lup6;->a(Landroid/content/ServiceConnection;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final e(Landroid/content/ComponentName;Ljava/lang/String;)Lkj0;
    .locals 6

    .line 1
    invoke-static {}, Lji8;->m()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbq6;->c:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v1, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lzp6;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lzp6;-><init>(Lbq6;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x4

    .line 25
    const-string v3, "android.permission.BROADCAST_PACKAGE_REMOVED"

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lbq6;->c:I

    .line 31
    .line 32
    or-int/lit8 v0, v0, 0x4

    .line 33
    .line 34
    iput v0, p0, Lbq6;->c:I

    .line 35
    .line 36
    :cond_0
    new-instance p0, Lkj0;

    .line 37
    .line 38
    invoke-direct {p0, p2, p1}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    new-instance v0, Lyp6;

    .line 8
    .line 9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/content/ComponentName;

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    invoke-direct {v0, v3, v2}, Lyp6;-><init>(Landroid/content/ComponentName;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lbq6;->c(Lyp6;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return v1
.end method
