.class public final Lsm2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgm2;


# instance fields
.field public final a:Lot9;

.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:Lh80;

.field public e:Lrm2;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh80;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Lh80;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lsm2;->d:Lh80;

    .line 11
    .line 12
    iput-object p1, p0, Lsm2;->b:Ljava/io/File;

    .line 13
    .line 14
    const-wide/32 v0, 0xfa00000

    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, Lsm2;->c:J

    .line 18
    .line 19
    new-instance p1, Lot9;

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lot9;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lsm2;->a:Lot9;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lrm2;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lsm2;->e:Lrm2;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lsm2;->b:Ljava/io/File;

    .line 7
    .line 8
    iget-wide v1, p0, Lsm2;->c:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lrm2;->q(Ljava/io/File;J)Lrm2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lsm2;->e:Lrm2;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lsm2;->e:Lrm2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public final e(Ljo4;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lsm2;->a:Lot9;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lot9;->d(Ljo4;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "DiskLruCacheWrapper"

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Get: Obtained: "

    .line 19
    .line 20
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " for for Key: "

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lsm2;->a()Lrm2;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Lrm2;->m(Ljava/lang/String;)Ls79;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Ls79;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, [Ljava/io/File;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const/4 p1, 0x5

    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string p1, "Unable to get from disk cache"

    .line 68
    .line 69
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final g(Ljo4;Lu94;)V
    .locals 7

    .line 1
    const-string v0, "Had two simultaneous puts for: "

    .line 2
    .line 3
    const-string v1, "Put: Obtained: "

    .line 4
    .line 5
    iget-object v2, p0, Lsm2;->a:Lot9;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Lot9;->d(Ljo4;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lsm2;->d:Lh80;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    iget-object v4, v3, Lh80;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Llm2;

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    iget-object v4, v3, Lh80;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lvk9;

    .line 29
    .line 30
    iget-object v5, v4, Lvk9;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object v4, v4, Lvk9;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Llm2;

    .line 44
    .line 45
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    :try_start_2
    new-instance v4, Llm2;

    .line 49
    .line 50
    invoke-direct {v4}, Llm2;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v5, v3, Lh80;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :try_start_4
    throw p0

    .line 67
    :cond_1
    :goto_0
    iget v5, v4, Llm2;->b:I

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    add-int/2addr v5, v6

    .line 71
    iput v5, v4, Llm2;->b:I

    .line 72
    .line 73
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    iget-object v3, v4, Llm2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    .line 78
    .line 79
    :try_start_5
    const-string v3, "DiskLruCacheWrapper"

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    const-string v3, "DiskLruCacheWrapper"

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, " for for Key: "

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_2
    move-exception p1

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lsm2;->a()Lrm2;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v2}, Lrm2;->m(Ljava/lang/String;)Ls79;

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    :catch_0
    :cond_3
    :goto_2
    iget-object p0, p0, Lsm2;->d:Lh80;

    .line 127
    .line 128
    invoke-virtual {p0, v2}, Lh80;->i(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    :try_start_7
    invoke-virtual {p1, v2}, Lrm2;->h(Ljava/lang/String;)Lpm2;

    .line 133
    .line 134
    .line 135
    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    :try_start_8
    invoke-virtual {p1}, Lpm2;->b()Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p2, Lu94;->a:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Lzv2;

    .line 145
    .line 146
    iget-object v3, p2, Lu94;->b:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object p2, p2, Lu94;->c:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p2, Lou5;

    .line 151
    .line 152
    invoke-interface {v1, v3, v0, p2}, Lzv2;->h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_5

    .line 157
    .line 158
    iget-object p2, p1, Lpm2;->d:Lrm2;

    .line 159
    .line 160
    invoke-static {p2, p1, v6}, Lrm2;->a(Lrm2;Lpm2;Z)V

    .line 161
    .line 162
    .line 163
    iput-boolean v6, p1, Lpm2;->c:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 164
    .line 165
    :cond_5
    :try_start_9
    iget-boolean p2, p1, Lpm2;->c:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 166
    .line 167
    if-nez p2, :cond_3

    .line 168
    .line 169
    :try_start_a
    invoke-virtual {p1}, Lpm2;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception p1

    .line 174
    goto :goto_3

    .line 175
    :catchall_3
    move-exception p2

    .line 176
    :try_start_b
    iget-boolean v0, p1, Lpm2;->c:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 177
    .line 178
    if-nez v0, :cond_6

    .line 179
    .line 180
    :try_start_c
    invoke-virtual {p1}, Lpm2;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 181
    .line 182
    .line 183
    :catch_2
    :cond_6
    :try_start_d
    throw p2

    .line 184
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 194
    :goto_3
    :try_start_e
    const-string p2, "DiskLruCacheWrapper"

    .line 195
    .line 196
    const/4 v0, 0x5

    .line 197
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_3

    .line 202
    .line 203
    const-string p2, "DiskLruCacheWrapper"

    .line 204
    .line 205
    const-string v0, "Unable to put to disk cache"

    .line 206
    .line 207
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_4
    iget-object p0, p0, Lsm2;->d:Lh80;

    .line 212
    .line 213
    invoke-virtual {p0, v2}, Lh80;->i(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :goto_5
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 218
    throw p0
.end method
