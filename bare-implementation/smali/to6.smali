.class public final synthetic Lto6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ls17;

.field public final synthetic c:Le94;

.field public final synthetic d:Lap6;


# direct methods
.method public synthetic constructor <init>(Lfp6;JLs17;Le94;Lap6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lto6;->a:J

    .line 5
    .line 6
    iput-object p4, p0, Lto6;->b:Ls17;

    .line 7
    .line 8
    iput-object p5, p0, Lto6;->c:Le94;

    .line 9
    .line 10
    iput-object p6, p0, Lto6;->d:Lap6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lto6;->a:J

    .line 4
    .line 5
    iget-object v6, v0, Lto6;->b:Ls17;

    .line 6
    .line 7
    iget-object v3, v0, Lto6;->c:Le94;

    .line 8
    .line 9
    iget-object v7, v0, Lto6;->d:Lap6;

    .line 10
    .line 11
    iget-object v0, v7, Lap6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Lo17;

    .line 21
    .line 22
    invoke-static {v0}, Lo17;->c(Lo17;)Lo17;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v7, v0}, Lfp6;->m(Lap6;Lo17;)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lkh6;

    .line 30
    .line 31
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-static {v7}, Lfp6;->n(Lap6;)V

    .line 35
    .line 36
    .line 37
    iget-wide v4, v6, Ls17;->e:J

    .line 38
    .line 39
    invoke-static {v4, v5}, Lfp6;->s(J)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ldp6;

    .line 43
    .line 44
    iget-wide v4, v6, Ls17;->e:J

    .line 45
    .line 46
    invoke-direct/range {v0 .. v5}, Ldp6;-><init>(JLe94;J)V

    .line 47
    .line 48
    .line 49
    invoke-static {v6}, Ljd4;->I(Ls17;)Lr17;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v9, v3, Lr17;->a:Ljava/io/File;

    .line 54
    .line 55
    iget-object v10, v3, Lr17;->b:Ljava/io/File;

    .line 56
    .line 57
    iget-object v11, v3, Lr17;->c:Lf27;

    .line 58
    .line 59
    iget-object v12, v3, Lr17;->d:Ljava/util/List;

    .line 60
    .line 61
    iget-wide v13, v6, Ls17;->e:J

    .line 62
    .line 63
    new-instance v15, Lrn1;

    .line 64
    .line 65
    const/4 v3, 0x6

    .line 66
    invoke-direct {v15, v7, v3}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Luo6;

    .line 70
    .line 71
    invoke-direct {v3, v8, v0}, Luo6;-><init>(Lkh6;Ldp6;)V

    .line 72
    .line 73
    .line 74
    move-object/from16 v16, v3

    .line 75
    .line 76
    invoke-static/range {v9 .. v16}, Lz85;->h(Ljava/io/File;Ljava/io/File;Lf27;Ljava/util/List;JLny6;Lh07;)Ld27;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v3, Lo17;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 81
    .line 82
    move-object v4, v7

    .line 83
    :try_start_1
    iget-object v7, v6, Ls17;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 84
    .line 85
    move-object v5, v8

    .line 86
    :try_start_2
    iget-wide v8, v0, Ld27;->a:J

    .line 87
    .line 88
    invoke-virtual {v4}, Lap6;->a()J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    iget-wide v13, v0, Ld27;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 93
    .line 94
    move-wide v15, v1

    .line 95
    :try_start_3
    iget-wide v1, v0, Ld27;->c:J

    .line 96
    .line 97
    move-wide/from16 v17, v1

    .line 98
    .line 99
    iget-wide v1, v0, Ld27;->d:J

    .line 100
    .line 101
    move-wide/from16 v19, v1

    .line 102
    .line 103
    iget-wide v1, v0, Ld27;->e:J

    .line 104
    .line 105
    move-wide/from16 v21, v1

    .line 106
    .line 107
    iget-wide v1, v0, Ld27;->f:J

    .line 108
    .line 109
    move-wide/from16 v23, v1

    .line 110
    .line 111
    iget-wide v1, v0, Ld27;->g:J

    .line 112
    .line 113
    move-wide/from16 v25, v1

    .line 114
    .line 115
    iget-wide v1, v0, Ld27;->h:J

    .line 116
    .line 117
    move-wide/from16 v27, v1

    .line 118
    .line 119
    iget-wide v0, v0, Ld27;->i:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    .line 121
    const/16 v29, 0x8

    .line 122
    .line 123
    move-wide/from16 v37, v27

    .line 124
    .line 125
    move-wide/from16 v27, v0

    .line 126
    .line 127
    move-wide v1, v15

    .line 128
    move-wide/from16 v15, v17

    .line 129
    .line 130
    move-wide/from16 v17, v19

    .line 131
    .line 132
    move-wide/from16 v19, v21

    .line 133
    .line 134
    move-wide/from16 v21, v23

    .line 135
    .line 136
    move-wide/from16 v23, v25

    .line 137
    .line 138
    move-wide/from16 v25, v37

    .line 139
    .line 140
    move-object v0, v3

    .line 141
    const/4 v3, 0x2

    .line 142
    move-object v12, v4

    .line 143
    const/4 v4, 0x0

    .line 144
    move-object/from16 v30, v5

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    move-object/from16 v31, v6

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    move-object/from16 v32, v12

    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    move-object/from16 v34, v30

    .line 154
    .line 155
    move-object/from16 v33, v31

    .line 156
    .line 157
    move-object/from16 v35, v32

    .line 158
    .line 159
    :try_start_4
    invoke-direct/range {v0 .. v29}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    .line 161
    .line 162
    move-object/from16 v3, v35

    .line 163
    .line 164
    :try_start_5
    invoke-static {v3, v0}, Lfp6;->m(Lap6;Lo17;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_1

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    move-object/from16 v3, v35

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_2
    move-exception v0

    .line 175
    move-object v3, v4

    .line 176
    move-object/from16 v34, v5

    .line 177
    .line 178
    move-object/from16 v33, v6

    .line 179
    .line 180
    move-wide v1, v15

    .line 181
    goto :goto_1

    .line 182
    :catchall_3
    move-exception v0

    .line 183
    move-object v3, v4

    .line 184
    move-object/from16 v34, v5

    .line 185
    .line 186
    move-object/from16 v33, v6

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :catchall_4
    move-exception v0

    .line 190
    move-object v3, v4

    .line 191
    move-object/from16 v33, v6

    .line 192
    .line 193
    :goto_0
    move-object/from16 v34, v8

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catchall_5
    move-exception v0

    .line 197
    move-object/from16 v33, v6

    .line 198
    .line 199
    move-object v3, v7

    .line 200
    goto :goto_0

    .line 201
    :goto_1
    instance-of v4, v0, Lzz6;

    .line 202
    .line 203
    if-eqz v4, :cond_0

    .line 204
    .line 205
    const/4 v4, 0x4

    .line 206
    :goto_2
    move-object v5, v0

    .line 207
    goto :goto_3

    .line 208
    :cond_0
    const/4 v4, 0x3

    .line 209
    goto :goto_2

    .line 210
    :goto_3
    new-instance v0, Lo17;

    .line 211
    .line 212
    move-object/from16 v32, v3

    .line 213
    .line 214
    move v3, v4

    .line 215
    invoke-static {v5}, Lfp6;->p(Ljava/lang/Throwable;)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    move-object v6, v5

    .line 220
    invoke-static {v6}, Lfp6;->q(Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object/from16 v7, v33

    .line 229
    .line 230
    iget-object v7, v7, Ls17;->b:Ljava/lang/String;

    .line 231
    .line 232
    move-object/from16 v8, v34

    .line 233
    .line 234
    iget-wide v8, v8, Lkh6;->a:J

    .line 235
    .line 236
    invoke-virtual/range {v32 .. v32}, Lap6;->a()J

    .line 237
    .line 238
    .line 239
    move-result-wide v10

    .line 240
    const-wide/16 v27, 0x0

    .line 241
    .line 242
    const v29, 0x1fe00

    .line 243
    .line 244
    .line 245
    const/4 v12, 0x0

    .line 246
    const-wide/16 v13, 0x0

    .line 247
    .line 248
    const-wide/16 v15, 0x0

    .line 249
    .line 250
    const-wide/16 v17, 0x0

    .line 251
    .line 252
    const-wide/16 v19, 0x0

    .line 253
    .line 254
    const-wide/16 v21, 0x0

    .line 255
    .line 256
    const-wide/16 v23, 0x0

    .line 257
    .line 258
    const-wide/16 v25, 0x0

    .line 259
    .line 260
    move-object/from16 v36, v32

    .line 261
    .line 262
    invoke-direct/range {v0 .. v29}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v3, v36

    .line 266
    .line 267
    invoke-static {v3, v0}, Lfp6;->m(Lap6;Lo17;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method
