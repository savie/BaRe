.class public final synthetic Leg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic f:Lvx0;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final synthetic i:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic j:Ldc6;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lhx5;

.field public final synthetic m:Lox0;

.field public final synthetic n:Z

.field public final synthetic o:Z


# direct methods
.method public synthetic constructor <init>(Lpg5;ILjava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Lvx0;Ljava/util/List;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;Ldc6;Ljava/lang/String;Lhx5;Lox0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leg5;->a:Lpg5;

    .line 5
    .line 6
    iput p2, p0, Leg5;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Leg5;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    iput-object p4, p0, Leg5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p5, p0, Leg5;->e:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    .line 14
    iput-object p6, p0, Leg5;->f:Lvx0;

    .line 15
    .line 16
    iput-object p7, p0, Leg5;->g:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Leg5;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    iput-object p9, p0, Leg5;->i:Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    iput-object p10, p0, Leg5;->j:Ldc6;

    .line 23
    .line 24
    iput-object p11, p0, Leg5;->k:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p12, p0, Leg5;->l:Lhx5;

    .line 27
    .line 28
    iput-object p13, p0, Leg5;->m:Lox0;

    .line 29
    .line 30
    iput-boolean p14, p0, Leg5;->n:Z

    .line 31
    .line 32
    iput-boolean p15, p0, Leg5;->o:Z

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Leg5;->a:Lpg5;

    .line 4
    .line 5
    iget-object v9, v0, Leg5;->j:Ldc6;

    .line 6
    .line 7
    iget-object v10, v0, Leg5;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v11, v0, Leg5;->l:Lhx5;

    .line 10
    .line 11
    iget-object v12, v0, Leg5;->m:Lox0;

    .line 12
    .line 13
    iget-boolean v13, v0, Leg5;->n:Z

    .line 14
    .line 15
    iget-boolean v14, v0, Leg5;->o:Z

    .line 16
    .line 17
    sget v1, Lpg5;->n:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget v3, v0, Leg5;->b:I

    .line 21
    .line 22
    iget-object v4, v0, Leg5;->c:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    iget-object v5, v0, Leg5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    move-object v6, v4

    .line 27
    iget-object v4, v0, Leg5;->e:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 28
    .line 29
    move-object v7, v5

    .line 30
    iget-object v5, v0, Leg5;->f:Lvx0;

    .line 31
    .line 32
    move-object v8, v6

    .line 33
    iget-object v6, v0, Leg5;->g:Ljava/util/List;

    .line 34
    .line 35
    move-object/from16 v16, v7

    .line 36
    .line 37
    iget-object v7, v0, Leg5;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    .line 39
    move-object/from16 v17, v8

    .line 40
    .line 41
    iget-object v8, v0, Leg5;->i:Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    if-ge v1, v3, :cond_1

    .line 44
    .line 45
    move/from16 v18, v1

    .line 46
    .line 47
    :try_start_0
    new-instance v1, Lzf5;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    move-object/from16 v3, v16

    .line 50
    .line 51
    move-object/from16 v15, v17

    .line 52
    .line 53
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lzf5;-><init>(Lpg5;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Lvx0;Ljava/util/List;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v15, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    add-int/lit8 v1, v18, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string v1, "uploadExecutor.submit() returns null; this should not happen"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :catch_1
    move-exception v0

    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :catchall_1
    move-exception v0

    .line 83
    move-object/from16 v15, v17

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :catch_2
    move-exception v0

    .line 88
    :goto_1
    move-object/from16 v15, v17

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :catch_3
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v1, v4

    .line 95
    move-object v2, v5

    .line 96
    move-object/from16 v18, v8

    .line 97
    .line 98
    move-object/from16 v0, v16

    .line 99
    .line 100
    move-object/from16 v15, v17

    .line 101
    .line 102
    move-object/from16 v17, v7

    .line 103
    .line 104
    new-instance v4, Lwf8$b;

    .line 105
    .line 106
    move v5, v3

    .line 107
    new-instance v3, Lwf8;

    .line 108
    .line 109
    move-object v7, v6

    .line 110
    iget v6, v11, Lhx5;->i:I

    .line 111
    .line 112
    iget-object v8, v11, Lhx5;->g:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-static {v8, v13, v14}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    move-object/from16 v19, v9

    .line 119
    .line 120
    move-object v9, v4

    .line 121
    move-object/from16 v4, v19

    .line 122
    .line 123
    move-object/from16 v19, v10

    .line 124
    .line 125
    move v10, v5

    .line 126
    move-object/from16 v5, v19

    .line 127
    .line 128
    move-object/from16 v19, v12

    .line 129
    .line 130
    move-object v12, v7

    .line 131
    move-object/from16 v7, v19

    .line 132
    .line 133
    invoke-direct/range {v3 .. v8}, Lwf8;-><init>(Ldc6;Ljava/lang/String;ILox0;Lv64$c;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v9, v3}, Lwf8$b;-><init>(Lwf8;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    iget v3, v11, Lhx5;->i:I

    .line 143
    .line 144
    iget v6, v11, Lhx5;->f:I

    .line 145
    .line 146
    if-eq v3, v6, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    invoke-virtual {v2}, Lvx0;->a()Lox0;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v11, v7}, Lhx5;->a(Lox0;)V

    .line 159
    .line 160
    .line 161
    new-instance v9, Lwf8$b;

    .line 162
    .line 163
    new-instance v3, Lwf8;

    .line 164
    .line 165
    iget v6, v11, Lhx5;->i:I

    .line 166
    .line 167
    iget-object v8, v11, Lhx5;->g:Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-static {v8, v13, v14}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-direct/range {v3 .. v8}, Lwf8;-><init>(Ldc6;Ljava/lang/String;ILox0;Lv64$c;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v9, v3}, Lwf8$b;-><init>(Lwf8;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    const/4 v0, 0x0

    .line 184
    :goto_3
    if-ge v0, v10, :cond_3

    .line 185
    .line 186
    new-instance v2, Lwf8$b;

    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-direct {v2, v3}, Lwf8$b;-><init>(Lwf8;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 199
    .line 200
    .line 201
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    new-instance v0, Lag5;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v12, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lrg5; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .line 221
    .line 222
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    return-object v12

    .line 226
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 227
    .line 228
    const-string v1, "uploadPartsParallelly failed"

    .line 229
    .line 230
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/lang/Throwable;

    .line 235
    .line 236
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-wide/16 v2, 0x1

    .line 244
    .line 245
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    new-instance v2, Lnw1;

    .line 250
    .line 251
    const/4 v3, 0x1

    .line 252
    invoke-direct {v2, v0, v3}, Lnw1;-><init>(Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 256
    .line 257
    .line 258
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lrg5; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :goto_4
    :try_start_3
    new-instance v1, Ljava/util/concurrent/CompletionException;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :goto_5
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    throw v0
.end method
