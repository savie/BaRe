.class public final synthetic Lfm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lim3;

.field public final synthetic b:Lfo2;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Lkh6;

.field public final synthetic e:J

.field public final synthetic f:Lkh6;


# direct methods
.method public synthetic constructor <init>(JLfo2;Lim3;Lkh6;Lkh6;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lfm3;->a:Lim3;

    .line 5
    .line 6
    iput-object p3, p0, Lfm3;->b:Lfo2;

    .line 7
    .line 8
    iput-object p7, p0, Lfm3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iput-object p5, p0, Lfm3;->d:Lkh6;

    .line 11
    .line 12
    iput-wide p1, p0, Lfm3;->e:J

    .line 13
    .line 14
    iput-object p6, p0, Lfm3;->f:Lkh6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v4, p0, Lfm3;->a:Lim3;

    .line 2
    .line 3
    iget-boolean v0, v4, Lim3;->e:Z

    .line 4
    .line 5
    iget-object v8, v4, Lim3;->f:Lhm3;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, v8, Lhm3;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lgm3;

    .line 14
    .line 15
    iget-wide v1, p0, Lfm3;->e:J

    .line 16
    .line 17
    iget-object v3, p0, Lfm3;->b:Lfo2;

    .line 18
    .line 19
    iget-object v5, p0, Lfm3;->d:Lkh6;

    .line 20
    .line 21
    iget-object v6, p0, Lfm3;->f:Lkh6;

    .line 22
    .line 23
    iget-object v7, p0, Lfm3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lgm3;-><init>(JLfo2;Lim3;Lkh6;Lkh6;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lp93;->a:Lp93;

    .line 29
    .line 30
    iget-wide v1, v3, Lfo2;->c:J

    .line 31
    .line 32
    iget-object p0, v3, Lfo2;->d:Lq63;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v5, " ("

    .line 49
    .line 50
    const-string v6, ")"

    .line 51
    .line 52
    const-string v7, "Downloading "

    .line 53
    .line 54
    invoke-static {v7, v2, v5, v1, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const/4 v13, 0x4

    .line 59
    const/4 v14, 0x0

    .line 60
    const-string v10, "FolderDownloadTask"

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Ltb1;->a:Ltb1;

    .line 67
    .line 68
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Ltb1;->c(Lfo2;)Lno2;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :try_start_0
    iget-object v2, v4, Lim3;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v2, Lpx;

    .line 82
    .line 83
    const/4 v5, 0x7

    .line 84
    invoke-direct {v2, v0, v5}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    iput-object v2, v1, Lno2;->f:Lmt3;

    .line 88
    .line 89
    invoke-virtual {v1}, Lno2;->b()Lke;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lke;->e()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_0

    .line 98
    .line 99
    iget-wide v3, v3, Lfo2;->c:J

    .line 100
    .line 101
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Lgm3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object p0, v0

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, v4, Lim3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 113
    .line 114
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v2}, Lke;->b()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, ": "

    .line 135
    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, v8, Lhm3;->a:Ljava/lang/String;

    .line 147
    .line 148
    :goto_0
    invoke-virtual {v2}, Lke;->e()Z

    .line 149
    .line 150
    .line 151
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string v0, "Downloaded "

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const/4 v13, 0x4

    .line 168
    const/4 v14, 0x0

    .line 169
    const-string v10, "FolderDownloadTask"

    .line 170
    .line 171
    const/4 v12, 0x0

    .line 172
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lq63;->p()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const-string v0, "Failed to download "

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    const/4 v13, 0x4

    .line 187
    const/4 v14, 0x0

    .line 188
    const-string v10, "FolderDownloadTask"

    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_2
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 202
    .line 203
    return-object p0
.end method
