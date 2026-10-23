.class public final synthetic Lokhttp3/internal/http2/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/b;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput p2, p0, Lokhttp3/internal/http2/b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/internal/http2/b;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/b;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget p0, p0, Lokhttp3/internal/http2/b;->b:I

    .line 4
    .line 5
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/http2/PushObserver;

    .line 6
    .line 7
    check-cast v1, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 13
    .line 14
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 15
    .line 16
    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/http2/Http2Writer;->n(ILokhttp3/internal/http2/ErrorCode;)V

    .line 17
    .line 18
    .line 19
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->R:Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_2
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :catch_0
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 35
    .line 36
    return-object p0
.end method
