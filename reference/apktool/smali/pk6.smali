.class public final Lpk6;
.super Lmm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final K:Landroid/content/Context;

.field public final L:Lyk6;

.field public final M:Ljava/lang/Class;

.field public final N:Ldy3;

.field public O:Lea8;

.field public P:Ljava/lang/Object;

.field public Q:Ljava/util/ArrayList;

.field public R:Lpk6;

.field public S:Lpk6;

.field public T:Z

.field public U:Z

.field public V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbl6;

    .line 2
    .line 3
    invoke-direct {v0}, Lmm0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkm2;->b:Lim2;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lmm0;->d(Lkm2;)Lmm0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lbl6;

    .line 13
    .line 14
    sget-object v1, Le66;->d:Le66;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lmm0;->m(Le66;)Lmm0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lbl6;

    .line 21
    .line 22
    invoke-virtual {v0}, Lmm0;->r()Lmm0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lbl6;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/a;Lyk6;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmm0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpk6;->T:Z

    .line 6
    .line 7
    iput-object p2, p0, Lpk6;->L:Lyk6;

    .line 8
    .line 9
    iput-object p3, p0, Lpk6;->M:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lpk6;->K:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lyk6;->a:Lcom/bumptech/glide/a;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 16
    .line 17
    iget-object p4, p4, Ldy3;->f:Lk50;

    .line 18
    .line 19
    invoke-virtual {p4, p3}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lea8;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4}, Lk50;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    check-cast p4, Le50;

    .line 32
    .line 33
    invoke-virtual {p4}, Le50;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lea8;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 69
    .line 70
    sget-object v0, Ldy3;->k:Lgv3;

    .line 71
    .line 72
    :cond_2
    iput-object v0, p0, Lpk6;->O:Lea8;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 75
    .line 76
    iput-object p1, p0, Lpk6;->N:Ldy3;

    .line 77
    .line 78
    iget-object p1, p2, Lyk6;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Lvk6;

    .line 95
    .line 96
    invoke-virtual {p0, p3}, Lpk6;->w(Lvk6;)Lpk6;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    monitor-enter p2

    .line 101
    :try_start_0
    iget-object p1, p2, Lyk6;->q:Lbl6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    monitor-exit p2

    .line 104
    invoke-virtual {p0, p1}, Lpk6;->x(Lmm0;)Lpk6;

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p0
.end method


# virtual methods
.method public final A(Lpx7;Ltk6;Lmm0;Ljava/util/concurrent/Executor;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lms8;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lpk6;->U:Z

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    new-instance v1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lpk6;->O:Lea8;

    .line 14
    .line 15
    iget-object v6, p3, Lmm0;->c:Le66;

    .line 16
    .line 17
    iget v7, p3, Lmm0;->n:I

    .line 18
    .line 19
    iget v8, p3, Lmm0;->k:I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v0, p0

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v9, p3

    .line 26
    move-object v10, p4

    .line 27
    invoke-virtual/range {v0 .. v10}, Lpk6;->y(Ljava/lang/Object;Lpx7;Lvk6;Lqk6;Lea8;Le66;IILmm0;Ljava/util/concurrent/Executor;)Lkk6;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1}, Lpx7;->k()Lkk6;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v1, v3}, Lkk6;->b(Lkk6;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-boolean v4, p3, Lmm0;->f:Z

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    invoke-interface {v3}, Lkk6;->k()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "Argument must not be null"

    .line 53
    .line 54
    invoke-static {v3, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Lkk6;->isRunning()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    invoke-interface {v3}, Lkk6;->j()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    :goto_0
    iget-object v3, p0, Lpk6;->L:Lyk6;

    .line 68
    .line 69
    invoke-virtual {v3, p1}, Lyk6;->i(Lpx7;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v1}, Lpx7;->d(Lkk6;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lpk6;->L:Lyk6;

    .line 76
    .line 77
    monitor-enter v3

    .line 78
    :try_start_0
    iget-object v0, v3, Lyk6;->f:Lsx7;

    .line 79
    .line 80
    iget-object v0, v0, Lsx7;->a:Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v0, v3, Lyk6;->d:Lj23;

    .line 86
    .line 87
    const-string v2, "RequestTracker"

    .line 88
    .line 89
    iget-object v4, v0, Lj23;->c:Ljava/util/Collection;

    .line 90
    .line 91
    check-cast v4, Ljava/util/Set;

    .line 92
    .line 93
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-boolean v4, v0, Lj23;->b:Z

    .line 97
    .line 98
    if-nez v4, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Lkk6;->j()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v1}, Lkk6;->clear()V

    .line 105
    .line 106
    .line 107
    const/4 v4, 0x2

    .line 108
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    const-string v4, "Paused, delaying request"

    .line 115
    .line 116
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v0, v0, Lj23;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_1
    monitor-exit v3

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw v0

    .line 131
    :cond_5
    const-string v0, "You must call #load() before calling #into()"

    .line 132
    .line 133
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final B(Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    invoke-static {}, Lxh8;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lms8;->i(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x800

    .line 8
    .line 9
    iget v1, p0, Lmm0;->a:I

    .line 10
    .line 11
    invoke-static {v1, v0}, Lmm0;->h(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lok6;->a:[I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v0, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Lso2;->b:Loo2;

    .line 45
    .line 46
    new-instance v3, Lf31;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3, v1}, Lmm0;->n(Lso2;Lpr0;Z)Lmm0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_1

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v2, Lso2;->a:Lqo2;

    .line 61
    .line 62
    new-instance v3, Lih3;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v1}, Lmm0;->n(Lso2;Lpr0;Z)Lmm0;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v2, Lso2;->b:Loo2;

    .line 77
    .line 78
    new-instance v3, Lf31;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v3, v1}, Lmm0;->n(Lso2;Lpr0;Z)Lmm0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :pswitch_3
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lso2;->c:Lpo2;

    .line 93
    .line 94
    new-instance v2, Le31;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lmm0;->i(Lso2;Lpr0;)Lmm0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    move-object v0, p0

    .line 105
    :goto_1
    iget-object v1, p0, Lpk6;->N:Ldy3;

    .line 106
    .line 107
    iget-object v1, v1, Ldy3;->c:Lns0;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-class v1, Landroid/graphics/Bitmap;

    .line 113
    .line 114
    iget-object v2, p0, Lpk6;->M:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    new-instance v1, Lmr0;

    .line 123
    .line 124
    invoke-direct {v1, p1}, Lea4;-><init>(Landroid/widget/ImageView;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_2

    .line 135
    .line 136
    new-instance v1, Lwo2;

    .line 137
    .line 138
    invoke-direct {v1, p1}, Lea4;-><init>(Landroid/widget/ImageView;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    const/4 p1, 0x0

    .line 142
    sget-object v2, Lxh8;->e:Lqz2;

    .line 143
    .line 144
    invoke-virtual {p0, v1, p1, v0, v2}, Lpk6;->A(Lpx7;Ltk6;Lmm0;Ljava/util/concurrent/Executor;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    const-string p0, "Unhandled class: "

    .line 149
    .line 150
    const-string p1, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 151
    .line 152
    invoke-static {v2, p0, p1}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C(Lzn8;)Lpk6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lpk6;->C(Lzn8;)Lpk6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lpk6;->w(Lvk6;)Lpk6;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final D(Ljava/lang/Object;)Lpk6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lpk6;->P:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lpk6;->U:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lmm0;->o()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final E(Lap2;)Lpk6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lpk6;->E(Lap2;)Lpk6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lpk6;->O:Lea8;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lpk6;->T:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lmm0;->o()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final bridge synthetic a(Lmm0;)Lmm0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpk6;->x(Lmm0;)Lpk6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic b()Lmm0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lpk6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lpk6;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lmm0;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lpk6;->M:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p1, Lpk6;->M:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lpk6;->O:Lea8;

    .line 24
    .line 25
    iget-object v1, p1, Lpk6;->O:Lea8;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lea8;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lpk6;->P:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p1, Lpk6;->P:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v1, p1, Lpk6;->Q:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lpk6;->R:Lpk6;

    .line 54
    .line 55
    iget-object v1, p1, Lpk6;->R:Lpk6;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lpk6;->S:Lpk6;

    .line 64
    .line 65
    iget-object v1, p1, Lpk6;->S:Lpk6;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-boolean v0, p0, Lpk6;->T:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lpk6;->T:Z

    .line 76
    .line 77
    if-ne v0, v1, :cond_0

    .line 78
    .line 79
    iget-boolean p0, p0, Lpk6;->U:Z

    .line 80
    .line 81
    iget-boolean p1, p1, Lpk6;->U:Z

    .line 82
    .line 83
    if-ne p0, p1, :cond_0

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_0
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lmm0;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lpk6;->M:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lpk6;->O:Lea8;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lpk6;->P:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lpk6;->R:Lpk6;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lpk6;->S:Lpk6;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v1, p0, Lpk6;->T:Z

    .line 47
    .line 48
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean p0, p0, Lpk6;->U:Z

    .line 53
    .line 54
    invoke-static {p0, v0}, Lxh8;->r(II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0
.end method

.method public final w(Lvk6;)Lpk6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpk6;->z()Lpk6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lpk6;->w(Lvk6;)Lpk6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lmm0;->o()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final x(Lmm0;)Lpk6;
    .locals 0

    .line 1
    invoke-static {p1}, Lms8;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lmm0;->a(Lmm0;)Lmm0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lpk6;

    .line 9
    .line 10
    return-object p0
.end method

.method public final y(Ljava/lang/Object;Lpx7;Lvk6;Lqk6;Lea8;Le66;IILmm0;Ljava/util/concurrent/Executor;)Lkk6;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v1, p5

    .line 6
    .line 7
    move-object/from16 v7, p9

    .line 8
    .line 9
    iget-object v2, v0, Lpk6;->S:Lpk6;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lby2;

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    invoke-direct {v2, v4, v5}, Lby2;-><init>(Ljava/lang/Object;Lqk6;)V

    .line 19
    .line 20
    .line 21
    move-object v14, v2

    .line 22
    move-object/from16 v18, v14

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object/from16 v5, p4

    .line 26
    .line 27
    move-object/from16 v18, v3

    .line 28
    .line 29
    move-object v14, v5

    .line 30
    :goto_0
    iget-object v2, v0, Lpk6;->R:Lpk6;

    .line 31
    .line 32
    if-eqz v2, :cond_8

    .line 33
    .line 34
    iget-boolean v5, v0, Lpk6;->V:Z

    .line 35
    .line 36
    if-nez v5, :cond_7

    .line 37
    .line 38
    iget-object v5, v2, Lpk6;->O:Lea8;

    .line 39
    .line 40
    iget-boolean v6, v2, Lpk6;->T:Z

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    move-object/from16 v19, v1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object/from16 v19, v5

    .line 48
    .line 49
    :goto_1
    const/16 v5, 0x8

    .line 50
    .line 51
    iget v2, v2, Lmm0;->a:I

    .line 52
    .line 53
    invoke-static {v2, v5}, Lmm0;->h(II)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, v0, Lpk6;->R:Lpk6;

    .line 61
    .line 62
    iget-object v2, v2, Lmm0;->c:Le66;

    .line 63
    .line 64
    :goto_2
    move-object/from16 v20, v2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    if-eq v2, v5, :cond_5

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    if-eq v2, v6, :cond_4

    .line 77
    .line 78
    const/4 v6, 0x3

    .line 79
    if-ne v2, v6, :cond_3

    .line 80
    .line 81
    sget-object v2, Le66;->c:Le66;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const-string v1, "unknown priority: "

    .line 85
    .line 86
    iget-object v0, v0, Lmm0;->c:Le66;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :cond_4
    sget-object v2, Le66;->b:Le66;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    sget-object v2, Le66;->a:Le66;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :goto_3
    iget-object v2, v0, Lpk6;->R:Lpk6;

    .line 99
    .line 100
    iget v3, v2, Lmm0;->n:I

    .line 101
    .line 102
    iget v2, v2, Lmm0;->k:I

    .line 103
    .line 104
    invoke-static/range {p7 .. p8}, Lxh8;->u(II)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_6

    .line 109
    .line 110
    iget-object v6, v0, Lpk6;->R:Lpk6;

    .line 111
    .line 112
    iget v8, v6, Lmm0;->n:I

    .line 113
    .line 114
    iget v6, v6, Lmm0;->k:I

    .line 115
    .line 116
    invoke-static {v8, v6}, Lxh8;->u(II)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_6

    .line 121
    .line 122
    iget v3, v7, Lmm0;->n:I

    .line 123
    .line 124
    iget v2, v7, Lmm0;->k:I

    .line 125
    .line 126
    :cond_6
    move/from16 v21, v2

    .line 127
    .line 128
    move/from16 v22, v3

    .line 129
    .line 130
    new-instance v2, Ld38;

    .line 131
    .line 132
    invoke-direct {v2, v4, v14}, Ld38;-><init>(Ljava/lang/Object;Lqk6;)V

    .line 133
    .line 134
    .line 135
    move-object v14, v2

    .line 136
    iget-object v2, v0, Lpk6;->K:Landroid/content/Context;

    .line 137
    .line 138
    iget-object v3, v0, Lpk6;->N:Ldy3;

    .line 139
    .line 140
    move v6, v5

    .line 141
    iget-object v5, v0, Lpk6;->P:Ljava/lang/Object;

    .line 142
    .line 143
    move v8, v6

    .line 144
    iget-object v6, v0, Lpk6;->M:Ljava/lang/Class;

    .line 145
    .line 146
    iget-object v13, v0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 147
    .line 148
    iget-object v15, v3, Ldy3;->g:Lzw2;

    .line 149
    .line 150
    iget-object v1, v1, Lea8;->a:Lz98;

    .line 151
    .line 152
    move-object/from16 v16, v1

    .line 153
    .line 154
    new-instance v1, Lfh7;

    .line 155
    .line 156
    move-object/from16 v11, p2

    .line 157
    .line 158
    move-object/from16 v12, p3

    .line 159
    .line 160
    move-object/from16 v10, p6

    .line 161
    .line 162
    move/from16 v8, p7

    .line 163
    .line 164
    move/from16 v9, p8

    .line 165
    .line 166
    move-object/from16 v17, p10

    .line 167
    .line 168
    invoke-direct/range {v1 .. v17}, Lfh7;-><init>(Landroid/content/Context;Ldy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lmm0;IILe66;Lpx7;Lvk6;Ljava/util/ArrayList;Lqk6;Lzw2;Lz98;Ljava/util/concurrent/Executor;)V

    .line 169
    .line 170
    .line 171
    move-object v12, v1

    .line 172
    const/4 v6, 0x1

    .line 173
    iput-boolean v6, v0, Lpk6;->V:Z

    .line 174
    .line 175
    iget-object v1, v0, Lpk6;->R:Lpk6;

    .line 176
    .line 177
    move-object v10, v1

    .line 178
    move-object/from16 v2, p1

    .line 179
    .line 180
    move-object/from16 v3, p2

    .line 181
    .line 182
    move-object/from16 v4, p3

    .line 183
    .line 184
    move-object/from16 v11, p10

    .line 185
    .line 186
    move-object v5, v14

    .line 187
    move-object/from16 v6, v19

    .line 188
    .line 189
    move-object/from16 v7, v20

    .line 190
    .line 191
    move/from16 v9, v21

    .line 192
    .line 193
    move/from16 v8, v22

    .line 194
    .line 195
    invoke-virtual/range {v1 .. v11}, Lpk6;->y(Ljava/lang/Object;Lpx7;Lvk6;Lqk6;Lea8;Le66;IILmm0;Ljava/util/concurrent/Executor;)Lkk6;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const/4 v2, 0x0

    .line 200
    iput-boolean v2, v0, Lpk6;->V:Z

    .line 201
    .line 202
    iput-object v12, v14, Ld38;->c:Lfh7;

    .line 203
    .line 204
    iput-object v1, v14, Ld38;->d:Lkk6;

    .line 205
    .line 206
    move-object/from16 v7, p9

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    const-string v0, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 210
    .line 211
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-object v3

    .line 215
    :cond_8
    iget-object v2, v0, Lpk6;->K:Landroid/content/Context;

    .line 216
    .line 217
    iget-object v3, v0, Lpk6;->N:Ldy3;

    .line 218
    .line 219
    iget-object v5, v0, Lpk6;->P:Ljava/lang/Object;

    .line 220
    .line 221
    iget-object v6, v0, Lpk6;->M:Ljava/lang/Class;

    .line 222
    .line 223
    iget-object v13, v0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 224
    .line 225
    iget-object v15, v3, Ldy3;->g:Lzw2;

    .line 226
    .line 227
    iget-object v1, v1, Lea8;->a:Lz98;

    .line 228
    .line 229
    move-object/from16 v16, v1

    .line 230
    .line 231
    new-instance v1, Lfh7;

    .line 232
    .line 233
    move-object/from16 v4, p1

    .line 234
    .line 235
    move-object/from16 v11, p2

    .line 236
    .line 237
    move-object/from16 v12, p3

    .line 238
    .line 239
    move-object/from16 v10, p6

    .line 240
    .line 241
    move/from16 v8, p7

    .line 242
    .line 243
    move/from16 v9, p8

    .line 244
    .line 245
    move-object/from16 v7, p9

    .line 246
    .line 247
    move-object/from16 v17, p10

    .line 248
    .line 249
    invoke-direct/range {v1 .. v17}, Lfh7;-><init>(Landroid/content/Context;Ldy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lmm0;IILe66;Lpx7;Lvk6;Ljava/util/ArrayList;Lqk6;Lzw2;Lz98;Ljava/util/concurrent/Executor;)V

    .line 250
    .line 251
    .line 252
    move-object v14, v1

    .line 253
    :goto_4
    if-nez v18, :cond_9

    .line 254
    .line 255
    return-object v14

    .line 256
    :cond_9
    iget-object v1, v0, Lpk6;->S:Lpk6;

    .line 257
    .line 258
    iget v2, v1, Lmm0;->n:I

    .line 259
    .line 260
    iget v1, v1, Lmm0;->k:I

    .line 261
    .line 262
    invoke-static/range {p7 .. p8}, Lxh8;->u(II)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_a

    .line 267
    .line 268
    iget-object v3, v0, Lpk6;->S:Lpk6;

    .line 269
    .line 270
    iget v4, v3, Lmm0;->n:I

    .line 271
    .line 272
    iget v3, v3, Lmm0;->k:I

    .line 273
    .line 274
    invoke-static {v4, v3}, Lxh8;->u(II)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_a

    .line 279
    .line 280
    iget v2, v7, Lmm0;->n:I

    .line 281
    .line 282
    iget v1, v7, Lmm0;->k:I

    .line 283
    .line 284
    :cond_a
    move v8, v1

    .line 285
    move v7, v2

    .line 286
    iget-object v0, v0, Lpk6;->S:Lpk6;

    .line 287
    .line 288
    iget-object v5, v0, Lpk6;->O:Lea8;

    .line 289
    .line 290
    iget-object v6, v0, Lmm0;->c:Le66;

    .line 291
    .line 292
    move-object v9, v0

    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    move-object/from16 v2, p2

    .line 296
    .line 297
    move-object/from16 v3, p3

    .line 298
    .line 299
    move-object/from16 v10, p10

    .line 300
    .line 301
    move-object/from16 v4, v18

    .line 302
    .line 303
    invoke-virtual/range {v0 .. v10}, Lpk6;->y(Ljava/lang/Object;Lpx7;Lvk6;Lqk6;Lea8;Le66;IILmm0;Ljava/util/concurrent/Executor;)Lkk6;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iput-object v14, v4, Lby2;->c:Lkk6;

    .line 308
    .line 309
    iput-object v0, v4, Lby2;->d:Lkk6;

    .line 310
    .line 311
    return-object v4
.end method

.method public final z()Lpk6;
    .locals 2

    .line 1
    invoke-super {p0}, Lmm0;->b()Lmm0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lpk6;

    .line 6
    .line 7
    iget-object v0, p0, Lpk6;->O:Lea8;

    .line 8
    .line 9
    invoke-virtual {v0}, Lea8;->a()Lea8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lpk6;->O:Lea8;

    .line 14
    .line 15
    iget-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lpk6;->Q:Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lpk6;->R:Lpk6;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lpk6;->z()Lpk6;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lpk6;->R:Lpk6;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lpk6;->S:Lpk6;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lpk6;->z()Lpk6;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lpk6;->S:Lpk6;

    .line 47
    .line 48
    :cond_2
    return-object p0
.end method
