.class public final Ljs2;
.super Ljava/io/ByteArrayOutputStream;


# virtual methods
.method public final declared-synchronized a(Lhs2;[B)[B
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x72

    .line 3
    .line 4
    :try_start_0
    new-array v0, v0, [B

    .line 5
    .line 6
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 7
    .line 8
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 9
    .line 10
    invoke-virtual {p1, p2, v1, v2, v0}, Lhs2;->a([B[BI[B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljs2;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized b(Lis2;[B[B)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p3

    .line 3
    const/16 v1, 0x72

    .line 4
    .line 5
    if-eq v1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljs2;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 17
    .line 18
    iget v5, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "ctx"

    .line 24
    .line 25
    const-string v1, "\'ctx\' cannot be null"

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    array-length v1, p2

    .line 30
    const/16 v2, 0xff

    .line 31
    .line 32
    if-gt v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v1, p1, Lis2;->b:Lnh;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v2, p2

    .line 38
    move-object v0, p3

    .line 39
    invoke-static/range {v0 .. v5}, Lyc9;->E([BLnh;[BB[BI)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Ljs2;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return p1

    .line 48
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 3
    .line 4
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 8
    .line 9
    .line 10
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method
