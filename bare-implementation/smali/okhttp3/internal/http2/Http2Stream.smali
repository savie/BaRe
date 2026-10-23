.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/concurrent/Lockable;
.implements Lwi7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$Companion;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;,
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lokhttp3/internal/http2/Http2Connection;

.field public final c:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

.field public d:J

.field public e:J

.field public final f:Ljava/util/ArrayDeque;

.field public k:Z

.field public final n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field public final p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field public final q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field public final r:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field public t:Lokhttp3/internal/http2/ErrorCode;

.field public x:Ljava/io/IOException;


# direct methods
.method public constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 17
    .line 18
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection;->K:Lokhttp3/internal/http2/Settings;

    .line 19
    .line 20
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->a()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-long v0, p1

    .line 25
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->f:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 35
    .line 36
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->J:Lokhttp3/internal/http2/Settings;

    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->a()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-long v1, p2

    .line 43
    invoke-direct {v0, p0, v1, v2, p4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;JZ)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 47
    .line 48
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 49
    .line 50
    invoke-direct {p2, p0, p3}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;Z)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 54
    .line 55
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->q:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 61
    .line 62
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->r:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    if-eqz p5, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->h()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string p0, "locally-initiated streams shouldn\'t have headers yet"

    .line 83
    .line 84
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->h()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    const-string p0, "remotely-initiated streams should have headers"

    .line 96
    .line 97
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method


# virtual methods
.method public final a()Lnh7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 5
    .line 6
    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 15
    .line 16
    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->a:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->c:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->i()Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    if-nez v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 47
    .line 48
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->g(I)Lokhttp3/internal/http2/Http2Stream;

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 2
    .line 3
    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->a:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->x:Ljava/io/IOException;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    .line 23
    .line 24
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    throw v0

    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    const-string p0, "stream finished"

    .line 37
    .line 38
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string p0, "stream closed"

    .line 43
    .line 44
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Stream;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 14
    .line 15
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Lokhttp3/internal/http2/Http2Writer;->n(ILokhttp3/internal/http2/ErrorCode;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->t:Lokhttp3/internal/http2/ErrorCode;

    .line 14
    .line 15
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->x:Ljava/io/IOException;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 21
    .line 22
    iget-boolean p1, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 27
    .line 28
    iget-boolean p1, p1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 38
    .line 39
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lokhttp3/internal/http2/Http2Connection;->g(I)Lokhttp3/internal/http2/Http2Stream;

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final f(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/http2/Http2Connection;->n(ILokhttp3/internal/http2/ErrorCode;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g()Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->t:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final getSource()Lij7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-ne v1, v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    return v2
.end method

.method public final i()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 12
    .line 13
    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Z

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->p:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 25
    .line 26
    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->a:Z

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->c:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_2
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :cond_3
    monitor-exit p0

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final j(Lokhttp3/Headers;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, ":status"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ":method"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->k:Z

    .line 38
    .line 39
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->f:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 47
    .line 48
    iput-boolean v1, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->i()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 61
    .line 62
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lokhttp3/internal/http2/Http2Connection;->g(I)Lokhttp3/internal/http2/Http2Stream;

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void

    .line 68
    :goto_2
    monitor-exit p0

    .line 69
    throw p1
.end method
