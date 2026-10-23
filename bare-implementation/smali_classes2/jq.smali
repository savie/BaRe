.class public final synthetic Ljq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic b:Lgz;

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lmq;

.field public final synthetic e:J

.field public final synthetic f:Lkh6;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lgz;Lkh6;Lmq;JLkh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Ljq;->b:Lgz;

    .line 7
    .line 8
    iput-object p3, p0, Ljq;->c:Lkh6;

    .line 9
    .line 10
    iput-object p4, p0, Ljq;->d:Lmq;

    .line 11
    .line 12
    iput-wide p5, p0, Ljq;->e:J

    .line 13
    .line 14
    iput-object p7, p0, Ljq;->f:Lkh6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Ljq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Ljq;->b:Lgz;

    .line 4
    .line 5
    iget-object v2, p0, Ljq;->c:Lkh6;

    .line 6
    .line 7
    iget-object v3, p0, Ljq;->d:Lmq;

    .line 8
    .line 9
    iget-wide v4, p0, Ljq;->e:J

    .line 10
    .line 11
    iget-object p0, p0, Ljq;->f:Lkh6;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-class p1, Lmq;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    iget-wide v8, v2, Lkh6;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    sub-long/2addr v6, v8

    .line 31
    const-wide/16 v8, 0x7d0

    .line 32
    .line 33
    cmp-long v1, v6, v8

    .line 34
    .line 35
    if-gtz v1, :cond_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lel1;->o1(Ljava/util/Collection;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1, v4, v5}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-boolean v9, v3, Lmq;->i:Z

    .line 56
    .line 57
    if-nez v9, :cond_1

    .line 58
    .line 59
    if-ltz v8, :cond_1

    .line 60
    .line 61
    const/16 v9, 0x65

    .line 62
    .line 63
    if-ge v8, v9, :cond_1

    .line 64
    .line 65
    iget-object v9, v3, Lmq;->l:Lpv;

    .line 66
    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v9, v8}, Lpv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-boolean v8, v3, Lmq;->i:Z

    .line 77
    .line 78
    if-nez v8, :cond_3

    .line 79
    .line 80
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    cmp-long v8, v0, v8

    .line 83
    .line 84
    if-ltz v8, :cond_3

    .line 85
    .line 86
    cmp-long v8, v0, v4

    .line 87
    .line 88
    if-lez v8, :cond_2

    .line 89
    .line 90
    move-wide v8, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-wide v8, v0

    .line 93
    :goto_0
    iget-object v10, v3, Lmq;->b:Lc40;

    .line 94
    .line 95
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 96
    .line 97
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    sget-object v12, Lp93;->a:Lp93;

    .line 102
    .line 103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    filled-new-array {v8, v4}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const v5, 0x7f13020a

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v10, v4}, Lpw6;->o(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-wide v4, p0, Lkh6;->a:J

    .line 134
    .line 135
    sub-long v4, v0, v4

    .line 136
    .line 137
    long-to-float v6, v6

    .line 138
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 139
    .line 140
    div-float/2addr v6, v7

    .line 141
    long-to-float v4, v4

    .line 142
    div-float/2addr v4, v6

    .line 143
    invoke-static {v4}, Ltu0;->v(F)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    sget-object v5, Lp93;->a:Lp93;

    .line 148
    .line 149
    int-to-long v4, v4

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    iget-object v3, v3, Lmq;->b:Lc40;

    .line 158
    .line 159
    monitor-enter v3

    .line 160
    monitor-exit v3

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    iput-wide v3, v2, Lkh6;->a:J

    .line 166
    .line 167
    iput-wide v0, p0, Lkh6;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    monitor-exit p1

    .line 170
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 171
    .line 172
    return-object p0

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p0
.end method
