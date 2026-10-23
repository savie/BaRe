.class public final Lyk6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Ldu4;


# static fields
.field public static final r:Lbl6;


# instance fields
.field public final a:Lcom/bumptech/glide/a;

.field public final b:Landroid/content/Context;

.field public final c:Ltt4;

.field public final d:Lj23;

.field public final e:Lal6;

.field public final f:Lsx7;

.field public final k:Lu8;

.field public final n:Lps1;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Lbl6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbl6;

    .line 2
    .line 3
    invoke-direct {v0}, Lmm0;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lmm0;->c(Ljava/lang/Class;)Lmm0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lbl6;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lmm0;->G:Z

    .line 16
    .line 17
    sput-object v0, Lyk6;->r:Lbl6;

    .line 18
    .line 19
    new-instance v0, Lbl6;

    .line 20
    .line 21
    invoke-direct {v0}, Lmm0;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v2, Lfx3;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lmm0;->c(Ljava/lang/Class;)Lmm0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lbl6;

    .line 31
    .line 32
    iput-boolean v1, v0, Lmm0;->G:Z

    .line 33
    .line 34
    new-instance v0, Lbl6;

    .line 35
    .line 36
    invoke-direct {v0}, Lmm0;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lkm2;->b:Lim2;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lmm0;->d(Lkm2;)Lmm0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lbl6;

    .line 46
    .line 47
    sget-object v1, Le66;->d:Le66;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lmm0;->m(Le66;)Lmm0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lbl6;

    .line 54
    .line 55
    invoke-virtual {v0}, Lmm0;->r()Lmm0;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lbl6;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/a;Ltt4;Lal6;Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Lj23;

    .line 2
    .line 3
    invoke-direct {v0}, Lj23;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/a;->f:Lus2;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lsx7;

    .line 12
    .line 13
    invoke-direct {v2}, Lsx7;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lyk6;->f:Lsx7;

    .line 17
    .line 18
    new-instance v2, Lu8;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, p0, v3}, Lu8;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lyk6;->k:Lu8;

    .line 25
    .line 26
    iput-object p1, p0, Lyk6;->a:Lcom/bumptech/glide/a;

    .line 27
    .line 28
    iput-object p2, p0, Lyk6;->c:Ltt4;

    .line 29
    .line 30
    iput-object p3, p0, Lyk6;->e:Lal6;

    .line 31
    .line 32
    iput-object v0, p0, Lyk6;->d:Lj23;

    .line 33
    .line 34
    iput-object p4, p0, Lyk6;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    new-instance p4, Lxk6;

    .line 41
    .line 42
    invoke-direct {p4, p0, v0}, Lxk6;-><init>(Lyk6;Lj23;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v0, "ConnectivityMonitor"

    .line 49
    .line 50
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 51
    .line 52
    invoke-static {p3, v1}, Lzh8;->e(Landroid/content/Context;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    move v1, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v3

    .line 63
    :goto_0
    const/4 v5, 0x3

    .line 64
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 76
    .line 77
    :goto_1
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    if-eqz v1, :cond_3

    .line 81
    .line 82
    new-instance v0, Lce2;

    .line 83
    .line 84
    invoke-direct {v0, p3, p4}, Lce2;-><init>(Landroid/content/Context;Lxk6;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance v0, Lnp5;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    :goto_2
    iput-object v0, p0, Lyk6;->n:Lps1;

    .line 94
    .line 95
    iget-object p3, p1, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 96
    .line 97
    monitor-enter p3

    .line 98
    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-nez p4, :cond_9

    .line 105
    .line 106
    iget-object p4, p1, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    if-ne p3, p4, :cond_4

    .line 121
    .line 122
    move v3, v4

    .line 123
    :cond_4
    if-nez v3, :cond_5

    .line 124
    .line 125
    invoke-static {}, Lxh8;->q()Landroid/os/Handler;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-interface {p2, p0}, Ltt4;->k(Ldu4;)V

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-interface {p2, v0}, Ltt4;->k(Ldu4;)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    .line 141
    iget-object p3, p1, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 142
    .line 143
    iget-object p3, p3, Ldy3;->e:Ljava/util/List;

    .line 144
    .line 145
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .line 147
    .line 148
    iput-object p2, p0, Lyk6;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 151
    .line 152
    monitor-enter p1

    .line 153
    :try_start_1
    iget-object p2, p1, Ldy3;->j:Lbl6;

    .line 154
    .line 155
    if-nez p2, :cond_6

    .line 156
    .line 157
    iget-object p2, p1, Ldy3;->d:Lus2;

    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance p2, Lbl6;

    .line 163
    .line 164
    invoke-direct {p2}, Lmm0;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-boolean v4, p2, Lmm0;->G:Z

    .line 168
    .line 169
    iput-object p2, p1, Ldy3;->j:Lbl6;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_0
    move-exception p0

    .line 173
    goto :goto_6

    .line 174
    :cond_6
    :goto_4
    iget-object p2, p1, Ldy3;->j:Lbl6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    monitor-exit p1

    .line 177
    monitor-enter p0

    .line 178
    :try_start_2
    invoke-virtual {p2}, Lmm0;->b()Lmm0;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lbl6;

    .line 183
    .line 184
    iget-boolean p2, p1, Lmm0;->G:Z

    .line 185
    .line 186
    if-eqz p2, :cond_8

    .line 187
    .line 188
    iget-boolean p2, p1, Lmm0;->H:Z

    .line 189
    .line 190
    if-eqz p2, :cond_7

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    .line 196
    .line 197
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_8
    :goto_5
    iput-boolean v4, p1, Lmm0;->H:Z

    .line 202
    .line 203
    iput-boolean v4, p1, Lmm0;->G:Z

    .line 204
    .line 205
    iput-object p1, p0, Lyk6;->q:Lbl6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 209
    :catchall_1
    move-exception p1

    .line 210
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    throw p1

    .line 212
    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    throw p0

    .line 214
    :catchall_2
    move-exception p0

    .line 215
    goto :goto_7

    .line 216
    :cond_9
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    const-string p1, "Cannot register already registered manager"

    .line 219
    .line 220
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :goto_7
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 225
    throw p0
.end method


# virtual methods
.method public final declared-synchronized e()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lsx7;->e()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lyk6;->n()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lyk6;->d:Lj23;

    .line 11
    .line 12
    iget-object v1, v0, Lj23;->c:Ljava/util/Collection;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Set;

    .line 15
    .line 16
    invoke-static {v1}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lkk6;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lj23;->a(Lkk6;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v0, Lj23;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lyk6;->c:Ltt4;

    .line 48
    .line 49
    invoke-interface {v0, p0}, Ltt4;->a(Ldu4;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lyk6;->c:Ltt4;

    .line 53
    .line 54
    iget-object v1, p0, Lyk6;->n:Lps1;

    .line 55
    .line 56
    invoke-interface {v0, v1}, Ltt4;->a(Ldu4;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lyk6;->k:Lu8;

    .line 60
    .line 61
    invoke-static {}, Lxh8;->q()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lyk6;->a:Lcom/bumptech/glide/a;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 71
    .line 72
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    iget-object v0, v0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v2, "Cannot unregister not yet registered manager"

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    throw v0

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    throw v0
.end method

.method public final f(Ljava/lang/Class;)Lpk6;
    .locals 3

    .line 1
    new-instance v0, Lpk6;

    .line 2
    .line 3
    iget-object v1, p0, Lyk6;->a:Lcom/bumptech/glide/a;

    .line 4
    .line 5
    iget-object v2, p0, Lyk6;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lpk6;-><init>(Lcom/bumptech/glide/a;Lyk6;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lsx7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lyk6;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final i(Lpx7;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lyk6;->q(Lpx7;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p1}, Lpx7;->k()Lkk6;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object p0, p0, Lyk6;->a:Lcom/bumptech/glide/a;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lyk6;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lyk6;->q(Lpx7;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    invoke-interface {p1, p0}, Lpx7;->d(Lkk6;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lkk6;->clear()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized m()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lyk6;->p()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 6
    .line 7
    invoke-virtual {v0}, Lsx7;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 3
    .line 4
    iget-object v0, v0, Lsx7;->a:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {v0}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lpx7;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lyk6;->i(Lpx7;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 33
    .line 34
    iget-object v0, v0, Lsx7;->a:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0
.end method

.method public final declared-synchronized o()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lyk6;->d:Lj23;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lj23;->b:Z

    .line 6
    .line 7
    iget-object v1, v0, Lj23;->c:Ljava/util/Collection;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v1}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lkk6;

    .line 30
    .line 31
    invoke-interface {v2}, Lkk6;->isRunning()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Lkk6;->e()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lj23;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized p()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lyk6;->d:Lj23;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lj23;->b:Z

    .line 6
    .line 7
    iget-object v1, v0, Lj23;->c:Ljava/util/Collection;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v1}, Lxh8;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lkk6;

    .line 30
    .line 31
    invoke-interface {v2}, Lkk6;->k()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Lkk6;->isRunning()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Lkk6;->j()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v0, Lj23;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw v0
.end method

.method public final declared-synchronized q(Lpx7;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lpx7;->k()Lkk6;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v2, p0, Lyk6;->d:Lj23;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lj23;->a(Lkk6;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lyk6;->f:Lsx7;

    .line 20
    .line 21
    iget-object v0, v0, Lsx7;->a:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Lpx7;->d(Lkk6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "{tracker="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lyk6;->d:Lj23;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", treeNode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lyk6;->e:Lal6;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method
