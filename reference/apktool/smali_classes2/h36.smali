.class public final Lh36;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lja1;

.field public final c:Lmi5;

.field public final d:Lxs3;

.field public e:J

.field public f:J

.field public volatile k:Z

.field public final n:[B


# direct methods
.method public constructor <init>(Lq63;JJLja1;Lmi5;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p4, p0, Lh36;->a:J

    .line 11
    .line 12
    iput-object p6, p0, Lh36;->b:Lja1;

    .line 13
    .line 14
    iput-object p7, p0, Lh36;->c:Lmi5;

    .line 15
    .line 16
    invoke-virtual {p1}, Lq63;->G()Lxs3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lh36;->d:Lxs3;

    .line 21
    .line 22
    iput-wide p2, p0, Lh36;->e:J

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p6, p0}, Lja1;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    iput-object p1, p0, Lh36;->n:[B

    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    iget-object p0, p0, Lh36;->d:Lxs3;

    .line 35
    .line 36
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh36;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lh36;->k:Z

    .line 8
    .line 9
    iget-object v0, p0, Lh36;->b:Lja1;

    .line 10
    .line 11
    iget-object v1, v0, Lja1;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, v0, Lja1;->b:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v1

    .line 20
    iget-object p0, p0, Lh36;->d:Lxs3;

    .line 21
    .line 22
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    .line 28
    throw p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lh36;->k:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "Output stream closed."

    .line 7
    .line 8
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 78
    iget-object v0, p0, Lh36;->n:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, v0, v1, p1}, Lh36;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lh36;->k:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-wide v1, p0, Lh36;->f:J

    .line 12
    .line 13
    int-to-long v7, p3

    .line 14
    add-long/2addr v1, v7

    .line 15
    iget-wide v3, p0, Lh36;->a:J

    .line 16
    .line 17
    cmp-long v5, v1, v3

    .line 18
    .line 19
    if-gtz v5, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lh36;->d:Lxs3;

    .line 22
    .line 23
    iget-wide v2, p0, Lh36;->e:J

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    move v5, p2

    .line 27
    move v6, p3

    .line 28
    invoke-interface/range {v1 .. v6}, Lxs3;->k(J[BII)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lh36;->e:J

    .line 32
    .line 33
    add-long/2addr v1, v7

    .line 34
    iput-wide v1, p0, Lh36;->e:J

    .line 35
    .line 36
    iget-wide v1, p0, Lh36;->f:J

    .line 37
    .line 38
    add-long/2addr v1, v7

    .line 39
    iput-wide v1, p0, Lh36;->f:J

    .line 40
    .line 41
    iget-object v0, p0, Lh36;->c:Lmi5;

    .line 42
    .line 43
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lmi5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v5, "Chunk writer exceeded expected byte count. Expected="

    .line 54
    .line 55
    const-string v6, ", Attempted="

    .line 56
    .line 57
    invoke-static {v5, v6, v3, v4}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    const-string v0, "Output stream closed."

    .line 73
    .line 74
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
