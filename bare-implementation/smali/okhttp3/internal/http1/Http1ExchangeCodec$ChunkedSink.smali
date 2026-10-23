.class final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnh7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkedSink"
.end annotation


# instance fields
.field public final a:Lbr3;

.field public b:Z

.field public final synthetic c:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->c:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    new-instance v0, Lbr3;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 9
    .line 10
    invoke-interface {p1}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lnh7;->d()Lf48;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Lbr3;-><init>(Lf48;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->a:Lbr3;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->b:Z

    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->c:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 12
    .line 13
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 14
    .line 15
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "0\r\n\r\n"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->a:Lbr3;

    .line 25
    .line 26
    iget-object v1, v0, Lbr3;->e:Lf48;

    .line 27
    .line 28
    sget-object v2, Lf48;->d:Le48;

    .line 29
    .line 30
    iput-object v2, v0, Lbr3;->e:Lf48;

    .line 31
    .line 32
    invoke-virtual {v1}, Lf48;->a()Lf48;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lf48;->b()Lf48;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->c:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iput v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw v0
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->a:Lbr3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f0(Lnw0;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p2, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->c:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 13
    .line 14
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 15
    .line 16
    invoke-interface {p0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0, p2, p3}, Lyw0;->Q(J)Lyw0;

    .line 21
    .line 22
    .line 23
    const-string v0, "\r\n"

    .line 24
    .line 25
    invoke-interface {p0, v0}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, p2, p3}, Lnh7;->f0(Lnw0;J)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p0, "closed"

    .line 36
    .line 37
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->c:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 11
    .line 12
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lyw0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method
