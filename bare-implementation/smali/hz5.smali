.class public final synthetic Lhz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lwz5;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/tasks/Task;

.field public final synthetic d:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lwz5;JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhz5;->a:Lwz5;

    .line 5
    .line 6
    iput-wide p2, p0, Lhz5;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lhz5;->c:Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    iput-object p5, p0, Lhz5;->d:Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object v4, p0, Lhz5;->a:Lwz5;

    .line 4
    .line 5
    iget-object p1, v4, Lwz5;->y:Lu00;

    .line 6
    .line 7
    iget-wide v0, v4, Lwz5;->B:J

    .line 8
    .line 9
    iget-wide v2, p0, Lhz5;->b:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    if-nez v0, :cond_7

    .line 16
    .line 17
    iget-object v0, v4, Lwz5;->h:Lrz5;

    .line 18
    .line 19
    sget-object v1, Lrz5;->b:Lrz5;

    .line 20
    .line 21
    if-ne v0, v1, :cond_5

    .line 22
    .line 23
    const-string v0, "Successfully fetched token, opening connection"

    .line 24
    .line 25
    new-array v2, v8, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v7, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lhz5;->c:Lcom/google/android/gms/tasks/Task;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    iget-object p0, p0, Lhz5;->d:Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    move-object v6, p0

    .line 45
    check-cast v6, Ljava/lang/String;

    .line 46
    .line 47
    iget-object p0, v4, Lwz5;->h:Lrz5;

    .line 48
    .line 49
    if-ne p0, v1, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v0, v8

    .line 54
    :goto_0
    const-string v1, "Trying to open network connection while in the wrong state: %s"

    .line 55
    .line 56
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, v1, p0}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p0, v4, Lwz5;->a:Lwj6;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-object v0, Lvs1;->c:Lm61;

    .line 71
    .line 72
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iput-object p1, v4, Lwz5;->q:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v6, v4, Lwz5;->s:Ljava/lang/String;

    .line 80
    .line 81
    sget-object p0, Lrz5;->c:Lrz5;

    .line 82
    .line 83
    iput-object p0, v4, Lwz5;->h:Lrz5;

    .line 84
    .line 85
    new-instance v0, Lvr1;

    .line 86
    .line 87
    iget-object v1, v4, Lwz5;->u:Lyr1;

    .line 88
    .line 89
    iget-object v2, v4, Lwz5;->b:Lf64;

    .line 90
    .line 91
    iget-object v3, v4, Lwz5;->c:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v5, v4, Lwz5;->A:Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct/range {v0 .. v6}, Lvr1;-><init>(Lyr1;Lf64;Ljava/lang/String;Lwz5;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v4, Lwz5;->g:Lvr1;

    .line 99
    .line 100
    iget-object p0, v0, Lvr1;->f:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Lu00;

    .line 103
    .line 104
    invoke-virtual {p0}, Lu00;->e()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    const-string p1, "Opening a connection"

    .line 111
    .line 112
    new-array v1, v8, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {p0, p1, v7, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object p0, v0, Lvr1;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lnr8;

    .line 120
    .line 121
    iget-object p1, p0, Lnr8;->a:Lc00;

    .line 122
    .line 123
    iget-object v0, p1, Lc00;->b:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v1, v0

    .line 126
    check-cast v1, Lar8;

    .line 127
    .line 128
    iget-object p1, p1, Lc00;->c:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lnr8;

    .line 131
    .line 132
    iget-object p1, p1, Lnr8;->j:Lu00;

    .line 133
    .line 134
    :try_start_0
    invoke-virtual {v1}, Lar8;->c()V
    :try_end_0
    .catch Lbr8; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {p1}, Lu00;->e()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_3

    .line 144
    .line 145
    const-string v2, "Error connecting"

    .line 146
    .line 147
    new-array v3, v8, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {p1, v2, v0, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {v1}, Lar8;->a()V

    .line 153
    .line 154
    .line 155
    :try_start_1
    iget-object v0, v1, Lar8;->g:Ldr8;

    .line 156
    .line 157
    iget-object v2, v0, Ldr8;->g:Ljava/lang/Thread;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 164
    .line 165
    if-eq v2, v3, :cond_4

    .line 166
    .line 167
    iget-object v0, v0, Ldr8;->g:Ljava/lang/Thread;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object v0, v1, Lar8;->k:Ljava/lang/Thread;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string v1, "Interrupted while shutting down websocket threads"

    .line 180
    .line 181
    invoke-virtual {p1, v1, v0}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    iget-object p1, p0, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 185
    .line 186
    new-instance v0, Lib0;

    .line 187
    .line 188
    const/16 v1, 0xb

    .line 189
    .line 190
    invoke-direct {v0, p0, v1}, Lib0;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v1, 0x7530

    .line 194
    .line 195
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    .line 197
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lnr8;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    sget-object p0, Lrz5;->a:Lrz5;

    .line 205
    .line 206
    if-ne v0, p0, :cond_6

    .line 207
    .line 208
    const-string p0, "Not opening connection after token refresh, because connection was set to disconnected"

    .line 209
    .line 210
    new-array v0, v8, [Ljava/lang/Object;

    .line 211
    .line 212
    invoke-virtual {p1, p0, v7, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    return-void

    .line 216
    :cond_7
    const-string p0, "Ignoring getToken result, because this was not the latest attempt."

    .line 217
    .line 218
    new-array v0, v8, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {p1, p0, v7, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method
