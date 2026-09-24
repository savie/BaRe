.class public final Lp2;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final D(Lz0;Ln1;)V
    .locals 1

    .line 1
    check-cast p1, Lr2;

    .line 2
    .line 3
    iget-object v0, p1, Lr2;->c:[B

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lp2;->H(Lr2;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p1, Lr2;->c:[B

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final E(Lz0;)I
    .locals 1

    .line 1
    check-cast p1, Lr2;

    .line 2
    .line 3
    iget-object v0, p1, Lr2;->c:[B

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lp2;->H(Lr2;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p1, Lr2;->c:[B

    .line 11
    .line 12
    array-length p0, p0

    .line 13
    return p0
.end method

.method public final H(Lr2;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lr2;->b:Lz0;

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ln1;

    .line 9
    .line 10
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnh4;

    .line 13
    .line 14
    invoke-direct {v2, p0, v1}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-boolean v3, p1, Lr2;->e:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ln1;->a(Lz0;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v3, v0, Lz0;->a:Lm2;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Lm2;->d(Lnh4;)Lol1;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0, v2}, Lol1;->D(Lz0;Ln1;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, p1, Lr2;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    throw p0
.end method
