.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final a:Lokhttp3/internal/connection/ConnectInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/connection/ConnectInterceptor;->a:Lokhttp3/internal/connection/ConnectInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 8

    .line 1
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->y:Z

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->x:Z

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->n:Lokhttp3/internal/connection/ExchangeFinder;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lokhttp3/internal/connection/ExchangeFinder;->a()Lokhttp3/internal/connection/RealConnection;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget v3, p1, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 35
    .line 36
    iget-object v4, v1, Lokhttp3/internal/connection/RealConnection;->p:Lokhttp3/internal/connection/BufferedSocket;

    .line 37
    .line 38
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    new-instance v3, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 43
    .line 44
    invoke-direct {v3, v2, v1, p1, v5}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5}, Lij7;->d()Lf48;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    int-to-long v6, v3

    .line 62
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v5, v6, v7, v3}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 65
    .line 66
    .line 67
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Lnh7;->d()Lf48;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget v6, p1, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 76
    .line 77
    int-to-long v6, v6

    .line 78
    invoke-virtual {v5, v6, v7, v3}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 79
    .line 80
    .line 81
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 82
    .line 83
    invoke-direct {v3, v2, v1, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    new-instance v1, Lokhttp3/internal/connection/Exchange;

    .line 87
    .line 88
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 89
    .line 90
    invoke-direct {v1, p0, v2, v0, v3}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/Exchange;

    .line 94
    .line 95
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->H:Lokhttp3/internal/connection/Exchange;

    .line 96
    .line 97
    monitor-enter p0

    .line 98
    const/4 v0, 0x1

    .line 99
    :try_start_1
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->t:Z

    .line 100
    .line 101
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    monitor-exit p0

    .line 104
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->G:Z

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    if-nez p0, :cond_1

    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    const/16 v2, 0x3d

    .line 111
    .line 112
    invoke-static {p1, p0, v1, v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_1
    const-string p0, "Canceled"

    .line 124
    .line 125
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0

    .line 131
    throw p1

    .line 132
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v0, "Check failed."

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :catchall_1
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v0, "Check failed."

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_4
    const-string p1, "released"

    .line 151
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :goto_1
    monitor-exit p0

    .line 159
    throw p1
.end method
