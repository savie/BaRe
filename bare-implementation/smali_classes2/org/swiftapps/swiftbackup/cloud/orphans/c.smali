.class public final Lorg/swiftapps/swiftbackup/cloud/orphans/c;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Ljd4;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkc;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

.field public final synthetic k:J

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic p:J

.field public final synthetic q:Lqh4;


# direct methods
.method public constructor <init>(Lkc;Ljava/util/ArrayList;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->d:Lkc;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->f:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 6
    .line 7
    iput-wide p4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 8
    .line 9
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->n:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p7, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->p:J

    .line 12
    .line 13
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->q:Lqh4;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p10}, Lws7;-><init>(ILjv1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 11

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;

    .line 2
    .line 3
    iget-wide v7, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->p:J

    .line 4
    .line 5
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->q:Lqh4;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->d:Lkc;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->f:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 12
    .line 13
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 14
    .line 15
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->n:Ljava/lang/String;

    .line 16
    .line 17
    move-object v10, p2

    .line 18
    invoke-direct/range {v0 .. v10}, Lorg/swiftapps/swiftbackup/cloud/orphans/c;-><init>(Lkc;Ljava/util/ArrayList;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 22
    .line 23
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
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lxx1;

    .line 6
    .line 7
    iget v1, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->b:I

    .line 8
    .line 9
    iget-object v4, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->n:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v7, 0x4

    .line 12
    const/4 v8, 0x3

    .line 13
    const/4 v9, 0x2

    .line 14
    const/4 v10, 0x1

    .line 15
    iget-object v11, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->d:Lkc;

    .line 16
    .line 17
    sget-object v12, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    iget-object v13, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->q:Lqh4;

    .line 20
    .line 21
    iget-wide v14, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->p:J

    .line 22
    .line 23
    iget-object v2, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->f:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    sget-object v5, Lyx1;->a:Lyx1;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    if-eq v1, v10, :cond_3

    .line 31
    .line 32
    if-eq v1, v9, :cond_2

    .line 33
    .line 34
    if-eq v1, v8, :cond_1

    .line 35
    .line 36
    if-ne v1, v7, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object v1, v2

    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v3

    .line 56
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v0, p1

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    move-object/from16 v0, p1

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_3
    iget-object v1, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->a:Ljd4;

    .line 73
    .line 74
    :try_start_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    move-object v7, v1

    .line 78
    move-object v1, v2

    .line 79
    move-object v8, v3

    .line 80
    move-object v10, v5

    .line 81
    move-object/from16 v2, p1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :try_start_3
    iget-object v1, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->e:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v11, v1}, Lkc;->a(Ljava/util/ArrayList;)Ljd4;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0}, Ll73;->t(Lxx1;)Z

    .line 94
    .line 95
    .line 96
    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    if-nez v16, :cond_5

    .line 98
    .line 99
    invoke-static {v2, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 100
    .line 101
    .line 102
    return-object v12

    .line 103
    :cond_5
    move-object/from16 v16, v2

    .line 104
    .line 105
    move-object/from16 v17, v3

    .line 106
    .line 107
    :try_start_4
    iget-wide v2, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 108
    .line 109
    move-object/from16 v18, v5

    .line 110
    .line 111
    new-instance v5, Lcl;

    .line 112
    .line 113
    const/16 v7, 0xa

    .line 114
    .line 115
    invoke-direct {v5, v7}, Lcl;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iput-object v0, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v1, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->a:Ljd4;

    .line 121
    .line 122
    iput v10, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    .line 124
    move-object v7, v1

    .line 125
    move-object/from16 v1, v16

    .line 126
    .line 127
    move-object/from16 v8, v17

    .line 128
    .line 129
    move-object/from16 v10, v18

    .line 130
    .line 131
    :try_start_5
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-ne v2, v10, :cond_6

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_6
    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    if-nez v2, :cond_7

    .line 146
    .line 147
    invoke-static {v1, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 148
    .line 149
    .line 150
    return-object v12

    .line 151
    :cond_7
    :try_start_6
    sget-object v2, Lai1;->i:Lai1;

    .line 152
    .line 153
    invoke-static {v7, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_9

    .line 158
    .line 159
    iget-wide v2, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 160
    .line 161
    new-instance v5, Lck;

    .line 162
    .line 163
    const/16 v0, 0xe

    .line 164
    .line 165
    invoke-direct {v5, v1, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    iput-object v8, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v8, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->a:Ljd4;

    .line 171
    .line 172
    iput v9, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->b:I

    .line 173
    .line 174
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-ne v0, v10, :cond_8

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_9
    instance-of v2, v7, Lbi1;

    .line 191
    .line 192
    if-eqz v2, :cond_c

    .line 193
    .line 194
    invoke-virtual {v11}, Lkc;->b()Lpe4;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v0}, Ll73;->t(Lxx1;)Z

    .line 199
    .line 200
    .line 201
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    if-nez v0, :cond_a

    .line 203
    .line 204
    invoke-static {v1, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 205
    .line 206
    .line 207
    return-object v12

    .line 208
    :cond_a
    :try_start_7
    iget-wide v8, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 209
    .line 210
    new-instance v5, Lv20;

    .line 211
    .line 212
    check-cast v7, Lbi1;

    .line 213
    .line 214
    const/4 v0, 0x1

    .line 215
    invoke-direct {v5, v0, v1, v2, v7}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    iput-object v3, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v3, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->a:Ljd4;

    .line 222
    .line 223
    const/4 v0, 0x3

    .line 224
    iput v0, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->b:I

    .line 225
    .line 226
    move-wide v2, v8

    .line 227
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-ne v0, v10, :cond_b

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_c
    instance-of v2, v7, Lci1;

    .line 241
    .line 242
    if-eqz v2, :cond_f

    .line 243
    .line 244
    invoke-virtual {v11}, Lkc;->b()Lpe4;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v0}, Ll73;->t(Lxx1;)Z

    .line 249
    .line 250
    .line 251
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 252
    if-nez v0, :cond_d

    .line 253
    .line 254
    invoke-static {v1, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 255
    .line 256
    .line 257
    return-object v12

    .line 258
    :cond_d
    :try_start_8
    iget-wide v8, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->k:J

    .line 259
    .line 260
    new-instance v5, Lxh1;

    .line 261
    .line 262
    check-cast v7, Lci1;

    .line 263
    .line 264
    invoke-direct {v5, v1, v2, v7}, Lxh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;Lpe4;Lci1;)V

    .line 265
    .line 266
    .line 267
    const/4 v3, 0x0

    .line 268
    iput-object v3, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->c:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v3, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->a:Ljd4;

    .line 271
    .line 272
    const/4 v0, 0x4

    .line 273
    iput v0, v6, Lorg/swiftapps/swiftbackup/cloud/orphans/c;->b:I

    .line 274
    .line 275
    move-wide v2, v8

    .line 276
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-ne v0, v10, :cond_e

    .line 281
    .line 282
    :goto_3
    return-object v10

    .line 283
    :cond_e
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 286
    .line 287
    .line 288
    :goto_5
    invoke-static {v1, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 289
    .line 290
    .line 291
    return-object v12

    .line 292
    :cond_f
    :try_start_9
    new-instance v0, Lmn5;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 295
    .line 296
    .line 297
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 298
    :catchall_2
    move-exception v0

    .line 299
    move-object/from16 v1, v16

    .line 300
    .line 301
    :goto_6
    invoke-static {v1, v14, v15, v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 302
    .line 303
    .line 304
    throw v0
.end method
