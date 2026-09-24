.class public final Lyl2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltb7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lyl2;->d()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lyl2;->a([ILtb7;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a([ILtb7;)V
    .locals 5

    .line 1
    iget v0, p0, Lyl2;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :cond_0
    iput-object p2, p0, Lyl2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_1
    iget-object v1, p0, Lyl2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-lt v0, v2, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v0, 0xa

    .line 18
    .line 19
    new-array v3, v2, [[I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lyl2;->c:Ljava/lang/Object;

    .line 26
    .line 27
    new-array v1, v2, [Ltb7;

    .line 28
    .line 29
    iget-object v2, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 30
    .line 31
    check-cast v2, [Ltb7;

    .line 32
    .line 33
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lyl2;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, [[I

    .line 41
    .line 42
    iget v1, p0, Lyl2;->a:I

    .line 43
    .line 44
    aput-object p1, v0, v1

    .line 45
    .line 46
    iget-object p1, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast p1, [Ltb7;

    .line 49
    .line 50
    aput-object p2, p1, v1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lyl2;->a:I

    .line 55
    .line 56
    return-void
.end method

.method public b()Lnm7;
    .locals 1

    .line 1
    iget v0, p0, Lyl2;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lnm7;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lnm7;-><init>(Lyl2;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {p0}, Lyl2;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lyl2;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :try_start_1
    iget-object v1, p0, Lyl2;->h:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lxl2;

    .line 36
    .line 37
    iget-object v2, v1, Lxl2;->a:Ll15;

    .line 38
    .line 39
    const-string v3, "Stopping PacketReader..."

    .line 40
    .line 41
    invoke-interface {v2, v3}, Ll15;->k(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v1, Lxl2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v1, Lxl2;->e:Ljava/lang/Thread;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lyl2;->f:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/net/Socket;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Lyl2;->f:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ljava/net/Socket;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    iget-object v1, p0, Lyl2;->g:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/io/BufferedOutputStream;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lyl2;->g:Ljava/lang/Object;

    .line 90
    .line 91
    :cond_4
    iget-object v1, p0, Lyl2;->f:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/net/Socket;

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lyl2;->f:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Ltb7;

    .line 2
    .line 3
    invoke-direct {v0}, Ltb7;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lyl2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [[I

    .line 11
    .line 12
    iput-object v1, p0, Lyl2;->c:Ljava/lang/Object;

    .line 13
    .line 14
    new-array v0, v0, [Ltb7;

    .line 15
    .line 16
    iput-object v0, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 17
    .line 18
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lyl2;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/net/Socket;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lyl2;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public f(Lev6;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lyl2;->d:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    iget-object v1, p0, Lyl2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll15;

    .line 8
    .line 9
    const-string v2, "Acquiring write lock to send packet << {} >>"

    .line 10
    .line 11
    invoke-interface {v1, p1, v2}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lyl2;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lyl2;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string v2, "Writing packet {}"

    .line 34
    .line 35
    invoke-interface {v1, p1, v2}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lyl2;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lu00;

    .line 41
    .line 42
    iget-object v2, v2, Lu00;->b:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v2, Lzu6;

    .line 45
    .line 46
    invoke-direct {v2}, Low0;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Lhw5;->a(Lzu6;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Low0;->a()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {p0, v3}, Lyl2;->g(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lyl2;->g:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Ljava/io/BufferedOutputStream;

    .line 62
    .line 63
    iget-object v4, v2, Low0;->a:[B

    .line 64
    .line 65
    iget v5, v2, Low0;->c:I

    .line 66
    .line 67
    invoke-virtual {v2}, Low0;->a()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lyl2;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Ljava/io/BufferedOutputStream;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 79
    .line 80
    .line 81
    const-string p0, "Packet {} sent, lock released."

    .line 82
    .line 83
    invoke-interface {v1, p1, p0}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    :try_start_1
    new-instance p0, Lva8;

    .line 99
    .line 100
    const-string v1, "Cannot write %s as transport got disconnected"

    .line 101
    .line 102
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_0
    :try_start_2
    new-instance p1, Lva8;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_1
    new-instance p0, Lva8;

    .line 129
    .line 130
    const-string v0, "Cannot write %s as transport is disconnected"

    .line 131
    .line 132
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyl2;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/BufferedOutputStream;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lyl2;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/io/BufferedOutputStream;

    .line 12
    .line 13
    shr-int/lit8 v1, p1, 0x10

    .line 14
    .line 15
    int-to-byte v1, v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lyl2;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/io/BufferedOutputStream;

    .line 22
    .line 23
    shr-int/lit8 v1, p1, 0x8

    .line 24
    .line 25
    int-to-byte v1, v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lyl2;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Ljava/io/BufferedOutputStream;

    .line 32
    .line 33
    and-int/lit16 p1, p1, 0xff

    .line 34
    .line 35
    int-to-byte p1, p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
