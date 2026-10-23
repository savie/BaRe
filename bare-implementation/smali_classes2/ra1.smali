.class public final Lra1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lsa1;

.field public final synthetic d:J

.field public final synthetic e:Ldd1;

.field public final synthetic f:Lbt3;


# direct methods
.method public constructor <init>(Lsa1;JLdd1;Lbt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lra1;->c:Lsa1;

    .line 2
    .line 3
    iput-wide p2, p0, Lra1;->d:J

    .line 4
    .line 5
    iput-object p4, p0, Lra1;->e:Ldd1;

    .line 6
    .line 7
    iput-object p5, p0, Lra1;->f:Lbt3;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lra1;

    .line 2
    .line 3
    iget-object v4, p0, Lra1;->e:Ldd1;

    .line 4
    .line 5
    iget-object v5, p0, Lra1;->f:Lbt3;

    .line 6
    .line 7
    iget-object v1, p0, Lra1;->c:Lsa1;

    .line 8
    .line 9
    iget-wide v2, p0, Lra1;->d:J

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lra1;-><init>(Lsa1;JLdd1;Lbt3;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lra1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lra1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lra1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lra1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-wide v3, v1, Lra1;->d:J

    .line 6
    .line 7
    iget-object v5, v1, Lra1;->c:Lsa1;

    .line 8
    .line 9
    const-string v6, "Firebase wait failed: "

    .line 10
    .line 11
    iget-object v0, v1, Lra1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v7, v0

    .line 14
    check-cast v7, Lxx1;

    .line 15
    .line 16
    sget-object v8, Lyx1;->a:Lyx1;

    .line 17
    .line 18
    iget v0, v1, Lra1;->a:I

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x2

    .line 22
    const/4 v11, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-eq v0, v11, :cond_1

    .line 26
    .line 27
    if-ne v0, v10, :cond_0

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v9

    .line 39
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    move-object/from16 v0, p1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object v14, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v5}, Lil0;->G()Lqo0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v12, 0x7f1305a1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v12}, Lqo0;->h(I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lgg3;->a:Lgg3;

    .line 65
    .line 66
    iput-object v7, v1, Lra1;->b:Ljava/lang/Object;

    .line 67
    .line 68
    iput v11, v1, Lra1;->a:I

    .line 69
    .line 70
    const-wide/16 v11, 0x4e20

    .line 71
    .line 72
    invoke-virtual {v0, v11, v12, v1}, Lgg3;->k(JLkv1;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-ne v0, v8, :cond_3

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_3
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget-wide v11, v5, Lsa1;->O:J

    .line 86
    .line 87
    cmp-long v6, v3, v11

    .line 88
    .line 89
    if-nez v6, :cond_4

    .line 90
    .line 91
    invoke-virtual {v5}, Lil0;->G()Lqo0;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lqo0;->f()V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    move v15, v0

    .line 99
    goto :goto_3

    .line 100
    :goto_2
    :try_start_2
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    invoke-virtual {v5}, Lk28;->r()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    const/16 v16, 0x8

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    iget-wide v11, v5, Lsa1;->O:J

    .line 131
    .line 132
    cmp-long v0, v3, v11

    .line 133
    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {v5}, Lil0;->G()Lqo0;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lqo0;->f()V

    .line 141
    .line 142
    .line 143
    :cond_5
    const/4 v0, 0x0

    .line 144
    goto :goto_1

    .line 145
    :goto_3
    iget-wide v5, v5, Lsa1;->O:J

    .line 146
    .line 147
    cmp-long v0, v3, v5

    .line 148
    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    invoke-static {v7}, Ll73;->t(Lxx1;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_6
    sget-object v0, Lzn4;->a:Lzn4;

    .line 159
    .line 160
    iget-object v12, v1, Lra1;->c:Lsa1;

    .line 161
    .line 162
    iget-wide v13, v1, Lra1;->d:J

    .line 163
    .line 164
    iget-object v0, v1, Lra1;->e:Ldd1;

    .line 165
    .line 166
    iget-object v3, v1, Lra1;->f:Lbt3;

    .line 167
    .line 168
    new-instance v11, Lqa1;

    .line 169
    .line 170
    move-object/from16 v16, v0

    .line 171
    .line 172
    move-object/from16 v17, v3

    .line 173
    .line 174
    invoke-direct/range {v11 .. v17}, Lqa1;-><init>(Lsa1;JZLdd1;Lbt3;)V

    .line 175
    .line 176
    .line 177
    iput-object v9, v1, Lra1;->b:Ljava/lang/Object;

    .line 178
    .line 179
    iput v10, v1, Lra1;->a:I

    .line 180
    .line 181
    invoke-static {v11, v1}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-ne v0, v8, :cond_8

    .line 186
    .line 187
    :goto_4
    return-object v8

    .line 188
    :goto_5
    iget-wide v1, v5, Lsa1;->O:J

    .line 189
    .line 190
    cmp-long v1, v3, v1

    .line 191
    .line 192
    if-nez v1, :cond_7

    .line 193
    .line 194
    invoke-virtual {v5}, Lil0;->G()Lqo0;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lqo0;->f()V

    .line 199
    .line 200
    .line 201
    :cond_7
    throw v0

    .line 202
    :catch_1
    iget-wide v0, v5, Lsa1;->O:J

    .line 203
    .line 204
    cmp-long v0, v3, v0

    .line 205
    .line 206
    if-nez v0, :cond_8

    .line 207
    .line 208
    invoke-virtual {v5}, Lil0;->G()Lqo0;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lqo0;->f()V

    .line 213
    .line 214
    .line 215
    :cond_8
    :goto_6
    return-object v2
.end method
