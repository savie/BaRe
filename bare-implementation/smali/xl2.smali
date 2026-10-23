.class public final Lxl2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ll15;

.field public final b:Ljava/io/BufferedInputStream;

.field public final c:Lur1;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/lang/Thread;

.field public final f:Lkw5;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lkw5;Lur1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lxl2;

    .line 5
    .line 6
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lxl2;->a:Ll15;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lxl2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    instance-of v0, p2, Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p2, Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    iput-object p2, p0, Lxl2;->b:Ljava/io/BufferedInputStream;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lxl2;->b:Ljava/io/BufferedInputStream;

    .line 35
    .line 36
    :goto_0
    iput-object p4, p0, Lxl2;->c:Lur1;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/Thread;

    .line 39
    .line 40
    const-string p4, "Packet Reader for "

    .line 41
    .line 42
    invoke-static {p4, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lxl2;->e:Ljava/lang/Thread;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p3, p0, Lxl2;->f:Lkw5;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v2, p0, Lxl2;->b:Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    sub-int/2addr v0, v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Lva8;

    .line 18
    .line 19
    new-instance p1, Ljava/io/EOFException;

    .line 20
    .line 21
    const-string v0, "EOF while reading packet"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lxl2;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Lva8; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lxl2;->a([B)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lxl2;->f:Lkw5;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Lkw5;->read([B)Lev6;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_1
    .catch Lva8; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Liw0; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    iget-object v1, p0, Lxl2;->a:Ll15;

    .line 17
    .line 18
    const-string v2, "Received packet {}"

    .line 19
    .line 20
    invoke-interface {v1, v0, v2}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lxl2;->c:Lur1;

    .line 24
    .line 25
    iget-object p0, p0, Lur1;->b:Luu6;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lol1;->t(Lev6;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    :goto_0
    new-instance v0, Lva8;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :catch_2
    move-exception p0

    .line 41
    throw p0
.end method

.method public final c()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lxl2;->a([B)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljw0;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lvw2;->c:Ltw2;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, v2}, Low0;-><init>([BZLvw2;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Low0;->n()B

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    new-array v2, v0, [B

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0}, Low0;->o([BI)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    aget-byte p0, v2, p0

    .line 26
    .line 27
    shl-int/lit8 p0, p0, 0x10

    .line 28
    .line 29
    const/high16 v0, 0xff0000

    .line 30
    .line 31
    and-int/2addr p0, v0

    .line 32
    aget-byte v0, v2, v1

    .line 33
    .line 34
    shl-int/lit8 v0, v0, 0x8

    .line 35
    .line 36
    const v1, 0xff00

    .line 37
    .line 38
    .line 39
    and-int/2addr v0, v1

    .line 40
    or-int/2addr p0, v0

    .line 41
    const/4 v0, 0x2

    .line 42
    aget-byte v0, v2, v0

    .line 43
    .line 44
    and-int/lit16 v0, v0, 0xff

    .line 45
    .line 46
    or-int/2addr p0, v0

    .line 47
    return p0
.end method

.method public final run()V
    .locals 8

    .line 1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lxl2;->a:Ll15;

    .line 10
    .line 11
    iget-object v2, p0, Lxl2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lxl2;->b()V
    :try_end_0
    .catch Lva8; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    const-string v2, "PacketReader error, got exception."

    .line 35
    .line 36
    invoke-interface {v1, v2, v0}, Ll15;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lxl2;->c:Lur1;

    .line 40
    .line 41
    iget-object v1, p0, Lur1;->f:Lgd;

    .line 42
    .line 43
    iget-object v2, v1, Lgd;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v3, v1, Lgd;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 56
    .line 57
    .line 58
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljk6;

    .line 88
    .line 89
    iget-object v6, v1, Lgd;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Ljava/util/HashMap;

    .line 92
    .line 93
    iget-object v7, v5, Ljk6;->d:Ljava/util/UUID;

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v5, v5, Ljk6;->a:Lm86;

    .line 99
    .line 100
    iget-object v6, v5, Lm86;->e:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Ljava/util/concurrent/locks/ReentrantLock;

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    .line 107
    :try_start_2
    iget-object v7, v5, Lm86;->d:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v7, Lnh4;

    .line 110
    .line 111
    invoke-virtual {v7, v0}, Lnh4;->r(Ljava/lang/Exception;)Ljava/lang/Throwable;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    iput-object v7, v5, Lm86;->n:Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v5, v5, Lm86;->f:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v5, Ljava/util/concurrent/locks/Condition;

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    .line 131
    .line 132
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    :try_start_4
    invoke-virtual {p0, v0}, Lur1;->b(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catch_1
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sget-object v1, Lur1;->I:Ll15;

    .line 157
    .line 158
    const-string v2, "{} while closing connection on error, ignoring: {}"

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-interface {v1, v0, p0, v2}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    const-string v0, "{} stopped."

    .line 183
    .line 184
    iget-object p0, p0, Lxl2;->e:Ljava/lang/Thread;

    .line 185
    .line 186
    invoke-interface {v1, p0, v0}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_4
    return-void
.end method
