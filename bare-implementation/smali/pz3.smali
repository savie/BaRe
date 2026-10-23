.class public final Lpz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Lcom/google/android/gms/common/api/Status;

.field public static final r:Ljava/lang/Object;

.field public static s:Lpz3;


# instance fields
.field public a:J

.field public b:Z

.field public c:Lsz7;

.field public d:Li29;

.field public final e:Landroid/content/Context;

.field public final f:Llz3;

.field public final g:Lh80;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public k:La19;

.field public final l:Lp50;

.field public final m:Lp50;

.field public final n:Ln29;

.field public volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lpz3;->p:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lpz3;->q:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lpz3;->r:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, Llz3;->d:Llz3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lpz3;->a:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lpz3;->b:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lpz3;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lpz3;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lpz3;->k:La19;

    .line 40
    .line 41
    new-instance v2, Lp50;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lp50;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lpz3;->l:Lp50;

    .line 47
    .line 48
    new-instance v2, Lp50;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Lp50;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lpz3;->m:Lp50;

    .line 54
    .line 55
    iput-boolean v3, p0, Lpz3;->o:Z

    .line 56
    .line 57
    iput-object p1, p0, Lpz3;->e:Landroid/content/Context;

    .line 58
    .line 59
    new-instance v2, Ln29;

    .line 60
    .line 61
    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lpz3;->n:Ln29;

    .line 68
    .line 69
    iput-object v0, p0, Lpz3;->f:Llz3;

    .line 70
    .line 71
    new-instance p2, Lh80;

    .line 72
    .line 73
    const/16 v0, 0x11

    .line 74
    .line 75
    invoke-direct {p2, v0}, Lh80;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Lpz3;->g:Lh80;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object p2, Lrs9;->s:Ljava/lang/Boolean;

    .line 85
    .line 86
    if-nez p2, :cond_0

    .line 87
    .line 88
    const-string p2, "android.hardware.type.automotive"

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sput-object p1, Lrs9;->s:Ljava/lang/Boolean;

    .line 99
    .line 100
    :cond_0
    sget-object p1, Lrs9;->s:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    iput-boolean v1, p0, Lpz3;->o:Z

    .line 109
    .line 110
    :cond_1
    const/4 p0, 0x6

    .line 111
    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lpz3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lpz3;->s:Lpz3;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lpz3;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public static e(Ldf;Lhs1;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Ldf;->b:Loe;

    .line 4
    .line 5
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "API: "

    .line 14
    .line 15
    const-string v3, " is not available on this device. Connection failed with: "

    .line 16
    .line 17
    invoke-static {v2, p0, v3, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/16 v1, 0x11

    .line 22
    .line 23
    iget-object v2, p1, Lhs1;->c:Landroid/app/PendingIntent;

    .line 24
    .line 25
    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lpz3;
    .locals 5

    .line 1
    sget-object v0, Lpz3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lpz3;->s:Lpz3;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Ltt9;->g:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Ltt9;->i:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    monitor-exit v1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    .line 20
    .line 21
    const-string v3, "GoogleApiHandler"

    .line 22
    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Ltt9;->i:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    sget-object v2, Ltt9;->i:Landroid/os/HandlerThread;

    .line 34
    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lpz3;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v3, Llz3;->c:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lpz3;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lpz3;->s:Lpz3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    throw p0

    .line 58
    :cond_1
    :goto_2
    sget-object p0, Lpz3;->s:Lpz3;

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object p0

    .line 62
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    throw p0
.end method


# virtual methods
.method public final b(La19;)V
    .locals 2

    .line 1
    sget-object v0, Lpz3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lpz3;->k:La19;

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lpz3;->k:La19;

    .line 9
    .line 10
    iget-object v1, p0, Lpz3;->l:Lp50;

    .line 11
    .line 12
    invoke-virtual {v1}, Lp50;->clear()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lpz3;->l:Lp50;

    .line 19
    .line 20
    iget-object p1, p1, La19;->e:Lp50;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lp50;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpz3;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljq6;->i()Ljq6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lkq6;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, v0, Lkq6;->b:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-object p0, p0, Lpz3;->g:Lh80;

    .line 21
    .line 22
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    const v0, 0xc1fa340

    .line 27
    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eq p0, v1, :cond_3

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final d(Lhs1;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lpz3;->f:Llz3;

    .line 2
    .line 3
    iget-object p0, p0, Lpz3;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Ljd4;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Ljd4;->a:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sget-object v5, Ljd4;->b:Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    if-eq v3, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v1

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_5

    .line 35
    :cond_1
    :goto_0
    :try_start_1
    sput-object v4, Ljd4;->b:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    sput-object v5, Ljd4;->b:Ljava/lang/Boolean;

    .line 50
    .line 51
    sput-object v2, Ljd4;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    monitor-exit v1

    .line 54
    move v2, v3

    .line 55
    :goto_1
    const/4 v1, 0x0

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_2
    iget v2, p1, Lhs1;->b:I

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget-object v3, p1, Lhs1;->c:Landroid/app/PendingIntent;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {v0, v2, p0, v4}, Lmz3;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const/high16 v3, 0xc000000

    .line 76
    .line 77
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :goto_2
    move-object v3, v4

    .line 82
    :goto_3
    if-eqz v3, :cond_5

    .line 83
    .line 84
    iget p1, p1, Lhs1;->b:I

    .line 85
    .line 86
    sget v2, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 87
    .line 88
    const-class v2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 89
    .line 90
    new-instance v4, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "pending_intent"

    .line 96
    .line 97
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string v2, "failing_client_id"

    .line 101
    .line 102
    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string p2, "notify_manager"

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-virtual {v4, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    sget p2, Ll29;->a:I

    .line 112
    .line 113
    const/high16 v3, 0x8000000

    .line 114
    .line 115
    or-int/2addr p2, v3

    .line 116
    invoke-static {p0, v1, v4, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {v0, p0, p1, p2}, Llz3;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 121
    .line 122
    .line 123
    return v2

    .line 124
    :cond_5
    :goto_4
    return v1

    .line 125
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p0
.end method

.method public final f(Lkz3;)Lg19;
    .locals 3

    .line 1
    iget-object v0, p1, Lkz3;->e:Ldf;

    .line 2
    .line 3
    iget-object v1, p0, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lg19;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lg19;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lg19;-><init>(Lpz3;Lkz3;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v2, Lg19;->b:Lne;

    .line 22
    .line 23
    invoke-interface {p1}, Lne;->j()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lpz3;->m:Lp50;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lp50;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lg19;->m()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final h(Lhs1;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lpz3;->d(Lhs1;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object p0, p0, Lpz3;->n:Ln29;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lly8;->d:Ly53;

    .line 6
    .line 7
    iget v3, v1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/16 v4, 0x13

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    sget-object v10, Ltz7;->a:Ltz7;

    .line 13
    .line 14
    const-wide/32 v6, 0x493e0

    .line 15
    .line 16
    .line 17
    const-string v8, "GoogleApiManager"

    .line 18
    .line 19
    const/16 v12, 0x11

    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    iget-object v14, v0, Lpz3;->n:Ln29;

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    iget-object v11, v0, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Unknown message id: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v13

    .line 48
    :pswitch_0
    iput-boolean v13, v0, Lpz3;->b:Z

    .line 49
    .line 50
    return v9

    .line 51
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lo19;

    .line 54
    .line 55
    iget-wide v6, v1, Lo19;->c:J

    .line 56
    .line 57
    iget-object v3, v1, Lo19;->a:Ltf5;

    .line 58
    .line 59
    iget v8, v1, Lo19;->b:I

    .line 60
    .line 61
    const-wide/16 v16, 0x0

    .line 62
    .line 63
    cmp-long v6, v6, v16

    .line 64
    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    new-instance v1, Lsz7;

    .line 68
    .line 69
    filled-new-array {v3}, [Ltf5;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v1, v8, v3}, Lsz7;-><init>(ILjava/util/List;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lpz3;->d:Li29;

    .line 81
    .line 82
    if-nez v3, :cond_0

    .line 83
    .line 84
    new-instance v6, Li29;

    .line 85
    .line 86
    sget-object v11, Ljz3;->c:Ljz3;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    iget-object v7, v0, Lpz3;->e:Landroid/content/Context;

    .line 90
    .line 91
    move v3, v9

    .line 92
    sget-object v9, Li29;->k:Loe;

    .line 93
    .line 94
    invoke-direct/range {v6 .. v11}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, v0, Lpz3;->d:Li29;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v3, v9

    .line 101
    :goto_0
    iget-object v0, v0, Lpz3;->d:Li29;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lr19;->a()Lby7;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    filled-new-array {v2}, [Ly53;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v2, v6, Lby7;->c:[Ly53;

    .line 115
    .line 116
    iput-boolean v13, v6, Lby7;->b:Z

    .line 117
    .line 118
    new-instance v2, Lnh;

    .line 119
    .line 120
    invoke-direct {v2, v1, v4}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    iput-object v2, v6, Lby7;->a:Lyi6;

    .line 124
    .line 125
    invoke-virtual {v6}, Lby7;->a()Lr19;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v5, v1}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 130
    .line 131
    .line 132
    return v3

    .line 133
    :cond_1
    move v6, v9

    .line 134
    iget-object v7, v0, Lpz3;->c:Lsz7;

    .line 135
    .line 136
    if-eqz v7, :cond_4

    .line 137
    .line 138
    iget-object v9, v7, Lsz7;->b:Ljava/util/List;

    .line 139
    .line 140
    iget v7, v7, Lsz7;->a:I

    .line 141
    .line 142
    if-ne v7, v8, :cond_5

    .line 143
    .line 144
    if-eqz v9, :cond_2

    .line 145
    .line 146
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    iget v9, v1, Lo19;->d:I

    .line 151
    .line 152
    if-lt v7, v9, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    iget-object v2, v0, Lpz3;->c:Lsz7;

    .line 156
    .line 157
    iget-object v4, v2, Lsz7;->b:Ljava/util/List;

    .line 158
    .line 159
    if-nez v4, :cond_3

    .line 160
    .line 161
    new-instance v4, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v4, v2, Lsz7;->b:Ljava/util/List;

    .line 167
    .line 168
    :cond_3
    iget-object v2, v2, Lsz7;->b:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_4
    move v12, v8

    .line 174
    goto :goto_6

    .line 175
    :cond_5
    :goto_1
    invoke-virtual {v14, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    .line 177
    .line 178
    iget-object v7, v0, Lpz3;->c:Lsz7;

    .line 179
    .line 180
    if-eqz v7, :cond_4

    .line 181
    .line 182
    iget v9, v7, Lsz7;->a:I

    .line 183
    .line 184
    if-gtz v9, :cond_7

    .line 185
    .line 186
    invoke-virtual {v0}, Lpz3;->c()Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_6

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    move v12, v8

    .line 194
    :goto_2
    const/4 v2, 0x0

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    :goto_3
    iget-object v9, v0, Lpz3;->d:Li29;

    .line 197
    .line 198
    if-nez v9, :cond_8

    .line 199
    .line 200
    move v9, v6

    .line 201
    new-instance v6, Li29;

    .line 202
    .line 203
    sget-object v11, Ljz3;->c:Ljz3;

    .line 204
    .line 205
    move/from16 v16, v8

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    move-object/from16 v17, v7

    .line 209
    .line 210
    iget-object v7, v0, Lpz3;->e:Landroid/content/Context;

    .line 211
    .line 212
    move/from16 v18, v9

    .line 213
    .line 214
    sget-object v9, Li29;->k:Loe;

    .line 215
    .line 216
    move/from16 v12, v16

    .line 217
    .line 218
    move-object/from16 v15, v17

    .line 219
    .line 220
    invoke-direct/range {v6 .. v11}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 221
    .line 222
    .line 223
    iput-object v6, v0, Lpz3;->d:Li29;

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_8
    move-object v15, v7

    .line 227
    move v12, v8

    .line 228
    :goto_4
    iget-object v6, v0, Lpz3;->d:Li29;

    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lr19;->a()Lby7;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    filled-new-array {v2}, [Ly53;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iput-object v2, v7, Lby7;->c:[Ly53;

    .line 242
    .line 243
    iput-boolean v13, v7, Lby7;->b:Z

    .line 244
    .line 245
    new-instance v2, Lnh;

    .line 246
    .line 247
    invoke-direct {v2, v15, v4}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 248
    .line 249
    .line 250
    iput-object v2, v7, Lby7;->a:Lyi6;

    .line 251
    .line 252
    invoke-virtual {v7}, Lby7;->a()Lr19;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v6, v5, v2}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :goto_5
    iput-object v2, v0, Lpz3;->c:Lsz7;

    .line 261
    .line 262
    :goto_6
    iget-object v2, v0, Lpz3;->c:Lsz7;

    .line 263
    .line 264
    if-nez v2, :cond_9

    .line 265
    .line 266
    new-instance v2, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    new-instance v3, Lsz7;

    .line 275
    .line 276
    invoke-direct {v3, v12, v2}, Lsz7;-><init>(ILjava/util/List;)V

    .line 277
    .line 278
    .line 279
    iput-object v3, v0, Lpz3;->c:Lsz7;

    .line 280
    .line 281
    const/16 v0, 0x11

    .line 282
    .line 283
    invoke-virtual {v14, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-wide v1, v1, Lo19;->c:J

    .line 288
    .line 289
    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    .line 291
    .line 292
    const/4 v3, 0x1

    .line 293
    return v3

    .line 294
    :cond_9
    const/4 v3, 0x1

    .line 295
    goto/16 :goto_16

    .line 296
    .line 297
    :pswitch_2
    move v3, v9

    .line 298
    iget-object v1, v0, Lpz3;->c:Lsz7;

    .line 299
    .line 300
    if-eqz v1, :cond_22

    .line 301
    .line 302
    iget v6, v1, Lsz7;->a:I

    .line 303
    .line 304
    if-gtz v6, :cond_b

    .line 305
    .line 306
    invoke-virtual {v0}, Lpz3;->c()Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_a

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_a
    :goto_7
    const/4 v2, 0x0

    .line 314
    goto :goto_9

    .line 315
    :cond_b
    :goto_8
    iget-object v6, v0, Lpz3;->d:Li29;

    .line 316
    .line 317
    if-nez v6, :cond_c

    .line 318
    .line 319
    new-instance v6, Li29;

    .line 320
    .line 321
    sget-object v11, Ljz3;->c:Ljz3;

    .line 322
    .line 323
    const/4 v8, 0x0

    .line 324
    iget-object v7, v0, Lpz3;->e:Landroid/content/Context;

    .line 325
    .line 326
    sget-object v9, Li29;->k:Loe;

    .line 327
    .line 328
    invoke-direct/range {v6 .. v11}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 329
    .line 330
    .line 331
    iput-object v6, v0, Lpz3;->d:Li29;

    .line 332
    .line 333
    :cond_c
    iget-object v6, v0, Lpz3;->d:Li29;

    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-static {}, Lr19;->a()Lby7;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    filled-new-array {v2}, [Ly53;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iput-object v2, v7, Lby7;->c:[Ly53;

    .line 347
    .line 348
    iput-boolean v13, v7, Lby7;->b:Z

    .line 349
    .line 350
    new-instance v2, Lnh;

    .line 351
    .line 352
    invoke-direct {v2, v1, v4}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 353
    .line 354
    .line 355
    iput-object v2, v7, Lby7;->a:Lyi6;

    .line 356
    .line 357
    invoke-virtual {v7}, Lby7;->a()Lr19;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v6, v5, v1}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 362
    .line 363
    .line 364
    goto :goto_7

    .line 365
    :goto_9
    iput-object v2, v0, Lpz3;->c:Lsz7;

    .line 366
    .line 367
    return v3

    .line 368
    :pswitch_3
    move v3, v9

    .line 369
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Lh19;

    .line 372
    .line 373
    iget-object v1, v0, Lh19;->a:Ldf;

    .line 374
    .line 375
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_22

    .line 380
    .line 381
    iget-object v1, v0, Lh19;->a:Ldf;

    .line 382
    .line 383
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Lg19;

    .line 388
    .line 389
    iget-object v2, v1, Lg19;->q:Ljava/util/ArrayList;

    .line 390
    .line 391
    iget-object v4, v1, Lg19;->x:Lpz3;

    .line 392
    .line 393
    iget-object v4, v4, Lpz3;->n:Ln29;

    .line 394
    .line 395
    iget-object v5, v1, Lg19;->a:Ljava/util/LinkedList;

    .line 396
    .line 397
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_22

    .line 402
    .line 403
    const/16 v2, 0xf

    .line 404
    .line 405
    invoke-virtual {v4, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    const/16 v2, 0x10

    .line 409
    .line 410
    invoke-virtual {v4, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v0, Lh19;->b:Ly53;

    .line 414
    .line 415
    new-instance v2, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    :cond_d
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    if-eqz v6, :cond_f

    .line 433
    .line 434
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    check-cast v6, Le29;

    .line 439
    .line 440
    instance-of v7, v6, Lk19;

    .line 441
    .line 442
    if-eqz v7, :cond_d

    .line 443
    .line 444
    move-object v7, v6

    .line 445
    check-cast v7, Lk19;

    .line 446
    .line 447
    invoke-virtual {v7, v1}, Lk19;->g(Lg19;)[Ly53;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    if-eqz v7, :cond_d

    .line 452
    .line 453
    array-length v8, v7

    .line 454
    move v9, v13

    .line 455
    :goto_b
    if-ge v9, v8, :cond_d

    .line 456
    .line 457
    aget-object v10, v7, v9

    .line 458
    .line 459
    invoke-static {v10, v0}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v10

    .line 463
    if-eqz v10, :cond_e

    .line 464
    .line 465
    if-ltz v9, :cond_d

    .line 466
    .line 467
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    :goto_c
    if-ge v13, v1, :cond_22

    .line 479
    .line 480
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Le29;

    .line 485
    .line 486
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    new-instance v6, Lgf8;

    .line 490
    .line 491
    invoke-direct {v6, v0}, Lgf8;-><init>(Ly53;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4, v6}, Le29;->b(Ljava/lang/Exception;)V

    .line 495
    .line 496
    .line 497
    add-int/lit8 v13, v13, 0x1

    .line 498
    .line 499
    goto :goto_c

    .line 500
    :pswitch_4
    move v3, v9

    .line 501
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v0, Lh19;

    .line 504
    .line 505
    iget-object v1, v0, Lh19;->a:Ldf;

    .line 506
    .line 507
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_22

    .line 512
    .line 513
    iget-object v1, v0, Lh19;->a:Ldf;

    .line 514
    .line 515
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Lg19;

    .line 520
    .line 521
    iget-object v2, v1, Lg19;->q:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-nez v0, :cond_10

    .line 528
    .line 529
    goto/16 :goto_16

    .line 530
    .line 531
    :cond_10
    iget-boolean v0, v1, Lg19;->p:Z

    .line 532
    .line 533
    if-nez v0, :cond_22

    .line 534
    .line 535
    iget-object v0, v1, Lg19;->b:Lne;

    .line 536
    .line 537
    invoke-interface {v0}, Lne;->isConnected()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_11

    .line 542
    .line 543
    invoke-virtual {v1}, Lg19;->m()V

    .line 544
    .line 545
    .line 546
    return v3

    .line 547
    :cond_11
    invoke-virtual {v1}, Lg19;->e()V

    .line 548
    .line 549
    .line 550
    return v3

    .line 551
    :pswitch_5
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    .line 553
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    throw v0

    .line 558
    :pswitch_6
    move v3, v9

    .line 559
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    .line 561
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_22

    .line 566
    .line 567
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    .line 569
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Lg19;

    .line 574
    .line 575
    iget-object v1, v0, Lg19;->x:Lpz3;

    .line 576
    .line 577
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 578
    .line 579
    invoke-static {v1}, Lly8;->d(Landroid/os/Handler;)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lg19;->b:Lne;

    .line 583
    .line 584
    invoke-interface {v1}, Lne;->isConnected()Z

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    if-eqz v2, :cond_14

    .line 589
    .line 590
    iget-object v2, v0, Lg19;->f:Ljava/util/HashMap;

    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_14

    .line 597
    .line 598
    iget-object v2, v0, Lg19;->d:Lw00;

    .line 599
    .line 600
    iget-object v4, v2, Lw00;->b:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v4, Ljava/util/Map;

    .line 603
    .line 604
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    if-eqz v4, :cond_13

    .line 609
    .line 610
    iget-object v2, v2, Lw00;->c:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v2, Ljava/util/Map;

    .line 613
    .line 614
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    if-nez v2, :cond_12

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_12
    const-string v0, "Timing out service connection."

    .line 622
    .line 623
    invoke-interface {v1, v0}, Lne;->b(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    return v3

    .line 627
    :cond_13
    :goto_d
    invoke-virtual {v0}, Lg19;->j()V

    .line 628
    .line 629
    .line 630
    :cond_14
    return v3

    .line 631
    :pswitch_7
    move v3, v9

    .line 632
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    .line 634
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_22

    .line 639
    .line 640
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 641
    .line 642
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    check-cast v0, Lg19;

    .line 647
    .line 648
    iget-object v1, v0, Lg19;->x:Lpz3;

    .line 649
    .line 650
    iget-object v2, v1, Lpz3;->n:Ln29;

    .line 651
    .line 652
    invoke-static {v2}, Lly8;->d(Landroid/os/Handler;)V

    .line 653
    .line 654
    .line 655
    iget-boolean v2, v0, Lg19;->p:Z

    .line 656
    .line 657
    if-eqz v2, :cond_22

    .line 658
    .line 659
    iget-object v4, v0, Lg19;->c:Ldf;

    .line 660
    .line 661
    iget-object v5, v0, Lg19;->x:Lpz3;

    .line 662
    .line 663
    iget-object v5, v5, Lpz3;->n:Ln29;

    .line 664
    .line 665
    if-eqz v2, :cond_15

    .line 666
    .line 667
    const/16 v2, 0xb

    .line 668
    .line 669
    invoke-virtual {v5, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    const/16 v2, 0x9

    .line 673
    .line 674
    invoke-virtual {v5, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    iput-boolean v13, v0, Lg19;->p:Z

    .line 678
    .line 679
    :cond_15
    iget-object v2, v1, Lpz3;->f:Llz3;

    .line 680
    .line 681
    iget-object v1, v1, Lpz3;->e:Landroid/content/Context;

    .line 682
    .line 683
    sget v4, Lmz3;->a:I

    .line 684
    .line 685
    invoke-virtual {v2, v1, v4}, Lmz3;->c(Landroid/content/Context;I)I

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    const/16 v2, 0x12

    .line 690
    .line 691
    if-ne v1, v2, :cond_16

    .line 692
    .line 693
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 694
    .line 695
    const/16 v2, 0x15

    .line 696
    .line 697
    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    .line 698
    .line 699
    const/4 v5, 0x0

    .line 700
    invoke-direct {v1, v2, v4, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 701
    .line 702
    .line 703
    goto :goto_e

    .line 704
    :cond_16
    const/4 v5, 0x0

    .line 705
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 706
    .line 707
    const/16 v2, 0x16

    .line 708
    .line 709
    const-string v4, "API failed to connect while resuming due to an unknown error."

    .line 710
    .line 711
    invoke-direct {v1, v2, v4, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 712
    .line 713
    .line 714
    :goto_e
    invoke-virtual {v0, v1}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 715
    .line 716
    .line 717
    iget-object v0, v0, Lg19;->b:Lne;

    .line 718
    .line 719
    const-string v1, "Timing out connection while resuming."

    .line 720
    .line 721
    invoke-interface {v0, v1}, Lne;->b(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    return v3

    .line 725
    :pswitch_8
    move v3, v9

    .line 726
    iget-object v0, v0, Lpz3;->m:Lp50;

    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    new-instance v1, Lo50;

    .line 732
    .line 733
    invoke-direct {v1, v0}, Lo50;-><init>(Lp50;)V

    .line 734
    .line 735
    .line 736
    :cond_17
    :goto_f
    invoke-virtual {v1}, Lob4;->hasNext()Z

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    if-eqz v2, :cond_18

    .line 741
    .line 742
    invoke-virtual {v1}, Lob4;->next()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    check-cast v2, Ldf;

    .line 747
    .line 748
    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    check-cast v2, Lg19;

    .line 753
    .line 754
    if-eqz v2, :cond_17

    .line 755
    .line 756
    invoke-virtual {v2}, Lg19;->q()V

    .line 757
    .line 758
    .line 759
    goto :goto_f

    .line 760
    :cond_18
    invoke-virtual {v0}, Lp50;->clear()V

    .line 761
    .line 762
    .line 763
    return v3

    .line 764
    :pswitch_9
    move v3, v9

    .line 765
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 766
    .line 767
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    if-eqz v0, :cond_22

    .line 772
    .line 773
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 774
    .line 775
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    check-cast v0, Lg19;

    .line 780
    .line 781
    iget-object v1, v0, Lg19;->x:Lpz3;

    .line 782
    .line 783
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 784
    .line 785
    invoke-static {v1}, Lly8;->d(Landroid/os/Handler;)V

    .line 786
    .line 787
    .line 788
    iget-boolean v1, v0, Lg19;->p:Z

    .line 789
    .line 790
    if-eqz v1, :cond_22

    .line 791
    .line 792
    invoke-virtual {v0}, Lg19;->m()V

    .line 793
    .line 794
    .line 795
    return v3

    .line 796
    :pswitch_a
    move v3, v9

    .line 797
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v1, Lkz3;

    .line 800
    .line 801
    invoke-virtual {v0, v1}, Lpz3;->f(Lkz3;)Lg19;

    .line 802
    .line 803
    .line 804
    return v3

    .line 805
    :pswitch_b
    move v3, v9

    .line 806
    iget-object v1, v0, Lpz3;->e:Landroid/content/Context;

    .line 807
    .line 808
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    instance-of v2, v2, Landroid/app/Application;

    .line 813
    .line 814
    if-eqz v2, :cond_22

    .line 815
    .line 816
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    check-cast v1, Landroid/app/Application;

    .line 821
    .line 822
    invoke-static {v1}, Lck0;->b(Landroid/app/Application;)V

    .line 823
    .line 824
    .line 825
    sget-object v1, Lck0;->e:Lck0;

    .line 826
    .line 827
    new-instance v2, Le19;

    .line 828
    .line 829
    invoke-direct {v2, v0}, Le19;-><init>(Lpz3;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v2}, Lck0;->a(Lbk0;)V

    .line 833
    .line 834
    .line 835
    iget-object v2, v1, Lck0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 836
    .line 837
    iget-object v1, v1, Lck0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 838
    .line 839
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    if-nez v4, :cond_1a

    .line 844
    .line 845
    invoke-static {}, Lcf;->s()Z

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    if-nez v4, :cond_19

    .line 850
    .line 851
    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 852
    .line 853
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 854
    .line 855
    .line 856
    invoke-static {v4}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    if-nez v1, :cond_1a

    .line 864
    .line 865
    iget v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 866
    .line 867
    const/16 v4, 0x64

    .line 868
    .line 869
    if-le v1, v4, :cond_1a

    .line 870
    .line 871
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 872
    .line 873
    .line 874
    goto :goto_10

    .line 875
    :cond_19
    move v9, v3

    .line 876
    goto :goto_11

    .line 877
    :cond_1a
    :goto_10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 878
    .line 879
    .line 880
    move-result v9

    .line 881
    :goto_11
    if-nez v9, :cond_22

    .line 882
    .line 883
    iput-wide v6, v0, Lpz3;->a:J

    .line 884
    .line 885
    return v3

    .line 886
    :pswitch_c
    move v3, v9

    .line 887
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 888
    .line 889
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v1, Lhs1;

    .line 892
    .line 893
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 902
    .line 903
    .line 904
    move-result v5

    .line 905
    if-eqz v5, :cond_1c

    .line 906
    .line 907
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    check-cast v5, Lg19;

    .line 912
    .line 913
    iget v6, v5, Lg19;->k:I

    .line 914
    .line 915
    if-ne v6, v2, :cond_1b

    .line 916
    .line 917
    goto :goto_12

    .line 918
    :cond_1c
    const/4 v5, 0x0

    .line 919
    :goto_12
    if-eqz v5, :cond_1e

    .line 920
    .line 921
    iget v2, v1, Lhs1;->b:I

    .line 922
    .line 923
    const/16 v4, 0xd

    .line 924
    .line 925
    if-ne v2, v4, :cond_1d

    .line 926
    .line 927
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    .line 928
    .line 929
    iget-object v0, v0, Lpz3;->f:Llz3;

    .line 930
    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    sget v0, Lu04;->e:I

    .line 935
    .line 936
    invoke-static {v2}, Lhs1;->q(I)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    iget-object v1, v1, Lhs1;->d:Ljava/lang/String;

    .line 941
    .line 942
    const-string v2, "Error resolution was canceled by the user, original error message: "

    .line 943
    .line 944
    const-string v6, ": "

    .line 945
    .line 946
    invoke-static {v2, v0, v6, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    const/16 v1, 0x11

    .line 951
    .line 952
    const/4 v2, 0x0

    .line 953
    invoke-direct {v4, v1, v0, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v5, v4}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 957
    .line 958
    .line 959
    return v3

    .line 960
    :cond_1d
    iget-object v0, v5, Lg19;->c:Ldf;

    .line 961
    .line 962
    invoke-static {v0, v1}, Lpz3;->e(Ldf;Lhs1;)Lcom/google/android/gms/common/api/Status;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-virtual {v5, v0}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 967
    .line 968
    .line 969
    return v3

    .line 970
    :cond_1e
    const-string v0, "Could not find API instance "

    .line 971
    .line 972
    const-string v1, " while trying to fail enqueued calls."

    .line 973
    .line 974
    invoke-static {v2, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    new-instance v1, Ljava/lang/Exception;

    .line 979
    .line 980
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-static {v8, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .line 985
    .line 986
    return v3

    .line 987
    :pswitch_d
    move v3, v9

    .line 988
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v1, Lp19;

    .line 991
    .line 992
    iget-object v2, v1, Lp19;->c:Lkz3;

    .line 993
    .line 994
    iget-object v4, v1, Lp19;->a:Le29;

    .line 995
    .line 996
    iget-object v2, v2, Lkz3;->e:Ldf;

    .line 997
    .line 998
    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    check-cast v2, Lg19;

    .line 1003
    .line 1004
    if-nez v2, :cond_1f

    .line 1005
    .line 1006
    iget-object v2, v1, Lp19;->c:Lkz3;

    .line 1007
    .line 1008
    invoke-virtual {v0, v2}, Lpz3;->f(Lkz3;)Lg19;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    :cond_1f
    iget-object v5, v2, Lg19;->b:Lne;

    .line 1013
    .line 1014
    invoke-interface {v5}, Lne;->j()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    if-eqz v5, :cond_20

    .line 1019
    .line 1020
    iget-object v0, v0, Lpz3;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    iget v1, v1, Lp19;->b:I

    .line 1027
    .line 1028
    if-eq v0, v1, :cond_20

    .line 1029
    .line 1030
    sget-object v0, Lpz3;->p:Lcom/google/android/gms/common/api/Status;

    .line 1031
    .line 1032
    invoke-virtual {v4, v0}, Le29;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v2}, Lg19;->q()V

    .line 1036
    .line 1037
    .line 1038
    return v3

    .line 1039
    :cond_20
    invoke-virtual {v2, v4}, Lg19;->n(Le29;)V

    .line 1040
    .line 1041
    .line 1042
    return v3

    .line 1043
    :pswitch_e
    move v3, v9

    .line 1044
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v1

    .line 1056
    if-eqz v1, :cond_22

    .line 1057
    .line 1058
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    check-cast v1, Lg19;

    .line 1063
    .line 1064
    iget-object v2, v1, Lg19;->x:Lpz3;

    .line 1065
    .line 1066
    iget-object v2, v2, Lpz3;->n:Ln29;

    .line 1067
    .line 1068
    invoke-static {v2}, Lly8;->d(Landroid/os/Handler;)V

    .line 1069
    .line 1070
    .line 1071
    const/4 v2, 0x0

    .line 1072
    iput-object v2, v1, Lg19;->r:Lhs1;

    .line 1073
    .line 1074
    invoke-virtual {v1}, Lg19;->m()V

    .line 1075
    .line 1076
    .line 1077
    goto :goto_13

    .line 1078
    :pswitch_f
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1079
    .line 1080
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    throw v0

    .line 1085
    :pswitch_10
    move v3, v9

    .line 1086
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1087
    .line 1088
    check-cast v1, Ljava/lang/Boolean;

    .line 1089
    .line 1090
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    if-eq v3, v1, :cond_21

    .line 1095
    .line 1096
    goto :goto_14

    .line 1097
    :cond_21
    const-wide/16 v6, 0x2710

    .line 1098
    .line 1099
    :goto_14
    iput-wide v6, v0, Lpz3;->a:J

    .line 1100
    .line 1101
    const/16 v1, 0xc

    .line 1102
    .line 1103
    invoke-virtual {v14, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    if-eqz v4, :cond_22

    .line 1119
    .line 1120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v4

    .line 1124
    check-cast v4, Ldf;

    .line 1125
    .line 1126
    invoke-virtual {v14, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v4

    .line 1130
    iget-wide v5, v0, Lpz3;->a:J

    .line 1131
    .line 1132
    invoke-virtual {v14, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1133
    .line 1134
    .line 1135
    goto :goto_15

    .line 1136
    :cond_22
    :goto_16
    return v3

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
