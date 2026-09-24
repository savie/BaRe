.class public final Lbr2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lokhttp3/MediaType;

.field public static final h:Lokhttp3/MediaType;


# instance fields
.field public final a:Lbt3;

.field public final b:Lmt3;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lmt3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 2
    .line 3
    const-string v0, "application/json; charset=utf-8"

    .line 4
    .line 5
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lbr2;->g:Lokhttp3/MediaType;

    .line 10
    .line 11
    const-string v0, "application/octet-stream"

    .line 12
    .line 13
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lbr2;->h:Lokhttp3/MediaType;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lbt3;Lae1;I)V
    .locals 2

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    sget-object p3, Lxq2;->a:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    new-instance v0, Ldq;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Ldq;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lbr2;->a:Lbt3;

    .line 21
    .line 22
    iput-object p2, p0, Lbr2;->b:Lmt3;

    .line 23
    .line 24
    iput-object p3, p0, Lbr2;->c:Lokhttp3/OkHttpClient;

    .line 25
    .line 26
    const-string p1, "https://api.dropboxapi.com"

    .line 27
    .line 28
    iput-object p1, p0, Lbr2;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "https://content.dropboxapi.com"

    .line 31
    .line 32
    iput-object p1, p0, Lbr2;->e:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lbr2;->f:Lmt3;

    .line 35
    .line 36
    return-void
.end method

.method public static b(Lokhttp3/Response;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lokhttp3/Response;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-static {p0}, Lbr2;->h(Lokhttp3/Response;)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lkq2;

    .line 20
    .line 21
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 22
    .line 23
    iget-object v2, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 26
    .line 27
    iget-object v3, v0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget v4, p0, Lokhttp3/Response;->d:I

    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lkq2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public static h(Lokhttp3/Response;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long p0, v0, v2

    .line 32
    .line 33
    if-gez p0, :cond_0

    .line 34
    .line 35
    move-wide v0, v2

    .line 36
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static i(Lfl4;)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, ".tag"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lov2;->a:Lov2;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    instance-of v3, p0, Lfl4;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    move-object p0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-static {p0}, Lbr2;->i(Lfl4;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_2
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object v1, v2

    .line 39
    :goto_1
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static j(Lfl4;)Ltq2;
    .locals 7

    .line 1
    const-string v0, "entries"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lov2;->a:Lov2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_a

    .line 11
    .line 12
    instance-of v2, p0, Lxi4;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object p0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lqj4;->g()Lxi4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    if-eqz p0, :cond_a

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    invoke-static {p0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lxi4;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_9

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lqj4;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    instance-of v4, v3, Lfl4;

    .line 57
    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    move-object v3, v1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_2
    const/4 v4, 0x1

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    new-instance v3, Luq2;

    .line 70
    .line 71
    invoke-direct {v3, v4}, Luq2;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_2
    const-string v5, ".tag"

    .line 76
    .line 77
    invoke-static {v3, v5}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, "failure"

    .line 82
    .line 83
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    new-instance v3, Luq2;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-direct {v3, v4}, Luq2;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_3
    invoke-virtual {v3, v6}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    instance-of v5, v3, Lfl4;

    .line 103
    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    :goto_3
    move-object v3, v1

    .line 113
    :goto_4
    new-instance v5, Luq2;

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string v6, "error_summary"

    .line 118
    .line 119
    invoke-static {v3, v6}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    move-object v6, v1

    .line 125
    :goto_5
    if-eqz v3, :cond_7

    .line 126
    .line 127
    invoke-static {v3}, Lbr2;->i(Lfl4;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    goto :goto_6

    .line 132
    :cond_7
    move-object v3, v1

    .line 133
    :goto_6
    if-nez v3, :cond_8

    .line 134
    .line 135
    move-object v3, v0

    .line 136
    :cond_8
    invoke-direct {v5, v6, v3, v4}, Luq2;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 137
    .line 138
    .line 139
    move-object v3, v5

    .line 140
    :goto_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_9
    move-object v1, v2

    .line 145
    :cond_a
    if-nez v1, :cond_b

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_b
    move-object v0, v1

    .line 149
    :goto_8
    new-instance p0, Ltq2;

    .line 150
    .line 151
    invoke-direct {p0, v0}, Ltq2;-><init>(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    return-object p0
.end method

.method public static k(Lfl4;)Lvq2;
    .locals 10

    .line 1
    new-instance v0, Lvq2;

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-static {p0, v1}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "name"

    .line 10
    .line 11
    invoke-static {p0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    :cond_0
    const-string v3, "size"

    .line 20
    .line 21
    invoke-static {p0, v3}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    :goto_0
    const-string v5, "client_modified"

    .line 35
    .line 36
    invoke-static {p0, v5}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Ljd4;->K(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    const-string v7, "server_modified"

    .line 45
    .line 46
    invoke-static {p0, v7}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {v7}, Ljd4;->K(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    const-string v9, "path_display"

    .line 55
    .line 56
    invoke-static {p0, v9}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-direct/range {v0 .. v9}, Lvq2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lfl4;
    .locals 1

    .line 1
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lfl4;

    .line 8
    .line 9
    invoke-direct {p0}, Lfl4;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static m(Lfl4;)Lyq2;
    .locals 8

    .line 1
    const-string v0, "entries"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    instance-of v2, v0, Lxi4;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lqj4;->g()Lxi4;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    if-eqz v0, :cond_8

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lxi4;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_7

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lqj4;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    instance-of v4, v3, Lfl4;

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_2
    if-nez v3, :cond_4

    .line 59
    .line 60
    :cond_3
    move-object v3, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const-string v4, ".tag"

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "file"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    invoke-static {v3}, Lbr2;->k(Lfl4;)Lvq2;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const-string v5, "folder"

    .line 82
    .line 83
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    new-instance v4, Lwq2;

    .line 90
    .line 91
    const-string v5, "id"

    .line 92
    .line 93
    invoke-static {v3, v5}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const-string v6, "name"

    .line 98
    .line 99
    invoke-static {v3, v6}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-nez v6, :cond_6

    .line 104
    .line 105
    const-string v6, ""

    .line 106
    .line 107
    :cond_6
    const-string v7, "path_display"

    .line 108
    .line 109
    invoke-static {v3, v7}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v4, v5, v6, v3}, Lwq2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v3, v4

    .line 117
    :goto_3
    if-eqz v3, :cond_1

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    move-object v1, v2

    .line 124
    :cond_8
    if-nez v1, :cond_9

    .line 125
    .line 126
    sget-object v1, Lov2;->a:Lov2;

    .line 127
    .line 128
    :cond_9
    const-string v0, "cursor"

    .line 129
    .line 130
    invoke-static {p0, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "has_more"

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const/4 v2, 0x0

    .line 141
    if-nez p0, :cond_a

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    instance-of v3, p0, Lel4;

    .line 145
    .line 146
    if-eqz v3, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_b
    :try_start_0
    invoke-virtual {p0}, Lqj4;->e()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    goto :goto_4

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    new-instance v2, Lbn6;

    .line 160
    .line 161
    invoke-direct {v2, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    move-object p0, v2

    .line 165
    :goto_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    instance-of v3, p0, Lbn6;

    .line 168
    .line 169
    if-eqz v3, :cond_c

    .line 170
    .line 171
    move-object p0, v2

    .line 172
    :cond_c
    check-cast p0, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    :goto_5
    new-instance p0, Lyq2;

    .line 179
    .line 180
    invoke-direct {p0, v0, v1, v2}, Lyq2;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 181
    .line 182
    .line 183
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x2f

    .line 6
    .line 7
    aput-char v3, v1, v2

    .line 8
    .line 9
    iget-object p0, p0, Lbr2;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v0, v0, [C

    .line 16
    .line 17
    aput-char v3, v0, v2

    .line 18
    .line 19
    invoke-static {p1, v0}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "/"

    .line 24
    .line 25
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final c(Lokhttp3/Request;ZZ)Lokhttp3/Response;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    :goto_0
    iget-object v2, p0, Lbr2;->a:Lbt3;

    .line 4
    .line 5
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_a

    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "Bearer "

    .line 19
    .line 20
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v6, v4, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 25
    .line 26
    const-string v7, "Authorization"

    .line 27
    .line 28
    invoke-virtual {v6, v7, v2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lokhttp3/Request;

    .line 32
    .line 33
    invoke-direct {v2, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lbr2;->c:Lokhttp3/OkHttpClient;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v6, Lokhttp3/internal/connection/RealCall;

    .line 42
    .line 43
    invoke-direct {v6, v4, v2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v4, v2, Lokhttp3/Response;->d:I

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    const/16 v6, 0x191

    .line 55
    .line 56
    if-ne v4, v6, :cond_3

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, v2, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 66
    .line 67
    invoke-virtual {v0, v7}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-static {v0, v5}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v0, v3

    .line 79
    :goto_1
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lbr2;->b:Lmt3;

    .line 83
    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    invoke-interface {v5, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v3, v0

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    :cond_2
    const/4 v0, 0x1

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    .line 102
    :cond_3
    if-eqz p3, :cond_9

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    if-lt v1, v3, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    const/16 v3, 0x1ad

    .line 109
    .line 110
    if-eq v4, v3, :cond_5

    .line 111
    .line 112
    const/16 v3, 0x1f4

    .line 113
    .line 114
    if-gt v3, v4, :cond_9

    .line 115
    .line 116
    const/16 v3, 0x258

    .line 117
    .line 118
    if-ge v4, v3, :cond_9

    .line 119
    .line 120
    :cond_5
    const/4 v3, 0x4

    .line 121
    if-le v1, v3, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move v3, v1

    .line 125
    :goto_2
    const-wide/16 v4, 0x1

    .line 126
    .line 127
    shl-long v3, v4, v3

    .line 128
    .line 129
    const-wide/16 v5, 0x3e8

    .line 130
    .line 131
    mul-long/2addr v3, v5

    .line 132
    invoke-static {v2}, Lbr2;->h(Lokhttp3/Response;)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    :cond_7
    const-wide/16 v5, 0x7530

    .line 143
    .line 144
    cmp-long v7, v3, v5

    .line 145
    .line 146
    if-lez v7, :cond_8

    .line 147
    .line 148
    move-wide v3, v5

    .line 149
    :cond_8
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lbr2;->f:Lmt3;

    .line 153
    .line 154
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v2, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_9
    :goto_3
    return-object v2

    .line 166
    :cond_a
    const-string p0, "Dropbox access token unavailable"

    .line 167
    .line 168
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v3
.end method

.method public final d(Ljava/lang/String;Lfl4;Ljava/io/InputStream;JLmt3;)Lokhttp3/Response;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lbr2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lar2;

    .line 14
    .line 15
    invoke-direct {p1, p4, p5, p6, p3}, Lar2;-><init>(JLmt3;Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    const-string p3, "POST"

    .line 19
    .line 20
    invoke-virtual {v0, p3, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lx13;->T(Lfl4;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 28
    .line 29
    const-string p3, "Dropbox-API-Arg"

    .line 30
    .line 31
    invoke-virtual {p2, p3, p1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lbr2;->h:Lokhttp3/MediaType;

    .line 35
    .line 36
    iget-object p1, p1, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 42
    .line 43
    const-string p3, "Content-Type"

    .line 44
    .line 45
    invoke-static {p2, p3, p1, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, p2}, Lbr2;->c(Lokhttp3/Request;ZZ)Lokhttp3/Response;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lbr2;->b(Lokhttp3/Response;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public final e(Lfl4;Ljava/lang/String;)Lfl4;
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [C

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x2f

    .line 11
    .line 12
    aput-char v4, v2, v3

    .line 13
    .line 14
    iget-object v5, p0, Lbr2;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v5, v2}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-array v5, v1, [C

    .line 21
    .line 22
    aput-char v4, v5, v3

    .line 23
    .line 24
    invoke-static {p2, v5}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "/"

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1}, Lqj4;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string p1, "null"

    .line 61
    .line 62
    :goto_0
    sget-object p2, Lbr2;->g:Lokhttp3/MediaType;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v2, "POST"

    .line 69
    .line 70
    invoke-virtual {v0, v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p2, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 79
    .line 80
    const-string v2, "Content-Type"

    .line 81
    .line 82
    invoke-static {p2, v2, p1, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1, v1, v1}, Lbr2;->c(Lokhttp3/Request;ZZ)Lokhttp3/Response;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lbr2;->b(Lokhttp3/Response;)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 94
    .line 95
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    new-instance p1, Lfl4;

    .line 106
    .line 107
    invoke-direct {p1}, Lfl4;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    :try_start_1
    invoke-static {p1}, Lbr2;->l(Ljava/lang/String;)Lfl4;

    .line 117
    .line 118
    .line 119
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :catchall_1
    move-exception p2

    .line 126
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p2
.end method

.method public final f(Ljava/lang/String;)Lyq2;
    .locals 2

    .line 1
    new-instance v0, Lfl4;

    .line 2
    .line 3
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "path"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "recursive"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "include_deleted"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "include_non_downloadable_files"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "/2/files/list_folder"

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lbr2;->m(Lfl4;)Lyq2;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lokhttp3/Response;
    .locals 3

    .line 1
    new-instance v0, Lfl4;

    .line 2
    .line 3
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "path"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lfl4;

    .line 12
    .line 13
    invoke-direct {p1}, Lfl4;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, ".tag"

    .line 17
    .line 18
    const-string v2, "w640h480"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "size"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lokhttp3/Request$Builder;

    .line 29
    .line 30
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "/2/files/get_thumbnail"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lbr2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v1, v2}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "POST"

    .line 52
    .line 53
    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lx13;->T(Lfl4;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 61
    .line 62
    const-string v2, "Dropbox-API-Arg"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lbr2;->h:Lokhttp3/MediaType;

    .line 68
    .line 69
    iget-object v0, v0, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v1, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 75
    .line 76
    const-string v2, "Content-Type"

    .line 77
    .line 78
    invoke-static {v1, v2, v0, p1}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Lbr2;->c(Lokhttp3/Request;ZZ)Lokhttp3/Response;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lbr2;->b(Lokhttp3/Response;)V

    .line 88
    .line 89
    .line 90
    return-object p0
.end method

.method public final n(Ljava/lang/String;Ljava/io/InputStream;JLmm;)Lvq2;
    .locals 7

    .line 1
    new-instance v2, Lfl4;

    .line 2
    .line 3
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-virtual {v2, v0, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "mode"

    .line 12
    .line 13
    const-string v0, "overwrite"

    .line 14
    .line 15
    invoke-virtual {v2, p1, v0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "mute"

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v2, p1, v0}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "/2/files/upload"

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    move-object v3, p2

    .line 29
    move-wide v4, p3

    .line 30
    move-object v6, p5

    .line 31
    invoke-virtual/range {v0 .. v6}, Lbr2;->d(Ljava/lang/String;Lfl4;Ljava/io/InputStream;JLmt3;)Lokhttp3/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 36
    .line 37
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lbr2;->l(Ljava/lang/String;)Lfl4;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lbr2;->k(Lfl4;)Lvq2;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p1, v0

    .line 55
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    move-object p2, v0

    .line 58
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p2
.end method

.method public final o(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-wide v0, p2

    .line 5
    new-instance p2, Lfl4;

    .line 6
    .line 7
    invoke-direct {p2}, Lfl4;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lfl4;

    .line 11
    .line 12
    invoke-direct {p3}, Lfl4;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "session_id"

    .line 16
    .line 17
    invoke-virtual {p3, v2, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "offset"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p3, p1, v0}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "cursor"

    .line 30
    .line 31
    invoke-virtual {p2, p1, p3}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "close"

    .line 35
    .line 36
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p2, p1, p3}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "/2/files/upload_session/append_v2"

    .line 42
    .line 43
    move-object p3, p4

    .line 44
    move-wide p4, p5

    .line 45
    move-object p6, p7

    .line 46
    invoke-virtual/range {p0 .. p6}, Lbr2;->d(Ljava/lang/String;Lfl4;Ljava/io/InputStream;JLmt3;)Lokhttp3/Response;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final p(Ljava/lang/String;JLjava/lang/String;Ljava/io/InputStream;JLlq2;)Lvq2;
    .locals 3

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-wide v0, p2

    .line 5
    new-instance p2, Lfl4;

    .line 6
    .line 7
    invoke-direct {p2}, Lfl4;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lfl4;

    .line 11
    .line 12
    invoke-direct {p3}, Lfl4;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "session_id"

    .line 16
    .line 17
    invoke-virtual {p3, v2, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "offset"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p3, p1, v0}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "cursor"

    .line 30
    .line 31
    invoke-virtual {p2, p1, p3}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lfl4;

    .line 35
    .line 36
    invoke-direct {p1}, Lfl4;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p3, "path"

    .line 40
    .line 41
    invoke-virtual {p1, p3, p4}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p3, "mode"

    .line 45
    .line 46
    const-string p4, "overwrite"

    .line 47
    .line 48
    invoke-virtual {p1, p3, p4}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p3, "mute"

    .line 52
    .line 53
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p1, p3, p4}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    const-string p3, "commit"

    .line 59
    .line 60
    invoke-virtual {p2, p3, p1}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "/2/files/upload_session/finish"

    .line 64
    .line 65
    move-object p3, p5

    .line 66
    move-wide p4, p6

    .line 67
    move-object p6, p8

    .line 68
    invoke-virtual/range {p0 .. p6}, Lbr2;->d(Ljava/lang/String;Lfl4;Ljava/io/InputStream;JLmt3;)Lokhttp3/Response;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 73
    .line 74
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lbr2;->l(Ljava/lang/String;)Lfl4;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lbr2;->k(Lfl4;)Lvq2;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    move-object p1, v0

    .line 92
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object p2, v0

    .line 95
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p2
.end method

.method public final q(Ljava/io/InputStream;JLlq2;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v2, Lfl4;

    .line 5
    .line 6
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "close"

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "/2/files/upload_session/start"

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    move-object v3, p1

    .line 20
    move-wide v4, p2

    .line 21
    move-object v6, p4

    .line 22
    invoke-virtual/range {v0 .. v6}, Lbr2;->d(Ljava/lang/String;Lfl4;Ljava/io/InputStream;JLmt3;)Lokhttp3/Response;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 27
    .line 28
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lbr2;->l(Ljava/lang/String;)Lfl4;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "session_id"

    .line 37
    .line 38
    invoke-static {p1, p2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string p2, "Dropbox upload_session/start response did not contain session_id"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move-object p1, v0

    .line 58
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    move-object p2, v0

    .line 61
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p2
.end method
