.class public final Lny2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile q:Lny2;

.field public static final r:Lpy2;

.field public static final s:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lky2;

.field public final e:Lq34;

.field public final f:Lt24;

.field public final g:Ldk0;

.field public final h:Lvb;

.field public final i:Lvr7;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Lk15;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpy2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lpy2;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    iput-object v1, v0, Lpy2;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    sput-object v0, Lny2;->r:Lpy2;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lny2;->s:Ljava/util/HashMap;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lky2;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lny2;->d:Lky2;

    .line 10
    .line 11
    sget-object v0, Lny2;->r:Lpy2;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->c:Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->a:Lsl4;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Llk;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    iput-object v2, p0, Lny2;->p:Lk15;

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lny2;->a:Ljava/util/HashMap;

    .line 36
    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lny2;->b:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->b:Lq34;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v1, v2

    .line 58
    :goto_1
    iput-object v1, p0, Lny2;->e:Lq34;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v2, Lt24;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v2, p0, v1}, Lt24;-><init>(Lny2;Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iput-object v2, p0, Lny2;->f:Lt24;

    .line 72
    .line 73
    new-instance v1, Ldk0;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Ldk0;-><init>(Lny2;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lny2;->g:Ldk0;

    .line 79
    .line 80
    new-instance v1, Lvb;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lvb;-><init>(Lny2;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lny2;->h:Lvb;

    .line 86
    .line 87
    new-instance v1, Lvr7;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lny2;->i:Lvr7;

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lny2;->k:Z

    .line 96
    .line 97
    iput-boolean v1, p0, Lny2;->l:Z

    .line 98
    .line 99
    iput-boolean v1, p0, Lny2;->m:Z

    .line 100
    .line 101
    iput-boolean v1, p0, Lny2;->n:Z

    .line 102
    .line 103
    iput-boolean v1, p0, Lny2;->o:Z

    .line 104
    .line 105
    iget-object v0, v0, Lpy2;->a:Ljava/util/concurrent/ExecutorService;

    .line 106
    .line 107
    iput-object v0, p0, Lny2;->j:Ljava/util/concurrent/ExecutorService;

    .line 108
    .line 109
    return-void
.end method

.method public static a(Ljava/util/ArrayList;[Ljava/lang/Class;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p0, v2}, Lny2;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public static b()Lny2;
    .locals 2

    .line 1
    sget-object v0, Lny2;->q:Lny2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lny2;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lny2;->q:Lny2;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lny2;

    .line 13
    .line 14
    invoke-direct {v0}, Lny2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lny2;->q:Lny2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c(Lwy5;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lwy5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lwy5;->b:Lwr7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p1, Lwy5;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v2, p1, Lwy5;->b:Lwr7;

    .line 9
    .line 10
    iput-object v2, p1, Lwy5;->c:Lwy5;

    .line 11
    .line 12
    sget-object v2, Lwy5;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x2710

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-boolean p1, v1, Lwr7;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Lny2;->d(Lwr7;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final d(Lwr7;Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p1, Lwr7;->b:Ltr7;

    .line 2
    .line 3
    iget-object v0, v0, Ltr7;->a:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v1, p1, Lwr7;->a:Ljava/lang/Object;

    .line 6
    .line 7
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    const-string p1, "Unexpected exception"

    .line 19
    .line 20
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, p2, Lsr7;

    .line 29
    .line 30
    iget-object v2, p0, Lny2;->p:Lk15;

    .line 31
    .line 32
    iget-boolean v3, p0, Lny2;->k:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "SubscriberExceptionEvent subscriber "

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lwr7;->a:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " threw an exception"

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {v2, p0, p1, v0}, Lk15;->u(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Lsr7;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "Initial event "

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p2, Lsr7;->b:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " caused exception in "

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p2, Lsr7;->c:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p2, p2, Lsr7;->a:Ljava/lang/Throwable;

    .line 97
    .line 98
    invoke-interface {v2, p0, p1, p2}, Lk15;->u(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    if-eqz v3, :cond_1

    .line 103
    .line 104
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "Could not dispatch event: "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, " to subscribing class "

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v4, p1, Lwr7;->a:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v2, v1, v3, v0}, Lk15;->u(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    iget-boolean v1, p0, Lny2;->m:Z

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    new-instance v1, Lsr7;

    .line 146
    .line 147
    iget-object p1, p1, Lwr7;->a:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-direct {v1, v0, p2, p1}, Lsr7;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lny2;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lny2;->d:Lky2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmy2;

    .line 8
    .line 9
    iget-object v1, v0, Lmy2;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p1, v0, Lmy2;->b:Z

    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lny2;->e:Lq34;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-ne p1, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move p1, v2

    .line 38
    :goto_1
    iput-boolean p1, v0, Lmy2;->c:Z

    .line 39
    .line 40
    iput-boolean v2, v0, Lmy2;->b:Z

    .line 41
    .line 42
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v0}, Lny2;->f(Ljava/lang/Object;Lmy2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iput-boolean v3, v0, Lmy2;->b:Z

    .line 59
    .line 60
    iput-boolean v3, v0, Lmy2;->c:Z

    .line 61
    .line 62
    return-void

    .line 63
    :goto_3
    iput-boolean v3, v0, Lmy2;->b:Z

    .line 64
    .line 65
    iput-boolean v3, v0, Lmy2;->c:Z

    .line 66
    .line 67
    throw p0

    .line 68
    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;Lmy2;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lny2;->o:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    sget-object v1, Lny2;->s:Ljava/util/HashMap;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/util/List;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object v4, v0

    .line 27
    :goto_0
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v3, v5}, Lny2;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    sget-object v4, Lny2;->s:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    move v4, v2

    .line 57
    move v5, v4

    .line 58
    :goto_1
    if-ge v4, v1, :cond_3

    .line 59
    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2, v6}, Lny2;->g(Ljava/lang/Object;Lmy2;Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    or-int/2addr v5, v6

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lny2;->g(Ljava/lang/Object;Lmy2;Ljava/lang/Class;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :cond_3
    if-nez v5, :cond_5

    .line 81
    .line 82
    iget-boolean p2, p0, Lny2;->l:Z

    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    iget-object p2, p0, Lny2;->p:Lk15;

    .line 87
    .line 88
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "No subscribers registered for event "

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {p2, v3, v1}, Lk15;->g(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-boolean p2, p0, Lny2;->n:Z

    .line 108
    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    const-class p2, Lln5;

    .line 112
    .line 113
    if-eq v0, p2, :cond_5

    .line 114
    .line 115
    const-class p2, Lsr7;

    .line 116
    .line 117
    if-eq v0, p2, :cond_5

    .line 118
    .line 119
    new-instance p2, Lln5;

    .line 120
    .line 121
    invoke-direct {p2, p1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p2}, Lny2;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public final g(Ljava/lang/Object;Lmy2;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lny2;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lwr7;

    .line 34
    .line 35
    iput-object p1, p2, Lmy2;->d:Ljava/lang/Object;

    .line 36
    .line 37
    iget-boolean v1, p2, Lmy2;->c:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lny2;->h(Lwr7;Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public final h(Lwr7;Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lny2;->f:Lt24;

    .line 2
    .line 3
    sget-object v1, Lly2;->a:[I

    .line 4
    .line 5
    iget-object v2, p1, Lwr7;->b:Ltr7;

    .line 6
    .line 7
    iget-object v2, v2, Ltr7;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    aget v1, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v1, v2, :cond_8

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v1, v3, :cond_6

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v1, v3, :cond_4

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    const/4 p3, 0x5

    .line 28
    if-ne v1, p3, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lny2;->h:Lvb;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lwy5;->a(Lwr7;Ljava/lang/Object;)Lwy5;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lvb;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p2, Lix0;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lix0;->b(Lwy5;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lvb;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lny2;

    .line 49
    .line 50
    iget-object p1, p1, Lny2;->j:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const-string p0, "Unknown thread mode: "

    .line 57
    .line 58
    iget-object p1, p1, Lwr7;->b:Ltr7;

    .line 59
    .line 60
    iget-object p1, p1, Ltr7;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 61
    .line 62
    invoke-static {p1, p0}, Lm0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    if-eqz p3, :cond_3

    .line 67
    .line 68
    iget-object p3, p0, Lny2;->g:Ldk0;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lwy5;->a(Lwr7;Ljava/lang/Object;)Lwy5;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    monitor-enter p3

    .line 78
    :try_start_0
    iget-object p1, p3, Ldk0;->a:Lix0;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lix0;->b(Lwy5;)V

    .line 81
    .line 82
    .line 83
    iget-boolean p0, p3, Ldk0;->c:Z

    .line 84
    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    iput-boolean v2, p3, Ldk0;->c:Z

    .line 88
    .line 89
    iget-object p0, p3, Ldk0;->b:Lny2;

    .line 90
    .line 91
    iget-object p0, p0, Lny2;->j:Ljava/util/concurrent/ExecutorService;

    .line 92
    .line 93
    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    monitor-exit p3

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p0

    .line 103
    :cond_3
    invoke-virtual {p0, p1, p2}, Lny2;->d(Lwr7;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0, p1, p2}, Lt24;->a(Lwr7;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_5
    invoke-virtual {p0, p1, p2}, Lny2;->d(Lwr7;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    if-eqz p3, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lny2;->d(Lwr7;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    invoke-virtual {v0, p1, p2}, Lt24;->a(Lwr7;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_8
    invoke-virtual {p0, p1, p2}, Lny2;->d(Lwr7;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lms8;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->c:Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string v0, "It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies."

    .line 13
    .line 14
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, v1, Lny2;->i:Lvr7;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lvr7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :cond_1
    sget-object v3, Lvr7;->b:[Lur7;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    :goto_1
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    if-ge v5, v6, :cond_3

    .line 47
    .line 48
    :try_start_1
    sget-object v8, Lvr7;->b:[Lur7;

    .line 49
    .line 50
    aget-object v9, v8, v5

    .line 51
    .line 52
    if-eqz v9, :cond_2

    .line 53
    .line 54
    aput-object v7, v8, v5

    .line 55
    .line 56
    monitor-exit v3

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_f

    .line 60
    .line 61
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    new-instance v9, Lur7;

    .line 66
    .line 67
    invoke-direct {v9}, Lur7;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_2
    iput-object v0, v9, Lur7;->e:Ljava/lang/Class;

    .line 71
    .line 72
    iput-boolean v4, v9, Lur7;->f:Z

    .line 73
    .line 74
    :goto_3
    iget-object v3, v9, Lur7;->e:Ljava/lang/Class;

    .line 75
    .line 76
    if-eqz v3, :cond_c

    .line 77
    .line 78
    const-class v5, Lqr7;

    .line 79
    .line 80
    const/4 v8, 0x1

    .line 81
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    goto :goto_4

    .line 86
    :catchall_1
    :try_start_3
    iget-object v3, v9, Lur7;->e:Ljava/lang/Class;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    iput-boolean v8, v9, Lur7;->f:Z

    .line 93
    .line 94
    :goto_4
    array-length v10, v3

    .line 95
    move v11, v4

    .line 96
    :goto_5
    if-ge v11, v10, :cond_8

    .line 97
    .line 98
    aget-object v13, v3, v11

    .line 99
    .line 100
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    and-int/lit8 v14, v12, 0x1

    .line 105
    .line 106
    if-eqz v14, :cond_7

    .line 107
    .line 108
    and-int/lit16 v12, v12, 0x1448

    .line 109
    .line 110
    if-nez v12, :cond_7

    .line 111
    .line 112
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    array-length v14, v12

    .line 117
    if-ne v14, v8, :cond_7

    .line 118
    .line 119
    invoke-virtual {v13, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    check-cast v14, Lqr7;

    .line 124
    .line 125
    if-eqz v14, :cond_7

    .line 126
    .line 127
    aget-object v12, v12, v4

    .line 128
    .line 129
    iget-object v15, v9, Lur7;->b:Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {v15, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    if-nez v8, :cond_4

    .line 136
    .line 137
    const/4 v6, 0x1

    .line 138
    goto :goto_7

    .line 139
    :cond_4
    instance-of v6, v8, Ljava/lang/reflect/Method;

    .line 140
    .line 141
    if-eqz v6, :cond_6

    .line 142
    .line 143
    check-cast v8, Ljava/lang/reflect/Method;

    .line 144
    .line 145
    invoke-virtual {v9, v8, v12}, Lur7;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_5

    .line 150
    .line 151
    invoke-virtual {v15, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_5
    invoke-static {}, Lg84;->c()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    :goto_6
    invoke-virtual {v9, v13, v12}, Lur7;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    :goto_7
    if-eqz v6, :cond_7

    .line 164
    .line 165
    invoke-interface {v14}, Lqr7;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    iget-object v6, v9, Lur7;->a:Ljava/util/ArrayList;

    .line 170
    .line 171
    move-object v8, v14

    .line 172
    move-object v14, v12

    .line 173
    new-instance v12, Ltr7;

    .line 174
    .line 175
    invoke-interface {v8}, Lqr7;->priority()I

    .line 176
    .line 177
    .line 178
    move-result v16

    .line 179
    invoke-interface {v8}, Lqr7;->sticky()Z

    .line 180
    .line 181
    .line 182
    move-result v17

    .line 183
    invoke-direct/range {v12 .. v17}, Ltr7;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 190
    .line 191
    const/4 v6, 0x4

    .line 192
    const/4 v8, 0x1

    .line 193
    goto :goto_5

    .line 194
    :cond_8
    iget-boolean v3, v9, Lur7;->f:Z

    .line 195
    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    iput-object v7, v9, Lur7;->e:Ljava/lang/Class;

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_9
    iget-object v3, v9, Lur7;->e:Ljava/lang/Class;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iput-object v3, v9, Lur7;->e:Ljava/lang/Class;

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v5, "java."

    .line 214
    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-nez v5, :cond_a

    .line 220
    .line 221
    const-string v5, "javax."

    .line 222
    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_a

    .line 228
    .line 229
    const-string v5, "android."

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-nez v5, :cond_a

    .line 236
    .line 237
    const-string v5, "androidx."

    .line 238
    .line 239
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    :cond_a
    iput-object v7, v9, Lur7;->e:Ljava/lang/Class;

    .line 246
    .line 247
    :cond_b
    :goto_8
    const/4 v6, 0x4

    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :catch_1
    move-exception v0

    .line 251
    iget-object v1, v9, Lur7;->e:Ljava/lang/Class;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const-string v2, "Could not inspect methods of "

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-instance v2, Lqy2;

    .line 270
    .line 271
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    throw v2

    .line 275
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    .line 276
    .line 277
    iget-object v5, v9, Lur7;->a:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .line 281
    .line 282
    iget-object v5, v9, Lur7;->a:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 285
    .line 286
    .line 287
    iget-object v5, v9, Lur7;->b:Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 290
    .line 291
    .line 292
    iget-object v5, v9, Lur7;->c:Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 295
    .line 296
    .line 297
    iget-object v5, v9, Lur7;->d:Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    .line 301
    .line 302
    iput-object v7, v9, Lur7;->e:Ljava/lang/Class;

    .line 303
    .line 304
    iput-boolean v4, v9, Lur7;->f:Z

    .line 305
    .line 306
    sget-object v5, Lvr7;->b:[Lur7;

    .line 307
    .line 308
    monitor-enter v5

    .line 309
    const/4 v6, 0x4

    .line 310
    :goto_9
    if-ge v4, v6, :cond_e

    .line 311
    .line 312
    :try_start_4
    sget-object v7, Lvr7;->b:[Lur7;

    .line 313
    .line 314
    aget-object v8, v7, v4

    .line 315
    .line 316
    if-nez v8, :cond_d

    .line 317
    .line 318
    aput-object v9, v7, v4

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :catchall_2
    move-exception v0

    .line 322
    goto :goto_e

    .line 323
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_e
    :goto_a
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 327
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-nez v4, :cond_10

    .line 332
    .line 333
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    :goto_b
    monitor-enter p0

    .line 337
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_f

    .line 346
    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Ltr7;

    .line 352
    .line 353
    move-object/from16 v3, p1

    .line 354
    .line 355
    invoke-virtual {v1, v3, v2}, Lny2;->j(Ljava/lang/Object;Ltr7;)V

    .line 356
    .line 357
    .line 358
    goto :goto_c

    .line 359
    :catchall_3
    move-exception v0

    .line 360
    goto :goto_d

    .line 361
    :cond_f
    monitor-exit p0

    .line 362
    return-void

    .line 363
    :goto_d
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 364
    throw v0

    .line 365
    :cond_10
    new-instance v1, Lqy2;

    .line 366
    .line 367
    const-string v2, "Subscriber "

    .line 368
    .line 369
    const-string v3, " and its super classes have no public methods with the @Subscribe annotation"

    .line 370
    .line 371
    invoke-static {v0, v2, v3}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v1

    .line 379
    :goto_e
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 380
    throw v0

    .line 381
    :goto_f
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 382
    throw v0
.end method

.method public final j(Ljava/lang/Object;Ltr7;)V
    .locals 8

    .line 1
    iget-object v0, p2, Ltr7;->c:Ljava/lang/Class;

    .line 2
    .line 3
    new-instance v1, Lwr7;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lwr7;-><init>(Ljava/lang/Object;Ltr7;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lny2;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_c

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    :goto_1
    if-gt v5, v2, :cond_3

    .line 40
    .line 41
    if-eq v5, v2, :cond_2

    .line 42
    .line 43
    iget v6, p2, Ltr7;->d:I

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Lwr7;

    .line 50
    .line 51
    iget-object v7, v7, Lwr7;->b:Ltr7;

    .line 52
    .line 53
    iget v7, v7, Ltr7;->d:I

    .line 54
    .line 55
    if-le v6, v7, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_2
    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, Lny2;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p2, Ltr7;->e:Z

    .line 86
    .line 87
    if-eqz p1, :cond_b

    .line 88
    .line 89
    iget-object p1, p0, Lny2;->e:Lq34;

    .line 90
    .line 91
    const/4 p2, 0x1

    .line 92
    iget-boolean v2, p0, Lny2;->o:Z

    .line 93
    .line 94
    iget-object v3, p0, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_b

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/Class;

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_5

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    if-ne v5, v6, :cond_6

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    move v5, v4

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    :goto_4
    move v5, p2

    .line 152
    :goto_5
    invoke-virtual {p0, v1, v3, v5}, Lny2;->h(Lwr7;Ljava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_b

    .line 161
    .line 162
    if-eqz p1, :cond_9

    .line 163
    .line 164
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-ne p1, v2, :cond_a

    .line 173
    .line 174
    :cond_9
    move v4, p2

    .line 175
    :cond_a
    invoke-virtual {p0, v1, v0, v4}, Lny2;->h(Lwr7;Ljava/lang/Object;Z)V

    .line 176
    .line 177
    .line 178
    :cond_b
    return-void

    .line 179
    :cond_c
    new-instance p0, Lqy2;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "Subscriber "

    .line 188
    .line 189
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, " already registered to event "

    .line 196
    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method public final declared-synchronized k(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Subscriber to unregister was not registered before: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lny2;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Class;

    .line 29
    .line 30
    iget-object v2, p0, Lny2;->a:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :goto_0
    if-ge v4, v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lwr7;

    .line 53
    .line 54
    iget-object v6, v5, Lwr7;->a:Ljava/lang/Object;

    .line 55
    .line 56
    if-ne v6, p1, :cond_1

    .line 57
    .line 58
    iput-boolean v3, v5, Lwr7;->c:Z

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lny2;->b:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Lny2;->p:Lk15;

    .line 79
    .line 80
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {v1, p1, v2}, Lk15;->g(Ljava/lang/String;Ljava/util/logging/Level;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :goto_1
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EventBus[indexCount=0, eventInheritance="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lny2;->o:Z

    .line 9
    .line 10
    const-string v1, "]"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
