.class public final synthetic Lz64;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz64;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput-wide p2, p0, Lz64;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lz64;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget-wide v1, p0, Lz64;->b:J

    .line 4
    .line 5
    sget-object p0, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-wide v3, v0, Lokhttp3/internal/http2/Http2Connection;->x:J

    .line 9
    .line 10
    iget-wide v5, v0, Lokhttp3/internal/http2/Http2Connection;->t:J

    .line 11
    .line 12
    cmp-long p0, v3, v5

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    move p0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 v7, 0x1

    .line 21
    .line 22
    add-long/2addr v5, v7

    .line 23
    iput-wide v5, v0, Lokhttp3/internal/http2/Http2Connection;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    move p0, v4

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :try_start_1
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 39
    .line 40
    invoke-virtual {p0, v3, v4, v4}, Lokhttp3/internal/http2/Http2Writer;->m(IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 46
    .line 47
    invoke-virtual {v0, v3, v3, p0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
.end method
