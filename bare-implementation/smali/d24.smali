.class public final Ld24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnh7;


# instance fields
.field public final a:Lrf6;

.field public final b:Ljava/util/zip/Deflater;

.field public final c:Lpg2;

.field public d:Z

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lyw0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrf6;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lrf6;-><init>(Lnh7;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld24;->a:Lrf6;

    .line 10
    .line 11
    new-instance p1, Ljava/util/zip/Deflater;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {p1, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ld24;->b:Ljava/util/zip/Deflater;

    .line 19
    .line 20
    new-instance v1, Lpg2;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Lpg2;-><init>(Lrf6;Ljava/util/zip/Deflater;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Ld24;->c:Lpg2;

    .line 26
    .line 27
    new-instance p1, Ljava/util/zip/CRC32;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ld24;->e:Ljava/util/zip/CRC32;

    .line 33
    .line 34
    const/16 p0, 0x1f8b

    .line 35
    .line 36
    iget-object p1, v0, Lrf6;->b:Lnw0;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lnw0;->W(I)V

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lnw0;->J(I)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    invoke-virtual {p1, p0}, Lnw0;->J(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lnw0;->U(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lnw0;->J(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lnw0;->J(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld24;->b:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Ld24;->a:Lrf6;

    .line 4
    .line 5
    iget-boolean v2, p0, Ld24;->d:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    :try_start_0
    iget-object v2, p0, Ld24;->c:Lpg2;

    .line 11
    .line 12
    iget-object v3, v2, Lpg2;->b:Ljava/util/zip/Deflater;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lpg2;->a(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Ld24;->e:Ljava/util/zip/CRC32;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    long-to-int v2, v2

    .line 28
    iget-boolean v3, v1, Lrf6;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    iget-object v4, v1, Lrf6;->b:Lnw0;

    .line 31
    .line 32
    const-string v5, "closed"

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-static {v2}, Lk55;->A(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v4, v2}, Lnw0;->U(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lrf6;->a()Lyw0;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getBytesRead()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    long-to-int v2, v2

    .line 51
    iget-boolean v3, v1, Lrf6;->c:Z

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    invoke-static {v2}, Lk55;->A(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v4, v2}, Lnw0;->U(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lrf6;->a()Lyw0;

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :catchall_0
    move-exception v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    if-nez v2, :cond_3

    .line 87
    .line 88
    move-object v2, v0

    .line 89
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lrf6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_2
    move-exception v0

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    move-object v2, v0

    .line 97
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Ld24;->d:Z

    .line 99
    .line 100
    if-nez v2, :cond_5

    .line 101
    .line 102
    :goto_3
    return-void

    .line 103
    :cond_5
    throw v2
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Ld24;->a:Lrf6;

    .line 2
    .line 3
    iget-object p0, p0, Lrf6;->a:Lnh7;

    .line 4
    .line 5
    invoke-interface {p0}, Lnh7;->d()Lf48;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final f0(Lnw0;J)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p1, Lnw0;->a:Lm67;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-wide v3, p2

    .line 16
    :goto_0
    cmp-long v5, v3, v0

    .line 17
    .line 18
    if-lez v5, :cond_1

    .line 19
    .line 20
    iget v5, v2, Lm67;->c:I

    .line 21
    .line 22
    iget v6, v2, Lm67;->b:I

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    int-to-long v5, v5

    .line 26
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    long-to-int v5, v5

    .line 31
    iget-object v6, v2, Lm67;->a:[B

    .line 32
    .line 33
    iget v7, v2, Lm67;->b:I

    .line 34
    .line 35
    iget-object v8, p0, Ld24;->e:Ljava/util/zip/CRC32;

    .line 36
    .line 37
    invoke-virtual {v8, v6, v7, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 38
    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    sub-long/2addr v3, v5

    .line 42
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Ld24;->c:Lpg2;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lpg2;->f0(Lnw0;J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string p0, "byteCount < 0: "

    .line 55
    .line 56
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Ld24;->c:Lpg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lpg2;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
