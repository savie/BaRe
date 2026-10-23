.class public final Liy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Lokhttp3/RequestBody$Companion$toRequestBody$3;


# instance fields
.field public final a:Luk;

.field public final b:Lhl0;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Ljava/lang/String;

.field public final e:Lmt3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-static {v0, v2, v1}, Lokhttp3/RequestBody$Companion;->b([BILokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Liy8;->f:Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Luk;Lhl0;)V
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
    new-instance v0, Lhc1;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-direct {v0, v2}, Lhc1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Liy8;->a:Luk;

    .line 22
    .line 23
    iput-object p2, p0, Liy8;->b:Lhl0;

    .line 24
    .line 25
    iput-object v1, p0, Liy8;->c:Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    const-string p1, "https://cloud-api.yandex.net/v1/disk"

    .line 28
    .line 29
    iput-object p1, p0, Liy8;->d:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Liy8;->e:Lmt3;

    .line 32
    .line 33
    return-void
.end method

.method public static j(Lfl4;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Lel4;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, p1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->l()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    return-object p1
.end method

.method public static m(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

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
    goto :goto_0

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
    move-result-wide v0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-wide v0

    .line 21
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :catch_1
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static n(Lokhttp3/Response;)Ljava/lang/Long;
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

.method public static o(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Lel4;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, p1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object p1
.end method

.method public static p(Lfl4;)Lgy8;
    .locals 5

    .line 1
    new-instance v0, Lgy8;

    .line 2
    .line 3
    const-string v1, "href"

    .line 4
    .line 5
    invoke-static {p0, v1}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    const-string v3, "method"

    .line 13
    .line 14
    invoke-static {p0, v3}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    :cond_0
    const-string v4, "templated"

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    instance-of v4, p0, Lel4;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    instance-of v4, p0, Lkl4;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object p0, v2

    .line 40
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lqj4;->e()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 p0, 0x0

    .line 58
    :goto_1
    invoke-direct {v0, v1, v3, p0}, Lgy8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    const-string p0, "Yandex link response did not contain href"

    .line 63
    .line 64
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2
.end method

.method public static q(Lfl4;)Lhy8;
    .locals 14

    .line 1
    const-string v0, "_embedded"

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
    if-eqz v0, :cond_9

    .line 9
    .line 10
    instance-of v2, v0, Lfl4;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    :goto_1
    if-eqz v0, :cond_9

    .line 25
    .line 26
    const-string v2, "items"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    instance-of v2, v0, Lxi4;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :goto_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lqj4;->g()Lxi4;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move-object v0, v1

    .line 48
    :goto_3
    if-eqz v0, :cond_9

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lxi4;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_8

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lqj4;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    instance-of v4, v3, Lfl4;

    .line 77
    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move-object v3, v1

    .line 82
    :goto_5
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_6

    .line 89
    :cond_6
    move-object v3, v1

    .line 90
    :goto_6
    if-eqz v3, :cond_7

    .line 91
    .line 92
    invoke-static {v3}, Liy8;->q(Lfl4;)Lhy8;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    goto :goto_7

    .line 97
    :cond_7
    move-object v3, v1

    .line 98
    :goto_7
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    move-object v1, v2

    .line 105
    :cond_9
    if-nez v1, :cond_a

    .line 106
    .line 107
    sget-object v1, Lov2;->a:Lov2;

    .line 108
    .line 109
    :cond_a
    move-object v13, v1

    .line 110
    new-instance v2, Lhy8;

    .line 111
    .line 112
    const-string v0, "name"

    .line 113
    .line 114
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, ""

    .line 119
    .line 120
    if-nez v0, :cond_b

    .line 121
    .line 122
    move-object v3, v1

    .line 123
    goto :goto_8

    .line 124
    :cond_b
    move-object v3, v0

    .line 125
    :goto_8
    const-string v0, "path"

    .line 126
    .line 127
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_c

    .line 132
    .line 133
    move-object v4, v1

    .line 134
    goto :goto_9

    .line 135
    :cond_c
    move-object v4, v0

    .line 136
    :goto_9
    const-string v0, "type"

    .line 137
    .line 138
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_d

    .line 143
    .line 144
    move-object v5, v1

    .line 145
    goto :goto_a

    .line 146
    :cond_d
    move-object v5, v0

    .line 147
    :goto_a
    const-string v0, "size"

    .line 148
    .line 149
    invoke-static {p0, v0}, Liy8;->j(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_e

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    :goto_b
    move-wide v6, v0

    .line 160
    goto :goto_c

    .line 161
    :cond_e
    const-wide/16 v0, 0x0

    .line 162
    .line 163
    goto :goto_b

    .line 164
    :goto_c
    const-string v0, "created"

    .line 165
    .line 166
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Liy8;->m(Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v8

    .line 174
    const-string v0, "modified"

    .line 175
    .line 176
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Liy8;->m(Ljava/lang/String;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    const-string v0, "preview"

    .line 185
    .line 186
    invoke-static {p0, v0}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-direct/range {v2 .. v13}, Lhy8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lokhttp3/HttpUrl;
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
    iget-object p0, p0, Liy8;->d:Ljava/lang/String;

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

.method public final b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    iget-object p0, p0, Liy8;->a:Luk;

    .line 9
    .line 10
    invoke-virtual {p0}, Luk;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string p1, "OAuth "

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 26
    .line 27
    const-string v1, "Authorization"

    .line 28
    .line 29
    invoke-virtual {p1, v1, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/resources"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "permanently"

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p1, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lokhttp3/Request$Builder;->a(Lokhttp3/Request$Builder;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lokhttp3/Request;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0xcc

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, v0, p1}, Liy8;->f(Lokhttp3/Request;Ljava/util/Set;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final d(Lokhttp3/Request;Ljava/util/Set;Z)Lokhttp3/Response;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Liy8;->c:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v3, Lokhttp3/internal/connection/RealCall;

    .line 9
    .line 10
    invoke-direct {v3, v2, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, v2, Lokhttp3/Response;->d:I

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_0
    const/16 v4, 0x191

    .line 31
    .line 32
    if-ne v3, v4, :cond_4

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Liy8;->b:Lhl0;

    .line 37
    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    iget-object v0, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 41
    .line 42
    const-string v5, "Authorization"

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v6, "OAuth "

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {v0, v6}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_1

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    :cond_1
    invoke-virtual {v4, v7}, Lhl0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v3, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 89
    .line 90
    invoke-virtual {v3, v5, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lokhttp3/Request;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 99
    .line 100
    .line 101
    move-object p1, v0

    .line 102
    move v0, v4

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    move v0, v4

    .line 105
    :cond_4
    if-eqz p3, :cond_9

    .line 106
    .line 107
    const/4 v4, 0x3

    .line 108
    if-ge v1, v4, :cond_9

    .line 109
    .line 110
    const/16 v4, 0x1ad

    .line 111
    .line 112
    if-eq v3, v4, :cond_5

    .line 113
    .line 114
    const/16 v4, 0x1f4

    .line 115
    .line 116
    if-gt v4, v3, :cond_9

    .line 117
    .line 118
    const/16 v4, 0x258

    .line 119
    .line 120
    if-ge v3, v4, :cond_9

    .line 121
    .line 122
    :cond_5
    const/4 v3, 0x4

    .line 123
    if-le v1, v3, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    move v3, v1

    .line 127
    :goto_2
    const-wide/16 v4, 0x1

    .line 128
    .line 129
    shl-long v3, v4, v3

    .line 130
    .line 131
    const-wide/16 v5, 0x3e8

    .line 132
    .line 133
    mul-long/2addr v3, v5

    .line 134
    invoke-static {v2}, Liy8;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-eqz v5, :cond_7

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    :cond_7
    const-wide/16 v5, 0x7530

    .line 145
    .line 146
    cmp-long v7, v3, v5

    .line 147
    .line 148
    if-lez v7, :cond_8

    .line 149
    .line 150
    move-wide v3, v5

    .line 151
    :cond_8
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Liy8;->e:Lmt3;

    .line 155
    .line 156
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v2, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_9
    iget-object p0, v2, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 168
    .line 169
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v2}, Liy8;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 177
    .line 178
    .line 179
    new-instance p2, Ley8;

    .line 180
    .line 181
    iget-object p3, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 182
    .line 183
    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 184
    .line 185
    iget-object p1, p1, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {p2, v3, p3, p1, p0}, Ley8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p2
.end method

.method public final e(Lokhttp3/Request;)Lfl4;
    .locals 3

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "GET"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Liy8;->d(Lokhttp3/Request;Ljava/util/Set;Z)Lokhttp3/Response;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 24
    .line 25
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance p1, Lfl4;

    .line 36
    .line 37
    invoke-direct {p1}, Lfl4;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final f(Lokhttp3/Request;Ljava/util/Set;)V
    .locals 2

    .line 1
    const/16 v0, 0xca

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p2, v1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v1}, Liy8;->d(Lokhttp3/Request;Ljava/util/Set;Z)Lokhttp3/Response;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    iget p2, p1, Lokhttp3/Response;->d:I

    .line 17
    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    iget-object p2, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 21
    .line 22
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance p2, Lfl4;

    .line 33
    .line 34
    invoke-direct {p2}, Lfl4;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lqj4;->i()Lfl4;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_0
    invoke-static {p2}, Liy8;->p(Lfl4;)Lgy8;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p2, p2, Lgy8;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Liy8;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p2
.end method

.method public final g()Lfy8;
    .locals 3

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lokhttp3/Request;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Liy8;->e(Lokhttp3/Request;)Lfl4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lfy8;

    .line 24
    .line 25
    const-string v1, "used_space"

    .line 26
    .line 27
    invoke-static {p0, v1}, Liy8;->j(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "total_space"

    .line 32
    .line 33
    invoke-static {p0, v2}, Liy8;->j(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, v1, p0}, Lfy8;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lhy8;
    .locals 2

    .line 1
    const-string v0, "/resources"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string p2, "limit"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p2, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const-string p2, "offset"

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p2, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 55
    .line 56
    .line 57
    new-instance p2, Lokhttp3/Request;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Liy8;->e(Lokhttp3/Request;)Lfl4;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Liy8;->q(Lfl4;)Lhy8;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Ley8; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    iget p1, p0, Ley8;->a:I

    .line 73
    .line 74
    const/16 p2, 0x194

    .line 75
    .line 76
    if-ne p1, p2, :cond_2

    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :cond_2
    throw p0
.end method

.method public final i(Ljava/lang/String;)Lgy8;
    .locals 2

    .line 1
    const-string v0, "/resources/upload"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "overwrite"

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p1, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lokhttp3/Request;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Liy8;->e(Lokhttp3/Request;)Lfl4;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Liy8;->p(Lfl4;)Lgy8;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/resources"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Liy8;->f:Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v1, "PUT"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lokhttp3/Request;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0xc9

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, v0, p1}, Liy8;->f(Lokhttp3/Request;Ljava/util/Set;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/resources/move"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "from"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "path"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "overwrite"

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object p2, Liy8;->f:Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v0, "POST"

    .line 45
    .line 46
    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lokhttp3/Request;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 52
    .line 53
    .line 54
    const/16 p1, 0xc9

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p2, p1}, Liy8;->f(Lokhttp3/Request;Ljava/util/Set;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x1e

    .line 3
    .line 4
    if-ge v0, v1, :cond_5

    .line 5
    .line 6
    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->b()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lokhttp3/Request;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Liy8;->e(Lokhttp3/Request;)Lfl4;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "status"

    .line 27
    .line 28
    invoke-static {v1, v2}, Liy8;->o(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const v4, -0x6f4abffd

    .line 39
    .line 40
    .line 41
    if-eq v3, v4, :cond_1

    .line 42
    .line 43
    const v4, -0x4c696bc3

    .line 44
    .line 45
    .line 46
    if-eq v3, v4, :cond_0

    .line 47
    .line 48
    const v4, -0x2247ce2b

    .line 49
    .line 50
    .line 51
    if-ne v3, v4, :cond_2

    .line 52
    .line 53
    const-string v3, "in-progress"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string p0, "failed"

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    const-string p0, "Yandex operation failed: "

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    const-string p0, "success"

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "Unknown Yandex operation status for "

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ": "

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_3
    :goto_1
    const/16 v1, 0x1d

    .line 118
    .line 119
    if-ge v0, v1, :cond_4

    .line 120
    .line 121
    const-wide/16 v1, 0x3e8

    .line 122
    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, p0, Liy8;->e:Lmt3;

    .line 128
    .line 129
    invoke-interface {v2, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_5
    const-string p0, "Yandex operation did not complete: "

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
