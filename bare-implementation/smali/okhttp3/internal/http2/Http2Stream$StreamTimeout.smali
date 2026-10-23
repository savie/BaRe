.class public final Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lc70;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamTimeout"
.end annotation


# instance fields
.field public final synthetic n:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->n:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-direct {p0}, Lc70;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    new-instance p0, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    const-string p1, "timeout"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->n:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->n:Lokhttp3/internal/http2/Http2Stream;

    .line 9
    .line 10
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->G:J

    .line 14
    .line 15
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_0
    const-wide/16 v0, 0x1

    .line 24
    .line 25
    add-long/2addr v2, v0

    .line 26
    :try_start_1
    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->y:J

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/32 v2, 0x3b9aca00

    .line 33
    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->H:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 47
    .line 48
    const-string v3, " ping"

    .line 49
    .line 50
    invoke-static {v1, v2, v3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lbh;

    .line 55
    .line 56
    const/16 v3, 0x1d

    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x6

    .line 62
    invoke-static {v0, v1, v2, p0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc70;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method
