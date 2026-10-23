.class public final Lxq9;
.super Lzh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final P(Ljr9;Ljr9;)V
    .locals 0

    .line 1
    iput-object p2, p1, Ljr9;->b:Ljr9;

    .line 2
    .line 3
    return-void
.end method

.method public final Q(Ljr9;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Ljr9;->a:Ljava/lang/Thread;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lks9;Lhl9;Lhl9;)Z
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p0, p1, Lks9;->b:Lhl9;

    .line 3
    .line 4
    if-ne p0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lks9;->b:Lhl9;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final S(Lks9;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p0, p1, Lks9;->a:Ljava/lang/Object;

    .line 3
    .line 4
    if-ne p0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lks9;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final T(Lks9;Ljr9;Ljr9;)Z
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p0, p1, Lks9;->c:Ljr9;

    .line 3
    .line 4
    if-ne p0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lks9;->c:Ljr9;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
