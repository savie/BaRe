.class public final synthetic Liq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lmq;

.field public final synthetic b:Lfo2;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Lgz;

.field public final synthetic e:Lkh6;

.field public final synthetic f:J

.field public final synthetic k:Lkh6;


# direct methods
.method public synthetic constructor <init>(Lmq;Lfo2;Ljava/util/concurrent/ConcurrentHashMap;Lgz;Lkh6;JLkh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liq;->a:Lmq;

    .line 5
    .line 6
    iput-object p2, p0, Liq;->b:Lfo2;

    .line 7
    .line 8
    iput-object p3, p0, Liq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iput-object p4, p0, Liq;->d:Lgz;

    .line 11
    .line 12
    iput-object p5, p0, Liq;->e:Lkh6;

    .line 13
    .line 14
    iput-wide p6, p0, Liq;->f:J

    .line 15
    .line 16
    iput-object p8, p0, Liq;->k:Lkh6;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v4, p0, Liq;->a:Lmq;

    .line 2
    .line 3
    iget-boolean v0, v4, Lmq;->i:Z

    .line 4
    .line 5
    iget-object v8, v4, Lmq;->j:Lkq;

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, v8, Lkq;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, v8, Lkq;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, v8, Lkq;->c:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljq;

    .line 24
    .line 25
    iget-object v1, p0, Liq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    iget-object v2, p0, Liq;->d:Lgz;

    .line 28
    .line 29
    iget-object v3, p0, Liq;->e:Lkh6;

    .line 30
    .line 31
    iget-wide v5, p0, Liq;->f:J

    .line 32
    .line 33
    iget-object v7, p0, Liq;->k:Lkh6;

    .line 34
    .line 35
    invoke-direct/range {v0 .. v7}, Ljq;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lgz;Lkh6;Lmq;JLkh6;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lp93;->a:Lp93;

    .line 39
    .line 40
    iget-object p0, p0, Liq;->b:Lfo2;

    .line 41
    .line 42
    iget-wide v1, p0, Lfo2;->c:J

    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 53
    .line 54
    invoke-virtual {p0}, Lfo2;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, " ("

    .line 59
    .line 60
    const-string v5, ")"

    .line 61
    .line 62
    const-string v6, "Downloading "

    .line 63
    .line 64
    invoke-static {v6, v2, v3, v1, v5}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    const/4 v13, 0x4

    .line 69
    const/4 v14, 0x0

    .line 70
    const-string v10, "AppDownloadTask"

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Ltb1;->a:Ltb1;

    .line 77
    .line 78
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, p0}, Ltb1;->c(Lfo2;)Lno2;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :try_start_0
    iget-object v2, v4, Lmq;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v2, Lk3;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-direct {v2, v0, v3}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    iput-object v2, v1, Lno2;->f:Lmt3;

    .line 98
    .line 99
    invoke-virtual {v1}, Lno2;->b()Lke;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lke;->e()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    iget-wide v3, p0, Lfo2;->c:J

    .line 110
    .line 111
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Ljq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object p0, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, v4, Lmq;->e:Lji;

    .line 123
    .line 124
    invoke-virtual {v0}, Lji;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2}, Lke;->b()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ": "

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, v8, Lkq;->a:Ljava/lang/String;

    .line 153
    .line 154
    :goto_0
    invoke-virtual {v2}, Lke;->e()Z

    .line 155
    .line 156
    .line 157
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 159
    .line 160
    .line 161
    if-eqz v0, :cond_2

    .line 162
    .line 163
    invoke-virtual {p0}, Lfo2;->a()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string v0, "Downloaded "

    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    const/4 v13, 0x4

    .line 174
    const/4 v14, 0x0

    .line 175
    const-string v10, "AppDownloadTask"

    .line 176
    .line 177
    const/4 v12, 0x0

    .line 178
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_2
    invoke-virtual {p0}, Lfo2;->a()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    const-string v0, "Failed to download "

    .line 187
    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    const/4 v13, 0x4

    .line 193
    const/4 v14, 0x0

    .line 194
    const-string v10, "AppDownloadTask"

    .line 195
    .line 196
    const/4 v12, 0x0

    .line 197
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_3
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 208
    .line 209
    return-object p0
.end method
