.class public final Lrz8;
.super Lyp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/github/luben/zstd/ZstdInputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStream;

    .line 5
    .line 6
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ly4;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, v1, Ll5;->k:Ly4;

    .line 16
    .line 17
    new-instance p1, Lwu0;

    .line 18
    .line 19
    invoke-direct {p1, v1}, Lwu0;-><init>(Lvu0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read()I
    .locals 0

    .line 13
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 12
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lrz8;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStream;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ln84;->c(Ljava/io/InputStream;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz8;->a:Lcom/github/luben/zstd/ZstdInputStream;

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
