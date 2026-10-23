.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# instance fields
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lokhttp3/internal/connection/Exchange;

.field public final e:Lokhttp3/Request;

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 12
    .line 13
    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 14
    .line 15
    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 16
    .line 17
    iput p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 18
    .line 19
    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 20
    .line 21
    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 22
    .line 23
    return-void
.end method

.method public static a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 9

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 6
    .line 7
    :cond_0
    move v3, p1

    .line 8
    and-int/lit8 p1, p4, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 13
    .line 14
    :cond_1
    move-object v4, p2

    .line 15
    and-int/lit8 p1, p4, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 20
    .line 21
    :cond_2
    move-object v5, p3

    .line 22
    iget v6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 23
    .line 24
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 25
    .line 26
    iget v8, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final b(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_6

    .line 14
    .line 15
    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    add-int/2addr v1, v4

    .line 19
    iput v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 20
    .line 21
    const-string v1, " must call proceed() exactly once"

    .line 22
    .line 23
    iget-object v5, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 24
    .line 25
    const-string v6, "network interceptor "

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v7, v5, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 30
    .line 31
    invoke-interface {v7}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v8, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 36
    .line 37
    invoke-interface {v7, v8}, Lokhttp3/internal/connection/RoutePlanner;->d(Lokhttp3/HttpUrl;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 44
    .line 45
    if-ne v7, v4, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sub-int/2addr v3, v4

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0, v1, v6}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_1
    sub-int/2addr v3, v4

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, " must retain the same host and port"

    .line 63
    .line 64
    invoke-static {p0, p1, v6}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    :goto_0
    add-int/lit8 v7, v3, 0x1

    .line 69
    .line 70
    const/16 v8, 0x3a

    .line 71
    .line 72
    invoke-static {p0, v7, v2, p1, v8}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lokhttp3/Interceptor;

    .line 81
    .line 82
    invoke-interface {p1, p0}, Lokhttp3/Interceptor;->a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ge v7, v0, :cond_4

    .line 95
    .line 96
    iget p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 97
    .line 98
    if-ne p0, v4, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {p1, v1, v6}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_4
    :goto_1
    return-object v3

    .line 106
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "interceptor "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " returned null"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_6
    const-string p0, "Check failed."

    .line 132
    .line 133
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v2
.end method
