.class public abstract Lpw6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcz7;

.field public final b:Ldz7;

.field public final c:Lgj5;

.field public final d:Lgj5;

.field public final e:Lex6;

.field public final f:Lex6;

.field public final g:Lex6;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lgj5;

.field public k:Lag8;

.field public l:Z


# direct methods
.method public constructor <init>(Lcz7;Ldz7;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpw6;->a:Lcz7;

    .line 8
    .line 9
    iput-object p2, p0, Lpw6;->b:Ldz7;

    .line 10
    .line 11
    new-instance p1, Lgj5;

    .line 12
    .line 13
    invoke-direct {p1}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lpw6;->c:Lgj5;

    .line 17
    .line 18
    new-instance p2, Lgj5;

    .line 19
    .line 20
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lpw6;->d:Lgj5;

    .line 24
    .line 25
    new-instance p2, Lex6;

    .line 26
    .line 27
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lpw6;->e:Lex6;

    .line 31
    .line 32
    new-instance p2, Lex6;

    .line 33
    .line 34
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lpw6;->f:Lex6;

    .line 38
    .line 39
    new-instance p2, Lex6;

    .line 40
    .line 41
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lpw6;->g:Lex6;

    .line 45
    .line 46
    new-instance p2, Lex6;

    .line 47
    .line 48
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lpw6;->h:Lex6;

    .line 52
    .line 53
    new-instance p2, Lex6;

    .line 54
    .line 55
    invoke-direct {p2}, Lzy4;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lpw6;->i:Lex6;

    .line 59
    .line 60
    new-instance v0, Lgj5;

    .line 61
    .line 62
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lpw6;->j:Lgj5;

    .line 66
    .line 67
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 68
    .line 69
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const v0, 0x7f1305a0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p2, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lgz7;->WAITING:Lgz7;

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static m(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lhy7;->e:Ljy7;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Ljy7;->a:Lwo5;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lhy7;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    const-string v2, ": "

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v0, Lwo5;->e:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lwo5;->d(Landroid/graphics/Bitmap;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method

.method public final e()Lgz7;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw6;->c:Lgj5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgz7;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lgz7;->WAITING:Lgz7;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public abstract f()I
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpw6;->f()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-le p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpw6;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lpw6;->b:Ldz7;

    .line 6
    .line 7
    invoke-interface {p0}, Ldz7;->c()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public final declared-synchronized k(Lr62;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lpw6;->f:Lex6;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lpw6;->h()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0, v0}, Lpw6;->m(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final declared-synchronized n(I)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lpw6;->e:Lex6;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lhy7;->a:Lhy7;

    .line 12
    .line 13
    invoke-static {}, Lhy7;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_8

    .line 18
    .line 19
    sget-object p1, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lrw6;

    .line 40
    .line 41
    iget-object v2, v2, Lrw6;->a:Ljava/lang/Class;

    .line 42
    .line 43
    const-class v4, Lc40;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    const/16 v3, 0x64

    .line 52
    .line 53
    :cond_0
    add-int/2addr v1, v3

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_1
    sget-object p1, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move v2, v0

    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_7

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lrw6;

    .line 76
    .line 77
    iget-object v5, v4, Lrw6;->c:Lqw6;

    .line 78
    .line 79
    if-eqz v5, :cond_6

    .line 80
    .line 81
    iget-object v5, v5, Lqw6;->a:Lpw6;

    .line 82
    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_2
    iget-object v6, v5, Lpw6;->e:Lex6;

    .line 87
    .line 88
    invoke-virtual {v6}, Lzy4;->d()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-virtual {v5}, Lpw6;->d()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    iget-object v4, v4, Lrw6;->a:Ljava/lang/Class;

    .line 105
    .line 106
    const-class v7, Lc40;

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-static {v6, v5}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-static {v6, v5}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    div-int/2addr v4, v3

    .line 124
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-ge v4, v1, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    const/4 v5, 0x0

    .line 132
    :goto_3
    if-eqz v5, :cond_5

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    goto :goto_5

    .line 139
    :cond_5
    move v4, v1

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    :goto_4
    move v4, v0

    .line 142
    :goto_5
    add-int/2addr v2, v4

    .line 143
    goto :goto_1

    .line 144
    :cond_7
    sget-object p1, Lhy7;->e:Ljy7;

    .line 145
    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    invoke-virtual {p1, v2, v1}, Ljy7;->e(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_8
    sget-object v0, Lhy7;->e:Ljy7;

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    invoke-virtual {p0}, Lpw6;->d()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, p1, v1}, Ljy7;->e(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    :cond_9
    :goto_6
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    throw p1
.end method

.method public final declared-synchronized o(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lpw6;->g:Lex6;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-enter p0

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method
