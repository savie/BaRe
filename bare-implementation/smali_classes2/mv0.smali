.class public final Lmv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lokhttp3/MediaType;

.field public static final h:Lokhttp3/MediaType;


# instance fields
.field public final a:Ldl;

.field public final b:Lel;

.field public final c:Lokhttp3/Call$Factory;

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
    sput-object v0, Lmv0;->g:Lokhttp3/MediaType;

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
    sput-object v0, Lmv0;->h:Lokhttp3/MediaType;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ldl;Lel;Lokhttp3/OkHttpClient;)V
    .locals 2

    .line 1
    new-instance v0, Lhw;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lhw;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lmv0;->a:Ldl;

    .line 14
    .line 15
    iput-object p2, p0, Lmv0;->b:Lel;

    .line 16
    .line 17
    iput-object p3, p0, Lmv0;->c:Lokhttp3/Call$Factory;

    .line 18
    .line 19
    const-string p1, "https://api.box.com"

    .line 20
    .line 21
    iput-object p1, p0, Lmv0;->d:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "https://upload.box.com"

    .line 24
    .line 25
    iput-object p1, p0, Lmv0;->e:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lmv0;->f:Lmt3;

    .line 28
    .line 29
    return-void
.end method

.method public static b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    return-object v0
.end method

.method public static c(Lokhttp3/Request;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, v1

    .line 10
    :goto_0
    if-eqz p2, :cond_2

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p2

    .line 19
    new-instance v0, Lbn6;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_1
    instance-of p2, v0, Lbn6;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object v0, v1

    .line 33
    :goto_2
    if-eqz v0, :cond_5

    .line 34
    .line 35
    const-string p2, "message"

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_5

    .line 42
    .line 43
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object p2, v1

    .line 51
    :goto_3
    if-nez p2, :cond_4

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_4
    :goto_4
    move-object v1, p2

    .line 55
    goto :goto_7

    .line 56
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 57
    .line 58
    const-string p2, "error_description"

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_6

    .line 71
    .line 72
    goto :goto_6

    .line 73
    :cond_6
    move-object p2, v1

    .line 74
    :goto_6
    if-nez p2, :cond_4

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    const-string p2, "error"

    .line 79
    .line 80
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, "Box REST request failed: "

    .line 96
    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v0, 0x20

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 111
    .line 112
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, " status="

    .line 120
    .line 121
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    const-string p0, " message="

    .line 130
    .line 131
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static synthetic h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lmv0;->j(Lokhttp3/Request;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lmv0;->g(Lokhttp3/Request;ZLjv0;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static i(Lorg/json/JSONObject;)Lav0;
    .locals 1

    .line 1
    const-string v0, "entries"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lmv0;->m(Lorg/json/JSONArray;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-static {v0}, Lmv0;->q(Lorg/json/JSONObject;)Lav0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static j(Lokhttp3/Request;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "DELETE"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lokhttp3/RequestBody;->c()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public static l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    new-instance p1, Lbn6;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    move-object p0, p1

    .line 31
    :goto_0
    nop

    .line 32
    instance-of p1, p0, Lbn6;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, p0

    .line 38
    :goto_1
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static m(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lov2;->a:Lov2;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lnc8;->p()Lww4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lww4;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static n(Lokhttp3/Response;)Ljava/lang/Long;
    .locals 5

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
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p0, v0

    .line 38
    :goto_0
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    return-object v0
.end method

.method public static p(Ljava/lang/String;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

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
    goto :goto_2

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    new-instance v3, Lbn6;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    move-object v2, v3

    .line 32
    :goto_0
    invoke-static {v2}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    move-object v2, p0

    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    new-instance v2, Lbn6;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    instance-of v0, v2, Lbn6;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    move-object v2, p0

    .line 72
    :cond_2
    check-cast v2, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    :cond_3
    :goto_2
    return-wide v0
.end method

.method public static q(Lorg/json/JSONObject;)Lav0;
    .locals 14

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object v5, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v5, v3

    .line 20
    :goto_0
    if-nez v5, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const-string v1, "name"

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    move-object v6, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object v6, v3

    .line 41
    :goto_1
    if-nez v6, :cond_3

    .line 42
    .line 43
    :goto_2
    return-object v3

    .line 44
    :cond_3
    const-string v1, "size"

    .line 45
    .line 46
    invoke-static {p0, v1}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    :goto_3
    move-wide v7, v1

    .line 57
    goto :goto_4

    .line 58
    :cond_4
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_4
    const-string v1, "created_at"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lmv0;->p(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    const-string v1, "modified_at"

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lmv0;->p(Ljava/lang/String;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v11

    .line 81
    const-string v1, "parent"

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    move-object v13, p0

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    move-object v13, v3

    .line 104
    :goto_5
    new-instance v4, Lav0;

    .line 105
    .line 106
    invoke-direct/range {v4 .. v13}, Lav0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v4
.end method

.method public static r(Lorg/json/JSONObject;)Lbv0;
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    const-string v1, "name"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object p0, v2

    .line 39
    :goto_1
    if-nez p0, :cond_3

    .line 40
    .line 41
    :goto_2
    return-object v2

    .line 42
    :cond_3
    new-instance v1, Lbv0;

    .line 43
    .line 44
    invoke-direct {v1, v0, p0}, Lbv0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public static s(Lorg/json/JSONObject;)Lqv0;
    .locals 10

    .line 1
    const-string v0, "session_endpoints"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    move-object v5, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v5, v1

    .line 28
    :goto_0
    if-eqz v5, :cond_6

    .line 29
    .line 30
    const-string v2, "part_size"

    .line 31
    .line 32
    invoke-static {p0, v2}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    const-string p0, "upload_part"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    move-object v6, p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v6, v1

    .line 60
    :goto_1
    if-eqz v6, :cond_4

    .line 61
    .line 62
    const-string p0, "commit"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    move-object v9, p0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v9, v1

    .line 80
    :goto_2
    if-eqz v9, :cond_3

    .line 81
    .line 82
    new-instance v4, Lqv0;

    .line 83
    .line 84
    invoke-direct/range {v4 .. v9}, Lqv0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v4

    .line 88
    :cond_3
    const-string p0, "Box upload session response did not contain commit endpoint"

    .line 89
    .line 90
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_4
    const-string p0, "Box upload session response did not contain upload_part endpoint"

    .line 95
    .line 96
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_5
    const-string p0, "Box upload session response did not contain part_size"

    .line 101
    .line 102
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_6
    const-string p0, "Box upload session response did not contain id"

    .line 107
    .line 108
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_7
    const-string p0, "Box upload session response did not contain session_endpoints"

    .line 113
    .line 114
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmv0;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lbv0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "name"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    new-instance p1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "id"

    .line 22
    .line 23
    const-string v2, "0"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "parent"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lmv0;->g:Lokhttp3/MediaType;

    .line 41
    .line 42
    invoke-static {p1, v0}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "/2.0/folders"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "POST"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lokhttp3/Request;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {p0, p1, v1, v0}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lmv0;->r(Lorg/json/JSONObject;)Lbv0;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_0
    const-string p0, "Box create folder response did not contain folder id/name"

    .line 80
    .line 81
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v1
.end method

.method public final e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Ljv0;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lmv0;->f(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v4, v3, Lokhttp3/Response;->d:I

    .line 14
    .line 15
    const/16 v5, 0x191

    .line 16
    .line 17
    if-ne v4, v5, :cond_1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lmv0;->j(Lokhttp3/Request;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, p1, v1, p3}, Lmv0;->f(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    iget v4, v3, Lokhttp3/Response;->d:I

    .line 36
    .line 37
    if-eqz p2, :cond_6

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    if-ge v2, v5, :cond_6

    .line 41
    .line 42
    const/16 v5, 0x1ad

    .line 43
    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x1f4

    .line 47
    .line 48
    if-gt v5, v4, :cond_6

    .line 49
    .line 50
    const/16 v5, 0x258

    .line 51
    .line 52
    if-ge v4, v5, :cond_6

    .line 53
    .line 54
    :cond_2
    const/4 v4, 0x4

    .line 55
    if-le v2, v4, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v4, v2

    .line 59
    :goto_1
    const-wide/16 v5, 0x1

    .line 60
    .line 61
    shl-long v4, v5, v4

    .line 62
    .line 63
    const-wide/16 v6, 0x3e8

    .line 64
    .line 65
    mul-long/2addr v4, v6

    .line 66
    invoke-static {v3}, Lmv0;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    :cond_4
    const-wide/16 v6, 0x7530

    .line 77
    .line 78
    cmp-long v8, v4, v6

    .line 79
    .line 80
    if-lez v8, :cond_5

    .line 81
    .line 82
    move-wide v4, v6

    .line 83
    :cond_5
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4, v5, p3}, Lmv0;->o(JLjv0;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    iget-boolean p0, v3, Lokhttp3/Response;->H:Z

    .line 93
    .line 94
    if-eqz p0, :cond_7

    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_7
    iget-object p0, v3, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 98
    .line 99
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v3}, Lmv0;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 108
    .line 109
    .line 110
    new-instance p2, Lhv0;

    .line 111
    .line 112
    iget-object p3, v3, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 113
    .line 114
    invoke-static {p3, v4, p0}, Lmv0;->c(Lokhttp3/Request;ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p2, v4, p0, p1, p3}, Lhv0;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p2
.end method

.method public final f(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;
    .locals 2

    .line 1
    iget-object v0, p0, Lmv0;->a:Ldl;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lmv0;->b:Lel;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lel;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :goto_0
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ldl;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ldl;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/String;

    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Bearer "

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object v0, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 38
    .line 39
    const-string v1, "Authorization"

    .line 40
    .line 41
    invoke-static {v0, v1, p2, p1}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p0, p0, Lmv0;->c:Lokhttp3/Call$Factory;

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljv0;->a()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, p1}, Lokhttp3/Call$Factory;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object p1, p3, Ljv0;->a:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {p3}, Ljv0;->a()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 71
    .line 72
    .line 73
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :catchall_0
    move-exception p2

    .line 79
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_2
    invoke-interface {p0, p1}, Lokhttp3/Call$Factory;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public final g(Lokhttp3/Request;ZLjv0;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmv0;->e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

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
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p2, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 35
    .line 36
    .line 37
    return-object p2

    .line 38
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :catchall_1
    move-exception p2

    .line 40
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method public final k(Ljava/lang/String;Lorg/json/JSONObject;Ld86;J)Lokhttp3/MultipartBody;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lokhttp3/MultipartBody;->g:Lokhttp3/MediaType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->c(Lokhttp3/MediaType;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lmv0;->g:Lokhttp3/MediaType;

    .line 21
    .line 22
    invoke-static {p2, v1}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v1, "attributes"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, p2}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Llv0;

    .line 33
    .line 34
    invoke-direct {p2, p4, p5, p0, p3}, Llv0;-><init>(JLmv0;Ld86;)V

    .line 35
    .line 36
    .line 37
    const-string p0, "file"

    .line 38
    .line 39
    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final o(JLjv0;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lmv0;->f:Lmt3;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Ljv0;->a()V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x64

    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {p0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    sub-long/2addr p1, v0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 49
    .line 50
    const-string p2, "Box transfer cancelled"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    invoke-virtual {p3}, Ljv0;->a()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final t(Lqv0;JLqt3;Lc7;Ljv0;)Lav0;
    .locals 39

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, p2, v2

    .line 6
    .line 7
    if-ltz v2, :cond_18

    .line 8
    .line 9
    const-string v13, "SHA-1"

    .line 10
    .line 11
    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v14

    .line 15
    new-instance v15, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-wide v2, v1, Lqv0;->b:J

    .line 21
    .line 22
    const-wide/16 v16, 0x1

    .line 23
    .line 24
    cmp-long v4, v2, v16

    .line 25
    .line 26
    if-gez v4, :cond_0

    .line 27
    .line 28
    move-wide/from16 v2, v16

    .line 29
    .line 30
    :cond_0
    new-instance v6, Lkh6;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v9, Lkh6;

    .line 36
    .line 37
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const-wide/16 v4, -0x1

    .line 41
    .line 42
    iput-wide v4, v9, Lkh6;->a:J

    .line 43
    .line 44
    :goto_0
    iget-wide v4, v6, Lkh6;->a:J

    .line 45
    .line 46
    cmp-long v4, v4, p2

    .line 47
    .line 48
    const-string v5, "sha1"

    .line 49
    .line 50
    const-string v7, "size"

    .line 51
    .line 52
    const-string v8, "offset"

    .line 53
    .line 54
    const-string v10, "part_id"

    .line 55
    .line 56
    const-string v12, "sha="

    .line 57
    .line 58
    move-object/from16 v19, v13

    .line 59
    .line 60
    const-string v13, "Digest"

    .line 61
    .line 62
    const/16 v20, 0x0

    .line 63
    .line 64
    if-gez v4, :cond_e

    .line 65
    .line 66
    if-eqz p6, :cond_1

    .line 67
    .line 68
    invoke-virtual/range {p6 .. p6}, Ljv0;->a()V

    .line 69
    .line 70
    .line 71
    :cond_1
    move-object/from16 v21, v5

    .line 72
    .line 73
    iget-wide v4, v6, Lkh6;->a:J

    .line 74
    .line 75
    sub-long v4, p2, v4

    .line 76
    .line 77
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    move-wide/from16 v22, v2

    .line 82
    .line 83
    iget-wide v2, v6, Lkh6;->a:J

    .line 84
    .line 85
    const-wide/32 v24, 0x7fffffff

    .line 86
    .line 87
    .line 88
    cmp-long v24, v4, v24

    .line 89
    .line 90
    if-gtz v24, :cond_d

    .line 91
    .line 92
    move-object/from16 v24, v15

    .line 93
    .line 94
    long-to-int v15, v4

    .line 95
    new-array v0, v15, [B

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v11, p4

    .line 106
    .line 107
    invoke-interface {v11, v2, v3}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/io/Closeable;

    .line 112
    .line 113
    :try_start_0
    move-object v3, v2

    .line 114
    check-cast v3, Ljava/io/InputStream;

    .line 115
    .line 116
    move-wide/from16 v25, v4

    .line 117
    .line 118
    move/from16 v4, v20

    .line 119
    .line 120
    :goto_1
    if-ge v4, v15, :cond_3

    .line 121
    .line 122
    sub-int v5, v15, v4

    .line 123
    .line 124
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    move-object/from16 v27, v3

    .line 129
    .line 130
    const/4 v3, -0x1

    .line 131
    if-eq v5, v3, :cond_2

    .line 132
    .line 133
    add-int/2addr v4, v5

    .line 134
    move-object/from16 v3, v27

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 138
    .line 139
    const-string v1, "Unexpected EOF while reading Box upload part"

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :cond_3
    const/4 v3, 0x0

    .line 150
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    .line 155
    .line 156
    if-eqz p6, :cond_4

    .line 157
    .line 158
    invoke-virtual/range {p6 .. p6}, Ljv0;->a()V

    .line 159
    .line 160
    .line 161
    :cond_4
    new-instance v3, Lkh6;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v2, v1, Lqv0;->c:Ljava/lang/String;

    .line 167
    .line 168
    iget-wide v4, v6, Lkh6;->a:J

    .line 169
    .line 170
    move-object/from16 v20, v2

    .line 171
    .line 172
    new-instance v2, Liv0;

    .line 173
    .line 174
    move-object/from16 v27, v7

    .line 175
    .line 176
    move-object v11, v8

    .line 177
    move-object v1, v10

    .line 178
    move-wide/from16 v7, p2

    .line 179
    .line 180
    move-object/from16 v10, p5

    .line 181
    .line 182
    move-wide/from16 v37, v25

    .line 183
    .line 184
    move-object/from16 v25, v13

    .line 185
    .line 186
    move-object/from16 v26, v21

    .line 187
    .line 188
    move-object/from16 v21, v14

    .line 189
    .line 190
    move-wide v13, v4

    .line 191
    move-wide/from16 v4, v37

    .line 192
    .line 193
    invoke-direct/range {v2 .. v10}, Liv0;-><init>(Lkh6;JLkh6;JLkh6;Lc7;)V

    .line 194
    .line 195
    .line 196
    move-wide/from16 v28, v7

    .line 197
    .line 198
    move-object v8, v6

    .line 199
    move-wide/from16 v6, v28

    .line 200
    .line 201
    move-wide/from16 v28, v4

    .line 202
    .line 203
    int-to-long v3, v15

    .line 204
    add-long v4, v13, v3

    .line 205
    .line 206
    sub-long v4, v4, v16

    .line 207
    .line 208
    invoke-static/range {v20 .. v20}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v3}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    new-instance v10, Lkv0;

    .line 217
    .line 218
    sget-object v15, Lmv0;->h:Lokhttp3/MediaType;

    .line 219
    .line 220
    invoke-direct {v10, v15, v0, v2}, Lkv0;-><init>(Lokhttp3/MediaType;[BLiv0;)V

    .line 221
    .line 222
    .line 223
    const-string v2, "PUT"

    .line 224
    .line 225
    invoke-virtual {v3, v2, v10}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 226
    .line 227
    .line 228
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v2, v3, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 252
    .line 253
    move-object/from16 v10, v25

    .line 254
    .line 255
    invoke-virtual {v2, v10, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v2, "bytes "

    .line 261
    .line 262
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v2, "-"

    .line 269
    .line 270
    const-string v10, "/"

    .line 271
    .line 272
    invoke-static {v0, v2, v4, v5, v10}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget-object v2, v3, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 283
    .line 284
    const-string v4, "Content-Range"

    .line 285
    .line 286
    invoke-static {v2, v4, v0, v3}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const/4 v2, 0x1

    .line 291
    move-object/from16 v13, p0

    .line 292
    .line 293
    move-object/from16 v14, p6

    .line 294
    .line 295
    invoke-virtual {v13, v0, v2, v14}, Lmv0;->g(Lokhttp3/Request;ZLjv0;)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string v2, "part"

    .line 300
    .line 301
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_5

    .line 319
    .line 320
    move-object/from16 v31, v1

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_5
    const/16 v31, 0x0

    .line 324
    .line 325
    :goto_2
    if-eqz v31, :cond_b

    .line 326
    .line 327
    invoke-static {v0, v11}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-eqz v1, :cond_a

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v33

    .line 337
    move-object/from16 v2, v27

    .line 338
    .line 339
    invoke-static {v0, v2}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    if-eqz v1, :cond_9

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 346
    .line 347
    .line 348
    move-result-wide v35

    .line 349
    move-object/from16 v3, v26

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_6

    .line 363
    .line 364
    move-object/from16 v32, v0

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_6
    const/16 v32, 0x0

    .line 368
    .line 369
    :goto_3
    if-eqz v32, :cond_8

    .line 370
    .line 371
    new-instance v30, Lrv0;

    .line 372
    .line 373
    invoke-direct/range {v30 .. v36}, Lrv0;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v0, v24

    .line 377
    .line 378
    move-object/from16 v1, v30

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    iget-wide v1, v8, Lkh6;->a:J

    .line 384
    .line 385
    add-long v2, v1, v28

    .line 386
    .line 387
    iput-wide v2, v8, Lkh6;->a:J

    .line 388
    .line 389
    const-wide/16 v4, 0x0

    .line 390
    .line 391
    invoke-static/range {v2 .. v7}, Ll73;->i(JJJ)J

    .line 392
    .line 393
    .line 394
    move-result-wide v1

    .line 395
    iget-wide v3, v9, Lkh6;->a:J

    .line 396
    .line 397
    cmp-long v3, v1, v3

    .line 398
    .line 399
    if-eqz v3, :cond_7

    .line 400
    .line 401
    iput-wide v1, v9, Lkh6;->a:J

    .line 402
    .line 403
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    move-object/from16 v10, p5

    .line 408
    .line 409
    invoke-virtual {v10, v1}, Lc7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_7
    move-object/from16 v10, p5

    .line 414
    .line 415
    :goto_4
    move-object/from16 v1, p1

    .line 416
    .line 417
    move-object v15, v0

    .line 418
    move-object v6, v8

    .line 419
    move-object/from16 v13, v19

    .line 420
    .line 421
    move-object/from16 v14, v21

    .line 422
    .line 423
    move-wide/from16 v2, v22

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_8
    const-string v0, "Box upload part response did not contain sha1"

    .line 428
    .line 429
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const/16 v18, 0x0

    .line 433
    .line 434
    return-object v18

    .line 435
    :cond_9
    const/16 v18, 0x0

    .line 436
    .line 437
    const-string v0, "Box upload part response did not contain size"

    .line 438
    .line 439
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    return-object v18

    .line 443
    :cond_a
    const/16 v18, 0x0

    .line 444
    .line 445
    const-string v0, "Box upload part response did not contain offset"

    .line 446
    .line 447
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    return-object v18

    .line 451
    :cond_b
    const/16 v18, 0x0

    .line 452
    .line 453
    const-string v0, "Box upload part response did not contain part_id"

    .line 454
    .line 455
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-object v18

    .line 459
    :cond_c
    const/16 v18, 0x0

    .line 460
    .line 461
    const-string v0, "Box upload part response did not contain part details"

    .line 462
    .line 463
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    return-object v18

    .line 467
    :goto_5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    :catchall_1
    move-exception v0

    .line 469
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_d
    move-wide/from16 v28, v4

    .line 474
    .line 475
    const/16 v18, 0x0

    .line 476
    .line 477
    const-string v0, "Box upload part is too large to buffer: "

    .line 478
    .line 479
    invoke-static {v4, v5, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    return-object v18

    .line 487
    :cond_e
    move-object v3, v5

    .line 488
    move-object v2, v7

    .line 489
    move-object v11, v8

    .line 490
    move-object v1, v10

    .line 491
    move-object v10, v13

    .line 492
    move-object/from16 v21, v14

    .line 493
    .line 494
    move-object v0, v15

    .line 495
    move-object/from16 v13, p0

    .line 496
    .line 497
    move-object/from16 v14, p6

    .line 498
    .line 499
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-virtual {v4, v5}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    move-object/from16 v5, p1

    .line 512
    .line 513
    iget-object v5, v5, Lqv0;->d:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    new-instance v6, Lorg/json/JSONObject;

    .line 519
    .line 520
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .line 522
    .line 523
    new-instance v7, Lorg/json/JSONArray;

    .line 524
    .line 525
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 526
    .line 527
    .line 528
    new-instance v8, Lcl7;

    .line 529
    .line 530
    const/4 v9, 0x2

    .line 531
    invoke-direct {v8, v9}, Lcl7;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v8}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    if-eqz v8, :cond_f

    .line 547
    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    check-cast v8, Lrv0;

    .line 553
    .line 554
    new-instance v9, Lorg/json/JSONObject;

    .line 555
    .line 556
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 557
    .line 558
    .line 559
    iget-object v15, v8, Lrv0;->a:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    .line 563
    .line 564
    move-object/from16 p1, v0

    .line 565
    .line 566
    move-object v15, v1

    .line 567
    iget-wide v0, v8, Lrv0;->b:J

    .line 568
    .line 569
    invoke-virtual {v9, v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 570
    .line 571
    .line 572
    iget-wide v0, v8, Lrv0;->c:J

    .line 573
    .line 574
    invoke-virtual {v9, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 575
    .line 576
    .line 577
    iget-object v0, v8, Lrv0;->d:Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 583
    .line 584
    .line 585
    move-object/from16 v0, p1

    .line 586
    .line 587
    move-object v1, v15

    .line 588
    goto :goto_6

    .line 589
    :cond_f
    const-string v0, "parts"

    .line 590
    .line 591
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    .line 593
    .line 594
    :goto_7
    if-eqz v14, :cond_10

    .line 595
    .line 596
    invoke-virtual {v14}, Ljv0;->a()V

    .line 597
    .line 598
    .line 599
    :cond_10
    invoke-static {v5}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-static {v0}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 608
    .line 609
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    sget-object v2, Lmv0;->g:Lokhttp3/MediaType;

    .line 617
    .line 618
    invoke-static {v1, v2}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v2, "POST"

    .line 623
    .line 624
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    iget-object v2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 632
    .line 633
    invoke-static {v2, v10, v1, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    const/4 v2, 0x1

    .line 638
    invoke-virtual {v13, v0, v2, v14}, Lmv0;->e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    iget v3, v1, Lokhttp3/Response;->d:I

    .line 643
    .line 644
    :try_start_2
    iget-object v7, v1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 645
    .line 646
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v7

    .line 650
    const/16 v8, 0xca

    .line 651
    .line 652
    if-ne v3, v8, :cond_13

    .line 653
    .line 654
    add-int/lit8 v8, v20, 0x1

    .line 655
    .line 656
    const/16 v9, 0xa

    .line 657
    .line 658
    if-gt v8, v9, :cond_12

    .line 659
    .line 660
    invoke-static {v1}, Lmv0;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    if-eqz v0, :cond_11

    .line 665
    .line 666
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 667
    .line 668
    .line 669
    move-result-wide v15

    .line 670
    :goto_8
    move-wide v2, v15

    .line 671
    goto :goto_9

    .line 672
    :catchall_2
    move-exception v0

    .line 673
    goto :goto_d

    .line 674
    :cond_11
    const-wide/16 v15, 0x3e8

    .line 675
    .line 676
    goto :goto_8

    .line 677
    :goto_9
    invoke-virtual {v13, v2, v3, v14}, Lmv0;->o(JLjv0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 681
    .line 682
    .line 683
    move/from16 v20, v8

    .line 684
    .line 685
    goto :goto_7

    .line 686
    :cond_12
    :try_start_3
    new-instance v2, Lhv0;

    .line 687
    .line 688
    invoke-static {v1}, Lmv0;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    invoke-static {v0, v3, v7}, Lmv0;->c(Lokhttp3/Request;ILjava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-direct {v2, v3, v7, v4, v0}, Lhv0;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    throw v2

    .line 700
    :cond_13
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-nez v0, :cond_14

    .line 705
    .line 706
    move-object v12, v7

    .line 707
    goto :goto_a

    .line 708
    :cond_14
    const/4 v12, 0x0

    .line 709
    :goto_a
    if-eqz v12, :cond_15

    .line 710
    .line 711
    new-instance v0, Lorg/json/JSONObject;

    .line 712
    .line 713
    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto :goto_b

    .line 717
    :cond_15
    new-instance v0, Lorg/json/JSONObject;

    .line 718
    .line 719
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 720
    .line 721
    .line 722
    :goto_b
    invoke-static {v0}, Lmv0;->q(Lorg/json/JSONObject;)Lav0;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    if-nez v2, :cond_17

    .line 727
    .line 728
    invoke-static {v0}, Lmv0;->i(Lorg/json/JSONObject;)Lav0;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    if-eqz v2, :cond_16

    .line 733
    .line 734
    goto :goto_c

    .line 735
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 736
    .line 737
    const-string v2, "Box upload session commit response did not contain uploaded file"

    .line 738
    .line 739
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 743
    :cond_17
    :goto_c
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 744
    .line 745
    .line 746
    return-object v2

    .line 747
    :goto_d
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 748
    .line 749
    .line 750
    throw v0

    .line 751
    :cond_18
    const-string v0, "Box chunked upload requires a known content length"

    .line 752
    .line 753
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const/16 v18, 0x0

    .line 757
    .line 758
    return-object v18
.end method

.method public final u(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmv0;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
