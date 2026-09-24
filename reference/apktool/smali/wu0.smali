.class public Lwu0;
.super Lka6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public c:J

.field public d:J

.field public final e:J

.field public final f:Lx5;

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 3

    .line 36
    invoke-static {}, Lwu0;->b()Lvu0;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lvu0;->K(J)V

    .line 37
    invoke-direct {p0, p1, v0}, Lka6;-><init>(Ljava/io/InputStream;Lja6;)V

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lwu0;->c:J

    .line 39
    iget-wide v1, v0, Lvu0;->t:J

    .line 40
    iput-wide v1, p0, Lwu0;->e:J

    .line 41
    iget-boolean p1, v0, Lvu0;->y:Z

    .line 42
    iput-boolean p1, p0, Lwu0;->k:Z

    .line 43
    iget-object p1, v0, Lvu0;->x:Lx5;

    .line 44
    iput-object p1, p0, Lwu0;->f:Lx5;

    return-void
.end method

.method public constructor <init>(Lvu0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ll5;->k:Ly4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ly4;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Lka6;-><init>(Ljava/io/InputStream;Lja6;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lwu0;->c:J

    .line 15
    .line 16
    iget-wide v0, p1, Lvu0;->t:J

    .line 17
    .line 18
    iput-wide v0, p0, Lwu0;->e:J

    .line 19
    .line 20
    iget-boolean v0, p1, Lvu0;->y:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lwu0;->k:Z

    .line 23
    .line 24
    iget-object p1, p1, Lvu0;->x:Lx5;

    .line 25
    .line 26
    iput-object p1, p0, Lwu0;->f:Lx5;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "origin == null"

    .line 30
    .line 31
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method

.method public static b()Lvu0;
    .locals 3

    .line 1
    new-instance v0, Lvu0;

    .line 2
    .line 3
    invoke-direct {v0}, Ll5;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    iput-wide v1, v0, Lvu0;->t:J

    .line 9
    .line 10
    sget-object v1, Lho6;->a:Lx5;

    .line 11
    .line 12
    iput-object v1, v0, Lvu0;->x:Lx5;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lvu0;->y:Z

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-wide v0, p0, Lwu0;->c:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lwu0;->c:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lka6;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final available()I
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lwu0;->e:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lwu0;->g()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sub-long/2addr v2, v0

    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_0
    const-wide/32 v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    long-to-int v0, v0

    .line 34
    invoke-super {p0}, Lka6;->available()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwu0;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lka6;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final declared-synchronized g()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lwu0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lwu0;->c:J

    .line 8
    .line 9
    iput-wide v0, p0, Lwu0;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read()I
    .locals 4

    const-wide/16 v0, 0x0

    .line 47
    iget-wide v2, p0, Lwu0;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lwu0;->g()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lwu0;->g()J

    .line 49
    iget-object p0, p0, Lwu0;->f:Lx5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0

    .line 50
    :cond_0
    invoke-super {p0}, Lka6;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 51
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lwu0;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lwu0;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lwu0;->g()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    cmp-long v4, v4, v0

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lwu0;->g()J

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lwu0;->f:Lx5;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0

    .line 27
    :cond_0
    int-to-long v4, p3

    .line 28
    cmp-long p3, v0, v2

    .line 29
    .line 30
    if-ltz p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lwu0;->g()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    sub-long/2addr v0, v2

    .line 37
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    :cond_1
    long-to-int p3, v4

    .line 42
    invoke-super {p0, p1, p2, p3}, Lka6;->read([BII)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lwu0;->d:J

    .line 8
    .line 9
    iput-wide v0, p0, Lwu0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lwu0;->e:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lwu0;->g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sub-long/2addr v0, v2

    .line 15
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iget-wide v0, p0, Lwu0;->c:J

    .line 26
    .line 27
    add-long/2addr v0, p1

    .line 28
    iput-wide v0, p0, Lwu0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-wide p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
