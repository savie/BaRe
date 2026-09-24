.class public final synthetic Lrh1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lih6;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrh1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrh1;->c:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-object p2, p0, Lrh1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p3, p0, Lrh1;->b:J

    .line 12
    .line 13
    iput-object p5, p0, Lrh1;->e:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p6, p0, Lrh1;->f:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lkh6;Ljava/util/concurrent/ConcurrentHashMap;Lio3;JLkh6;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lrh1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh1;->c:Ljava/io/Serializable;

    iput-object p2, p0, Lrh1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lrh1;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lrh1;->b:J

    iput-object p6, p0, Lrh1;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lrh1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrh1;->c:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, Lkh6;

    .line 9
    .line 10
    iget-object v1, p0, Lrh1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iget-object v2, p0, Lrh1;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lio3;

    .line 17
    .line 18
    iget-wide v3, p0, Lrh1;->b:J

    .line 19
    .line 20
    iget-object p0, p0, Lrh1;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lkh6;

    .line 23
    .line 24
    sget-object v5, Lbe8;->a:Lbe8;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    iget-wide v8, v0, Lkh6;->a:J

    .line 31
    .line 32
    sub-long/2addr v6, v8

    .line 33
    const-wide/16 v8, 0x7d0

    .line 34
    .line 35
    cmp-long v8, v6, v8

    .line 36
    .line 37
    if-gtz v8, :cond_0

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lel1;->o1(Ljava/util/Collection;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    invoke-static {v8, v9, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-boolean v10, v2, Lio3;->i:Z

    .line 57
    .line 58
    if-nez v10, :cond_1

    .line 59
    .line 60
    if-ltz v1, :cond_1

    .line 61
    .line 62
    const/16 v10, 0x65

    .line 63
    .line 64
    if-ge v1, v10, :cond_1

    .line 65
    .line 66
    iget-object v10, v2, Lio3;->k:Ldk3;

    .line 67
    .line 68
    if-eqz v10, :cond_1

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v10, v1}, Ldk3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-boolean v1, v2, Lio3;->i:Z

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    const-wide/16 v10, 0x0

    .line 82
    .line 83
    cmp-long v1, v8, v10

    .line 84
    .line 85
    if-ltz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, v2, Lio3;->b:Lqp3;

    .line 88
    .line 89
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 90
    .line 91
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    sget-object v11, Lp93;->a:Lp93;

    .line 96
    .line 97
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-static {v11}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    filled-new-array {v11, v3}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const v4, 0x7f13058c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Lpw6;->o(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-wide v3, p0, Lkh6;->a:J

    .line 128
    .line 129
    sub-long v3, v8, v3

    .line 130
    .line 131
    long-to-float v1, v6

    .line 132
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 133
    .line 134
    div-float/2addr v1, v6

    .line 135
    long-to-float v3, v3

    .line 136
    div-float/2addr v3, v1

    .line 137
    invoke-static {v3}, Ltu0;->v(F)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    sget-object v3, Lp93;->a:Lp93;

    .line 142
    .line 143
    int-to-long v3, v1

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    iget-object v1, v2, Lio3;->b:Lqp3;

    .line 152
    .line 153
    monitor-enter v1

    .line 154
    monitor-exit v1

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    iput-wide v1, v0, Lkh6;->a:J

    .line 160
    .line 161
    iput-wide v8, p0, Lkh6;->a:J

    .line 162
    .line 163
    :goto_0
    return-object v5

    .line 164
    :pswitch_0
    iget-object v0, p0, Lrh1;->c:Ljava/io/Serializable;

    .line 165
    .line 166
    check-cast v0, Lih6;

    .line 167
    .line 168
    iget-object v1, p0, Lrh1;->d:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 171
    .line 172
    iget-wide v2, p0, Lrh1;->b:J

    .line 173
    .line 174
    iget-object v4, p0, Lrh1;->e:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v4, Ljava/lang/String;

    .line 177
    .line 178
    iget-object p0, p0, Lrh1;->f:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Lbt3;

    .line 181
    .line 182
    monitor-enter v1

    .line 183
    :try_start_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iget-wide v6, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 188
    .line 189
    cmp-long v2, v2, v6

    .line 190
    .line 191
    if-nez v2, :cond_4

    .line 192
    .line 193
    iget-object v2, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;

    .line 194
    .line 195
    if-nez v2, :cond_4

    .line 196
    .line 197
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_3

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_3
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    .line 207
    monitor-exit v1

    .line 208
    const/4 p0, 0x1

    .line 209
    goto :goto_2

    .line 210
    :catchall_0
    move-exception p0

    .line 211
    goto :goto_3

    .line 212
    :cond_4
    :goto_1
    :try_start_1
    iget-wide v2, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 213
    .line 214
    const-wide/16 v6, 0x1

    .line 215
    .line 216
    add-long/2addr v2, v6

    .line 217
    iput-wide v2, v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 218
    .line 219
    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .line 221
    .line 222
    monitor-exit v1

    .line 223
    const/4 p0, 0x0

    .line 224
    :goto_2
    iput-boolean p0, v0, Lih6;->a:Z

    .line 225
    .line 226
    sget-object p0, Lbe8;->a:Lbe8;

    .line 227
    .line 228
    return-object p0

    .line 229
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    throw p0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
