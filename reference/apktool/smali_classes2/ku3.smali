.class public final synthetic Lku3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lst3;


# instance fields
.field public final synthetic a:Llu3;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Llu3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lku3;->a:Llu3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lku3;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    check-cast v5, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-object/from16 v5, p4

    .line 27
    .line 28
    check-cast v5, Ljava/io/OutputStream;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v6, v0, Lku3;->a:Llu3;

    .line 34
    .line 35
    iget-object v7, v6, Llu3;->p:Ld04;

    .line 36
    .line 37
    iget-object v6, v6, Lno2;->a:Ljava/lang/String;

    .line 38
    .line 39
    cmp-long v8, v1, v3

    .line 40
    .line 41
    if-ltz v8, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    const-wide/16 v8, 0x1

    .line 45
    .line 46
    rem-long v10, v3, v8

    .line 47
    .line 48
    const-wide/16 v12, 0x0

    .line 49
    .line 50
    cmp-long v14, v10, v12

    .line 51
    .line 52
    if-ltz v14, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    add-long/2addr v10, v8

    .line 56
    :goto_0
    rem-long v14, v1, v8

    .line 57
    .line 58
    cmp-long v16, v14, v12

    .line 59
    .line 60
    if-ltz v16, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    add-long/2addr v14, v8

    .line 64
    :goto_1
    sub-long/2addr v10, v14

    .line 65
    rem-long/2addr v10, v8

    .line 66
    cmp-long v12, v10, v12

    .line 67
    .line 68
    if-ltz v12, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    add-long/2addr v10, v8

    .line 72
    :goto_2
    sub-long/2addr v3, v10

    .line 73
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v8, "/drive/v3/files/"

    .line 80
    .line 81
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v8, v7, Ld04;->d:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v8, v6}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v8, "alt"

    .line 96
    .line 97
    const-string v9, "media"

    .line 98
    .line 99
    invoke-virtual {v6, v8, v9}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v8, "supportsAllDrives"

    .line 103
    .line 104
    const-string v9, "true"

    .line 105
    .line 106
    invoke-virtual {v6, v8, v9}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, v0, Lku3;->b:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    const-string v0, "acknowledgeAbuse"

    .line 114
    .line 115
    invoke-virtual {v6, v0, v9}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 119
    .line 120
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iput-object v6, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 128
    .line 129
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 130
    .line 131
    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v8, "bytes="

    .line 135
    .line 136
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, "-"

    .line 143
    .line 144
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 155
    .line 156
    const-string v3, "Range"

    .line 157
    .line 158
    invoke-virtual {v2, v3, v1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lokhttp3/Request;

    .line 162
    .line 163
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v1}, Ld04;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :try_start_0
    iget-object v0, v1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 171
    .line 172
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 173
    .line 174
    .line 175
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 176
    const/high16 v0, 0x40000

    .line 177
    .line 178
    :try_start_1
    invoke-static {v2, v5, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .line 180
    .line 181
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lbe8;->a:Lbe8;

    .line 191
    .line 192
    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move-object v3, v0

    .line 195
    goto :goto_4

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    move-object v3, v0

    .line 198
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 199
    :catchall_2
    move-exception v0

    .line 200
    :try_start_5
    invoke-static {v5, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    :goto_4
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 205
    :catchall_3
    move-exception v0

    .line 206
    :try_start_7
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 210
    :goto_5
    move-object v2, v0

    .line 211
    goto :goto_6

    .line 212
    :catchall_4
    move-exception v0

    .line 213
    goto :goto_5

    .line 214
    :goto_6
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 215
    :catchall_5
    move-exception v0

    .line 216
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method
