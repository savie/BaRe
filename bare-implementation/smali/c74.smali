.class public final synthetic Lc74;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc74;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput p2, p0, Lc74;->b:I

    .line 7
    .line 8
    iput p3, p0, Lc74;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lc74;->a:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget v1, p0, Lc74;->b:I

    .line 4
    .line 5
    iget p0, p0, Lc74;->c:I

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v1, p0, v3}, Lokhttp3/internal/http2/Http2Writer;->m(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 21
    .line 22
    return-object p0
.end method
