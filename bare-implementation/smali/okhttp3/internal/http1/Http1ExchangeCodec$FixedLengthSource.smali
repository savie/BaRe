.class final Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FixedLengthSource"
.end annotation


# instance fields
.field public e:J

.field public final synthetic f:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;J)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->f:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->e:J

    .line 10
    .line 11
    const-wide/16 p1, 0x0

    .line 12
    .line 13
    cmp-long p1, p3, p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lokhttp3/Headers;->b:Lokhttp3/Headers;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Lnw0;J)J
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_4

    .line 9
    .line 10
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->e:J

    .line 15
    .line 16
    cmp-long v4, v2, v0

    .line 17
    .line 18
    const-wide/16 v5, -0x1

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return-wide v5

    .line 23
    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->H(Lnw0;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    cmp-long p3, p1, v5

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->e:J

    .line 36
    .line 37
    sub-long/2addr v2, p1

    .line 38
    iput-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->e:J

    .line 39
    .line 40
    cmp-long p3, v2, v0

    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    sget-object p3, Lokhttp3/Headers;->b:Lokhttp3/Headers;

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-wide p1

    .line 50
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->f:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 51
    .line 52
    iget-object p1, p1, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 53
    .line 54
    invoke-interface {p1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/net/ProtocolException;

    .line 58
    .line 59
    const-string p2, "unexpected end of stream"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    const-string p0, "closed"

    .line 71
    .line 72
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-wide v0

    .line 76
    :cond_4
    const-string p0, "byteCount < 0: "

    .line 77
    .line 78
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-wide v0
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->e:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 15
    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x64

    .line 22
    .line 23
    :try_start_0
    invoke-static {p0, v0}, Lokhttp3/internal/_UtilJvmKt;->g(Lij7;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->f:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 32
    .line 33
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 34
    .line 35
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 45
    .line 46
    return-void
.end method
