.class public final synthetic Lb74;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic b:I

.field public final synthetic c:Lokhttp3/internal/http2/ErrorCode;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb74;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput p2, p0, Lb74;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lb74;->c:Lokhttp3/internal/http2/ErrorCode;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lb74;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget v1, p0, Lb74;->b:I

    .line 4
    .line 5
    iget-object p0, p0, Lb74;->c:Lokhttp3/internal/http2/ErrorCode;

    .line 6
    .line 7
    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 8
    .line 9
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 10
    .line 11
    invoke-virtual {v2, v1, p0}, Lokhttp3/internal/http2/Http2Writer;->n(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 22
    .line 23
    return-object p0
.end method
