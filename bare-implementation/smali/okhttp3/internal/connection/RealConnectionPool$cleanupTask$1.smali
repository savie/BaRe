.class public final Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->e:Lokhttp3/internal/connection/RealConnectionPool;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->e:Lokhttp3/internal/connection/RealConnectionPool;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v4, v0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lokhttp3/internal/connection/RealConnection;

    .line 55
    .line 56
    iget-object v6, v5, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 57
    .line 58
    iget-object v6, v6, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 59
    .line 60
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 65
    .line 66
    if-nez v6, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    monitor-enter v5

    .line 70
    monitor-exit v5

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-wide v4, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    .line 73
    .line 74
    sub-long v4, v1, v4

    .line 75
    .line 76
    const-wide/16 v6, 0x1

    .line 77
    .line 78
    add-long/2addr v4, v6

    .line 79
    iget-object v6, v0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const-wide v9, 0x7fffffffffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move-wide v10, v9

    .line 95
    const/4 v12, 0x0

    .line 96
    const/4 v13, 0x0

    .line 97
    move v9, v7

    .line 98
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-eqz v14, :cond_7

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    check-cast v14, Lokhttp3/internal/connection/RealConnection;

    .line 109
    .line 110
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    monitor-enter v14

    .line 114
    :try_start_0
    invoke-virtual {v0, v14, v1, v2}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/internal/connection/RealConnection;J)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    if-lez v15, :cond_3

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    move-wide/from16 v16, v1

    .line 123
    .line 124
    const/16 p0, 0x0

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    move v15, v9

    .line 128
    const/16 p0, 0x0

    .line 129
    .line 130
    iget-wide v8, v14, Lokhttp3/internal/connection/RealConnection;->L:J

    .line 131
    .line 132
    cmp-long v16, v8, v4

    .line 133
    .line 134
    if-gez v16, :cond_4

    .line 135
    .line 136
    move-wide v4, v8

    .line 137
    move-object v12, v14

    .line 138
    :cond_4
    move-wide/from16 v16, v1

    .line 139
    .line 140
    iget-object v1, v14, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 141
    .line 142
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 143
    .line 144
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lokhttp3/internal/connection/RealConnectionPool$AddressState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    if-nez v1, :cond_6

    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    cmp-long v1, v8, v10

    .line 155
    .line 156
    if-gez v1, :cond_5

    .line 157
    .line 158
    move-wide v10, v8

    .line 159
    move-object v13, v14

    .line 160
    :cond_5
    move v9, v15

    .line 161
    :goto_3
    monitor-exit v14

    .line 162
    move-wide/from16 v1, v16

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    monitor-exit v14

    .line 168
    throw v0

    .line 169
    :cond_7
    move-wide/from16 v16, v1

    .line 170
    .line 171
    move v15, v9

    .line 172
    const/16 p0, 0x0

    .line 173
    .line 174
    const-wide/16 v1, -0x1

    .line 175
    .line 176
    if-eqz v12, :cond_8

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_8
    iget v4, v0, Lokhttp3/internal/connection/RealConnectionPool;->a:I

    .line 180
    .line 181
    if-le v7, v4, :cond_9

    .line 182
    .line 183
    move-wide v4, v10

    .line 184
    move-object v12, v13

    .line 185
    goto :goto_4

    .line 186
    :cond_9
    move-object/from16 v12, p0

    .line 187
    .line 188
    move-wide v4, v1

    .line 189
    :goto_4
    if-eqz v12, :cond_e

    .line 190
    .line 191
    monitor-enter v12

    .line 192
    :try_start_2
    iget-object v1, v12, Lokhttp3/internal/connection/RealConnection;->K:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    const-wide/16 v6, 0x0

    .line 199
    .line 200
    if-nez v1, :cond_a

    .line 201
    .line 202
    monitor-exit v12

    .line 203
    return-wide v6

    .line 204
    :cond_a
    :try_start_3
    iget-wide v1, v12, Lokhttp3/internal/connection/RealConnection;->L:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .line 206
    cmp-long v1, v1, v4

    .line 207
    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    monitor-exit v12

    .line 211
    return-wide v6

    .line 212
    :cond_b
    const/4 v1, 0x1

    .line 213
    :try_start_4
    iput-boolean v1, v12, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 214
    .line 215
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 216
    .line 217
    invoke-virtual {v1, v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    .line 219
    .line 220
    monitor-exit v12

    .line 221
    iget-object v1, v12, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 222
    .line 223
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 224
    .line 225
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 230
    .line 231
    if-nez v1, :cond_d

    .line 232
    .line 233
    iget-object v1, v12, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 234
    .line 235
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_c

    .line 245
    .line 246
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->e:Lokhttp3/internal/concurrent/TaskQueue;

    .line 247
    .line 248
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->a()V

    .line 249
    .line 250
    .line 251
    :cond_c
    return-wide v6

    .line 252
    :cond_d
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/RealConnectionPool;->b(Lokhttp3/internal/connection/RealConnectionPool$AddressState;)V

    .line 253
    .line 254
    .line 255
    throw p0

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    monitor-exit v12

    .line 258
    throw v0

    .line 259
    :cond_e
    if-eqz v13, :cond_f

    .line 260
    .line 261
    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    .line 262
    .line 263
    add-long/2addr v10, v0

    .line 264
    sub-long v10, v10, v16

    .line 265
    .line 266
    return-wide v10

    .line 267
    :cond_f
    if-lez v15, :cond_10

    .line 268
    .line 269
    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    .line 270
    .line 271
    return-wide v0

    .line 272
    :cond_10
    return-wide v1
.end method
