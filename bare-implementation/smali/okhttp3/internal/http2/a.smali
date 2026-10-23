.class public final synthetic Lokhttp3/internal/http2/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic b:I

.field public final synthetic c:Lnw0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILnw0;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/a;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput p2, p0, Lokhttp3/internal/http2/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/internal/http2/a;->c:Lnw0;

    .line 9
    .line 10
    iput p4, p0, Lokhttp3/internal/http2/a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/a;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http2/a;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/http2/a;->c:Lnw0;

    .line 6
    .line 7
    iget p0, p0, Lokhttp3/internal/http2/a;->d:I

    .line 8
    .line 9
    sget-object v3, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 10
    .line 11
    :try_start_0
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/http2/PushObserver;

    .line 12
    .line 13
    check-cast v3, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    int-to-long v3, p0

    .line 19
    invoke-virtual {v2, v3, v4}, Lnw0;->skip(J)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 23
    .line 24
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->n(ILokhttp3/internal/http2/ErrorCode;)V

    .line 27
    .line 28
    .line 29
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->R:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    monitor-exit v0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0

    .line 43
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :catch_0
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 45
    .line 46
    return-object p0
.end method
