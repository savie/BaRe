.class public final Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwi7;


# instance fields
.field public final a:Lokhttp3/internal/connection/Exchange$RequestBodySink;

.field public final b:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

.field public final synthetic c:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->c:Lokhttp3/internal/connection/Exchange;

    .line 5
    .line 6
    new-instance v0, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 7
    .line 8
    iget-object v1, p1, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 9
    .line 10
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lwi7;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lwi7;->a()Lnh7;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2, v3}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lnh7;J)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->a:Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 24
    .line 25
    new-instance v0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 26
    .line 27
    iget-object v1, p1, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 28
    .line 29
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lwi7;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lwi7;->getSource()Lij7;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, p1, v1, v2, v3}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lij7;J)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->b:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Lnh7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->a:Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 2
    .line 3
    return-object p0
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->c:Lokhttp3/internal/connection/Exchange;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 4
    .line 5
    invoke-interface {p0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getSource()Lij7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->b:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 2
    .line 3
    return-object p0
.end method
