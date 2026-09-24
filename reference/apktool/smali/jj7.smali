.class public final Ljj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lta2;
.implements Lsa2;


# instance fields
.field public final a:Lqd2;

.field public final b:Ltd2;

.field public volatile c:I

.field public volatile d:Lha2;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Lbh5;

.field public volatile k:Lia2;


# direct methods
.method public constructor <init>(Lqd2;Ltd2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljj7;->a:Lqd2;

    .line 5
    .line 6
    iput-object p2, p0, Ljj7;->b:Ltd2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    iget-object v0, p0, Ljj7;->e:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ljj7;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Ljj7;->e:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Ljj7;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/4 v3, 0x3

    .line 20
    const-string v4, "SourceGenerator"

    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Ljj7;->d:Lha2;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Ljj7;->d:Lha2;

    .line 38
    .line 39
    invoke-virtual {v0}, Lha2;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :goto_0
    return v2

    .line 46
    :cond_1
    iput-object v1, p0, Ljj7;->d:Lha2;

    .line 47
    .line 48
    iput-object v1, p0, Ljj7;->f:Lbh5;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v1, p0, Ljj7;->c:I

    .line 54
    .line 55
    iget-object v3, p0, Ljj7;->a:Lqd2;

    .line 56
    .line 57
    invoke-virtual {v3}, Lqd2;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Ljj7;->a:Lqd2;

    .line 68
    .line 69
    invoke-virtual {v1}, Lqd2;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, p0, Ljj7;->c:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Ljj7;->c:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lbh5;

    .line 84
    .line 85
    iput-object v1, p0, Ljj7;->f:Lbh5;

    .line 86
    .line 87
    iget-object v1, p0, Ljj7;->f:Lbh5;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Ljj7;->a:Lqd2;

    .line 92
    .line 93
    iget-object v1, v1, Lqd2;->p:Lkm2;

    .line 94
    .line 95
    iget-object v3, p0, Ljj7;->f:Lbh5;

    .line 96
    .line 97
    iget-object v3, v3, Lbh5;->c:Lra2;

    .line 98
    .line 99
    invoke-interface {v3}, Lra2;->e()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v1, v3}, Lkm2;->c(I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Ljj7;->a:Lqd2;

    .line 110
    .line 111
    iget-object v3, p0, Ljj7;->f:Lbh5;

    .line 112
    .line 113
    iget-object v3, v3, Lbh5;->c:Lra2;

    .line 114
    .line 115
    invoke-interface {v3}, Lra2;->a()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lqd2;->c(Ljava/lang/Class;)Laz4;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Ljj7;->f:Lbh5;

    .line 126
    .line 127
    iget-object v1, p0, Ljj7;->f:Lbh5;

    .line 128
    .line 129
    iget-object v1, v1, Lbh5;->c:Lra2;

    .line 130
    .line 131
    iget-object v3, p0, Ljj7;->a:Lqd2;

    .line 132
    .line 133
    iget-object v3, v3, Lqd2;->o:Le66;

    .line 134
    .line 135
    new-instance v4, Loe;

    .line 136
    .line 137
    const/16 v5, 0xf

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-direct {v4, p0, v0, v5, v6}, Loe;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v3, v4}, Lra2;->d(Le66;Lqa2;)V

    .line 144
    .line 145
    .line 146
    move v0, v2

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    return v0
.end method

.method public final b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V
    .locals 0

    .line 1
    move-object p4, p0

    .line 2
    iget-object p0, p4, Ljj7;->b:Ltd2;

    .line 3
    .line 4
    iget-object p4, p4, Ljj7;->f:Lbh5;

    .line 5
    .line 6
    iget-object p4, p4, Lbh5;->c:Lra2;

    .line 7
    .line 8
    invoke-interface {p4}, Lra2;->e()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    move-object p5, p1

    .line 13
    invoke-virtual/range {p0 .. p5}, Ltd2;->b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Ljo4;Ljava/lang/Exception;Lra2;I)V
    .locals 0

    .line 1
    iget-object p4, p0, Ljj7;->b:Ltd2;

    .line 2
    .line 3
    iget-object p0, p0, Ljj7;->f:Lbh5;

    .line 4
    .line 5
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 6
    .line 7
    invoke-interface {p0}, Lra2;->e()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p4, p1, p2, p3, p0}, Ltd2;->c(Ljo4;Ljava/lang/Exception;Lra2;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Ljj7;->f:Lbh5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 6
    .line 7
    invoke-interface {p0}, Lra2;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    sget v3, Lg15;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Ljj7;->a:Lqd2;

    .line 15
    .line 16
    iget-object v6, v6, Lqd2;->c:Ldy3;

    .line 17
    .line 18
    invoke-virtual {v6}, Ldy3;->a()Lmi6;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6, p1}, Lmi6;->g(Ljava/lang/Object;)Lza2;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lza2;->l()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, p0, Ljj7;->a:Lqd2;

    .line 31
    .line 32
    invoke-virtual {v8, v7}, Lqd2;->d(Ljava/lang/Object;)Lzv2;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, Lu94;

    .line 37
    .line 38
    iget-object v10, p0, Ljj7;->a:Lqd2;

    .line 39
    .line 40
    iget-object v10, v10, Lqd2;->i:Lou5;

    .line 41
    .line 42
    invoke-direct {v9, v8, v7, v10}, Lu94;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lia2;

    .line 46
    .line 47
    iget-object v10, p0, Ljj7;->f:Lbh5;

    .line 48
    .line 49
    iget-object v10, v10, Lbh5;->a:Ljo4;

    .line 50
    .line 51
    iget-object v11, p0, Ljj7;->a:Lqd2;

    .line 52
    .line 53
    iget-object v12, v11, Lqd2;->n:Ljo4;

    .line 54
    .line 55
    invoke-direct {v7, v10, v12}, Lia2;-><init>(Ljo4;Ljo4;)V

    .line 56
    .line 57
    .line 58
    iget-object v10, v11, Lqd2;->h:Lyw2;

    .line 59
    .line 60
    invoke-virtual {v10}, Lyw2;->a()Lgm2;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-interface {v10, v7, v9}, Lgm2;->g(Ljo4;Lu94;)V

    .line 65
    .line 66
    .line 67
    const/4 v9, 0x2

    .line 68
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v11, ", data: "

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ", encoder: "

    .line 91
    .line 92
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, ", duration: "

    .line 99
    .line 100
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, Lg15;->a(J)D

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object p1, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lgm2;->e(Ljo4;)Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v3, 0x1

    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    iput-object v7, p0, Ljj7;->k:Lia2;

    .line 129
    .line 130
    new-instance p1, Lha2;

    .line 131
    .line 132
    iget-object v0, p0, Ljj7;->f:Lbh5;

    .line 133
    .line 134
    iget-object v0, v0, Lbh5;->a:Ljo4;

    .line 135
    .line 136
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Ljj7;->a:Lqd2;

    .line 141
    .line 142
    invoke-direct {p1, v0, v1, p0}, Lha2;-><init>(Ljava/util/List;Lqd2;Lsa2;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Ljj7;->d:Lha2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    iget-object p0, p0, Ljj7;->f:Lbh5;

    .line 148
    .line 149
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 150
    .line 151
    invoke-interface {p0}, Lra2;->c()V

    .line 152
    .line 153
    .line 154
    return v3

    .line 155
    :cond_1
    const/4 v2, 0x3

    .line 156
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Ljj7;->k:Lia2;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 179
    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    :cond_2
    move-object p1, v6

    .line 191
    :try_start_3
    iget-object v6, p0, Ljj7;->b:Ltd2;

    .line 192
    .line 193
    iget-object v0, p0, Ljj7;->f:Lbh5;

    .line 194
    .line 195
    iget-object v7, v0, Lbh5;->a:Ljo4;

    .line 196
    .line 197
    invoke-interface {p1}, Lza2;->l()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    iget-object p1, p0, Ljj7;->f:Lbh5;

    .line 202
    .line 203
    iget-object v9, p1, Lbh5;->c:Lra2;

    .line 204
    .line 205
    iget-object p1, p0, Ljj7;->f:Lbh5;

    .line 206
    .line 207
    iget-object p1, p1, Lbh5;->c:Lra2;

    .line 208
    .line 209
    invoke-interface {p1}, Lra2;->e()I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    iget-object p1, p0, Ljj7;->f:Lbh5;

    .line 214
    .line 215
    iget-object v11, p1, Lbh5;->a:Ljo4;

    .line 216
    .line 217
    invoke-virtual/range {v6 .. v11}, Ltd2;->b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .line 219
    .line 220
    return v5

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    move-object p1, v0

    .line 223
    move v5, v3

    .line 224
    :goto_1
    if-nez v5, :cond_3

    .line 225
    .line 226
    iget-object p0, p0, Ljj7;->f:Lbh5;

    .line 227
    .line 228
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 229
    .line 230
    invoke-interface {p0}, Lra2;->c()V

    .line 231
    .line 232
    .line 233
    :cond_3
    throw p1
.end method
