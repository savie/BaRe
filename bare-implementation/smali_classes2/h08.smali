.class public final Lh08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lzz7;

.field public final b:Lbt3;

.field public final c:Lmt3;

.field public final d:Lokhttp3/OkHttpClient;

.field public final e:Lbt3;


# direct methods
.method public constructor <init>(Lzz7;Lxq4;Llm;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Lzj;

    .line 6
    .line 7
    const/16 v0, 0x12

    .line 8
    .line 9
    invoke-direct {p2, v0}, Lzj;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    new-instance p3, Lou;

    .line 17
    .line 18
    const/16 p4, 0xd

    .line 19
    .line 20
    invoke-direct {p3, p4}, Lou;-><init>(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance p4, Lokhttp3/OkHttpClient$Builder;

    .line 24
    .line 25
    invoke-direct {p4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x1e

    .line 29
    .line 30
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-virtual {p4, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p4, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 40
    .line 41
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 42
    .line 43
    invoke-direct {v0, p4}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 44
    .line 45
    .line 46
    new-instance p4, Lqm;

    .line 47
    .line 48
    const/16 v1, 0x14

    .line 49
    .line 50
    invoke-direct {p4, v1}, Lqm;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lh08;->a:Lzz7;

    .line 60
    .line 61
    iput-object p2, p0, Lh08;->b:Lbt3;

    .line 62
    .line 63
    iput-object p3, p0, Lh08;->c:Lmt3;

    .line 64
    .line 65
    iput-object v0, p0, Lh08;->d:Lokhttp3/OkHttpClient;

    .line 66
    .line 67
    iput-object p4, p0, Lh08;->e:Lbt3;

    .line 68
    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 4

    .line 1
    invoke-static {p0}, Lf08;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x2f

    .line 10
    .line 11
    aput-char v3, v1, v2

    .line 12
    .line 13
    invoke-static {p0, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    aput-char v3, v0, v2

    .line 20
    .line 21
    invoke-static {p1, v0}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "/"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "access_tokens"

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 5

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
    const-string v4, "https://www.terabox.com"

    .line 10
    .line 11
    invoke-static {v4, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-array v0, v0, [C

    .line 16
    .line 17
    aput-char v3, v0, v2

    .line 18
    .line 19
    invoke-static {p0, v0}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "/"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public static k(Lfl4;)La08;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v5, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v5, v1

    .line 16
    :goto_0
    const-string v1, "server_filename"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, "filename"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-array v1, v4, [C

    .line 35
    .line 36
    const/16 v6, 0x2f

    .line 37
    .line 38
    aput-char v6, v1, v3

    .line 39
    .line 40
    invoke-static {v5, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v6}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_1
    move-object v6, v1

    .line 49
    const-string v1, "thumbs"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lbb9;->k(Lqj4;)Lfl4;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move v7, v3

    .line 60
    new-instance v3, La08;

    .line 61
    .line 62
    const-string v8, "fs_id"

    .line 63
    .line 64
    invoke-static {v0, v8}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    if-nez v8, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v2, v8

    .line 72
    :goto_1
    const-string v8, "size"

    .line 73
    .line 74
    invoke-static {v0, v8}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const-wide/16 v9, 0x0

    .line 79
    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move-wide v11, v9

    .line 88
    :goto_2
    const-string v8, "isdir"

    .line 89
    .line 90
    invoke-static {v0, v8}, Lbb9;->w(Lfl4;Ljava/lang/String;)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-nez v8, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-ne v8, v4, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    :goto_3
    move v4, v7

    .line 105
    :goto_4
    const-string v7, "server_ctime"

    .line 106
    .line 107
    invoke-static {v0, v7}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const-string v7, "local_ctime"

    .line 119
    .line 120
    invoke-static {v0, v7}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-eqz v7, :cond_7

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move-wide v7, v9

    .line 128
    :goto_6
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    .line 130
    invoke-virtual {v13, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    const-string v14, "server_mtime"

    .line 135
    .line 136
    invoke-static {v0, v14}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    if-eqz v14, :cond_8

    .line 141
    .line 142
    :goto_7
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    goto :goto_8

    .line 147
    :cond_8
    const-string v14, "local_mtime"

    .line 148
    .line 149
    invoke-static {v0, v14}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    if-eqz v14, :cond_9

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_9
    :goto_8
    invoke-virtual {v13, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v9

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    const-string v13, "icon"

    .line 163
    .line 164
    invoke-static {v1, v13}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    if-nez v13, :cond_a

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_a
    :goto_9
    move-object v14, v13

    .line 172
    goto :goto_d

    .line 173
    :cond_b
    :goto_a
    const/4 v13, 0x0

    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    const-string v14, "url3"

    .line 177
    .line 178
    invoke-static {v1, v14}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    goto :goto_b

    .line 183
    :cond_c
    move-object v14, v13

    .line 184
    :goto_b
    if-nez v14, :cond_e

    .line 185
    .line 186
    if-eqz v1, :cond_d

    .line 187
    .line 188
    const-string v14, "url2"

    .line 189
    .line 190
    invoke-static {v1, v14}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    goto :goto_c

    .line 195
    :cond_d
    move-object v14, v13

    .line 196
    :goto_c
    if-nez v14, :cond_e

    .line 197
    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    const-string v13, "url1"

    .line 201
    .line 202
    invoke-static {v1, v13}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    goto :goto_9

    .line 207
    :cond_e
    :goto_d
    const-string v1, "dlink"

    .line 208
    .line 209
    invoke-static {v0, v1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    move-wide/from16 v16, v9

    .line 214
    .line 215
    move-wide/from16 v18, v11

    .line 216
    .line 217
    move-wide v10, v7

    .line 218
    move-wide/from16 v12, v16

    .line 219
    .line 220
    move-wide/from16 v7, v18

    .line 221
    .line 222
    move v9, v4

    .line 223
    move-object v4, v2

    .line 224
    invoke-direct/range {v3 .. v15}, La08;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJJLjava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-object v3
.end method

.method public static l(Lokhttp3/Response;)Lfl4;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v6

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lbb9;->k(Lqj4;)Lfl4;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v0, Lfl4;

    .line 31
    .line 32
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_1
    const-string v2, "errno"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lbb9;->w(Lfl4;Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const-string v2, "newno"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v1, 0xa

    .line 52
    .line 53
    invoke-static {v1, v2}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_2
    move-object v5, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v5, v2

    .line 60
    :goto_2
    iget-boolean v1, p0, Lokhttp3/Response;->H:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    :cond_4
    return-object v0

    .line 73
    :cond_5
    new-instance v1, Lyz7;

    .line 74
    .line 75
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 76
    .line 77
    iget-object v2, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 80
    .line 81
    iget-object v3, v0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 82
    .line 83
    iget v4, p0, Lokhttp3/Response;->d:I

    .line 84
    .line 85
    invoke-direct/range {v1 .. v6}, Lyz7;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1
.end method


# virtual methods
.method public final c(Ln08;Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    iget-object v2, v1, Ln08;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, v1, Ln08;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_d

    .line 13
    .line 14
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_c

    .line 19
    .line 20
    new-instance v4, Lokhttp3/Request$Builder;

    .line 21
    .line 22
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v6, "/oauth/tokeninfo"

    .line 26
    .line 27
    invoke-static {v6}, Lh08;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iput-object v6, v4, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 32
    .line 33
    new-instance v6, Lokhttp3/FormBody$Builder;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct {v6, v7}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const-string v7, "access_token"

    .line 40
    .line 41
    invoke-virtual {v6, v7, v3}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "POST"

    .line 49
    .line 50
    invoke-virtual {v4, v7, v6}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Lokhttp3/Request;

    .line 54
    .line 55
    invoke-direct {v6, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v6}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v6, "data"

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lbb9;->k(Lqj4;)Lfl4;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_b

    .line 73
    .line 74
    const-string v5, "api_domain"

    .line 75
    .line 76
    invoke-static {v4, v5}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, ""

    .line 81
    .line 82
    if-nez v5, :cond_0

    .line 83
    .line 84
    move-object v5, v6

    .line 85
    :cond_0
    const-string v7, "upload_domain"

    .line 86
    .line 87
    invoke-static {v4, v7}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-nez v7, :cond_1

    .line 92
    .line 93
    move-object v7, v6

    .line 94
    :cond_1
    const-string v8, "expires_in"

    .line 95
    .line 96
    invoke-static {v4, v8}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v9, "create_time"

    .line 101
    .line 102
    invoke-static {v4, v9}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    const-string v10, "user_id"

    .line 107
    .line 108
    invoke-static {v4, v10}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    move-object v4, v6

    .line 115
    :cond_2
    move-object v10, v5

    .line 116
    invoke-static {v10}, Lf08;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_3

    .line 125
    .line 126
    move-object v7, v10

    .line 127
    :cond_3
    invoke-static {v7}, Lf08;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    new-instance v10, Lokhttp3/Request$Builder;

    .line 132
    .line 133
    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v11, "/openapi/uinfo"

    .line 137
    .line 138
    invoke-static {v5, v11, v3}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    iput-object v11, v10, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 143
    .line 144
    invoke-virtual {v10}, Lokhttp3/Request$Builder;->b()V

    .line 145
    .line 146
    .line 147
    new-instance v11, Lokhttp3/Request;

    .line 148
    .line 149
    invoke-direct {v11, v10}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v11}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    const-string v11, "uk"

    .line 157
    .line 158
    invoke-static {v10, v11}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    if-nez v11, :cond_4

    .line 163
    .line 164
    move-object v11, v6

    .line 165
    :cond_4
    const-string v12, "uname"

    .line 166
    .line 167
    invoke-static {v10, v12}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    if-nez v10, :cond_5

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_5
    move-object v6, v10

    .line 175
    :goto_0
    iget-object v1, v1, Ln08;->c:Ljava/lang/Long;

    .line 176
    .line 177
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    .line 179
    iget-object v0, p0, Lh08;->e:Lbt3;

    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v8

    .line 201
    add-long/2addr v8, v0

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    if-eqz v8, :cond_8

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 206
    .line 207
    .line 208
    move-result-wide v12

    .line 209
    if-eqz v9, :cond_7

    .line 210
    .line 211
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    goto :goto_1

    .line 216
    :cond_7
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/Number;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    const-wide/16 v8, 0x3e8

    .line 227
    .line 228
    div-long/2addr v0, v8

    .line 229
    :goto_1
    add-long/2addr v0, v12

    .line 230
    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v8

    .line 234
    goto :goto_2

    .line 235
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getExpiresAtMillis()J

    .line 236
    .line 237
    .line 238
    move-result-wide v8

    .line 239
    :goto_2
    invoke-static {v11}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_9
    move-object v4, v11

    .line 247
    :goto_3
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_a

    .line 252
    .line 253
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getDisplayName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    :cond_a
    const/16 v10, 0x80

    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    move-object v1, v3

    .line 261
    move-object v14, v7

    .line 262
    move-object v7, v4

    .line 263
    move-wide v3, v8

    .line 264
    move-object v8, v6

    .line 265
    move-object v6, v14

    .line 266
    const/4 v9, 0x0

    .line 267
    move-object/from16 v0, p2

    .line 268
    .line 269
    invoke-static/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :cond_b
    const-string v0, "TeraBox tokeninfo response did not contain data."

    .line 275
    .line 276
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    return-object v5

    .line 280
    :cond_c
    const-string v0, "TeraBox token response did not contain refresh_token."

    .line 281
    .line 282
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-object v5

    .line 286
    :cond_d
    const-string v0, "TeraBox token response did not contain access_token."

    .line 287
    .line 288
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-object v5
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lxi4;

    .line 2
    .line 3
    invoke-direct {v0}, Lxi4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lxi4;->s(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lqj4;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljj2;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-direct {v0, v1, p0, p1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lh08;->f(Lmt3;)Lfl4;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh08;->a:Lzz7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lzz7;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lpw5;

    .line 16
    .line 17
    const-string v2, "client_id"

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lpw5;

    .line 28
    .line 29
    const-string v2, "client_secret"

    .line 30
    .line 31
    invoke-direct {v0, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lpw5;

    .line 35
    .line 36
    const-string v3, "grant_type"

    .line 37
    .line 38
    const-string v4, "authorization_code"

    .line 39
    .line 40
    invoke-direct {v2, v3, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lpw5;

    .line 44
    .line 45
    const-string v4, "code"

    .line 46
    .line 47
    invoke-direct {v3, v4, p1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    filled-new-array {v1, v0, v2, v3}, [Lpw5;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "/oauth/gettoken"

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0}, Lh08;->j(Ljava/util/Map;Ljava/lang/String;)Ln08;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 65
    .line 66
    const/16 v10, 0xff

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    invoke-direct/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lh08;->c(Ln08;Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_0
    const-string p0, "TeraBox app credentials are not configured."

    .line 87
    .line 88
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public final f(Lmt3;)Lfl4;
    .locals 3

    .line 1
    iget-object v0, p0, Lh08;->b:Lbt3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lh08;->i(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lokhttp3/Request;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Lyz7;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v2}, Lh08;->i(Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lokhttp3/Request;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_0
    throw v1

    .line 55
    :cond_1
    const-string p0, "TeraBox access token unavailable"

    .line 56
    .line 57
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final g(Lokhttp3/Request;)Lfl4;
    .locals 1

    .line 1
    iget-object p0, p0, Lh08;->d:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :try_start_0
    invoke-static {p0}, Lh08;->l(Lokhttp3/Response;)Lfl4;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :catchall_1
    move-exception v0

    .line 22
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final h(Ljava/lang/String;Z)La08;
    .locals 1

    .line 1
    new-instance v0, Lxi4;

    .line 2
    .line 3
    invoke-direct {v0}, Lxi4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lxi4;->s(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lqj4;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ld08;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Ld08;-><init>(Lh08;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lh08;->f(Lmt3;)Lfl4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "info"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lqj4;->g()Lxi4;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lel1;->T0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lqj4;

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    invoke-static {p0}, Lbb9;->k(Lqj4;)Lfl4;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-static {p0}, Lh08;->k(Lfl4;)La08;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public final declared-synchronized i(Z)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh08;->b:Lbt3;

    .line 3
    .line 4
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lh08;->e:Lbt3;

    .line 14
    .line 15
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x0

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->needsAccessTokenRefresh$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;JJILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    xor-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getRefreshToken()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lh08;->a:Lzz7;

    .line 61
    .line 62
    invoke-virtual {p1}, Lzz7;->a()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p1, "/oauth/refreshtoken"

    .line 70
    .line 71
    const-string v0, "client_id"

    .line 72
    .line 73
    iget-object v2, p0, Lh08;->a:Lzz7;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v2, ""

    .line 79
    .line 80
    new-instance v3, Lpw5;

    .line 81
    .line 82
    invoke-direct {v3, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "client_secret"

    .line 86
    .line 87
    iget-object v2, p0, Lh08;->a:Lzz7;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-string v2, ""

    .line 93
    .line 94
    new-instance v4, Lpw5;

    .line 95
    .line 96
    invoke-direct {v4, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "refresh_token"

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getRefreshToken()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v5, Lpw5;

    .line 106
    .line 107
    invoke-direct {v5, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    filled-new-array {v3, v4, v5}, [Lpw5;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p0, v0, p1}, Lh08;->j(Ljava/util/Map;Ljava/lang/String;)Ln08;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, v1}, Lh08;->c(Ln08;Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v0, p0, Lh08;->c:Lmt3;

    .line 127
    .line 128
    invoke-interface {v0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    xor-int/lit8 p1, p1, 0x1

    .line 140
    .line 141
    monitor-exit p0

    .line 142
    return p1

    .line 143
    :cond_2
    :goto_0
    monitor-exit p0

    .line 144
    const/4 p0, 0x0

    .line 145
    return p0

    .line 146
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    throw p1
.end method

.method public final j(Ljava/util/Map;Ljava/lang/String;)Ln08;
    .locals 7

    .line 1
    iget-object v0, p0, Lh08;->e:Lbt3;

    .line 2
    .line 3
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    div-long/2addr v0, v2

    .line 16
    iget-object v2, p0, Lh08;->a:Lzz7;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "_"

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "__"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "MD5"

    .line 41
    .line 42
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lf51;->a:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v3, Lhi;

    .line 63
    .line 64
    const/16 v4, 0x9

    .line 65
    .line 66
    invoke-direct {v3, v4}, Lhi;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const/16 v4, 0x1e

    .line 70
    .line 71
    const-string v5, ""

    .line 72
    .line 73
    invoke-static {v2, v5, v3, v4}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v3, v4}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_0

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3, v6, v4}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const-string p1, "timestamp"

    .line 120
    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v3, p1, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string p1, "sign"

    .line 129
    .line 130
    invoke-virtual {v3, p1, v2}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v0, Lokhttp3/Request$Builder;

    .line 138
    .line 139
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Lh08;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iput-object p2, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 147
    .line 148
    const-string p2, "POST"

    .line 149
    .line 150
    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 151
    .line 152
    .line 153
    new-instance p1, Lokhttp3/Request;

    .line 154
    .line 155
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-string p1, "data"

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0}, Lbb9;->k(Lqj4;)Lfl4;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    if-eqz p0, :cond_3

    .line 173
    .line 174
    new-instance p1, Ln08;

    .line 175
    .line 176
    const-string p2, "access_token"

    .line 177
    .line 178
    invoke-static {p0, p2}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    if-nez p2, :cond_1

    .line 183
    .line 184
    move-object p2, v5

    .line 185
    :cond_1
    const-string v0, "refresh_token"

    .line 186
    .line 187
    invoke-static {p0, v0}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-nez v0, :cond_2

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    move-object v5, v0

    .line 195
    :goto_1
    const-string v0, "expires_in"

    .line 196
    .line 197
    invoke-static {p0, v0}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-direct {p1, p2, v5, p0}, Ln08;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    .line 203
    .line 204
    return-object p1

    .line 205
    :cond_3
    const-string p0, "TeraBox token response did not contain data."

    .line 206
    .line 207
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p0, 0x0

    .line 211
    return-object p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Lo08;Ljava/io/BufferedInputStream;Lmm;)Lp08;
    .locals 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p3, Lo08;->a:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lh08;->i(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lh08;->b:Lbt3;

    .line 14
    .line 15
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 20
    .line 21
    new-instance v2, Lokhttp3/Request$Builder;

    .line 22
    .line 23
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getUploadDomain()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "/rest/2.0/pcs/superfile2"

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v3, v4, v1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "method"

    .line 45
    .line 46
    const-string v4, "upload"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "type"

    .line 52
    .line 53
    const-string v4, "tmpfile"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v4}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "app_id"

    .line 59
    .line 60
    const-string v4, "250528"

    .line 61
    .line 62
    invoke-virtual {v1, v3, v4}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "path"

    .line 66
    .line 67
    invoke-virtual {v1, v3, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "uploadid"

    .line 71
    .line 72
    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v3, "partseq"

    .line 80
    .line 81
    invoke-virtual {v1, v3, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 89
    .line 90
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    .line 91
    .line 92
    invoke-direct {p2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lokhttp3/MultipartBody;->g:Lokhttp3/MediaType;

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Lokhttp3/MultipartBody$Builder;->c(Lokhttp3/MediaType;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, "part-"

    .line 103
    .line 104
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-wide v4, p3, Lo08;->c:J

    .line 115
    .line 116
    new-instance p3, Lg08;

    .line 117
    .line 118
    invoke-direct {p3, v4, v5, p4, p5}, Lg08;-><init>(JLjava/io/BufferedInputStream;Lmm;)V

    .line 119
    .line 120
    .line 121
    const-string p4, "file"

    .line 122
    .line 123
    invoke-virtual {p2, p4, v1, p3}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    const-string p3, "POST"

    .line 131
    .line 132
    invoke-virtual {v2, p3, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lokhttp3/Request;

    .line 136
    .line 137
    invoke-direct {p2, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p2}, Lh08;->g(Lokhttp3/Request;)Lfl4;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-instance p2, Lp08;

    .line 145
    .line 146
    const-string p3, "md5"

    .line 147
    .line 148
    invoke-static {p0, p3}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    const-string p4, ""

    .line 153
    .line 154
    if-nez p3, :cond_0

    .line 155
    .line 156
    move-object p3, p4

    .line 157
    :cond_0
    invoke-static {p0, p1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-nez p1, :cond_1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    move-object p4, p1

    .line 165
    :goto_0
    invoke-static {p0, v3}, Lbb9;->w(Lfl4;Ljava/lang/String;)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-eqz p0, :cond_2

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    :cond_2
    invoke-direct {p2, p3, p4, v0}, Lp08;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    return-object p2

    .line 179
    :cond_3
    const-string p0, "TeraBox access token unavailable"

    .line 180
    .line 181
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 p0, 0x0

    .line 185
    return-object p0
.end method
