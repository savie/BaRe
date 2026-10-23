.class public abstract Laz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lne;


# static fields
.field public static final x:[Ly53;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:Lfr6;

.field public final c:Landroid/content/Context;

.field public final d:Ltt9;

.field public final e:Lj99;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Lu39;

.field public i:Lsl0;

.field public j:Landroid/os/IInterface;

.field public final k:Ljava/util/ArrayList;

.field public l:Lxf9;

.field public m:I

.field public final n:Lke;

.field public final o:Ljq6;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public volatile r:Ljava/lang/String;

.field public s:Lhs1;

.field public t:Z

.field public volatile u:Ljo9;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ly53;

    .line 3
    .line 4
    sput-object v0, Laz3;->x:[Ly53;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILz91;Lnz3;Loz3;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ltt9;->a(Landroid/content/Context;)Ltt9;

    .line 2
    .line 3
    .line 4
    move-result-object p7

    .line 5
    sget-object v0, Llz3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p5}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p6}, Lly8;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lke;

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-direct {v0, p5, v1}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance p5, Ljq6;

    .line 21
    .line 22
    const/16 v1, 0x13

    .line 23
    .line 24
    invoke-direct {p5, p6, v1}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    iget-object p6, p4, Lz91;->d:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v1, Llz3;->c:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Laz3;->a:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Laz3;->f:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Laz3;->g:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Laz3;->k:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    iput v2, p0, Laz3;->m:I

    .line 60
    .line 61
    iput-object v1, p0, Laz3;->s:Lhs1;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, p0, Laz3;->t:Z

    .line 65
    .line 66
    iput-object v1, p0, Laz3;->u:Ljo9;

    .line 67
    .line 68
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    .line 75
    const-string v2, "Context must not be null"

    .line 76
    .line 77
    invoke-static {p1, v2}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Laz3;->c:Landroid/content/Context;

    .line 81
    .line 82
    const-string p1, "Looper must not be null"

    .line 83
    .line 84
    invoke-static {p2, p1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p1, "Supervisor must not be null"

    .line 88
    .line 89
    invoke-static {p7, p1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object p7, p0, Laz3;->d:Ltt9;

    .line 93
    .line 94
    new-instance p1, Lj99;

    .line 95
    .line 96
    invoke-direct {p1, p0, p2}, Lj99;-><init>(Laz3;Landroid/os/Looper;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Laz3;->e:Lj99;

    .line 100
    .line 101
    iput p3, p0, Laz3;->p:I

    .line 102
    .line 103
    iput-object v0, p0, Laz3;->n:Lke;

    .line 104
    .line 105
    iput-object p5, p0, Laz3;->o:Ljq6;

    .line 106
    .line 107
    iput-object p6, p0, Laz3;->q:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, p4, Lz91;->b:Ljava/util/Set;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_1

    .line 120
    .line 121
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 126
    .line 127
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-eqz p3, :cond_0

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const-string p0, "Expanding scopes is not permitted, use implied scopes instead"

    .line 135
    .line 136
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :cond_1
    iput-object p1, p0, Laz3;->w:Ljava/util/Set;

    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laz3;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Laz3;->w:Ljava/util/Set;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 11
    .line 12
    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laz3;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Laz3;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Laz3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Laz3;->m:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0

    .line 16
    return v2

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Laz3;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Laz3;->b:Lfr6;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p0, "Failed to connect when checking package"

    .line 13
    .line 14
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e(Lsl0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Laz3;->i:Lsl0;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Laz3;->v(ILandroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract f()I
.end method

.method public final g()[Ly53;
    .locals 0

    .line 1
    iget-object p0, p0, Laz3;->u:Ljo9;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Ljo9;->b:[Ly53;

    .line 8
    .line 9
    return-object p0
.end method

.method public final h(Lom5;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lg19;

    .line 4
    .line 5
    iget-object p0, p0, Lg19;->x:Lpz3;

    .line 6
    .line 7
    iget-object p0, p0, Lpz3;->n:Ln29;

    .line 8
    .line 9
    new-instance v0, Lu8;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, p1, v1}, Lu8;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Laz3;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Laz3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Laz3;->m:I

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public j()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final k(Ln74;Ljava/util/Set;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Laz3;->o()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lzw3;

    .line 10
    .line 11
    iget-object v4, v1, Laz3;->r:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, v1, Laz3;->p:I

    .line 14
    .line 15
    sget v6, Lmz3;->a:I

    .line 16
    .line 17
    sget-object v9, Lzw3;->G:[Lcom/google/android/gms/common/api/Scope;

    .line 18
    .line 19
    new-instance v10, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v12, Lzw3;->H:[Ly53;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    move-object/from16 v17, v4

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v14, 0x1

    .line 36
    move-object v13, v12

    .line 37
    invoke-direct/range {v3 .. v17}, Lzw3;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ly53;[Ly53;ZIZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, Laz3;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, v3, Lzw3;->d:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v2, v3, Lzw3;->k:Landroid/os/Bundle;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 60
    .line 61
    iput-object v0, v3, Lzw3;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 62
    .line 63
    :cond_0
    invoke-virtual {v1}, Laz3;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    new-instance v0, Landroid/accounts/Account;

    .line 70
    .line 71
    const-string v2, "<<default account>>"

    .line 72
    .line 73
    const-string v4, "com.google"

    .line 74
    .line 75
    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v3, Lzw3;->n:Landroid/accounts/Account;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Luv9;

    .line 85
    .line 86
    iget-object v0, v0, Luv9;->a:Landroid/os/IBinder;

    .line 87
    .line 88
    iput-object v0, v3, Lzw3;->e:Landroid/os/IBinder;

    .line 89
    .line 90
    :cond_1
    sget-object v0, Laz3;->x:[Ly53;

    .line 91
    .line 92
    iput-object v0, v3, Lzw3;->p:[Ly53;

    .line 93
    .line 94
    invoke-virtual {v1}, Laz3;->n()[Ly53;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, v3, Lzw3;->q:[Ly53;

    .line 99
    .line 100
    invoke-virtual {v1}, Laz3;->t()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v2, 0x1

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iput-boolean v2, v3, Lzw3;->x:Z

    .line 108
    .line 109
    :cond_2
    :try_start_0
    iget-object v4, v1, Laz3;->g:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    iget-object v0, v1, Laz3;->h:Lu39;

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    new-instance v5, Lde9;

    .line 117
    .line 118
    iget-object v6, v1, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-direct {v5, v1, v6}, Lde9;-><init>(Laz3;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5, v3}, Lu39;->a(Lde9;Lzw3;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    const-string v0, "GmsClient"

    .line 134
    .line 135
    const-string v3, "mServiceBroker is null, client disconnected"

    .line 136
    .line 137
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :goto_0
    monitor-exit v4

    .line 141
    return-void

    .line 142
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    goto :goto_2

    .line 148
    :catch_2
    move-exception v0

    .line 149
    goto :goto_3

    .line 150
    :goto_2
    const-string v3, "GmsClient"

    .line 151
    .line 152
    const-string v4, "IGmsServiceBroker.getService failed"

    .line 153
    .line 154
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .line 156
    .line 157
    iget-object v0, v1, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    new-instance v3, Lph9;

    .line 164
    .line 165
    const/16 v4, 0x8

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-direct {v3, v1, v4, v5, v5}, Lph9;-><init>(Laz3;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, Laz3;->e:Lj99;

    .line 172
    .line 173
    const/4 v4, -0x1

    .line 174
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :catch_3
    move-exception v0

    .line 183
    throw v0

    .line 184
    :goto_3
    const-string v2, "GmsClient"

    .line 185
    .line 186
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 187
    .line 188
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iget-object v1, v1, Laz3;->e:Lj99;

    .line 198
    .line 199
    const/4 v2, 0x6

    .line 200
    const/4 v3, 0x3

    .line 201
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public abstract l(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laz3;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lt39;

    .line 22
    .line 23
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iput-object v3, v4, Lt39;->a:Ljava/lang/Boolean;

    .line 25
    .line 26
    monitor-exit v4

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p0

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    iget-object v1, p0, Laz3;->g:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_3
    iput-object v3, p0, Laz3;->h:Lu39;

    .line 43
    .line 44
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0, v3}, Laz3;->v(ILandroid/os/IInterface;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_2
    move-exception p0

    .line 51
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    throw p0

    .line 53
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    throw p0
.end method

.method public n()[Ly53;
    .locals 0

    .line 1
    sget-object p0, Laz3;->x:[Ly53;

    .line 2
    .line 3
    return-object p0
.end method

.method public o()Landroid/os/Bundle;
    .locals 0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final p()Landroid/os/IInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Laz3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Laz3;->m:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Laz3;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Laz3;->j:Landroid/os/IInterface;

    .line 16
    .line 17
    const-string v1, "Client is connected but service is null"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 29
    .line 30
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Laz3;->f()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0xc9e4920

    .line 6
    .line 7
    .line 8
    if-lt p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public t()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lkm6;

    .line 2
    .line 3
    return p0
.end method

.method public final synthetic u(IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Laz3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Laz3;->m:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p2, p3}, Laz3;->v(ILandroid/os/IInterface;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final v(ILandroid/os/IInterface;)V
    .locals 10

    .line 1
    const-string v0, " on com.google.android.gms"

    .line 2
    .line 3
    const-string v1, " on com.google.android.gms"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x4

    .line 8
    if-eq p1, v4, :cond_0

    .line 9
    .line 10
    move v5, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v5, v3

    .line 13
    :goto_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    move v6, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, v3

    .line 18
    :goto_1
    if-ne v5, v6, :cond_2

    .line 19
    .line 20
    move v2, v3

    .line 21
    :cond_2
    invoke-static {v2}, Lly8;->c(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Laz3;->f:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iput p1, p0, Laz3;->m:I

    .line 28
    .line 29
    iput-object p2, p0, Laz3;->j:Landroid/os/IInterface;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eq p1, v3, :cond_c

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq p1, v3, :cond_4

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq p1, v3, :cond_4

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_3
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_4
    const-string p1, "Calling connect() while still connected, missing disconnect() for "

    .line 56
    .line 57
    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 58
    .line 59
    const-string v3, "unable to connect to service: "

    .line 60
    .line 61
    iget-object v4, p0, Laz3;->l:Lxf9;

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    iget-object v6, p0, Laz3;->b:Lfr6;

    .line 66
    .line 67
    if-eqz v6, :cond_6

    .line 68
    .line 69
    const-string v7, "GmsClient"

    .line 70
    .line 71
    iget-object v6, v6, Lfr6;->b:Ljava/io/Serializable;

    .line 72
    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    const-string v8, "com.google.android.gms"

    .line 76
    .line 77
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    add-int/lit8 v9, v9, 0x46

    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    add-int/2addr v9, v8

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Laz3;->d:Ltt9;

    .line 114
    .line 115
    iget-object v1, p0, Laz3;->b:Lfr6;

    .line 116
    .line 117
    iget-object v1, v1, Lfr6;->b:Ljava/io/Serializable;

    .line 118
    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v6, p0, Laz3;->b:Lfr6;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v6, p0, Laz3;->q:Ljava/lang/String;

    .line 130
    .line 131
    if-nez v6, :cond_5

    .line 132
    .line 133
    iget-object v6, p0, Laz3;->c:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object v6, p0, Laz3;->b:Lfr6;

    .line 139
    .line 140
    iget-boolean v6, v6, Lfr6;->a:Z

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-instance v7, Lur9;

    .line 146
    .line 147
    invoke-direct {v7, v1, v6}, Lur9;-><init>(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v7, v4}, Ltt9;->c(Lur9;Landroid/content/ServiceConnection;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 156
    .line 157
    .line 158
    :cond_6
    new-instance p1, Lxf9;

    .line 159
    .line 160
    iget-object v1, p0, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-direct {p1, p0, v1}, Lxf9;-><init>(Laz3;I)V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Laz3;->l:Lxf9;

    .line 170
    .line 171
    new-instance v1, Lfr6;

    .line 172
    .line 173
    invoke-virtual {p0}, Laz3;->r()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {p0}, Laz3;->s()Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v4, v1, Lfr6;->b:Ljava/io/Serializable;

    .line 185
    .line 186
    iput-boolean v6, v1, Lfr6;->a:Z

    .line 187
    .line 188
    iput-object v1, p0, Laz3;->b:Lfr6;

    .line 189
    .line 190
    if-eqz v6, :cond_8

    .line 191
    .line 192
    invoke-virtual {p0}, Laz3;->f()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    const v4, 0x1110e58

    .line 197
    .line 198
    .line 199
    if-lt v1, v4, :cond_7

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    iget-object p0, p0, Laz3;->b:Lfr6;

    .line 205
    .line 206
    iget-object p0, p0, Lfr6;->b:Ljava/io/Serializable;

    .line 207
    .line 208
    check-cast p0, Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_8
    :goto_2
    iget-object p2, p0, Laz3;->d:Ltt9;

    .line 223
    .line 224
    iget-object v1, p0, Laz3;->b:Lfr6;

    .line 225
    .line 226
    iget-object v1, v1, Lfr6;->b:Ljava/io/Serializable;

    .line 227
    .line 228
    check-cast v1, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Laz3;->b:Lfr6;

    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    iget-object v4, p0, Laz3;->q:Ljava/lang/String;

    .line 239
    .line 240
    if-nez v4, :cond_9

    .line 241
    .line 242
    iget-object v4, p0, Laz3;->c:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    :cond_9
    iget-object v6, p0, Laz3;->b:Lfr6;

    .line 253
    .line 254
    iget-boolean v6, v6, Lfr6;->a:Z

    .line 255
    .line 256
    new-instance v7, Lur9;

    .line 257
    .line 258
    invoke-direct {v7, v1, v6}, Lur9;-><init>(Ljava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v7, p1, v4}, Ltt9;->b(Lur9;Landroid/content/ServiceConnection;Ljava/lang/String;)Lhs1;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lhs1;->n()Z

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-nez p2, :cond_e

    .line 270
    .line 271
    const-string p2, "GmsClient"

    .line 272
    .line 273
    iget-object v1, p0, Laz3;->b:Lfr6;

    .line 274
    .line 275
    iget-object v1, v1, Lfr6;->b:Ljava/io/Serializable;

    .line 276
    .line 277
    check-cast v1, Ljava/lang/String;

    .line 278
    .line 279
    const-string v4, "com.google.android.gms"

    .line 280
    .line 281
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    add-int/lit8 v6, v6, 0x22

    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    add-int/2addr v6, v4

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    iget p2, p1, Lhs1;->b:I

    .line 318
    .line 319
    const/4 v0, -0x1

    .line 320
    if-ne p2, v0, :cond_a

    .line 321
    .line 322
    const/16 p2, 0x10

    .line 323
    .line 324
    :cond_a
    iget-object v1, p1, Lhs1;->c:Landroid/app/PendingIntent;

    .line 325
    .line 326
    if-eqz v1, :cond_b

    .line 327
    .line 328
    new-instance v5, Landroid/os/Bundle;

    .line 329
    .line 330
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v1, "pendingIntent"

    .line 334
    .line 335
    iget-object p1, p1, Lhs1;->c:Landroid/app/PendingIntent;

    .line 336
    .line 337
    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    .line 339
    .line 340
    :cond_b
    iget-object p1, p0, Laz3;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    new-instance v1, Lhj9;

    .line 347
    .line 348
    invoke-direct {v1, p0, p2, v5}, Lhj9;-><init>(Laz3;ILandroid/os/Bundle;)V

    .line 349
    .line 350
    .line 351
    iget-object p0, p0, Laz3;->e:Lj99;

    .line 352
    .line 353
    const/4 p2, 0x7

    .line 354
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_c
    iget-object p1, p0, Laz3;->l:Lxf9;

    .line 363
    .line 364
    if-eqz p1, :cond_e

    .line 365
    .line 366
    iget-object p2, p0, Laz3;->d:Ltt9;

    .line 367
    .line 368
    iget-object v0, p0, Laz3;->b:Lfr6;

    .line 369
    .line 370
    iget-object v0, v0, Lfr6;->b:Ljava/io/Serializable;

    .line 371
    .line 372
    check-cast v0, Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, p0, Laz3;->b:Lfr6;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Laz3;->q:Ljava/lang/String;

    .line 383
    .line 384
    if-nez v1, :cond_d

    .line 385
    .line 386
    iget-object v1, p0, Laz3;->c:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    :cond_d
    iget-object v1, p0, Laz3;->b:Lfr6;

    .line 392
    .line 393
    iget-boolean v1, v1, Lfr6;->a:Z

    .line 394
    .line 395
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    new-instance v3, Lur9;

    .line 399
    .line 400
    invoke-direct {v3, v0, v1}, Lur9;-><init>(Ljava/lang/String;Z)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p2, v3, p1}, Ltt9;->c(Lur9;Landroid/content/ServiceConnection;)V

    .line 404
    .line 405
    .line 406
    iput-object v5, p0, Laz3;->l:Lxf9;

    .line 407
    .line 408
    :cond_e
    :goto_3
    monitor-exit v2

    .line 409
    return-void

    .line 410
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    throw p0
.end method
