.class public Lcom/nimbusds/jose/util/BoundedInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 14
    .line 15
    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 16
    .line 17
    iput-object p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public getLimitBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isPropagateClose()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 2
    .line 3
    return p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J
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

.method public markSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

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

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exceeded configured input limit of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-string p0, " bytes"

    .line 82
    invoke-static {v1, v2, p0, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 85
    iget-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const-string v5, " bytes"

    .line 8
    .line 9
    const-string v6, "Exceeded configured input limit of "

    .line 10
    .line 11
    if-ltz v4, :cond_1

    .line 12
    .line 13
    iget-wide v7, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 14
    .line 15
    cmp-long v0, v7, v0

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 26
    .line 27
    invoke-static {p2, p3, v5, p1}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, -0x1

    .line 43
    if-ne p1, p2, :cond_2

    .line 44
    .line 45
    return p2

    .line 46
    :cond_2
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 47
    .line 48
    int-to-long v0, p1

    .line 49
    add-long/2addr p2, v0

    .line 50
    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 51
    .line 52
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 53
    .line 54
    cmp-long v2, v0, v2

    .line 55
    .line 56
    if-ltz v2, :cond_4

    .line 57
    .line 58
    cmp-long p2, p2, v0

    .line 59
    .line 60
    if-gez p2, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 69
    .line 70
    invoke-static {p2, p3, v5, p1}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :goto_2
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J
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

.method public setPropagateClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 2
    .line 3
    return-void
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 23
    .line 24
    add-long/2addr v0, p1

    .line 25
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 26
    .line 27
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

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
