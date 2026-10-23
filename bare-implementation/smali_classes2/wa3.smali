.class public final Lwa3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ljava/util/List;


# instance fields
.field public final a:Lmt3;

.field public final b:Lokhttp3/OkHttpClient;

.field public final c:Ljava/util/List;

.field public final d:Lcom/google/gson/a;

.field public final e:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "https://gateway.filen-5.net"

    .line 2
    .line 3
    const-string v7, "https://gateway.filen-6.net"

    .line 4
    .line 5
    const-string v0, "https://gateway.filen.io"

    .line 6
    .line 7
    const-string v1, "https://gateway.filen.net"

    .line 8
    .line 9
    const-string v2, "https://gateway.filen-1.net"

    .line 10
    .line 11
    const-string v3, "https://gateway.filen-2.net"

    .line 12
    .line 13
    const-string v4, "https://gateway.filen-3.net"

    .line 14
    .line 15
    const-string v5, "https://gateway.filen-4.net"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lwa3;->f:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 3

    .line 1
    new-instance v0, Lzi1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lzi1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lwa3;->a:Lmt3;

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v0, 0x12c

    .line 20
    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p1, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 31
    .line 32
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lwa3;->b:Lokhttp3/OkHttpClient;

    .line 38
    .line 39
    sget-object p1, Lwa3;->f:Ljava/util/List;

    .line 40
    .line 41
    iput-object p1, p0, Lwa3;->c:Ljava/util/List;

    .line 42
    .line 43
    new-instance p1, Lt14;

    .line 44
    .line 45
    invoke-direct {p1}, Lt14;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p1, Lt14;->h:Z

    .line 50
    .line 51
    new-instance v0, Lcom/google/gson/a;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lwa3;->d:Lcom/google/gson/a;

    .line 57
    .line 58
    sget-object p1, Lokhttp3/MediaType;->d:Lai6;

    .line 59
    .line 60
    const-string p1, "application/json; charset=utf-8"

    .line 61
    .line 62
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lwa3;->e:Lokhttp3/MediaType;

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic c(Lwa3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lqj4;
    .locals 7

    .line 1
    new-instance v6, Lzk;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    invoke-direct {v6, v0}, Lzk;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    invoke-virtual/range {v0 .. v6}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static d(Lfl4;)Lva3;
    .locals 4

    .line 1
    const-string v0, "status"

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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    instance-of v2, v0, Lel4;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    instance-of v2, v0, Lkl4;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lqj4;->k()Lkl4;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lkl4;->a:Ljava/io/Serializable;

    .line 27
    .line 28
    instance-of v2, v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lva3;

    .line 33
    .line 34
    invoke-virtual {v0}, Lqj4;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v2, "message"

    .line 39
    .line 40
    invoke-static {p0, v2}, Lwa3;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "code"

    .line 45
    .line 46
    invoke-static {p0, v3}, Lwa3;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v1, v2, p0, v0}, Lva3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    const-string p0, "Invalid Filen response field type: status"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_2
    const-string p0, "Missing Filen response field: status"

    .line 61
    .line 62
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public static e(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    instance-of v0, p0, Lel4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    instance-of v0, p0, Lkl4;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lqj4;->k()Lkl4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lkl4;->a:Ljava/io/Serializable;

    .line 26
    .line 27
    instance-of v0, v0, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    const-string p0, "Invalid Filen response field type: "

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_3
    :goto_1
    const-string p0, ""

    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lqj4;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v6, Lzk;

    .line 5
    .line 6
    const/16 v0, 0x9

    .line 7
    .line 8
    invoke-direct {v6, v0}, Lzk;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "GET"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v2, p1

    .line 17
    move-object v4, p2

    .line 18
    invoke-virtual/range {v0 .. v6}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    const-string v5, "Invalid Filen API response for "

    .line 10
    .line 11
    iget-object v6, v1, Lwa3;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1b

    .line 18
    .line 19
    iget-object v0, v1, Lwa3;->d:Lcom/google/gson/a;

    .line 20
    .line 21
    move-object/from16 v8, p3

    .line 22
    .line 23
    invoke-virtual {v0, v8}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 28
    .line 29
    iget-object v0, v1, Lwa3;->e:Lokhttp3/MediaType;

    .line 30
    .line 31
    invoke-static {v8, v0}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v10, v1, Lwa3;->a:Lmt3;

    .line 44
    .line 45
    invoke-interface {v10, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    invoke-static {v0, v10}, Ljava/lang/Math;->floorMod(II)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const/4 v11, 0x0

    .line 64
    move v12, v11

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    const/16 v13, 0xb

    .line 67
    .line 68
    if-ge v12, v13, :cond_19

    .line 69
    .line 70
    invoke-interface/range {p6 .. p6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v13, "Filen request cancelled"

    .line 81
    .line 82
    if-nez v0, :cond_18

    .line 83
    .line 84
    new-instance v0, Lokhttp3/Request$Builder;

    .line 85
    .line 86
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    add-int v14, v10, v12

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    rem-int/2addr v14, v15

    .line 96
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    check-cast v14, Ljava/lang/String;

    .line 101
    .line 102
    const/4 v15, 0x1

    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    new-array v7, v15, [C

    .line 106
    .line 107
    const/16 v17, 0x2f

    .line 108
    .line 109
    aput-char v17, v7, v11

    .line 110
    .line 111
    invoke-static {v14, v7}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v14, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v0, v7}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v7, "GET"

    .line 134
    .line 135
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_0

    .line 140
    .line 141
    move-object/from16 v14, v16

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_0
    move-object v14, v9

    .line 145
    :goto_1
    invoke-virtual {v0, v2, v14}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 146
    .line 147
    .line 148
    if-nez p4, :cond_1

    .line 149
    .line 150
    const-string v14, "anonymous"

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_1
    move-object/from16 v14, p4

    .line 154
    .line 155
    :goto_2
    const-string v11, "Bearer "

    .line 156
    .line 157
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    iget-object v14, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 162
    .line 163
    const-string v15, "Authorization"

    .line 164
    .line 165
    invoke-virtual {v14, v15, v11}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_2

    .line 173
    .line 174
    const-string v7, "SHA-512"

    .line 175
    .line 176
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    sget-object v11, Lf51;->a:Ljava/nio/charset/Charset;

    .line 181
    .line 182
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v11}, Ljava/security/MessageDigest;->digest([B)[B

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    new-instance v11, Lhw;

    .line 197
    .line 198
    const/4 v14, 0x3

    .line 199
    invoke-direct {v11, v14}, Lhw;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const/16 v14, 0x1e

    .line 203
    .line 204
    const-string v15, ""

    .line 205
    .line 206
    invoke-static {v7, v15, v11, v14}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    iget-object v11, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 211
    .line 212
    const-string v14, "Checksum"

    .line 213
    .line 214
    invoke-virtual {v11, v14, v7}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    const-string v7, "application/json, text/plain, */*"

    .line 218
    .line 219
    iget-object v11, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 220
    .line 221
    const-string v14, "Accept"

    .line 222
    .line 223
    invoke-static {v11, v14, v7, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v7, v1, Lwa3;->b:Lokhttp3/OkHttpClient;

    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    new-instance v11, Lokhttp3/internal/connection/RealCall;

    .line 233
    .line 234
    invoke-direct {v11, v7, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 235
    .line 236
    .line 237
    if-eqz v4, :cond_3

    .line 238
    .line 239
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    :cond_3
    const/16 v15, 0x198

    .line 243
    .line 244
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_4

    .line 255
    .line 256
    invoke-virtual {v11}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    goto/16 :goto_b

    .line 262
    .line 263
    :catch_0
    move-exception v0

    .line 264
    goto/16 :goto_8

    .line 265
    .line 266
    :cond_4
    :goto_3
    invoke-interface/range {p6 .. p6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_11

    .line 277
    .line 278
    invoke-virtual {v11}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 279
    .line 280
    .line 281
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :try_start_1
    iget-object v0, v7, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 283
    .line 284
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 293
    .line 294
    .line 295
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    :try_start_3
    iget-boolean v14, v7, Lokhttp3/Response;->H:Z

    .line 297
    .line 298
    if-nez v14, :cond_8

    .line 299
    .line 300
    iget v14, v7, Lokhttp3/Response;->d:I

    .line 301
    .line 302
    if-eq v14, v15, :cond_6

    .line 303
    .line 304
    const/16 v15, 0x1ad

    .line 305
    .line 306
    if-eq v14, v15, :cond_6

    .line 307
    .line 308
    const/16 v15, 0x1f4

    .line 309
    .line 310
    if-lt v14, v15, :cond_5

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_5
    const/4 v15, 0x0

    .line 314
    goto :goto_5

    .line 315
    :cond_6
    :goto_4
    const/4 v15, 0x1

    .line 316
    :goto_5
    if-nez v15, :cond_7

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_7
    new-instance v0, Llb3;

    .line 320
    .line 321
    invoke-direct {v0, v14, v3}, Llb3;-><init>(ILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :catchall_1
    move-exception v0

    .line 326
    move-object v13, v0

    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :cond_8
    :goto_6
    :try_start_4
    invoke-static {v0}, Lwa3;->d(Lfl4;)Lva3;

    .line 330
    .line 331
    .line 332
    move-result-object v14
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    :try_start_5
    iget-boolean v15, v14, Lva3;->a:Z

    .line 334
    .line 335
    if-nez v15, :cond_a

    .line 336
    .line 337
    iget-object v0, v14, Lva3;->c:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v13, v14, Lva3;->b:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v13}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    if-eqz v14, :cond_9

    .line 346
    .line 347
    const-string v13, "Filen API request failed"

    .line 348
    .line 349
    :cond_9
    new-instance v14, Lua3;

    .line 350
    .line 351
    invoke-direct {v14, v0, v13}, Lua3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v14

    .line 355
    :cond_a
    iget-boolean v14, v7, Lokhttp3/Response;->H:Z

    .line 356
    .line 357
    if-eqz v14, :cond_e

    .line 358
    .line 359
    invoke-interface/range {p6 .. p6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    check-cast v14, Ljava/lang/Boolean;

    .line 364
    .line 365
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    if-nez v14, :cond_d

    .line 370
    .line 371
    const-string v13, "data"

    .line 372
    .line 373
    invoke-virtual {v0, v13}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-nez v0, :cond_b

    .line 378
    .line 379
    new-instance v0, Lfl4;

    .line 380
    .line 381
    invoke-direct {v0}, Lfl4;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 382
    .line 383
    .line 384
    :cond_b
    :try_start_6
    invoke-virtual {v7}, Lokhttp3/Response;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    .line 386
    .line 387
    if-eqz v4, :cond_c

    .line 388
    .line 389
    invoke-interface {v4, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_c
    return-object v0

    .line 393
    :cond_d
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 394
    .line 395
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_e
    new-instance v0, Llb3;

    .line 400
    .line 401
    iget v13, v7, Lokhttp3/Response;->d:I

    .line 402
    .line 403
    invoke-direct {v0, v13, v3}, Llb3;-><init>(ILjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :catch_1
    move-exception v0

    .line 408
    iget-boolean v13, v7, Lokhttp3/Response;->H:Z

    .line 409
    .line 410
    if-nez v13, :cond_f

    .line 411
    .line 412
    new-instance v0, Llb3;

    .line 413
    .line 414
    iget v13, v7, Lokhttp3/Response;->d:I

    .line 415
    .line 416
    invoke-direct {v0, v13, v3}, Llb3;-><init>(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_f
    new-instance v13, Lpb3;

    .line 421
    .line 422
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v14

    .line 426
    invoke-direct {v13, v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    throw v13

    .line 430
    :catch_2
    move-exception v0

    .line 431
    iget-boolean v13, v7, Lokhttp3/Response;->H:Z

    .line 432
    .line 433
    if-nez v13, :cond_10

    .line 434
    .line 435
    new-instance v0, Llb3;

    .line 436
    .line 437
    iget v13, v7, Lokhttp3/Response;->d:I

    .line 438
    .line 439
    invoke-direct {v0, v13, v3}, Llb3;-><init>(ILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :cond_10
    new-instance v13, Lpb3;

    .line 444
    .line 445
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    invoke-direct {v13, v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 453
    :goto_7
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 454
    :catchall_2
    move-exception v0

    .line 455
    :try_start_9
    invoke-static {v7, v13}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 456
    .line 457
    .line 458
    throw v0

    .line 459
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    .line 461
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 465
    :goto_8
    :try_start_a
    instance-of v7, v0, Lua3;

    .line 466
    .line 467
    if-eqz v7, :cond_12

    .line 468
    .line 469
    move-object v7, v0

    .line 470
    check-cast v7, Lua3;

    .line 471
    .line 472
    iget-object v7, v7, Lua3;->a:Ljava/lang/String;

    .line 473
    .line 474
    invoke-static {v7}, Lw13;->l(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v15

    .line 478
    goto :goto_a

    .line 479
    :cond_12
    instance-of v7, v0, Llb3;

    .line 480
    .line 481
    if-eqz v7, :cond_14

    .line 482
    .line 483
    move-object v7, v0

    .line 484
    check-cast v7, Llb3;

    .line 485
    .line 486
    iget v7, v7, Llb3;->a:I

    .line 487
    .line 488
    const/16 v13, 0x198

    .line 489
    .line 490
    if-eq v7, v13, :cond_14

    .line 491
    .line 492
    const/16 v15, 0x1ad

    .line 493
    .line 494
    if-eq v7, v15, :cond_14

    .line 495
    .line 496
    const/16 v15, 0x1f4

    .line 497
    .line 498
    if-lt v7, v15, :cond_13

    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_13
    const/4 v15, 0x0

    .line 502
    goto :goto_a

    .line 503
    :cond_14
    :goto_9
    const/4 v15, 0x1

    .line 504
    :goto_a
    if-eqz v15, :cond_16

    .line 505
    .line 506
    const/16 v7, 0xa

    .line 507
    .line 508
    if-eq v12, v7, :cond_16

    .line 509
    .line 510
    const-wide/16 v13, 0x3e8

    .line 511
    .line 512
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 513
    .line 514
    .line 515
    if-eqz v4, :cond_15

    .line 516
    .line 517
    invoke-interface {v4, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    :cond_15
    add-int/lit8 v12, v12, 0x1

    .line 521
    .line 522
    const/4 v11, 0x0

    .line 523
    goto/16 :goto_0

    .line 524
    .line 525
    :cond_16
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 526
    :goto_b
    if-eqz v4, :cond_17

    .line 527
    .line 528
    invoke-interface {v4, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    :cond_17
    throw v0

    .line 532
    :cond_18
    const/16 v16, 0x0

    .line 533
    .line 534
    invoke-static {v13}, Ll0;->e(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    return-object v16

    .line 538
    :cond_19
    const/16 v16, 0x0

    .line 539
    .line 540
    if-nez v0, :cond_1a

    .line 541
    .line 542
    const-string v0, "Required value was null."

    .line 543
    .line 544
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    return-object v16

    .line 548
    :cond_1a
    throw v0

    .line 549
    :cond_1b
    const/16 v16, 0x0

    .line 550
    .line 551
    const-string v0, "Filen gateway list must not be empty"

    .line 552
    .line 553
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    return-object v16
.end method
