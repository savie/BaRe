.class public final Les2;
.super Ljava/io/ByteArrayOutputStream;


# virtual methods
.method public final declared-synchronized a(Lcs2;)[B
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x40

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
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p1, v3, v1, v2, v0}, Lcs2;->a([B[BI[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Les2;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public final declared-synchronized b(Lds2;[B)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p2

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x40

    .line 5
    .line 6
    if-eq v2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Les2;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 16
    .line 17
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 18
    .line 19
    iget-object p1, p1, Lds2;->b:Lke;

    .line 20
    .line 21
    invoke-static {p2, p1, v1, v0, v2}, Ljb9;->E([BLke;B[BI)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Les2;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return p1

    .line 30
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
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
