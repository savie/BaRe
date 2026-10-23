.class public final synthetic Lcg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:Ldc6;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpg5;Ldc6;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg5;->a:Lpg5;

    .line 5
    .line 6
    iput-object p2, p0, Lcg5;->b:Ldc6;

    .line 7
    .line 8
    iput-object p3, p0, Lcg5;->c:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    sget v0, Lpg5;->n:I

    .line 4
    .line 5
    new-instance v0, Lhn1;

    .line 6
    .line 7
    iget-object v1, p0, Lcg5;->c:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget-object v1, v1, v2

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v3, Lq40;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    invoke-direct {v3, v4}, Lq40;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v3, Lb51;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v3, v4}, Lb51;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, [Lgx5;

    .line 37
    .line 38
    iget-object v3, p0, Lcg5;->b:Ldc6;

    .line 39
    .line 40
    invoke-direct {v0, v3, v1, p1}, Lhn1;-><init>(Ldc6;Ljava/lang/String;[Lgx5;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcg5;->a:Lpg5;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcn0;->b(Lll0;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcn0;->c:Lv64$a;

    .line 49
    .line 50
    iget-object p1, p1, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 51
    .line 52
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->f()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v0, p1}, Lhn1;->r(Z)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    new-instance p1, Lv64$b;

    .line 60
    .line 61
    new-instance v1, Ldn1;

    .line 62
    .line 63
    invoke-virtual {v0}, Lhn1;->o()[Lgx5;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v1, v3}, Ldn1;-><init>([Lgx5;)V

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-direct {p1, v1, v3, v3, v3}, Lv64$b;-><init>(Ljava/lang/Object;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lhn1;->p()Lg87$a;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lhn1;->p()Lg87$a;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v3, v1, Lg87$a;->a:Lv64$c;

    .line 86
    .line 87
    :goto_0
    new-instance v1, Lv64$e;

    .line 88
    .line 89
    const-string v4, "uploadId"

    .line 90
    .line 91
    invoke-virtual {v0}, Lhn1;->q()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-direct {v1, v4}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0, v3, v1, p1}, Lcn0;->q(Lfw0;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p1, Lrm0;

    .line 107
    .line 108
    invoke-direct {p1, v0, v2}, Lrm0;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method
