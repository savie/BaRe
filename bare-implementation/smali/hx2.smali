.class public abstract Lhx2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract bind(Lnw6;Ljava/lang/Object;)V
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public final insert(Lfw6;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    move-result-object p1

    .line 65
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0, p1, v0}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 67
    invoke-interface {p1}, Lnw6;->i0()Z

    .line 68
    invoke-interface {p1}, Lnw6;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 69
    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insert(Lfw6;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    move-result-object p1

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 62
    invoke-interface {p1}, Lnw6;->i0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 63
    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insert(Lfw6;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    :try_start_0
    array-length v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    :try_start_1
    aget-object v0, p2, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lnw6;->i0()Z

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lnw6;->reset()V

    .line 32
    .line 33
    .line 34
    :cond_1
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p2, Ljava/util/NoSuchElementException;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p2, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :catchall_1
    move-exception p2

    .line 56
    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p2
.end method

.method public final insertAndReturnId(Lfw6;Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-wide/16 p0, -0x1

    .line 7
    .line 8
    return-wide p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lnw6;->i0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-static {v0, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    return-wide p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-static {v0, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final insertAndReturnIdsArray(Lfw6;Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)[J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-array p0, v0, [J

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-array v3, v2, [J

    .line 23
    .line 24
    :goto_0
    if-ge v0, v2, :cond_2

    .line 25
    .line 26
    invoke-static {v0, p2}, Lel1;->P0(ILjava/util/Collection;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1, v4}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lnw6;->reset()V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    :goto_1
    aput-wide v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object v3

    .line 60
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final insertAndReturnIdsArray(Lfw6;[Ljava/lang/Object;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "[",
            "Ljava/lang/Object;",
            ")[J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 66
    new-array p0, v0, [J

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    move-result-object v1

    .line 68
    :try_start_0
    array-length v2, p2

    new-array v3, v2, [J

    :goto_0
    if-ge v0, v2, :cond_2

    .line 69
    aget-object v4, p2, v0

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {p0, v1, v4}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 71
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 72
    invoke-interface {v1}, Lnw6;->reset()V

    .line 73
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 74
    :goto_1
    aput-wide v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 75
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final insertAndReturnIdsArrayBox(Lfw6;Ljava/util/Collection;)[Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-array p0, v0, [Ljava/lang/Long;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-array v3, v2, [Ljava/lang/Long;

    .line 23
    .line 24
    :goto_0
    if-ge v0, v2, :cond_2

    .line 25
    .line 26
    invoke-static {v0, p2}, Lel1;->P0(ILjava/util/Collection;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1, v4}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lnw6;->reset()V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p0, 0x0

    .line 60
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-object v3

    .line 64
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final insertAndReturnIdsArrayBox(Lfw6;[Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Long;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    new-array p0, v0, [Ljava/lang/Long;

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    move-result-object v1

    .line 72
    :try_start_0
    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Long;

    :goto_0
    if-ge v0, v2, :cond_2

    .line 73
    aget-object v4, p2, v0

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {p0, v1, v4}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 75
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 76
    invoke-interface {v1}, Lnw6;->reset()V

    .line 77
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 78
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 79
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final insertAndReturnIdsList(Lfw6;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lov2;->a:Lov2;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Lnc8;->p()Lww4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lnw6;->reset()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lww4;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-wide/16 v2, -0x1

    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lww4;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 p0, 0x0

    .line 71
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public final insertAndReturnIdsList(Lfw6;[Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfw6;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 85
    sget-object p0, Lov2;->a:Lov2;

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Lnc8;->p()Lww4;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lhx2;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    move-result-object v1

    .line 88
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p0, v1, v4}, Lhx2;->bind(Lnw6;Ljava/lang/Object;)V

    .line 90
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 91
    invoke-interface {v1}, Lnw6;->reset()V

    .line 92
    invoke-static {p1}, Lsz8;->t(Lfw6;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lww4;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lww4;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 94
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 95
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    move-result-object p0

    return-object p0

    .line 96
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method
