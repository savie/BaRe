.class public final Lc82;
.super Lxh2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lbr2;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lbr2;Lzv1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lxh2;-><init>(Lzv1;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lc82;->c:Lbr2;

    .line 8
    .line 9
    const-string p1, "DDeleteSession"

    .line 10
    .line 11
    iput-object p1, p0, Lc82;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static final e(Lc82;Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lc82;->c:Lbr2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lxi4;

    .line 7
    .line 8
    invoke-direct {v0}, Lxi4;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Lfl4;

    .line 28
    .line 29
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "path"

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lxi4;->p(Lqj4;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lfl4;

    .line 42
    .line 43
    invoke-direct {p1}, Lfl4;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "entries"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "/2/files/delete_batch"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, ".tag"

    .line 58
    .line 59
    invoke-static {p1, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "complete"

    .line 64
    .line 65
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const-string v4, "async_job_id"

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    new-instance v1, Lsq2;

    .line 74
    .line 75
    invoke-static {p1}, Lbr2;->j(Lfl4;)Ltq2;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v1, p1}, Lsq2;-><init>(Ltq2;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v1, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_c

    .line 88
    .line 89
    new-instance v1, Lrq2;

    .line 90
    .line 91
    invoke-static {p1, v4}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    const-string p1, ""

    .line 98
    .line 99
    :cond_2
    invoke-direct {v1, p1}, Lrq2;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    instance-of p1, v1, Lsq2;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    check-cast v1, Lsq2;

    .line 107
    .line 108
    iget-object p0, v1, Lsq2;->j:Ltq2;

    .line 109
    .line 110
    invoke-static {p0}, Lus2;->u(Ltq2;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    instance-of p1, v1, Lrq2;

    .line 115
    .line 116
    if-eqz p1, :cond_b

    .line 117
    .line 118
    check-cast v1, Lrq2;

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    :goto_2
    const/16 v3, 0x14

    .line 122
    .line 123
    if-ge p1, v3, :cond_a

    .line 124
    .line 125
    const-wide/16 v5, 0x3e8

    .line 126
    .line 127
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    new-instance v3, Lfl4;

    .line 134
    .line 135
    invoke-direct {v3}, Lfl4;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v5, v1, Lrq2;->j:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v3, v4, v5}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v5, "/2/files/delete_batch/check"

    .line 144
    .line 145
    invoke-virtual {p0, v3, v5}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v5, :cond_9

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const v7, -0x4c696bc3

    .line 160
    .line 161
    .line 162
    if-eq v6, v7, :cond_5

    .line 163
    .line 164
    const v7, -0x2cea1ff9

    .line 165
    .line 166
    .line 167
    if-eq v6, v7, :cond_4

    .line 168
    .line 169
    const v7, -0x23bacec7

    .line 170
    .line 171
    .line 172
    if-ne v6, v7, :cond_9

    .line 173
    .line 174
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 179
    .line 180
    new-instance v5, Loq2;

    .line 181
    .line 182
    invoke-static {v3}, Lbr2;->j(Lfl4;)Ltq2;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-direct {v5, v3}, Loq2;-><init>(Ltq2;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_4
    const-string v6, "in_progress"

    .line 191
    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_9

    .line 197
    .line 198
    sget-object v5, Lqq2;->g:Lqq2;

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    const-string v6, "failed"

    .line 202
    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_9

    .line 208
    .line 209
    new-instance v5, Lpq2;

    .line 210
    .line 211
    const-string v6, "error_summary"

    .line 212
    .line 213
    invoke-static {v3, v6}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-direct {v5, v3}, Lpq2;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    instance-of v3, v5, Lqq2;

    .line 221
    .line 222
    if-nez v3, :cond_8

    .line 223
    .line 224
    instance-of p0, v5, Loq2;

    .line 225
    .line 226
    if-eqz p0, :cond_6

    .line 227
    .line 228
    check-cast v5, Loq2;

    .line 229
    .line 230
    iget-object p0, v5, Loq2;->g:Ltq2;

    .line 231
    .line 232
    invoke-static {p0}, Lus2;->u(Ltq2;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_6
    instance-of p0, v5, Lpq2;

    .line 237
    .line 238
    if-eqz p0, :cond_7

    .line 239
    .line 240
    check-cast v5, Lpq2;

    .line 241
    .line 242
    iget-object p0, v5, Lpq2;->g:Ljava/lang/String;

    .line 243
    .line 244
    const-string p1, "Dropbox delete batch failed: "

    .line 245
    .line 246
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_9
    const-string p0, "Unexpected Dropbox delete_batch/check response: "

    .line 263
    .line 264
    invoke-static {v3, p0}, Lc6;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_a
    const-string p0, "Dropbox delete batch did not finish in time"

    .line 269
    .line 270
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_c
    const-string p0, "Unexpected Dropbox delete_batch response: "

    .line 279
    .line 280
    invoke-static {p1, p0}, Lc6;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    invoke-static {p0, v1}, Lc82;->e(Lc82;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object v6, v0

    .line 39
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 40
    .line 41
    const/16 v8, 0x8

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    iget-object v4, p0, Lc82;->d:Ljava/lang/String;

    .line 45
    .line 46
    const-string v5, "deleteFilesByIds"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    instance-of p1, v6, Lkq2;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    move-object v0, v6

    .line 57
    check-cast v0, Lkq2;

    .line 58
    .line 59
    invoke-virtual {v0}, Lkq2;->d()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const/4 v11, 0x4

    .line 66
    const/4 v12, 0x0

    .line 67
    iget-object v8, p0, Lc82;->d:Ljava/lang/String;

    .line 68
    .line 69
    const-string v9, "Retrying..."

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v7, v3

    .line 73
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lkq2;->c:Ljava/lang/Long;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-wide/16 v2, 0x1388

    .line 86
    .line 87
    :goto_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    :catch_1
    invoke-static {p0, v1}, Lc82;->e(Lc82;Ljava/util/ArrayList;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    :cond_3
    throw v6
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc82;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
