.class public final Lokhttp3/internal/http1/Http1ExchangeCodec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;
    }
.end annotation


# static fields
.field public static final f:Lokhttp3/Headers;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

.field public final c:Lokhttp3/internal/connection/BufferedSocket;

.field public d:I

.field public final e:Lokhttp3/internal/http1/HeadersReader;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lokhttp3/Headers;->b:Lokhttp3/Headers;

    .line 2
    .line 3
    const-string v0, "OkHttp-Response-Body"

    .line 4
    .line 5
    const-string v1, "Truncated"

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Ljava/lang/String;

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    rem-int/2addr v2, v1

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, [Ljava/lang/String;

    .line 28
    .line 29
    array-length v3, v2

    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    if-ge v5, v3, :cond_1

    .line 33
    .line 34
    aget-object v6, v2, v5

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    aget-object v6, v0, v5

    .line 39
    .line 40
    invoke-static {v6}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    aput-object v6, v2, v5

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "Headers cannot be null"

    .line 54
    .line 55
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    array-length v0, v2

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    invoke-static {v4, v0, v1}, Liz1;->n(III)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ltz v0, :cond_2

    .line 67
    .line 68
    :goto_1
    aget-object v1, v2, v4

    .line 69
    .line 70
    add-int/lit8 v3, v4, 0x1

    .line 71
    .line 72
    aget-object v3, v2, v3

    .line 73
    .line 74
    invoke-static {v1}, Lokhttp3/internal/_HeadersCommonKt;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1}, Lokhttp3/internal/_HeadersCommonKt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eq v4, v0, :cond_2

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-instance v0, Lokhttp3/Headers;

    .line 86
    .line 87
    invoke-direct {v0, v2}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    const-string v0, "Expected alternating header names and values"

    .line 94
    .line 95
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->a:Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 10
    .line 11
    iput-object p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 12
    .line 13
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    .line 14
    .line 15
    invoke-interface {p3}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lzw0;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->e:Lokhttp3/internal/http1/HeadersReader;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 2
    .line 3
    invoke-interface {p0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lyw0;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Lokhttp3/Request;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 5
    .line 6
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->h()Lokhttp3/Route;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 35
    .line 36
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 43
    .line 44
    if-ne v0, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/http/RequestLine;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :goto_0
    const-string v0, " HTTP/1.1"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p1, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->l(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 2
    .line 3
    invoke-interface {p0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Lokhttp3/Response;)Lij7;
    .locals 10

    .line 1
    iget-object v0, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 2
    .line 3
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->j(Lokhttp3/HttpUrl;J)Lij7;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 19
    .line 20
    invoke-static {v1, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "chunked"

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    const-string v3, "state: "

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    const/4 v5, 0x4

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object p1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 38
    .line 39
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 40
    .line 41
    if-ne v0, v5, :cond_1

    .line 42
    .line 43
    iput v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 44
    .line 45
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 52
    .line 53
    invoke-static {p0, v3}, Lg84;->e(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->e(Lokhttp3/Response;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    const-wide/16 v8, -0x1

    .line 62
    .line 63
    cmp-long p1, v6, v8

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v6, v7}, Lokhttp3/internal/http1/Http1ExchangeCodec;->j(Lokhttp3/HttpUrl;J)Lij7;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_3
    iget-object p1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 75
    .line 76
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 77
    .line 78
    if-ne v0, v5, :cond_4

    .line 79
    .line 80
    iput v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 81
    .line 82
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 83
    .line 84
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_4
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 97
    .line 98
    invoke-static {p0, v3}, Lg84;->e(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v2
.end method

.method public final e(Z)Lokhttp3/Response$Builder;
    .locals 13

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->e:Lokhttp3/internal/http1/HeadersReader;

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x3

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v1, v5, :cond_1

    .line 14
    .line 15
    if-ne v1, v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "state: "

    .line 19
    .line 20
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 21
    .line 22
    invoke-static {p0, p1}, Lg84;->e(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http1/HeadersReader;->a:Lzw0;

    .line 27
    .line 28
    iget-wide v5, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 29
    .line 30
    invoke-interface {v1, v5, v6}, Lzw0;->E(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-wide v5, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    int-to-long v7, v7

    .line 41
    sub-long/2addr v5, v7

    .line 42
    iput-wide v5, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 43
    .line 44
    invoke-static {v1}, Lokhttp3/internal/http/StatusLine$Companion;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v5, v1, Lokhttp3/internal/http/StatusLine;->b:I

    .line 49
    .line 50
    new-instance v6, Lokhttp3/Response$Builder;

    .line 51
    .line 52
    invoke-direct {v6}, Lokhttp3/Response$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v7, v1, Lokhttp3/internal/http/StatusLine;->a:Lokhttp3/Protocol;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iput-object v7, v6, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 61
    .line 62
    iput v5, v6, Lokhttp3/Response$Builder;->c:I

    .line 63
    .line 64
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-object v1, v6, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 72
    .line 73
    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v7, v0, Lokhttp3/internal/http1/HeadersReader;->a:Lzw0;

    .line 77
    .line 78
    iget-wide v8, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 79
    .line 80
    invoke-interface {v7, v8, v9}, Lzw0;->E(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    iget-wide v8, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    int-to-long v10, v10

    .line 91
    sub-long/2addr v8, v10

    .line 92
    iput-wide v8, v0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    const/4 v9, 0x4

    .line 99
    if-nez v8, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, v6, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 110
    .line 111
    const/16 v0, 0x64

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    if-ne v5, v0, :cond_2

    .line 116
    .line 117
    return-object v2

    .line 118
    :cond_2
    if-ne v5, v0, :cond_3

    .line 119
    .line 120
    iput v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 121
    .line 122
    return-object v6

    .line 123
    :catch_0
    move-exception p1

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    const/16 p1, 0x66

    .line 126
    .line 127
    if-gt p1, v5, :cond_4

    .line 128
    .line 129
    const/16 p1, 0xc8

    .line 130
    .line 131
    if-ge v5, p1, :cond_4

    .line 132
    .line 133
    iput v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 134
    .line 135
    return-object v6

    .line 136
    :cond_4
    iput v9, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 137
    .line 138
    return-object v6

    .line 139
    :cond_5
    const-string v8, ""

    .line 140
    .line 141
    const/16 v10, 0x3a

    .line 142
    .line 143
    invoke-static {v10, v3, v9, v7}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    const/4 v11, -0x1

    .line 148
    const/4 v12, 0x0

    .line 149
    if-eq v9, v11, :cond_6

    .line 150
    .line 151
    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static {v1, v8, v7}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-ne v9, v10, :cond_7

    .line 170
    .line 171
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-static {v1, v8, v7}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    invoke-static {v1, v8, v7}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :goto_2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 184
    .line 185
    invoke-interface {p0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->h()Lokhttp3/Route;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iget-object p0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 190
    .line 191
    iget-object p0, p0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 192
    .line 193
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->h()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    new-instance v0, Ljava/io/IOException;

    .line 198
    .line 199
    const-string v1, "unexpected end of stream on "

    .line 200
    .line 201
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    throw v0
.end method

.method public final f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 2
    .line 3
    invoke-interface {p0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lyw0;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final g(Lokhttp3/Response;)J
    .locals 1

    .line 1
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    const-string p0, "Transfer-Encoding"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "chunked"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-wide/16 p0, -0x1

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->e(Lokhttp3/Response;)J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    return-wide p0
.end method

.method public final getSocket()Lwi7;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Lokhttp3/internal/http/ExchangeCodec$Carrier;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Lokhttp3/Request;J)Lnh7;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Transfer-Encoding"

    .line 5
    .line 6
    iget-object p1, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "chunked"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    const-string v1, "state: "

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 26
    .line 27
    if-ne p1, v3, :cond_0

    .line 28
    .line 29
    iput v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 30
    .line 31
    new-instance p1, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 38
    .line 39
    invoke-static {p0, v1}, Lg84;->e(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    const-wide/16 v4, -0x1

    .line 44
    .line 45
    cmp-long p1, p2, v4

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 50
    .line 51
    if-ne p1, v3, :cond_2

    .line 52
    .line 53
    iput v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 54
    .line 55
    new-instance p1, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 62
    .line 63
    invoke-static {p0, v1}, Lg84;->e(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    const-string p0, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 68
    .line 69
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final j(Lokhttp3/HttpUrl;J)Lij7;
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 8
    .line 9
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string p1, "state: "

    .line 16
    .line 17
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 18
    .line 19
    invoke-static {p0, p1}, Lg84;->e(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final k(Lokhttp3/Response;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->e(Lokhttp3/Response;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 13
    .line 14
    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->j(Lokhttp3/HttpUrl;J)Lij7;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const p1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt;->g(Lij7;I)Z

    .line 24
    .line 25
    .line 26
    check-cast p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    .line 27
    .line 28
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final l(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 9
    .line 10
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p2}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-interface {p2, v1}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, p2, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v3, v4}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, ": "

    .line 43
    .line 44
    invoke-interface {v3, v4}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3, v4}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3, v1}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1, v1}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    const-string p1, "state: "

    .line 74
    .line 75
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:I

    .line 76
    .line 77
    invoke-static {p0, p1}, Lg84;->e(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
