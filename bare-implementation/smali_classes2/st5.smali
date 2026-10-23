.class public final Lst5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Lokhttp3/MediaType;

.field public static final g:Lokhttp3/MediaType;


# instance fields
.field public final a:Ljx;

.field public final b:Lhc1;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Ljava/lang/String;

.field public final e:Lmt3;


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
    sput-object v0, Lst5;->f:Lokhttp3/MediaType;

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
    sput-object v0, Lst5;->g:Lokhttp3/MediaType;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljx;Lhc1;)V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lai;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v0, v2}, Lai;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lst5;->a:Ljx;

    .line 21
    .line 22
    iput-object p2, p0, Lst5;->b:Lhc1;

    .line 23
    .line 24
    iput-object v1, p0, Lst5;->c:Lokhttp3/OkHttpClient;

    .line 25
    .line 26
    const-string p1, "https://graph.microsoft.com/v1.0"

    .line 27
    .line 28
    iput-object p1, p0, Lst5;->d:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lst5;->e:Lmt3;

    .line 31
    .line 32
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

.method public static k(Lfl4;Ljava/lang/String;)Ljava/lang/Long;
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

.method public static l(Lst5;Ljava/lang/String;)Lokhttp3/Response;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    invoke-static {p1}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "/me/drive/root:/"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ":/content"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 37
    .line 38
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lokhttp3/Request;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lst5;->d(Lokhttp3/Request;)Lokhttp3/Response;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "%20"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "%28"

    .line 10
    .line 11
    const-string v1, "("

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "%29"

    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v1, v0, [C

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0x2f

    .line 30
    .line 31
    aput-char v3, v1, v2

    .line 32
    .line 33
    invoke-static {p0, v1}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-array v0, v0, [C

    .line 41
    .line 42
    aput-char v3, v0, v2

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    invoke-static {p0, v0, v1}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v6, Lhi;

    .line 50
    .line 51
    invoke-direct {v6, v1}, Lhi;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const/16 v7, 0x1e

    .line 55
    .line 56
    const-string v3, "/"

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public static o(Lokhttp3/Response;)Ljava/lang/Long;
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

.method public static p(Ljava/lang/String;)J
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

.method public static q(Lfl4;)Lpt5;
    .locals 11

    .line 1
    new-instance v0, Lpt5;

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    const-string v3, "name"

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-static {v3}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_1
    if-nez v3, :cond_2

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    :cond_2
    const-string v4, "size"

    .line 37
    .line 38
    invoke-static {p0, v4}, Lst5;->k(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    :goto_2
    const-string v6, "parentReference"

    .line 52
    .line 53
    invoke-virtual {p0, v6}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_5

    .line 58
    .line 59
    instance-of v7, v6, Lfl4;

    .line 60
    .line 61
    if-nez v7, :cond_4

    .line 62
    .line 63
    move-object v6, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    invoke-virtual {v6}, Lqj4;->i()Lfl4;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_3
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const-string v7, "path"

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-static {v6}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move-object v6, v2

    .line 85
    :goto_4
    const-string v7, "createdDateTime"

    .line 86
    .line 87
    invoke-virtual {p0, v7}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    invoke-static {v7}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    goto :goto_5

    .line 98
    :cond_6
    move-object v7, v2

    .line 99
    :goto_5
    invoke-static {v7}, Lst5;->p(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    const-string v9, "lastModifiedDateTime"

    .line 104
    .line 105
    invoke-virtual {p0, v9}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    if-eqz v9, :cond_7

    .line 110
    .line 111
    invoke-static {v9}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_7
    invoke-static {v2}, Lst5;->p(Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    const-string v2, "folder"

    .line 120
    .line 121
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Liw4;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    move-object v2, v3

    .line 128
    move-wide v3, v4

    .line 129
    move-object v5, v6

    .line 130
    move-wide v6, v7

    .line 131
    move-wide v8, v9

    .line 132
    move v10, p0

    .line 133
    invoke-direct/range {v0 .. v10}, Lpt5;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJZ)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)Lnt5;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    move-object v5, v4

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v3, 0x14

    .line 41
    .line 42
    invoke-static {v2, v3, v3}, Lel1;->A1(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    move-object v4, v3

    .line 52
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    if-eqz v5, :cond_19

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/util/List;

    .line 65
    .line 66
    new-instance v8, Lxi4;

    .line 67
    .line 68
    invoke-direct {v8}, Lxi4;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const/4 v10, 0x0

    .line 76
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "id"

    .line 81
    .line 82
    if-eqz v11, :cond_3

    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    add-int/lit8 v13, v10, 0x1

    .line 89
    .line 90
    if-ltz v10, :cond_2

    .line 91
    .line 92
    check-cast v11, Ljava/lang/String;

    .line 93
    .line 94
    new-instance v10, Lfl4;

    .line 95
    .line 96
    invoke-direct {v10}, Lfl4;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    invoke-virtual {v10, v12, v14}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v12, "method"

    .line 107
    .line 108
    const-string v14, "DELETE"

    .line 109
    .line 110
    invoke-virtual {v10, v12, v14}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v11}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v14, "/me/drive/root:/"

    .line 120
    .line 121
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v11, ":"

    .line 128
    .line 129
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    const-string v12, "url"

    .line 137
    .line 138
    invoke-virtual {v10, v12, v11}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v10}, Lxi4;->p(Lqj4;)V

    .line 142
    .line 143
    .line 144
    move v10, v13

    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-static {}, Lfl1;->F0()V

    .line 147
    .line 148
    .line 149
    throw v3

    .line 150
    :cond_3
    new-instance v9, Lfl4;

    .line 151
    .line 152
    invoke-direct {v9}, Lfl4;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v10, "requests"

    .line 156
    .line 157
    invoke-virtual {v9, v10, v8}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 158
    .line 159
    .line 160
    new-instance v8, Lokhttp3/Request$Builder;

    .line 161
    .line 162
    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v10, "/$batch"

    .line 166
    .line 167
    invoke-virtual {v0, v10}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    iput-object v10, v8, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 172
    .line 173
    sget-object v10, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 174
    .line 175
    invoke-virtual {v9}, Lqj4;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    sget-object v10, Lst5;->f:Lokhttp3/MediaType;

    .line 180
    .line 181
    invoke-static {v9, v10}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const-string v10, "POST"

    .line 186
    .line 187
    invoke-virtual {v8, v10, v9}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 188
    .line 189
    .line 190
    new-instance v9, Lokhttp3/Request;

    .line 191
    .line 192
    invoke-direct {v9, v8}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v9}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    const-string v9, "responses"

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    if-eqz v8, :cond_5

    .line 206
    .line 207
    instance-of v9, v8, Lxi4;

    .line 208
    .line 209
    if-nez v9, :cond_4

    .line 210
    .line 211
    move-object v8, v3

    .line 212
    goto :goto_3

    .line 213
    :cond_4
    invoke-virtual {v8}, Lqj4;->g()Lxi4;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    :goto_3
    if-nez v8, :cond_6

    .line 218
    .line 219
    :cond_5
    new-instance v8, Lxi4;

    .line 220
    .line 221
    invoke-direct {v8}, Lxi4;-><init>()V

    .line 222
    .line 223
    .line 224
    :cond_6
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 225
    .line 226
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 227
    .line 228
    .line 229
    iget-object v8, v8, Lxi4;->a:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_15

    .line 240
    .line 241
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    check-cast v10, Lqj4;

    .line 246
    .line 247
    invoke-virtual {v10}, Lqj4;->i()Lfl4;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v10, v12}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-eqz v11, :cond_7

    .line 256
    .line 257
    invoke-static {v11}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    goto :goto_5

    .line 262
    :cond_7
    move-object v11, v3

    .line 263
    :goto_5
    const/4 v13, 0x1

    .line 264
    if-eqz v11, :cond_8

    .line 265
    .line 266
    const/16 v14, 0xa

    .line 267
    .line 268
    invoke-static {v14, v11}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    if-eqz v11, :cond_8

    .line 273
    .line 274
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    sub-int/2addr v11, v13

    .line 279
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    goto :goto_6

    .line 284
    :cond_8
    move-object v11, v3

    .line 285
    :goto_6
    const-string v14, "status"

    .line 286
    .line 287
    invoke-static {v10, v14}, Lst5;->k(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    if-eqz v14, :cond_9

    .line 292
    .line 293
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 294
    .line 295
    .line 296
    move-result-wide v14

    .line 297
    long-to-int v14, v14

    .line 298
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    goto :goto_7

    .line 303
    :cond_9
    move-object v14, v3

    .line 304
    :goto_7
    if-eqz v11, :cond_14

    .line 305
    .line 306
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 307
    .line 308
    .line 309
    move-result v15

    .line 310
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-ltz v3, :cond_14

    .line 315
    .line 316
    if-ge v3, v15, :cond_14

    .line 317
    .line 318
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    if-nez v14, :cond_a

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    const/16 v15, 0xcc

    .line 329
    .line 330
    if-eq v3, v15, :cond_14

    .line 331
    .line 332
    :goto_8
    if-nez v14, :cond_b

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    const/16 v14, 0x194

    .line 340
    .line 341
    if-eq v3, v14, :cond_14

    .line 342
    .line 343
    :goto_9
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    if-eqz v4, :cond_c

    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 357
    .line 358
    .line 359
    move-result-wide v3

    .line 360
    goto :goto_a

    .line 361
    :cond_c
    move-wide v3, v6

    .line 362
    :goto_a
    const-string v11, "headers"

    .line 363
    .line 364
    invoke-virtual {v10, v11}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    if-eqz v10, :cond_12

    .line 369
    .line 370
    instance-of v11, v10, Lfl4;

    .line 371
    .line 372
    if-nez v11, :cond_d

    .line 373
    .line 374
    const/4 v10, 0x0

    .line 375
    goto :goto_b

    .line 376
    :cond_d
    invoke-virtual {v10}, Lqj4;->i()Lfl4;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    :goto_b
    if-nez v10, :cond_e

    .line 381
    .line 382
    goto :goto_d

    .line 383
    :cond_e
    iget-object v10, v10, Lfl4;->a:Liw4;

    .line 384
    .line 385
    invoke-virtual {v10}, Liw4;->entrySet()Ljava/util/Set;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    check-cast v10, Lew4;

    .line 390
    .line 391
    invoke-virtual {v10}, Lew4;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    :cond_f
    move-object v11, v10

    .line 396
    check-cast v11, Law4;

    .line 397
    .line 398
    invoke-virtual {v11}, Law4;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    if-eqz v11, :cond_10

    .line 403
    .line 404
    move-object v11, v10

    .line 405
    check-cast v11, Ldw4;

    .line 406
    .line 407
    invoke-virtual {v11}, Law4;->b()Lhw4;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    check-cast v14, Ljava/lang/String;

    .line 416
    .line 417
    const-string v15, "Retry-After"

    .line 418
    .line 419
    invoke-static {v14, v15, v13}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    if-eqz v14, :cond_f

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_10
    const/4 v11, 0x0

    .line 427
    :goto_c
    if-eqz v11, :cond_12

    .line 428
    .line 429
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v10

    .line 433
    check-cast v10, Lqj4;

    .line 434
    .line 435
    if-eqz v10, :cond_12

    .line 436
    .line 437
    invoke-static {v10}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v10

    .line 441
    if-eqz v10, :cond_12

    .line 442
    .line 443
    invoke-static {v10}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    if-eqz v10, :cond_12

    .line 452
    .line 453
    invoke-static {v10}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    if-eqz v10, :cond_12

    .line 458
    .line 459
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 460
    .line 461
    .line 462
    move-result-wide v10

    .line 463
    cmp-long v13, v10, v6

    .line 464
    .line 465
    if-gez v13, :cond_11

    .line 466
    .line 467
    move-wide v10, v6

    .line 468
    :cond_11
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 469
    .line 470
    invoke-virtual {v13, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 471
    .line 472
    .line 473
    move-result-wide v10

    .line 474
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    goto :goto_e

    .line 479
    :cond_12
    :goto_d
    const/4 v10, 0x0

    .line 480
    :goto_e
    if-eqz v10, :cond_13

    .line 481
    .line 482
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v10

    .line 486
    goto :goto_f

    .line 487
    :cond_13
    move-wide v10, v6

    .line 488
    :goto_f
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 489
    .line 490
    .line 491
    move-result-wide v3

    .line 492
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    move-object v4, v3

    .line 497
    :cond_14
    const/4 v3, 0x0

    .line 498
    goto/16 :goto_4

    .line 499
    .line 500
    :cond_15
    invoke-static {v5}, Lfl1;->y0(Ljava/util/Collection;)Lnd4;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    new-instance v6, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3}, Lld4;->iterator()Ljava/util/Iterator;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    :cond_16
    :goto_10
    move-object v7, v3

    .line 514
    check-cast v7, Lmd4;

    .line 515
    .line 516
    iget-boolean v8, v7, Lmd4;->c:Z

    .line 517
    .line 518
    if-eqz v8, :cond_17

    .line 519
    .line 520
    invoke-virtual {v7}, Lmd4;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    move-object v8, v7

    .line 525
    check-cast v8, Ljava/lang/Number;

    .line 526
    .line 527
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-nez v8, :cond_16

    .line 540
    .line 541
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    goto :goto_10

    .line 545
    :cond_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    if-eqz v6, :cond_18

    .line 554
    .line 555
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    check-cast v6, Ljava/lang/Number;

    .line 560
    .line 561
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    goto :goto_11

    .line 573
    :cond_18
    const/4 v3, 0x0

    .line 574
    goto/16 :goto_1

    .line 575
    .line 576
    :cond_19
    if-eqz v4, :cond_1a

    .line 577
    .line 578
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 579
    .line 580
    .line 581
    move-result-wide v2

    .line 582
    cmp-long v0, v2, v6

    .line 583
    .line 584
    if-lez v0, :cond_1a

    .line 585
    .line 586
    move-object v3, v4

    .line 587
    goto :goto_12

    .line 588
    :cond_1a
    const/4 v3, 0x0

    .line 589
    :goto_12
    new-instance v0, Lnt5;

    .line 590
    .line 591
    invoke-direct {v0, v1, v3}, Lnt5;-><init>(Ljava/util/ArrayList;Ljava/lang/Long;)V

    .line 592
    .line 593
    .line 594
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "/me/drive/root:/"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ":"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 34
    .line 35
    invoke-static {v0}, Lokhttp3/Request$Builder;->a(Lokhttp3/Request$Builder;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lokhttp3/Request;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lst5;->d(Lokhttp3/Request;)Lokhttp3/Response;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final d(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    .line 4
    iget-object v2, p0, Lst5;->b:Lhc1;

    .line 5
    .line 6
    invoke-virtual {v2, v1}, Lhc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "OneDrive access token unavailable"

    .line 18
    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lst5;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v5, v1, Lokhttp3/Response;->d:I

    .line 26
    .line 27
    const/16 v6, 0x191

    .line 28
    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    const/16 v6, 0x193

    .line 32
    .line 33
    if-ne v5, v6, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lhc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lst5;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_1
    const/4 v2, 0x3

    .line 57
    if-ge v0, v2, :cond_6

    .line 58
    .line 59
    iget v2, v1, Lokhttp3/Response;->d:I

    .line 60
    .line 61
    const/16 v3, 0x1ad

    .line 62
    .line 63
    if-eq v2, v3, :cond_2

    .line 64
    .line 65
    const/16 v3, 0x1f4

    .line 66
    .line 67
    if-gt v3, v2, :cond_6

    .line 68
    .line 69
    const/16 v3, 0x258

    .line 70
    .line 71
    if-ge v2, v3, :cond_6

    .line 72
    .line 73
    :cond_2
    const/4 v2, 0x4

    .line 74
    if-le v0, v2, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v2, v0

    .line 78
    :goto_1
    const-wide/16 v3, 0x1

    .line 79
    .line 80
    shl-long v2, v3, v2

    .line 81
    .line 82
    const-wide/16 v4, 0x3e8

    .line 83
    .line 84
    mul-long/2addr v2, v4

    .line 85
    invoke-static {v1}, Lst5;->o(Lokhttp3/Response;)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    :cond_4
    const-wide/16 v4, 0x7530

    .line 96
    .line 97
    cmp-long v6, v2, v4

    .line 98
    .line 99
    if-lez v6, :cond_5

    .line 100
    .line 101
    move-wide v2, v4

    .line 102
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lst5;->e:Lmt3;

    .line 106
    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v1, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    iget-boolean p0, v1, Lokhttp3/Response;->H:Z

    .line 118
    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_7
    iget-object p0, v1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 123
    .line 124
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v1}, Lst5;->o(Lokhttp3/Response;)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lmt5;

    .line 136
    .line 137
    iget-object p0, v1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 138
    .line 139
    iget-object v3, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 140
    .line 141
    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 142
    .line 143
    iget-object v4, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 144
    .line 145
    iget v5, v1, Lokhttp3/Response;->d:I

    .line 146
    .line 147
    invoke-direct/range {v2 .. v7}, Lmt5;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 148
    .line 149
    .line 150
    throw v2

    .line 151
    :cond_8
    invoke-static {v4}, Ly5;->m(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v3

    .line 155
    :cond_9
    invoke-static {v4}, Ly5;->m(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v3
.end method

.method public final e(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 3

    .line 1
    iget-object v0, p0, Lst5;->a:Ljx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljx;->invoke()Ljava/lang/Object;

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
    iget-object p0, p0, Lst5;->c:Lokhttp3/OkHttpClient;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string p0, "OneDrive access token unavailable"

    .line 45
    .line 46
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final f(Lokhttp3/Request;)Lfl4;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lst5;->d(Lokhttp3/Request;)Lokhttp3/Response;

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

.method public final g()Lot5;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/me/drive"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "$select"

    .line 17
    .line 18
    const-string v3, "quota"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 28
    .line 29
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lokhttp3/Request;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v0, Lot5;

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    instance-of v2, p0, Lfl4;

    .line 51
    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    move-object p0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_0
    if-eqz p0, :cond_1

    .line 61
    .line 62
    new-instance v1, Lqt5;

    .line 63
    .line 64
    const-string v2, "used"

    .line 65
    .line 66
    invoke-static {p0, v2}, Lst5;->k(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "total"

    .line 71
    .line 72
    invoke-static {p0, v3}, Lst5;->k(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v1, v2, p0}, Lqt5;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-direct {v0, v1}, Lot5;-><init>(Lqt5;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/me"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "$select"

    .line 17
    .line 18
    const-string v3, "userPrincipalName"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 28
    .line 29
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lokhttp3/Request;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, v3}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    invoke-static {p0}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final i(Lokhttp3/HttpUrl;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/16 v6, 0x3e

    .line 12
    .line 13
    const-string v2, ","

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p2

    .line 18
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v1, "$select"

    .line 23
    .line 24
    invoke-virtual {p1, v1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_0
    new-instance p2, Lokhttp3/Request$Builder;

    .line 43
    .line 44
    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->b()V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lokhttp3/Request;

    .line 54
    .line 55
    invoke-direct {p1, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "value"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    instance-of v2, p2, Lxi4;

    .line 72
    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    move-object p2, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p2}, Lqj4;->g()Lxi4;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_1
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget-object p2, p2, Lxi4;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lqj4;

    .line 100
    .line 101
    invoke-virtual {v2}, Lqj4;->i()Lfl4;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Lst5;->q(Lfl4;)Lpt5;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string p2, "@odata.nextLink"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    invoke-static {p1}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    move-object p1, v1

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    :goto_3
    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "/me/drive/root:/"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ":/children"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, p2}, Lst5;->i(Lokhttp3/HttpUrl;Ljava/util/List;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final n(Ljava/lang/String;Ljava/io/InputStream;JJJLvq5;)Lwt5;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    new-instance v2, Lokhttp3/Request$Builder;

    .line 10
    .line 11
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lrt5;

    .line 18
    .line 19
    invoke-direct {v3, p5, p6, p2, p9}, Lrt5;-><init>(JLjava/io/InputStream;Lvq5;)V

    .line 20
    .line 21
    .line 22
    const-string p2, "PUT"

    .line 23
    .line 24
    invoke-virtual {v2, p2, v3}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p5, v2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 35
    .line 36
    const-string p6, "Content-Length"

    .line 37
    .line 38
    invoke-virtual {p5, p6, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p5, "bytes "

    .line 44
    .line 45
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p3, "-"

    .line 52
    .line 53
    const-string p4, "/"

    .line 54
    .line 55
    invoke-static {p2, p3, v0, v1, p4}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, v2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 66
    .line 67
    const-string p4, "Content-Range"

    .line 68
    .line 69
    invoke-static {p3, p4, p2, v2}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object p0, p0, Lst5;->c:Lokhttp3/OkHttpClient;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance p3, Lokhttp3/internal/connection/RealCall;

    .line 79
    .line 80
    invoke-direct {p3, p0, p2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :try_start_0
    iget-object p2, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 88
    .line 89
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p7

    .line 93
    invoke-static {p7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const/4 p3, 0x0

    .line 98
    if-nez p2, :cond_0

    .line 99
    .line 100
    move-object p2, p7

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move-object p2, p3

    .line 103
    :goto_0
    if-eqz p2, :cond_1

    .line 104
    .line 105
    invoke-static {p2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lqj4;->i()Lfl4;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    move-object p1, v0

    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_1
    new-instance p2, Lfl4;

    .line 119
    .line 120
    invoke-direct {p2}, Lfl4;-><init>()V

    .line 121
    .line 122
    .line 123
    :goto_1
    iget-object p4, p2, Lfl4;->a:Liw4;

    .line 124
    .line 125
    iget p6, p0, Lokhttp3/Response;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    sget-object p5, Lov2;->a:Lov2;

    .line 128
    .line 129
    packed-switch p6, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    :try_start_1
    new-instance p3, Lmt5;

    .line 133
    .line 134
    const-string p4, "PUT"

    .line 135
    .line 136
    invoke-static {p0}, Lst5;->o(Lokhttp3/Response;)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object p8

    .line 140
    move-object p5, p1

    .line 141
    invoke-direct/range {p3 .. p8}, Lmt5;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    throw p3

    .line 145
    :pswitch_0
    const-string p1, "nextExpectedRanges"

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    instance-of p2, p1, Lxi4;

    .line 154
    .line 155
    if-nez p2, :cond_2

    .line 156
    .line 157
    move-object p1, p3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {p1}, Lqj4;->g()Lxi4;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_2
    if-eqz p1, :cond_4

    .line 164
    .line 165
    new-instance p2, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lxi4;->a:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    if-eqz p4, :cond_5

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    check-cast p4, Lqj4;

    .line 187
    .line 188
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {p4}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    if-eqz p4, :cond_3

    .line 196
    .line 197
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    move-object p2, p3

    .line 202
    :cond_5
    if-nez p2, :cond_6

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_6
    move-object p5, p2

    .line 206
    :goto_4
    new-instance p1, Lwt5;

    .line 207
    .line 208
    const/4 p2, 0x0

    .line 209
    invoke-direct {p1, p2, p3, p5}, Lwt5;-><init>(ZLpt5;Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :pswitch_1
    new-instance p1, Lwt5;

    .line 214
    .line 215
    const-string p6, "id"

    .line 216
    .line 217
    invoke-virtual {p4, p6}, Liw4;->containsKey(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p6

    .line 221
    if-nez p6, :cond_7

    .line 222
    .line 223
    const-string p6, "name"

    .line 224
    .line 225
    invoke-virtual {p4, p6}, Liw4;->containsKey(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    if-nez p4, :cond_7

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_7
    invoke-static {p2}, Lst5;->q(Lfl4;)Lpt5;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    :goto_5
    const/4 p2, 0x1

    .line 237
    invoke-direct {p1, p2, p3, p5}, Lwt5;-><init>(ZLpt5;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .line 239
    .line 240
    :goto_6
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 241
    .line 242
    .line 243
    return-object p1

    .line 244
    :goto_7
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    move-object p2, v0

    .line 247
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw p2

    .line 251
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/lang/String;)Lokhttp3/HttpUrl;
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
    iget-object p0, p0, Lst5;->d:Ljava/lang/String;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, "/"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
