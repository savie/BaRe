.class public final Ld04;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Lokhttp3/OkHttpClient;

.field public static final j:Lokhttp3/MediaType;

.field public static final k:Lokhttp3/MediaType;

.field public static final l:Lai6;

.field public static final m:Lai6;


# instance fields
.field public final a:Lq02;

.field public final b:Lrk;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lmt3;

.field public final h:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xb4

    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iput v4, v0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 24
    .line 25
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 31
    .line 32
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 33
    .line 34
    const-string v0, "application/json; charset=utf-8"

    .line 35
    .line 36
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Ld04;->j:Lokhttp3/MediaType;

    .line 41
    .line 42
    const-string v0, "application/octet-stream"

    .line 43
    .line 44
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Ld04;->k:Lokhttp3/MediaType;

    .line 49
    .line 50
    new-instance v0, Lai6;

    .line 51
    .line 52
    const-string v1, "HTTP/\\d(?:\\.\\d)?\\s+(\\d{3})[^\\r\\n]*(?:\\r?\\n(?!\\r?\\n)[^\\r\\n]*)*\\r?\\n\\r?\\n"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Ld04;->l:Lai6;

    .line 58
    .line 59
    new-instance v0, Lai6;

    .line 60
    .line 61
    const-string v1, "bytes=0-(\\d+)"

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {v0, v1, v2}, Lai6;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Ld04;->m:Lai6;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Lq02;Lrk;)V
    .locals 2

    .line 1
    new-instance v0, Lou;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ld04;->a:Lq02;

    .line 17
    .line 18
    iput-object p2, p0, Ld04;->b:Lrk;

    .line 19
    .line 20
    iput-object v1, p0, Ld04;->c:Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    const-string p1, "https://www.googleapis.com"

    .line 23
    .line 24
    iput-object p1, p0, Ld04;->d:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Ld04;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Ld04;->f:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Ld04;->g:Lmt3;

    .line 31
    .line 32
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p1, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 38
    .line 39
    iput-boolean p2, p1, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 40
    .line 41
    new-instance p2, Lokhttp3/OkHttpClient;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Ld04;->h:Lokhttp3/OkHttpClient;

    .line 47
    .line 48
    return-void
.end method

.method public static a(Lqj4;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Lel4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    new-instance v0, Lbn6;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    move-object p0, v0

    .line 19
    :goto_0
    nop

    .line 20
    instance-of v0, p0, Lbn6;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v1, p0

    .line 26
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    return-object v1
.end method

.method public static k(Ld04;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    invoke-static {v2, v1, v2}, Ll73;->h(III)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v3, v2

    .line 18
    :cond_0
    const-string v4, "/drive/v3/files"

    .line 19
    .line 20
    iget-object v5, p0, Ld04;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v5, v4}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "q"

    .line 31
    .line 32
    invoke-virtual {v4, v5, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v5, "spaces"

    .line 36
    .line 37
    const-string v6, "drive"

    .line 38
    .line 39
    invoke-virtual {v4, v5, v6}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v6, "nextPageToken"

    .line 44
    .line 45
    invoke-static {p2, v6, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    move-object v5, p2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v5, "nextPageToken, "

    .line 54
    .line 55
    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_0
    const-string v7, "fields"

    .line 60
    .line 61
    invoke-virtual {v4, v7, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v5, "pageSize"

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v4, v5, v7}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    const-string v5, "pageToken"

    .line 76
    .line 77
    invoke-virtual {v4, v5, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    new-instance v3, Lokhttp3/Request$Builder;

    .line 81
    .line 82
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iput-object v4, v3, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 90
    .line 91
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->b()V

    .line 92
    .line 93
    .line 94
    new-instance v4, Lokhttp3/Request;

    .line 95
    .line 96
    invoke-direct {v4, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v4}, Ld04;->g(Lokhttp3/Request;)Lfl4;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const-string v4, "files"

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    instance-of v5, v4, Lxi4;

    .line 112
    .line 113
    if-nez v5, :cond_3

    .line 114
    .line 115
    move-object v4, v2

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v4}, Lqj4;->g()Lxi4;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_1
    if-eqz v4, :cond_4

    .line 122
    .line 123
    iget-object v4, v4, Lxi4;->a:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Lqj4;

    .line 140
    .line 141
    invoke-virtual {v5}, Lqj4;->i()Lfl4;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v5}, Ld04;->s(Lfl4;)Lyz3;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {v3, v6}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-eqz v3, :cond_5

    .line 158
    .line 159
    invoke-static {v3}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    move-object v3, v2

    .line 165
    :goto_3
    if-eqz v3, :cond_6

    .line 166
    .line 167
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_0

    .line 172
    .line 173
    :cond_6
    return-object v0
.end method

.method public static l(Lfl4;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p0, Lel4;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-object p1

    .line 14
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lqj4;->l()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    new-instance v0, Lbn6;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    move-object p0, v0

    .line 30
    :goto_1
    nop

    .line 31
    instance-of v0, p0, Lbn6;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object p1, p0

    .line 37
    :goto_2
    check-cast p1, Ljava/lang/Long;

    .line 38
    .line 39
    return-object p1
.end method

.method public static m(Lokhttp3/Response;)J
    .locals 9

    .line 1
    const-string v0, "Range"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v2, Ld04;->m:Lai6;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v2, v2, Lai6;->a:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    move-object v3, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v3, Lu75;

    .line 47
    .line 48
    invoke-direct {v3, v2, p0}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const-string p0, "Google Drive returned an invalid resumable upload Range"

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {v3}, Lu75;->a()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x1

    .line 60
    check-cast v2, Ls75;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ls75;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v2}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    const-wide v7, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    cmp-long v3, v5, v7

    .line 84
    .line 85
    if-gez v3, :cond_2

    .line 86
    .line 87
    move-object v4, v2

    .line 88
    :cond_2
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    const-wide/16 v2, 0x1

    .line 95
    .line 96
    add-long/2addr v0, v2

    .line 97
    return-wide v0

    .line 98
    :cond_3
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-wide v0

    .line 102
    :cond_4
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-wide v0
.end method

.method public static n(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    sget-object v0, Ld04;->l:Lai6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_3

    .line 14
    .line 15
    new-instance v1, Lg52;

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-direct {v1, v2, v0, p0}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lzh6;->a:Lzh6;

    .line 23
    .line 24
    new-instance v3, Lev3;

    .line 25
    .line 26
    invoke-direct {v3, v1, v0}, Lev3;-><init>(Lbt3;Lmt3;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    add-int/lit8 v5, v3, 0x1

    .line 58
    .line 59
    if-ltz v3, :cond_1

    .line 60
    .line 61
    check-cast v4, Lu75;

    .line 62
    .line 63
    invoke-virtual {v4}, Lu75;->b()Lnd4;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget v3, v3, Lld4;->b:I

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    add-int/2addr v3, v6

    .line 71
    invoke-static {v5, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Lu75;

    .line 76
    .line 77
    if-eqz v7, :cond_0

    .line 78
    .line 79
    invoke-virtual {v7}, Lu75;->b()Lnd4;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    iget v7, v7, Lld4;->a:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    :goto_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v9, "\r\n--"

    .line 97
    .line 98
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static {v8, v9, v10}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const-string v9, "\n--"

    .line 107
    .line 108
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v8, v9, v3}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v7, Lb04;

    .line 125
    .line 126
    invoke-virtual {v4}, Lu75;->a()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ls75;

    .line 131
    .line 132
    invoke-virtual {v4, v6}, Ls75;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v4}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/16 v6, 0x800

    .line 143
    .line 144
    invoke-static {v6, v3}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-direct {v7, v4, v3}, Lb04;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move v3, v5

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lfl1;->F0()V

    .line 157
    .line 158
    .line 159
    const/4 p0, 0x0

    .line 160
    throw p0

    .line 161
    :cond_2
    return-object v1

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v2, "Start index out of bounds: 0, input length: "

    .line 171
    .line 172
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public static p(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 2
    .line 3
    iget-object v0, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    .line 10
    .line 11
    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, p0}, Lokhttp3/HttpUrl$Builder;->h(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-object v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move-object p0, v1

    .line 27
    :goto_1
    if-eqz p0, :cond_3

    .line 28
    .line 29
    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->f()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->f()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "Google Drive resumable upload Location attempted an HTTPS downgrade"

    .line 45
    .line 46
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    :goto_2
    iget-object p0, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    const-string p0, "Google Drive returned an invalid resumable upload Location"

    .line 54
    .line 55
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method public static q(Lokhttp3/Response;)Ljava/lang/Long;
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

.method public static r(Ljava/lang/String;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    new-instance v2, Lbn6;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    move-object p0, v2

    .line 32
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v1, p0, Lbn6;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move-object p0, v0

    .line 41
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static s(Lfl4;)Lyz3;
    .locals 15

    .line 1
    const-string v0, "id"

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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v3, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, v1

    .line 17
    :goto_0
    const-string v0, "name"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    :goto_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    :cond_2
    move-object v4, v0

    .line 36
    const-string v0, "size"

    .line 37
    .line 38
    invoke-static {p0, v0}, Ld04;->l(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    :goto_2
    const-string v0, "createdTime"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-static {v0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move-object v0, v1

    .line 65
    :goto_3
    invoke-static {v0}, Ld04;->r(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    const-string v0, "modifiedTime"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-static {v0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move-object v0, v1

    .line 83
    :goto_4
    invoke-static {v0}, Ld04;->r(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v9

    .line 87
    const-string v0, "thumbnailLink"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-static {v0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v11, v0

    .line 100
    goto :goto_5

    .line 101
    :cond_6
    move-object v11, v1

    .line 102
    :goto_5
    const-string v0, "parents"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    instance-of v2, v0, Lxi4;

    .line 111
    .line 112
    if-nez v2, :cond_7

    .line 113
    .line 114
    move-object v0, v1

    .line 115
    goto :goto_6

    .line 116
    :cond_7
    invoke-virtual {v0}, Lqj4;->g()Lxi4;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_6
    if-eqz v0, :cond_9

    .line 121
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v0, v0, Lxi4;->a:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_a

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    check-cast v12, Lqj4;

    .line 144
    .line 145
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v12}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    if-eqz v12, :cond_8

    .line 153
    .line 154
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_9
    move-object v2, v1

    .line 159
    :cond_a
    if-nez v2, :cond_b

    .line 160
    .line 161
    sget-object v2, Lov2;->a:Lov2;

    .line 162
    .line 163
    :cond_b
    move-object v12, v2

    .line 164
    const-string v0, "trashed"

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const/4 v2, 0x0

    .line 171
    if-nez v0, :cond_c

    .line 172
    .line 173
    :goto_8
    move v13, v2

    .line 174
    goto :goto_a

    .line 175
    :cond_c
    instance-of v13, v0, Lel4;

    .line 176
    .line 177
    if-eqz v13, :cond_d

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_d
    :try_start_0
    invoke-virtual {v0}, Lqj4;->e()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    goto :goto_9

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    new-instance v2, Lbn6;

    .line 191
    .line 192
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    move-object v0, v2

    .line 196
    :goto_9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 197
    .line 198
    instance-of v13, v0, Lbn6;

    .line 199
    .line 200
    if-eqz v13, :cond_e

    .line 201
    .line 202
    move-object v0, v2

    .line 203
    :cond_e
    check-cast v0, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto :goto_8

    .line 210
    :goto_a
    const-string v0, "mimeType"

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    if-eqz p0, :cond_f

    .line 217
    .line 218
    invoke-static {p0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :cond_f
    move-object v14, v1

    .line 223
    new-instance v2, Lyz3;

    .line 224
    .line 225
    invoke-direct/range {v2 .. v14}, Lyz3;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object v2
.end method

.method public static t(Lzz3;ZZ)Lfl4;
    .locals 4

    .line 1
    iget-object v0, p0, Lzz3;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lfl4;

    .line 4
    .line 5
    invoke-direct {v1}, Lfl4;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p2, "id"

    .line 20
    .line 21
    invoke-virtual {v1, p2, v0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p2, p0, Lzz3;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lzz3;->e:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v2, p0, Lzz3;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p0, p0, Lzz3;->d:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "name"

    .line 33
    .line 34
    invoke-virtual {v1, v3, p2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p2, "mimeType"

    .line 47
    .line 48
    invoke-virtual {v1, p2, p0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    new-instance p0, Lxi4;

    .line 63
    .line 64
    invoke-direct {p0}, Lxi4;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lxi4;->s(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "parents"

    .line 71
    .line 72
    invoke-virtual {v1, p1, p0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_7

    .line 80
    .line 81
    new-instance p0, Lfl4;

    .line 82
    .line 83
    invoke-direct {p0}, Lfl4;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v0, p2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    const-string p1, "properties"

    .line 123
    .line 124
    invoke-virtual {v1, p1, p0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    return-object v1
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;
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
    invoke-static {p0, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    aput-char v3, v0, v2

    .line 16
    .line 17
    invoke-static {p1, v0}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "/"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)Lxz3;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p1, 0x64

    .line 39
    .line 40
    invoke-static {v1, p1, p1}, Lel1;->A1(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    move-object v2, v1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_e

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string v5, "-"

    .line 74
    .line 75
    const-string v6, ""

    .line 76
    .line 77
    invoke-static {v4, v5, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "swiftbackup_"

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const/4 v8, 0x0

    .line 97
    move v9, v8

    .line 98
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const-string v11, "--"

    .line 103
    .line 104
    if-eqz v10, :cond_3

    .line 105
    .line 106
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    add-int/lit8 v12, v9, 0x1

    .line 111
    .line 112
    if-ltz v9, :cond_2

    .line 113
    .line 114
    check-cast v10, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v9, "\r\nContent-Type: application/http\r\nContent-ID: request-"

    .line 123
    .line 124
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v9, "\r\n\r\nDELETE /drive/v3/files/"

    .line 131
    .line 132
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v9, "?supportsAllDrives=true HTTP/1.1\r\n\r\n"

    .line 139
    .line 140
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move v9, v12

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    invoke-static {}, Lfl1;->F0()V

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :cond_3
    invoke-static {v5, v11, v4, v11}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    new-instance v7, Lokhttp3/Request$Builder;

    .line 154
    .line 155
    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v9, "/batch/drive/v3"

    .line 159
    .line 160
    iget-object v10, p0, Ld04;->f:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v10, v9}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    iput-object v9, v7, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 167
    .line 168
    const-string v9, "multipart/mixed; boundary="

    .line 169
    .line 170
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    iget-object v11, v7, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 175
    .line 176
    const-string v12, "Content-Type"

    .line 177
    .line 178
    invoke-virtual {v11, v12, v10}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v10, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 182
    .line 183
    sget-object v10, Lokhttp3/MediaType;->d:Lai6;

    .line 184
    .line 185
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-static {v4}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v5, v4}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const-string v5, "POST"

    .line 198
    .line 199
    invoke-virtual {v7, v5, v4}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 200
    .line 201
    .line 202
    new-instance v4, Lokhttp3/Request;

    .line 203
    .line 204
    invoke-direct {v4, v7}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v4}, Ld04;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :try_start_0
    invoke-static {v4}, Ld04;->q(Lokhttp3/Response;)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    if-nez v2, :cond_4

    .line 216
    .line 217
    move-object v2, v5

    .line 218
    goto :goto_3

    .line 219
    :cond_4
    if-nez v5, :cond_5

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide v9

    .line 226
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v11

    .line 230
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v9

    .line 234
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :goto_3
    iget-object v5, v4, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 239
    .line 240
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v5}, Ld04;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-eqz v7, :cond_d

    .line 257
    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    add-int/lit8 v9, v8, 0x1

    .line 263
    .line 264
    if-ltz v8, :cond_c

    .line 265
    .line 266
    check-cast v7, Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v8, v5}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Lb04;

    .line 273
    .line 274
    if-eqz v8, :cond_6

    .line 275
    .line 276
    iget-object v10, v8, Lb04;->a:Ljava/lang/Integer;

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catchall_0
    move-exception p0

    .line 280
    goto :goto_8

    .line 281
    :cond_6
    move-object v10, v1

    .line 282
    :goto_5
    if-eqz v10, :cond_8

    .line 283
    .line 284
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    const/16 v12, 0xc8

    .line 289
    .line 290
    if-gt v12, v11, :cond_7

    .line 291
    .line 292
    const/16 v12, 0x12c

    .line 293
    .line 294
    if-ge v11, v12, :cond_7

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    const/16 v12, 0x194

    .line 302
    .line 303
    if-eq v11, v12, :cond_b

    .line 304
    .line 305
    :cond_8
    new-instance v11, Lwz3;

    .line 306
    .line 307
    if-eqz v8, :cond_9

    .line 308
    .line 309
    iget-object v8, v8, Lb04;->b:Ljava/lang/String;

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_9
    move-object v8, v1

    .line 313
    :goto_6
    if-nez v8, :cond_a

    .line 314
    .line 315
    move-object v8, v6

    .line 316
    :cond_a
    invoke-direct {v11, v10, v7, v8}, Lwz3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :cond_b
    :goto_7
    move v8, v9

    .line 323
    goto :goto_4

    .line 324
    :cond_c
    invoke-static {}, Lfl1;->F0()V

    .line 325
    .line 326
    .line 327
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_d
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :goto_8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    :catchall_1
    move-exception p1

    .line 335
    invoke-static {v4, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    .line 340
    .line 341
    const/16 p1, 0xa

    .line 342
    .line 343
    invoke-static {v0, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_f

    .line 359
    .line 360
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Lwz3;

    .line 365
    .line 366
    iget-object v3, v3, Lwz3;->a:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_f
    if-eqz v2, :cond_10

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 375
    .line 376
    .line 377
    move-result-wide v3

    .line 378
    const-wide/16 v5, 0x0

    .line 379
    .line 380
    cmp-long p1, v3, v5

    .line 381
    .line 382
    if-lez p1, :cond_10

    .line 383
    .line 384
    move-object v1, v2

    .line 385
    :cond_10
    new-instance p1, Lxz3;

    .line 386
    .line 387
    invoke-direct {p1, p0, v1, v0}, Lxz3;-><init>(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 388
    .line 389
    .line 390
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lyz3;
    .locals 6

    .line 1
    new-instance v0, Lzz3;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/16 v5, 0x15

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "application/vnd.google-apps.folder"

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lzz3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "/drive/v3/files"

    .line 19
    .line 20
    iget-object v2, p0, Ld04;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v1}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "fields"

    .line 31
    .line 32
    const-string v3, "id, name"

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "supportsAllDrives"

    .line 38
    .line 39
    const-string v3, "true"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1, v1}, Ld04;->t(Lzz3;ZZ)Lfl4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 56
    .line 57
    invoke-virtual {v0}, Lqj4;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Ld04;->j:Lokhttp3/MediaType;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "POST"

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lokhttp3/Request;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ld04;->g(Lokhttp3/Request;)Lfl4;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Ld04;->s(Lfl4;)Lyz3;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final d(Ljava/lang/String;Lzz3;J)Ln04;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    if-nez v0, :cond_2

    .line 14
    .line 15
    const-string v1, "/upload/drive/v3/files/"

    .line 16
    .line 17
    invoke-static {v1, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    const-string p1, "/upload/drive/v3/files"

    .line 23
    .line 24
    :goto_2
    new-instance v1, Lokhttp3/Request$Builder;

    .line 25
    .line 26
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Ld04;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, p1}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v2, "uploadType"

    .line 40
    .line 41
    const-string v3, "resumable"

    .line 42
    .line 43
    invoke-virtual {p1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "fields"

    .line 47
    .line 48
    const-string v3, "id, name"

    .line 49
    .line 50
    invoke-virtual {p1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "supportsAllDrives"

    .line 54
    .line 55
    const-string v3, "true"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 65
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    cmp-long p1, p3, v2

    .line 69
    .line 70
    if-gez p1, :cond_3

    .line 71
    .line 72
    move-wide p3, v2

    .line 73
    :cond_3
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object p3, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 81
    .line 82
    const-string p4, "X-Upload-Content-Length"

    .line 83
    .line 84
    invoke-virtual {p3, p4, p1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p2, Lzz3;->d:Ljava/lang/String;

    .line 88
    .line 89
    if-nez p1, :cond_4

    .line 90
    .line 91
    const-string p1, "application/octet-stream"

    .line 92
    .line 93
    :cond_4
    iget-object p3, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 94
    .line 95
    const-string p4, "X-Upload-Content-Type"

    .line 96
    .line 97
    invoke-virtual {p3, p4, p1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    const-string p1, "PATCH"

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const-string p1, "POST"

    .line 106
    .line 107
    :goto_3
    invoke-static {p2, v0, v0}, Ld04;->t(Lzz3;ZZ)Lfl4;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    sget-object p3, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 112
    .line 113
    invoke-virtual {p2}, Lqj4;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    sget-object p3, Ld04;->j:Lokhttp3/MediaType;

    .line 118
    .line 119
    invoke-static {p2, p3}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v1, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lokhttp3/Request;

    .line 127
    .line 128
    invoke-direct {p1, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Ld04;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    :try_start_0
    new-instance p1, Ln04;

    .line 136
    .line 137
    const-string p2, "Location"

    .line 138
    .line 139
    invoke-static {p2, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    if-nez p3, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    const/4 p2, 0x0

    .line 153
    :goto_4
    if-eqz p2, :cond_7

    .line 154
    .line 155
    invoke-static {p2, p0}, Ld04;->p(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Ln04;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 163
    .line 164
    .line 165
    return-object p1

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 169
    .line 170
    const-string p2, "Google Drive resumable upload response did not contain Location"

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    :catchall_1
    move-exception p2

    .line 178
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw p2
.end method

.method public final e(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Ld04;->a:Lq02;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq02;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "Google Drive access token refresh failed"

    .line 13
    .line 14
    iget-object v4, p0, Ld04;->b:Lrk;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v4}, Lrk;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_d

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Ld04;->f(Lokhttp3/Request;)Lokhttp3/Response;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v5, v0, Lokhttp3/Response;->d:I

    .line 41
    .line 42
    const/16 v6, 0x191

    .line 43
    .line 44
    if-ne v5, v6, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lrk;->invoke()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ld04;->f(Lokhttp3/Request;)Lokhttp3/Response;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_2
    move-object v2, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {v3}, Ly5;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :goto_1
    const/4 v0, 0x3

    .line 72
    if-lt v1, v0, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    iget v0, v2, Lokhttp3/Response;->d:I

    .line 76
    .line 77
    const/16 v3, 0x1ad

    .line 78
    .line 79
    if-eq v0, v3, :cond_9

    .line 80
    .line 81
    const/16 v3, 0x1f4

    .line 82
    .line 83
    if-gt v3, v0, :cond_5

    .line 84
    .line 85
    const/16 v3, 0x258

    .line 86
    .line 87
    if-ge v0, v3, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    const/16 v3, 0x193

    .line 91
    .line 92
    if-ne v0, v3, :cond_7

    .line 93
    .line 94
    const-wide/32 v3, 0x10000

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lokhttp3/Response;->h(J)Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    new-instance v3, Lbn6;

    .line 108
    .line 109
    invoke-direct {v3, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    move-object v0, v3

    .line 113
    :goto_2
    nop

    .line 114
    instance-of v3, v0, Lbn6;

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    const-string v0, ""

    .line 119
    .line 120
    :cond_6
    check-cast v0, Ljava/lang/String;

    .line 121
    .line 122
    const-string v3, "rateLimitExceeded"

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-static {v0, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_9

    .line 130
    .line 131
    const-string v3, "userRateLimitExceeded"

    .line 132
    .line 133
    invoke-static {v0, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    :goto_3
    iget-boolean p0, v2, Lokhttp3/Response;->H:Z

    .line 141
    .line 142
    if-eqz p0, :cond_8

    .line 143
    .line 144
    return-object v2

    .line 145
    :cond_8
    iget-object p0, v2, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 146
    .line 147
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {v2}, Ld04;->q(Lokhttp3/Response;)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 156
    .line 157
    .line 158
    new-instance v3, Lvz3;

    .line 159
    .line 160
    iget-object p0, v2, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 161
    .line 162
    iget-object v4, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 163
    .line 164
    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 165
    .line 166
    iget-object v5, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 167
    .line 168
    iget v6, v2, Lokhttp3/Response;->d:I

    .line 169
    .line 170
    invoke-direct/range {v3 .. v8}, Lvz3;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 171
    .line 172
    .line 173
    throw v3

    .line 174
    :cond_9
    :goto_4
    const/4 v0, 0x4

    .line 175
    if-le v1, v0, :cond_a

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_a
    move v0, v1

    .line 179
    :goto_5
    const-wide/16 v3, 0x1

    .line 180
    .line 181
    shl-long/2addr v3, v0

    .line 182
    const-wide/16 v5, 0x3e8

    .line 183
    .line 184
    mul-long/2addr v3, v5

    .line 185
    invoke-static {v2}, Ld04;->q(Lokhttp3/Response;)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    :cond_b
    const-wide/16 v5, 0x7530

    .line 196
    .line 197
    cmp-long v0, v3, v5

    .line 198
    .line 199
    if-lez v0, :cond_c

    .line 200
    .line 201
    move-wide v3, v5

    .line 202
    :cond_c
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Ld04;->g:Lmt3;

    .line 206
    .line 207
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_d
    invoke-static {v3}, Ly5;->m(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-object v2
.end method

.method public final f(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 3

    .line 1
    iget-object v0, p0, Ld04;->a:Lq02;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq02;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "Bearer "

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 22
    .line 23
    const-string v2, "Authorization"

    .line 24
    .line 25
    invoke-static {v1, v2, v0, p1}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 30
    .line 31
    iget-object p0, p0, Ld04;->c:Lokhttp3/OkHttpClient;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    const-string p0, "Google Drive access token unavailable"

    .line 42
    .line 43
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public final g(Lokhttp3/Request;)Lfl4;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ld04;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 6
    .line 7
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance p1, Lfl4;

    .line 18
    .line 19
    invoke-direct {p1}, Lfl4;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p1}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :goto_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final h()Ltz3;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/drive/v3/about"

    .line 7
    .line 8
    iget-object v2, p0, Ld04;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v1}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "fields"

    .line 19
    .line 20
    const-string v3, "storageQuota,user"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 30
    .line 31
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lokhttp3/Request;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ld04;->g(Lokhttp3/Request;)Lfl4;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "storageQuota"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    instance-of v2, v0, Lfl4;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    move-object v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    .line 64
    new-instance v2, La04;

    .line 65
    .line 66
    const-string v3, "usage"

    .line 67
    .line 68
    invoke-static {v0, v3}, Ld04;->l(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "limit"

    .line 73
    .line 74
    invoke-static {v0, v4}, Ld04;->l(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v2, v3, v0}, La04;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v2, v1

    .line 83
    :goto_1
    const-string v0, "user"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    instance-of v0, p0, Lfl4;

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    move-object p0, v1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :goto_2
    if-eqz p0, :cond_3

    .line 102
    .line 103
    const-string v0, "emailAddress"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    invoke-static {p0}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_3
    new-instance p0, Ltz3;

    .line 116
    .line 117
    invoke-direct {p0, v2, v1}, Ltz3;-><init>(La04;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Lyz3;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "/drive/v3/files/"

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Ld04;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, p1}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "fields"

    .line 26
    .line 27
    invoke-virtual {p1, v1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "supportsAllDrives"

    .line 31
    .line 32
    const-string v1, "true"

    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 42
    .line 43
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lokhttp3/Request;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ld04;->g(Lokhttp3/Request;)Lfl4;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Ld04;->s(Lfl4;)Lyz3;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final j(JLjava/lang/String;)Lo04;
    .locals 11

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v2}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v4, "PUT"

    .line 22
    .line 23
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "0"

    .line 27
    .line 28
    iget-object v4, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 29
    .line 30
    const-string v5, "Content-Length"

    .line 31
    .line 32
    invoke-virtual {v4, v5, v1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "bytes */"

    .line 38
    .line 39
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v6, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 50
    .line 51
    const-string v7, "Content-Range"

    .line 52
    .line 53
    invoke-static {v6, v7, v1, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object p0, p0, Ld04;->h:Lokhttp3/OkHttpClient;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lokhttp3/internal/connection/RealCall;

    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 72
    .line 73
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v4, p0, Lokhttp3/Response;->d:I

    .line 78
    .line 79
    const/16 v1, 0xc8

    .line 80
    .line 81
    if-eq v4, v1, :cond_4

    .line 82
    .line 83
    const/16 v1, 0xc9

    .line 84
    .line 85
    if-eq v4, v1, :cond_4

    .line 86
    .line 87
    const/16 v1, 0x134

    .line 88
    .line 89
    if-ne v4, v1, :cond_3

    .line 90
    .line 91
    new-instance v5, Lo04;

    .line 92
    .line 93
    invoke-static {p0}, Ld04;->m(Lokhttp3/Response;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    const-string v0, "Location"

    .line 98
    .line 99
    invoke-static {v0, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    .line 111
    move-object v2, v0

    .line 112
    :cond_0
    if-nez v2, :cond_1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v2, p0}, Ld04;->p(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v10, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    move-object v10, p3

    .line 122
    :goto_1
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-direct/range {v5 .. v10}, Lo04;-><init>(ZLyz3;JLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object v1, v0

    .line 130
    goto :goto_4

    .line 131
    :cond_3
    new-instance v1, Lvz3;

    .line 132
    .line 133
    const-string v2, "PUT"

    .line 134
    .line 135
    invoke-static {p0}, Ld04;->q(Lokhttp3/Response;)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    move-object v3, p3

    .line 140
    move-object v5, v0

    .line 141
    invoke-direct/range {v1 .. v6}, Lvz3;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_4
    move-object v5, v0

    .line 146
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    move-object v0, v5

    .line 153
    goto :goto_2

    .line 154
    :cond_5
    move-object v0, v2

    .line 155
    :goto_2
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Ld04;->s(Lfl4;)Lyz3;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_6
    move-object v3, v2

    .line 170
    new-instance v1, Lo04;

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    move-wide v4, p1

    .line 174
    move-object v6, p3

    .line 175
    invoke-direct/range {v1 .. v6}, Lo04;-><init>(ZLyz3;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    move-object v5, v1

    .line 179
    :goto_3
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 180
    .line 181
    .line 182
    return-object v5

    .line 183
    :goto_4
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v0
.end method

.method public final o(Ljava/lang/String;Ljava/io/InputStream;JJJLe04;)Lm04;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    add-long v0, p3, p5

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    sub-long/2addr v0, v2

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, p7, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string p3, "bytes */0"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "bytes "

    .line 19
    .line 20
    const-string v3, "-"

    .line 21
    .line 22
    invoke-static {v2, v3, p3, p4}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p4, "/"

    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :goto_0
    new-instance p4, Lokhttp3/Request$Builder;

    .line 42
    .line 43
    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lc04;

    .line 50
    .line 51
    invoke-direct {v0, p5, p6, p2, p9}, Lc04;-><init>(JLjava/io/InputStream;Le04;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "PUT"

    .line 55
    .line 56
    invoke-virtual {p4, p2, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object p5, p4, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 67
    .line 68
    const-string p6, "Content-Length"

    .line 69
    .line 70
    invoke-virtual {p5, p6, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p2, "Content-Range"

    .line 74
    .line 75
    iget-object p5, p4, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 76
    .line 77
    invoke-static {p5, p2, p3, p4}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object p0, p0, Ld04;->h:Lokhttp3/OkHttpClient;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance p3, Lokhttp3/internal/connection/RealCall;

    .line 87
    .line 88
    invoke-direct {p3, p0, p2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :try_start_0
    iget-object p2, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 96
    .line 97
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget p6, p0, Lokhttp3/Response;->d:I

    .line 102
    .line 103
    const/16 p3, 0xc8

    .line 104
    .line 105
    const/4 p4, 0x0

    .line 106
    if-eq p6, p3, :cond_5

    .line 107
    .line 108
    const/16 p3, 0xc9

    .line 109
    .line 110
    if-eq p6, p3, :cond_5

    .line 111
    .line 112
    const/16 p3, 0x134

    .line 113
    .line 114
    if-ne p6, p3, :cond_4

    .line 115
    .line 116
    new-instance v0, Lm04;

    .line 117
    .line 118
    invoke-static {p0}, Ld04;->m(Lokhttp3/Response;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    const-string p2, "Location"

    .line 123
    .line 124
    invoke-static {p2, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p2, :cond_3

    .line 129
    .line 130
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-nez p3, :cond_1

    .line 135
    .line 136
    move-object p4, p2

    .line 137
    :cond_1
    if-nez p4, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {p4, p0}, Ld04;->p(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :cond_3
    :goto_1
    move-object v5, p1

    .line 145
    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-direct/range {v0 .. v5}, Lm04;-><init>(ZLyz3;JLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    move-object p1, v0

    .line 153
    goto :goto_4

    .line 154
    :cond_4
    new-instance p3, Lvz3;

    .line 155
    .line 156
    const-string p4, "PUT"

    .line 157
    .line 158
    invoke-static {p0}, Ld04;->q(Lokhttp3/Response;)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object p8

    .line 162
    move-object p5, p1

    .line 163
    move-object p7, p2

    .line 164
    invoke-direct/range {p3 .. p8}, Lvz3;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    throw p3

    .line 168
    :cond_5
    move-object p5, p1

    .line 169
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    move-object p2, p4

    .line 177
    :goto_2
    if-eqz p2, :cond_7

    .line 178
    .line 179
    invoke-static {p2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1}, Ld04;->s(Lfl4;)Lyz3;

    .line 188
    .line 189
    .line 190
    move-result-object p4

    .line 191
    :cond_7
    move-object v2, p4

    .line 192
    new-instance v0, Lm04;

    .line 193
    .line 194
    const/4 v1, 0x1

    .line 195
    move-object v5, p5

    .line 196
    move-wide v3, p7

    .line 197
    invoke-direct/range {v0 .. v5}, Lm04;-><init>(ZLyz3;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    :goto_3
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    :catchall_1
    move-exception v0

    .line 206
    move-object p2, v0

    .line 207
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    throw p2
.end method
