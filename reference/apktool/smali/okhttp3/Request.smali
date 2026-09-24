.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/HttpUrl;

.field public final b:Ljava/lang/String;

.field public final c:Lokhttp3/Headers;

.field public final d:Lokhttp3/RequestBody;

.field public final e:Ljava/util/Map;

.field public f:Lokhttp3/CacheControl;


# direct methods
.method public constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    iget-object v0, p1, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 16
    .line 17
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 22
    .line 23
    iget-object v2, p1, Lokhttp3/Request$Builder;->d:Lokhttp3/RequestBody;

    .line 24
    .line 25
    iput-object v2, p0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 26
    .line 27
    iget-object p1, p1, Lokhttp3/Request$Builder;->e:Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {p1}, Lx65;->u0(Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lokhttp3/Request;->e:Ljava/util/Map;

    .line 34
    .line 35
    const-string p0, "Connection"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "upgrade"

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lokhttp3/RequestBody;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    cmp-long p0, p0, v2

    .line 58
    .line 59
    if-nez p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string p0, "expected a null or empty request body with \'Connection: upgrade\'"

    .line 63
    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    const-string p0, "url == null"

    .line 70
    .line 71
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1
.end method


# virtual methods
.method public final a()Lokhttp3/Request$Builder;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lpv2;->a:Lpv2;

    .line 7
    .line 8
    iput-object v1, v0, Lokhttp3/Request$Builder;->e:Ljava/util/Map;

    .line 9
    .line 10
    iget-object v2, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    iput-object v2, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iget-object v2, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v2, v0, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 19
    .line 20
    iput-object v2, v0, Lokhttp3/Request$Builder;->d:Lokhttp3/RequestBody;

    .line 21
    .line 22
    iget-object v2, p0, Lokhttp3/Request;->e:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-object v1, v0, Lokhttp3/Request$Builder;->e:Ljava/util/Map;

    .line 37
    .line 38
    iget-object p0, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 39
    .line 40
    invoke-virtual {p0}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iput-object p0, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Request{method="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", url="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 29
    .line 30
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    const-string v2, ", headers=["

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    add-int/lit8 v4, v2, 0x1

    .line 57
    .line 58
    if-ltz v2, :cond_2

    .line 59
    .line 60
    check-cast v3, Lpw5;

    .line 61
    .line 62
    iget-object v5, v3, Lpw5;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, v3, Lpw5;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    if-lez v2, :cond_0

    .line 71
    .line 72
    const-string v2, ", "

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x3a

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Lokhttp3/internal/_UtilCommonKt;->k(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    const-string v3, "\u2588\u2588"

    .line 92
    .line 93
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move v2, v4

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lfl1;->F0()V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    throw p0

    .line 103
    :cond_3
    const/16 v1, 0x5d

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_4
    iget-object p0, p0, Lokhttp3/Request;->e:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    const-string v1, ", tags="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_5
    const/16 p0, 0x7d

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method
