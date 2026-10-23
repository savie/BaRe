.class public final Lm77;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:J

.field public final c:Lja1;

.field public final d:Lmi5;

.field public e:J

.field public volatile f:Z

.field public final k:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLja1;Lmi5;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm77;->a:Ljava/io/OutputStream;

    .line 8
    .line 9
    iput-wide p2, p0, Lm77;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lm77;->c:Lja1;

    .line 12
    .line 13
    iput-object p5, p0, Lm77;->d:Lmi5;

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p4, p0}, Lja1;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Lm77;->k:[B

    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    iget-object p0, p0, Lm77;->a:Ljava/io/OutputStream;

    .line 26
    .line 27
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm77;->f:Z

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
    iput-boolean v0, p0, Lm77;->f:Z

    .line 8
    .line 9
    iget-object v0, p0, Lm77;->c:Lja1;

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
    iget-object p0, p0, Lm77;->a:Ljava/io/OutputStream;

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
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm77;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lm77;->a:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Output stream closed."

    .line 12
    .line 13
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 68
    iget-object v0, p0, Lm77;->k:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lm77;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lm77;->f:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-wide v0, p0, Lm77;->e:J

    .line 12
    .line 13
    int-to-long v2, p3

    .line 14
    add-long/2addr v0, v2

    .line 15
    iget-wide v4, p0, Lm77;->b:J

    .line 16
    .line 17
    cmp-long v6, v0, v4

    .line 18
    .line 19
    if-gtz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lm77;->a:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    iget-wide p1, p0, Lm77;->e:J

    .line 27
    .line 28
    add-long/2addr p1, v2

    .line 29
    iput-wide p1, p0, Lm77;->e:J

    .line 30
    .line 31
    iget-object p0, p0, Lm77;->d:Lmi5;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lmi5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 42
    .line 43
    const-string p1, "Chunk writer exceeded expected byte count. Expected="

    .line 44
    .line 45
    const-string p2, ", Attempted="

    .line 46
    .line 47
    invoke-static {p1, p2, v4, v5}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    const-string p0, "Output stream closed."

    .line 63
    .line 64
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
