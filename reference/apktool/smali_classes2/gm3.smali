.class public final synthetic Lgm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic b:Lfo2;

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lim3;

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
    iput-object p7, p0, Lgm3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iput-object p3, p0, Lgm3;->b:Lfo2;

    .line 7
    .line 8
    iput-object p5, p0, Lgm3;->c:Lkh6;

    .line 9
    .line 10
    iput-object p4, p0, Lgm3;->d:Lim3;

    .line 11
    .line 12
    iput-wide p1, p0, Lgm3;->e:J

    .line 13
    .line 14
    iput-object p6, p0, Lgm3;->f:Lkh6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lgm3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lgm3;->b:Lfo2;

    .line 4
    .line 5
    iget-object v2, p0, Lgm3;->c:Lkh6;

    .line 6
    .line 7
    iget-object v3, p0, Lgm3;->d:Lim3;

    .line 8
    .line 9
    iget-wide v4, p0, Lgm3;->e:J

    .line 10
    .line 11
    iget-object p0, p0, Lgm3;->f:Lkh6;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lfo2;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-class p1, Lim3;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    iget-wide v8, v2, Lkh6;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    sub-long/2addr v6, v8

    .line 33
    const-wide/16 v8, 0x7d0

    .line 34
    .line 35
    cmp-long v1, v6, v8

    .line 36
    .line 37
    if-gtz v1, :cond_0

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lel1;->o1(Ljava/util/Collection;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1, v4, v5}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    iget-boolean v9, v3, Lim3;->e:Z

    .line 58
    .line 59
    if-nez v9, :cond_1

    .line 60
    .line 61
    if-ltz v8, :cond_1

    .line 62
    .line 63
    const/16 v9, 0x65

    .line 64
    .line 65
    if-ge v8, v9, :cond_1

    .line 66
    .line 67
    iget-object v9, v3, Lim3;->g:Lpv;

    .line 68
    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v9, v8}, Lpv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-boolean v8, v3, Lim3;->e:Z

    .line 79
    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    cmp-long v8, v0, v8

    .line 85
    .line 86
    if-ltz v8, :cond_3

    .line 87
    .line 88
    cmp-long v8, v0, v4

    .line 89
    .line 90
    if-lez v8, :cond_2

    .line 91
    .line 92
    move-wide v8, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-wide v8, v0

    .line 95
    :goto_0
    iget-object v10, v3, Lim3;->a:Lqp3;

    .line 96
    .line 97
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 98
    .line 99
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    sget-object v12, Lp93;->a:Lp93;

    .line 104
    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    filled-new-array {v8, v4}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const v5, 0x7f13020a

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v10, v4}, Lpw6;->o(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-wide v4, p0, Lkh6;->a:J

    .line 136
    .line 137
    sub-long v4, v0, v4

    .line 138
    .line 139
    long-to-float v6, v6

    .line 140
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 141
    .line 142
    div-float/2addr v6, v7

    .line 143
    long-to-float v4, v4

    .line 144
    div-float/2addr v4, v6

    .line 145
    invoke-static {v4}, Ltu0;->v(F)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    sget-object v5, Lp93;->a:Lp93;

    .line 150
    .line 151
    int-to-long v4, v4

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    iget-object v3, v3, Lim3;->a:Lqp3;

    .line 160
    .line 161
    monitor-enter v3

    .line 162
    monitor-exit v3

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    iput-wide v3, v2, Lkh6;->a:J

    .line 168
    .line 169
    iput-wide v0, p0, Lkh6;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    monitor-exit p1

    .line 172
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 173
    .line 174
    return-object p0

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    throw p0
.end method
