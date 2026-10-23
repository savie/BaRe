.class public final Luj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lzc2;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:Lwj6;

.field public final synthetic d:Lwj6;


# direct methods
.method public constructor <init>(Lwj6;Lzc2;Lcom/google/android/gms/tasks/TaskCompletionSource;Lwj6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luj6;->d:Lwj6;

    .line 5
    .line 6
    iput-object p2, p0, Luj6;->a:Lzc2;

    .line 7
    .line 8
    iput-object p3, p0, Luj6;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    iput-object p4, p0, Luj6;->c:Lwj6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Luj6;->d:Lwj6;

    .line 2
    .line 3
    iget-object v1, v0, Lwj6;->n:Lbv7;

    .line 4
    .line 5
    iget-object v2, v0, Lwj6;->h:Luc2;

    .line 6
    .line 7
    iget-object v7, p0, Luj6;->a:Lzc2;

    .line 8
    .line 9
    iget-object v3, v7, Lzc2;->a:Lwj6;

    .line 10
    .line 11
    iget-object v4, v7, Lzc2;->b:Lgy5;

    .line 12
    .line 13
    invoke-virtual {v7}, Lzc2;->f()Lqc6;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, v1, Lbv7;->g:Leo5;

    .line 18
    .line 19
    new-instance v8, Lmu7;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    invoke-direct {v8, v9, v1, v5}, Lmu7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v8}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lqn5;

    .line 30
    .line 31
    iget-object v5, p0, Luj6;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance p0, Lzc2;

    .line 36
    .line 37
    invoke-direct {p0, v3, v4}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Leb2;

    .line 45
    .line 46
    invoke-direct {v1, p0, v0}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-object v1, v0, Lwj6;->n:Lbv7;

    .line 54
    .line 55
    invoke-virtual {v7}, Lzc2;->f()Lqc6;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v8, v1, Lbv7;->g:Leo5;

    .line 60
    .line 61
    new-instance v9, Lou7;

    .line 62
    .line 63
    invoke-direct {v9, v1, v6}, Lou7;-><init>(Lbv7;Lqc6;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v9}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lwj6;->n:Lbv7;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v6, Lzc2;

    .line 75
    .line 76
    invoke-direct {v6, v3, v4}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Lbv7;->g:Leo5;

    .line 80
    .line 81
    invoke-virtual {v7}, Lzc2;->f()Lqc6;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Leo5;->b(Lqc6;)Lgz0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v1, v1, Lgz0;->a:Lsb4;

    .line 90
    .line 91
    move-object v3, v6

    .line 92
    new-instance v6, Leb2;

    .line 93
    .line 94
    invoke-direct {v6, v3, v1}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 98
    .line 99
    invoke-interface {v1}, Lqn5;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_1

    .line 104
    .line 105
    new-instance v1, Lz22;

    .line 106
    .line 107
    const/16 v3, 0x8

    .line 108
    .line 109
    invoke-direct {v1, v3, v5, v6}, Lz22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v2, Luc2;->e:Lny1;

    .line 113
    .line 114
    iget-object v3, v3, Lny1;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Llf2;

    .line 117
    .line 118
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    .line 120
    const-wide/16 v9, 0xbb8

    .line 121
    .line 122
    invoke-virtual {v3, v1, v9, v10, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, v0, Lwj6;->c:Lwz5;

    .line 126
    .line 127
    invoke-virtual {v4}, Lgy5;->c()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v7}, Lzc2;->f()Lqc6;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-object v3, v3, Lqc6;->b:Loc6;

    .line 136
    .line 137
    invoke-virtual {v3}, Loc6;->a()Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 145
    .line 146
    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-wide v8, v0, Lwz5;->j:J

    .line 150
    .line 151
    const-wide/16 v10, 0x1

    .line 152
    .line 153
    add-long/2addr v10, v8

    .line 154
    iput-wide v10, v0, Lwz5;->j:J

    .line 155
    .line 156
    new-instance v10, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v11, "p"

    .line 162
    .line 163
    invoke-static {v1}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v1, "q"

    .line 171
    .line 172
    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    new-instance v1, Lsz5;

    .line 176
    .line 177
    new-instance v3, Lkz5;

    .line 178
    .line 179
    invoke-direct {v3, v4}, Lkz5;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v10, v3}, Lsz5;-><init>(Ljava/util/HashMap;Lkz5;)V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Lwz5;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    .line 187
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v3, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lwz5;->h:Lrz5;

    .line 195
    .line 196
    sget-object v3, Lrz5;->e:Lrz5;

    .line 197
    .line 198
    if-ne v1, v3, :cond_2

    .line 199
    .line 200
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lwz5;->k(Ljava/lang/Long;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    invoke-virtual {v0}, Lwz5;->b()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v1, v2, Luc2;->e:Lny1;

    .line 215
    .line 216
    iget-object v1, v1, Lny1;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Llf2;

    .line 219
    .line 220
    new-instance v3, Ltj6;

    .line 221
    .line 222
    iget-object v8, p0, Luj6;->c:Lwj6;

    .line 223
    .line 224
    move-object v4, p0

    .line 225
    invoke-direct/range {v3 .. v8}, Ltj6;-><init>(Luj6;Lcom/google/android/gms/tasks/TaskCompletionSource;Leb2;Lzc2;Lwj6;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 229
    .line 230
    .line 231
    return-void
.end method
