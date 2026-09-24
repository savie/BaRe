.class public final Lc61;
.super Lka6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic f:I


# instance fields
.field public c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lb61;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    .line 2
    .line 3
    iget-object v1, p1, Ll5;->k:Ly4;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Ly4;->k:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/io/InputStream;

    .line 10
    .line 11
    iget-object v2, p1, Lb61;->t:Ljava/util/zip/CRC32;

    .line 12
    .line 13
    const-string v3, "builder.checksum"

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lka6;-><init>(Ljava/io/InputStream;Lja6;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p1, Lb61;->x:J

    .line 25
    .line 26
    iput-wide v0, p0, Lc61;->e:J

    .line 27
    .line 28
    iget-wide v0, p1, Lb61;->y:J

    .line 29
    .line 30
    iput-wide v0, p0, Lc61;->d:J

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "origin == null"

    .line 34
    .line 35
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    iget-wide v1, p0, Lc61;->c:J

    .line 7
    .line 8
    int-to-long v3, p1

    .line 9
    add-long/2addr v1, v3

    .line 10
    iput-wide v1, p0, Lc61;->c:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lka6;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    monitor-exit p0

    .line 19
    iget-wide v1, p0, Lc61;->e:J

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :try_start_3
    iget-wide v1, p0, Lc61;->c:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    :try_start_4
    monitor-exit p0

    .line 31
    iget-wide v3, p0, Lc61;->e:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    if-gez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    goto :goto_4

    .line 40
    :catchall_2
    move-exception p1

    .line 41
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 42
    :try_start_6
    throw p1

    .line 43
    :cond_1
    :goto_1
    if-ne p1, v0, :cond_4

    .line 44
    .line 45
    :cond_2
    iget-wide v0, p0, Lc61;->d:J

    .line 46
    .line 47
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 48
    .line 49
    check-cast p1, Ljava/util/zip/CheckedInputStream;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    cmp-long p1, v0, v2

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 65
    .line 66
    const-string v0, "Checksum verification failed."

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    :cond_4
    :goto_2
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 75
    :try_start_8
    throw p1

    .line 76
    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 77
    throw p1
.end method

.method public final declared-synchronized skip(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iget-wide v0, p0, Lc61;->c:J

    .line 9
    .line 10
    add-long/2addr v0, p1

    .line 11
    iput-wide v0, p0, Lc61;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-wide p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method
