.class public abstract Luu0;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public b:Ljava/nio/ByteBuffer;

.field public c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    add-long v0, p1, p3

    .line 5
    .line 6
    iput-wide v0, p0, Luu0;->a:J

    .line 7
    .line 8
    cmp-long v0, v0, p1

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iput-wide p1, p0, Luu0;->c:J

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Invalid length of stream at offset="

    .line 18
    .line 19
    const-string v1, ", length="

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method


# virtual methods
.method public abstract a(JLjava/nio/ByteBuffer;)I
.end method

.method public final declared-synchronized read()I
    .locals 5

    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Luu0;->c:J

    iget-wide v2, p0, Luu0;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    .line 75
    monitor-exit p0

    return v1

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Luu0;->b:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 77
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Luu0;->b:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 79
    :goto_0
    iget-wide v3, p0, Luu0;->c:J

    iget-object v0, p0, Luu0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3, v4, v0}, Luu0;->a(JLjava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v2, :cond_2

    .line 80
    monitor-exit p0

    return v1

    .line 81
    :cond_2
    :try_start_2
    iget-wide v0, p0, Luu0;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Luu0;->c:J

    .line 82
    iget-object v0, p0, Luu0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Luu0;->c:J

    .line 3
    .line 4
    iget-wide v2, p0, Luu0;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-ltz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    int-to-long v4, p3

    .line 14
    sub-long/2addr v2, v0

    .line 15
    :try_start_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long p3, v0, v2

    .line 22
    .line 23
    if-gtz p3, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    if-ltz p2, :cond_3

    .line 29
    .line 30
    :try_start_2
    array-length p3, p1

    .line 31
    if-gt p2, p3, :cond_3

    .line 32
    .line 33
    array-length p3, p1

    .line 34
    sub-int/2addr p3, p2

    .line 35
    int-to-long v2, p3

    .line 36
    cmp-long p3, v0, v2

    .line 37
    .line 38
    if-gtz p3, :cond_3

    .line 39
    .line 40
    long-to-int p3, v0

    .line 41
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-wide p2, p0, Luu0;->c:J

    .line 46
    .line 47
    invoke-virtual {p0, p2, p3, p1}, Luu0;->a(JLjava/nio/ByteBuffer;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lez p1, :cond_2

    .line 52
    .line 53
    iget-wide p2, p0, Luu0;->c:J

    .line 54
    .line 55
    int-to-long v0, p1

    .line 56
    add-long/2addr p2, v0

    .line 57
    iput-wide p2, p0, Luu0;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    monitor-exit p0

    .line 63
    return p1

    .line 64
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 65
    .line 66
    const-string p2, "offset or len are out of bounds"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    throw p1
.end method
