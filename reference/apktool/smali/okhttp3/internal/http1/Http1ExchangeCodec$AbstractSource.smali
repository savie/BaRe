.class abstract Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lij7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractSource"
.end annotation


# instance fields
.field public final a:Lokhttp3/HttpUrl;

.field public final b:Lbr3;

.field public c:Z

.field public final synthetic d:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->d:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    new-instance p2, Lbr3;

    .line 12
    .line 13
    iget-object p1, p1, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 14
    .line 15
    invoke-interface {p1}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lij7;->d()Lf48;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Lbr3;-><init>(Lf48;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->b:Lbr3;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public H(Lnw0;J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->d:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 7
    .line 8
    invoke-interface {v1}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1, p2, p3}, Lij7;->H(Lnw0;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide p0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object p2, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 19
    .line 20
    invoke-interface {p2}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final a(Lokhttp3/Headers;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->d:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    iget v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x5

    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->b:Lbr3;

    .line 16
    .line 17
    iget-object v3, v1, Lbr3;->e:Lf48;

    .line 18
    .line 19
    sget-object v4, Lf48;->d:Le48;

    .line 20
    .line 21
    iput-object v4, v1, Lbr3;->e:Lf48;

    .line 22
    .line 23
    invoke-virtual {v3}, Lf48;->a()Lf48;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lf48;->b()Lf48;

    .line 27
    .line 28
    .line 29
    iput v2, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->a:Lokhttp3/OkHttpClient;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    invoke-static {v0, p0, p1}, Lokhttp3/internal/http/HttpHeaders;->d(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    const-string p0, "state: "

    .line 52
    .line 53
    iget p1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 54
    .line 55
    invoke-static {p1, p0}, Lx5;->g(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->b:Lbr3;

    .line 2
    .line 3
    return-object p0
.end method
