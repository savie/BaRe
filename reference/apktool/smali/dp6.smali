.class public final Ldp6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Le94;

.field public final c:J

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(JLe94;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ldp6;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ldp6;->b:Le94;

    .line 7
    .line 8
    iput-wide p4, p0, Ldp6;->c:J

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ldp6;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lf07;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lf07;->d:Lm07;

    .line 8
    .line 9
    iget-object v4, v0, Ldp6;->b:Le94;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v5, v1, Lf07;->a:Li07;

    .line 16
    .line 17
    sget-object v6, Lcp6;->a:[I

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    aget v5, v6, v5

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x3

    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x2

    .line 29
    if-eq v5, v8, :cond_3

    .line 30
    .line 31
    if-eq v5, v9, :cond_2

    .line 32
    .line 33
    if-ne v5, v7, :cond_1

    .line 34
    .line 35
    move v5, v9

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    move v5, v8

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v5, v6

    .line 44
    :goto_0
    iget-object v10, v1, Lf07;->b:Lk07;

    .line 45
    .line 46
    sget-object v11, Lcp6;->b:[I

    .line 47
    .line 48
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    aget v10, v11, v10

    .line 53
    .line 54
    const/4 v11, 0x5

    .line 55
    const/4 v12, 0x4

    .line 56
    if-eq v10, v8, :cond_8

    .line 57
    .line 58
    if-eq v10, v9, :cond_7

    .line 59
    .line 60
    if-eq v10, v7, :cond_6

    .line 61
    .line 62
    if-eq v10, v12, :cond_5

    .line 63
    .line 64
    if-ne v10, v11, :cond_4

    .line 65
    .line 66
    move v10, v12

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    move v10, v7

    .line 73
    goto :goto_1

    .line 74
    :cond_6
    move v10, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_7
    move v10, v8

    .line 77
    goto :goto_1

    .line 78
    :cond_8
    move v10, v6

    .line 79
    :goto_1
    iget-object v13, v1, Lf07;->c:Ll07;

    .line 80
    .line 81
    sget-object v14, Lcp6;->c:[I

    .line 82
    .line 83
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    aget v13, v14, v13

    .line 88
    .line 89
    packed-switch v13, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lq;->j()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_0
    const/4 v11, 0x7

    .line 97
    goto :goto_2

    .line 98
    :pswitch_1
    const/4 v11, 0x6

    .line 99
    goto :goto_2

    .line 100
    :pswitch_2
    move v11, v12

    .line 101
    goto :goto_2

    .line 102
    :pswitch_3
    move v11, v7

    .line 103
    goto :goto_2

    .line 104
    :pswitch_4
    move v11, v9

    .line 105
    goto :goto_2

    .line 106
    :pswitch_5
    move v11, v8

    .line 107
    goto :goto_2

    .line 108
    :pswitch_6
    move v11, v6

    .line 109
    :goto_2
    :pswitch_7
    sget-object v12, Lcp6;->d:[I

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    aget v12, v12, v13

    .line 116
    .line 117
    if-eq v12, v8, :cond_b

    .line 118
    .line 119
    if-eq v12, v9, :cond_a

    .line 120
    .line 121
    if-ne v12, v7, :cond_9

    .line 122
    .line 123
    move v6, v9

    .line 124
    goto :goto_3

    .line 125
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_a
    move v6, v8

    .line 130
    :cond_b
    :goto_3
    sget-object v7, Lm07;->Progress:Lm07;

    .line 131
    .line 132
    iget-object v8, v0, Ldp6;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    if-ne v3, v7, :cond_d

    .line 135
    .line 136
    const-wide/16 v12, 0x0

    .line 137
    .line 138
    iget-wide v14, v0, Ldp6;->c:J

    .line 139
    .line 140
    cmp-long v7, v14, v12

    .line 141
    .line 142
    if-lez v7, :cond_d

    .line 143
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v12

    .line 148
    new-instance v3, Lbp6;

    .line 149
    .line 150
    invoke-direct {v3, v5, v10, v2}, Lbp6;-><init>(IILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Ljava/lang/Long;

    .line 158
    .line 159
    if-eqz v2, :cond_c

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 162
    .line 163
    .line 164
    move-result-wide v16

    .line 165
    sub-long v16, v12, v16

    .line 166
    .line 167
    cmp-long v2, v16, v14

    .line 168
    .line 169
    if-gez v2, :cond_c

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v8, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_d
    sget-object v7, Lm07;->Completed:Lm07;

    .line 181
    .line 182
    if-ne v3, v7, :cond_e

    .line 183
    .line 184
    new-instance v3, Lbp6;

    .line 185
    .line 186
    invoke-direct {v3, v5, v10, v2}, Lbp6;-><init>(IILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    :cond_e
    :goto_4
    :try_start_0
    iget-wide v2, v0, Ldp6;->a:J

    .line 193
    .line 194
    move v9, v11

    .line 195
    iget-object v11, v1, Lf07;->e:Ljava/lang/String;

    .line 196
    .line 197
    iget-wide v12, v1, Lf07;->f:J

    .line 198
    .line 199
    iget-object v0, v1, Lf07;->g:Ljava/lang/Long;

    .line 200
    .line 201
    if-eqz v0, :cond_f

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    :goto_5
    move-wide v14, v0

    .line 208
    move v7, v5

    .line 209
    move v8, v10

    .line 210
    move v10, v6

    .line 211
    move-wide v5, v2

    .line 212
    goto :goto_6

    .line 213
    :cond_f
    const-wide/16 v0, -0x1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :goto_6
    invoke-interface/range {v4 .. v15}, Le94;->c(JIIIILjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    :catchall_0
    :goto_7
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
