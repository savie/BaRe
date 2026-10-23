.class public final Lj41;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lil0;Lwa;Lyf3;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lj41;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lj41;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lj41;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lj41;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 16
    iput p3, p0, Lj41;->a:I

    iput-object p1, p0, Lj41;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lli3;Ll41;Ljv1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj41;->a:I

    .line 15
    iput-object p1, p0, Lj41;->d:Ljava/lang/Object;

    iput-object p2, p0, Lj41;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lj41;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lj41;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lj41;

    .line 9
    .line 10
    check-cast v1, Lmb8;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v1, p2, v0}, Lj41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lj41;->c:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lj41;

    .line 20
    .line 21
    check-cast v1, Ljava/io/File;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, v1, p2, v0}, Lj41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lj41;->c:Ljava/lang/Object;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p1, Lj41;

    .line 31
    .line 32
    iget-object v0, p0, Lj41;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lil0;

    .line 35
    .line 36
    iget-object p0, p0, Lj41;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lwa;

    .line 39
    .line 40
    check-cast v1, Lyf3;

    .line 41
    .line 42
    invoke-direct {p1, v0, p0, v1, p2}, Lj41;-><init>(Lil0;Lwa;Lyf3;Ljv1;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance v0, Lj41;

    .line 47
    .line 48
    iget-object p0, p0, Lj41;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lli3;

    .line 51
    .line 52
    check-cast v1, Ll41;

    .line 53
    .line 54
    invoke-direct {v0, p0, v1, p2}, Lj41;-><init>(Lli3;Ll41;Ljv1;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Lj41;->c:Ljava/lang/Object;

    .line 58
    .line 59
    return-object v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lj41;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lg98;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lj41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lj41;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lj41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lr76;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lj41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lj41;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lj41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lxx1;

    .line 39
    .line 40
    check-cast p2, Ljv1;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lj41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lj41;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lj41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lxx1;

    .line 54
    .line 55
    check-cast p2, Ljv1;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lj41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lj41;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lj41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lj41;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    sget-object v6, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    iget v7, v1, Lj41;->b:I

    .line 17
    .line 18
    if-eqz v7, :cond_2

    .line 19
    .line 20
    if-eq v7, v4, :cond_1

    .line 21
    .line 22
    if-ne v7, v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v1, Lj41;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    iget-object v1, v1, Lj41;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lds5;

    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_a

    .line 39
    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_c

    .line 46
    .line 47
    :cond_1
    iget-object v7, v1, Lj41;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Lg98;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v8, p1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v7, v1, Lj41;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lg98;

    .line 63
    .line 64
    iput-object v7, v1, Lj41;->c:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, v1, Lj41;->b:I

    .line 67
    .line 68
    invoke-interface {v7, v1}, Lg98;->b(Ljv1;)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    if-ne v8, v6, :cond_3

    .line 73
    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_3
    :goto_0
    check-cast v8, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_4

    .line 83
    .line 84
    :goto_1
    move-object v5, v0

    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_4
    iget-object v8, v1, Lj41;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v8, Lmb8;

    .line 90
    .line 91
    iget-object v9, v8, Lmb8;->h:Lds5;

    .line 92
    .line 93
    iget-object v10, v9, Lds5;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    .line 97
    .line 98
    :try_start_1
    iput-boolean v4, v9, Lds5;->f:Z

    .line 99
    .line 100
    iget-object v11, v9, Lds5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 103
    .line 104
    .line 105
    :try_start_2
    iget-boolean v12, v9, Lds5;->d:Z

    .line 106
    .line 107
    if-nez v12, :cond_6

    .line 108
    .line 109
    :cond_5
    move-object v13, v5

    .line 110
    goto :goto_6

    .line 111
    :cond_6
    iput-boolean v2, v9, Lds5;->d:Z

    .line 112
    .line 113
    iget-object v12, v9, Lds5;->b:[J

    .line 114
    .line 115
    array-length v12, v12

    .line 116
    new-array v13, v12, [Lcs5;

    .line 117
    .line 118
    move v14, v2

    .line 119
    move v15, v14

    .line 120
    :goto_2
    if-ge v14, v12, :cond_a

    .line 121
    .line 122
    iget-object v4, v9, Lds5;->b:[J

    .line 123
    .line 124
    aget-wide v16, v4, v14

    .line 125
    .line 126
    const-wide/16 v18, 0x0

    .line 127
    .line 128
    cmp-long v4, v16, v18

    .line 129
    .line 130
    if-lez v4, :cond_7

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_7
    move v4, v2

    .line 135
    :goto_3
    iget-object v2, v9, Lds5;->c:[Z

    .line 136
    .line 137
    aget-boolean v3, v2, v14

    .line 138
    .line 139
    if-eq v4, v3, :cond_9

    .line 140
    .line 141
    aput-boolean v4, v2, v14

    .line 142
    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    sget-object v2, Lcs5;->b:Lcs5;

    .line 146
    .line 147
    :goto_4
    const/4 v15, 0x1

    .line 148
    goto :goto_5

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    goto :goto_d

    .line 151
    :cond_8
    sget-object v2, Lcs5;->c:Lcs5;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    sget-object v2, Lcs5;->a:Lcs5;

    .line 155
    .line 156
    :goto_5
    aput-object v2, v13, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    .line 158
    add-int/lit8 v14, v14, 0x1

    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    const/4 v3, 0x2

    .line 162
    const/4 v4, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_a
    if-eqz v15, :cond_5

    .line 165
    .line 166
    :goto_6
    :try_start_3
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 167
    .line 168
    .line 169
    if-eqz v13, :cond_d

    .line 170
    .line 171
    :try_start_4
    array-length v2, v13

    .line 172
    if-nez v2, :cond_b

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_b
    sget-object v2, Lf98;->b:Lf98;

    .line 176
    .line 177
    new-instance v3, Llb8;

    .line 178
    .line 179
    invoke-direct {v3, v13, v8, v7, v5}, Llb8;-><init>([Lcs5;Lmb8;Lg98;Ljv1;)V

    .line 180
    .line 181
    .line 182
    iput-object v9, v1, Lj41;->c:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v10, v1, Lj41;->d:Ljava/lang/Object;

    .line 185
    .line 186
    const/4 v4, 0x2

    .line 187
    iput v4, v1, Lj41;->b:I

    .line 188
    .line 189
    invoke-interface {v7, v2, v3, v1}, Lg98;->a(Lf98;Lqt3;Lws7;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    if-ne v1, v6, :cond_c

    .line 194
    .line 195
    :goto_7
    move-object v5, v6

    .line 196
    goto :goto_c

    .line 197
    :cond_c
    move-object v1, v9

    .line 198
    move-object v3, v10

    .line 199
    :goto_8
    move-object v9, v1

    .line 200
    move-object v10, v3

    .line 201
    :cond_d
    :goto_9
    const/4 v2, 0x0

    .line 202
    goto :goto_b

    .line 203
    :catchall_2
    move-exception v0

    .line 204
    move-object v1, v9

    .line 205
    move-object v3, v10

    .line 206
    const/4 v2, 0x0

    .line 207
    :goto_a
    :try_start_5
    iput-boolean v2, v1, Lds5;->f:Z

    .line 208
    .line 209
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 210
    :catchall_3
    move-exception v0

    .line 211
    move-object v10, v3

    .line 212
    goto :goto_e

    .line 213
    :goto_b
    :try_start_6
    iput-boolean v2, v9, Lds5;->f:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :goto_c
    return-object v5

    .line 221
    :catchall_4
    move-exception v0

    .line 222
    goto :goto_e

    .line 223
    :goto_d
    :try_start_7
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 227
    :goto_e
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :pswitch_0
    sget-object v0, Lyx1;->a:Lyx1;

    .line 232
    .line 233
    iget v2, v1, Lj41;->b:I

    .line 234
    .line 235
    if-eqz v2, :cond_10

    .line 236
    .line 237
    const/4 v3, 0x1

    .line 238
    if-eq v2, v3, :cond_f

    .line 239
    .line 240
    const/4 v4, 0x2

    .line 241
    if-ne v2, v4, :cond_e

    .line 242
    .line 243
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_12

    .line 247
    .line 248
    :cond_e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 249
    .line 250
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_13

    .line 254
    .line 255
    :cond_f
    iget-object v2, v1, Lj41;->d:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v2, Lqi5;

    .line 258
    .line 259
    iget-object v3, v1, Lj41;->c:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v3, Lr76;

    .line 262
    .line 263
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    const/4 v9, 0x1

    .line 267
    goto :goto_10

    .line 268
    :cond_10
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v1, Lj41;->c:Ljava/lang/Object;

    .line 272
    .line 273
    move-object v3, v2

    .line 274
    check-cast v3, Lr76;

    .line 275
    .line 276
    new-instance v2, Lri5;

    .line 277
    .line 278
    iget-object v4, v1, Lj41;->e:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v4, Ljava/io/File;

    .line 281
    .line 282
    invoke-direct {v2, v4, v3}, Lri5;-><init>(Ljava/io/File;Lr76;)V

    .line 283
    .line 284
    .line 285
    sget-object v6, Lsi5;->b:Ljava/lang/Object;

    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    sget-object v6, Lsi5;->b:Ljava/lang/Object;

    .line 303
    .line 304
    monitor-enter v6

    .line 305
    :try_start_8
    sget-object v7, Lsi5;->c:Ljava/util/LinkedHashMap;

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    if-nez v8, :cond_11

    .line 315
    .line 316
    new-instance v8, Lsi5;

    .line 317
    .line 318
    invoke-direct {v8, v4}, Lsi5;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    goto :goto_f

    .line 325
    :catchall_5
    move-exception v0

    .line 326
    goto :goto_14

    .line 327
    :cond_11
    :goto_f
    check-cast v8, Lsi5;

    .line 328
    .line 329
    iget-object v7, v8, Lsi5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 330
    .line 331
    invoke-virtual {v7, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    iget-object v7, v8, Lsi5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 335
    .line 336
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    const/4 v9, 0x1

    .line 341
    if-ne v7, v9, :cond_12

    .line 342
    .line 343
    invoke-virtual {v8}, Landroid/os/FileObserver;->startWatching()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 344
    .line 345
    .line 346
    :cond_12
    monitor-exit v6

    .line 347
    new-instance v6, Lqi5;

    .line 348
    .line 349
    invoke-direct {v6, v4, v2}, Lqi5;-><init>(Ljava/lang/String;Lri5;)V

    .line 350
    .line 351
    .line 352
    sget-object v2, Lbe8;->a:Lbe8;

    .line 353
    .line 354
    iput-object v3, v1, Lj41;->c:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v6, v1, Lj41;->d:Ljava/lang/Object;

    .line 357
    .line 358
    const/4 v9, 0x1

    .line 359
    iput v9, v1, Lj41;->b:I

    .line 360
    .line 361
    iget-object v4, v3, Lr76;->f:Luw0;

    .line 362
    .line 363
    invoke-interface {v4, v1, v2}, Lc77;->c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-ne v2, v0, :cond_13

    .line 368
    .line 369
    goto :goto_11

    .line 370
    :cond_13
    move-object v2, v6

    .line 371
    :goto_10
    new-instance v4, Lw93;

    .line 372
    .line 373
    invoke-direct {v4, v2, v9}, Lw93;-><init>(Ljava/lang/Object;I)V

    .line 374
    .line 375
    .line 376
    iput-object v5, v1, Lj41;->c:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v5, v1, Lj41;->d:Ljava/lang/Object;

    .line 379
    .line 380
    const/4 v2, 0x2

    .line 381
    iput v2, v1, Lj41;->b:I

    .line 382
    .line 383
    invoke-static {v3, v4, v1}, Lzv1;->a(Lr76;Lw93;Lkv1;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-ne v1, v0, :cond_14

    .line 388
    .line 389
    :goto_11
    move-object v5, v0

    .line 390
    goto :goto_13

    .line 391
    :cond_14
    :goto_12
    sget-object v5, Lbe8;->a:Lbe8;

    .line 392
    .line 393
    :goto_13
    return-object v5

    .line 394
    :goto_14
    monitor-exit v6

    .line 395
    throw v0

    .line 396
    :pswitch_1
    sget-object v2, Lyx1;->a:Lyx1;

    .line 397
    .line 398
    iget v0, v1, Lj41;->b:I

    .line 399
    .line 400
    if-eqz v0, :cond_16

    .line 401
    .line 402
    const/4 v9, 0x1

    .line 403
    if-ne v0, v9, :cond_15

    .line 404
    .line 405
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_1c

    .line 409
    .line 410
    :cond_15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 411
    .line 412
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_1d

    .line 416
    .line 417
    :cond_16
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    sget-object v0, Lgg3;->a:Lgg3;

    .line 421
    .line 422
    :try_start_9
    sget-object v0, Lmp6;->a:Lmp6;

    .line 423
    .line 424
    sget-boolean v3, Lmp6;->g:Z

    .line 425
    .line 426
    if-nez v3, :cond_17

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    const/4 v4, 0x2

    .line 430
    const/4 v9, 0x1

    .line 431
    invoke-static {v0, v9, v3, v4}, Lmp6;->d(Lmp6;ZZI)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_17

    .line 436
    .line 437
    new-instance v0, Lag3;

    .line 438
    .line 439
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 440
    .line 441
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    const v4, 0x7f130258

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    invoke-direct {v0, v3}, Lag3;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_1b

    .line 459
    .line 460
    :catch_0
    move-exception v0

    .line 461
    goto/16 :goto_1a

    .line 462
    .line 463
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 464
    .line 465
    .line 466
    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 467
    :try_start_a
    const-string v0, "swift-backup-31751.firebaseio.com"

    .line 468
    .line 469
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    new-instance v4, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .line 480
    .line 481
    array-length v6, v0

    .line 482
    const/4 v7, 0x0

    .line 483
    :goto_15
    if-ge v7, v6, :cond_1a

    .line 484
    .line 485
    aget-object v8, v0, v7

    .line 486
    .line 487
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    if-eqz v8, :cond_18

    .line 492
    .line 493
    invoke-static {v8}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-nez v9, :cond_18

    .line 498
    .line 499
    goto :goto_16

    .line 500
    :cond_18
    move-object v8, v5

    .line 501
    goto :goto_16

    .line 502
    :catchall_6
    move-exception v0

    .line 503
    goto :goto_17

    .line 504
    :goto_16
    if-eqz v8, :cond_19

    .line 505
    .line 506
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 510
    .line 511
    goto :goto_15

    .line 512
    :cond_1a
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 513
    .line 514
    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 518
    .line 519
    .line 520
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 521
    goto :goto_18

    .line 522
    :goto_17
    :try_start_b
    new-instance v4, Lbn6;

    .line 523
    .line 524
    invoke-direct {v4, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 525
    .line 526
    .line 527
    move-object v0, v4

    .line 528
    :goto_18
    sget-object v4, Lov2;->a:Lov2;

    .line 529
    .line 530
    instance-of v6, v0, Lbn6;

    .line 531
    .line 532
    if-eqz v6, :cond_1b

    .line 533
    .line 534
    move-object v0, v4

    .line 535
    :cond_1b
    move-object v6, v0

    .line 536
    check-cast v6, Ljava/util/List;

    .line 537
    .line 538
    sget-object v0, Lmp6;->a:Lmp6;

    .line 539
    .line 540
    const-string v0, "iptables -S OUTPUT"

    .line 541
    .line 542
    const-string v4, "ip6tables -S OUTPUT"

    .line 543
    .line 544
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v0, v3, v6}, Lgg3;->e(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const/4 v10, 0x0

    .line 557
    const/16 v11, 0x3f

    .line 558
    .line 559
    const/4 v7, 0x0

    .line 560
    const/4 v8, 0x0

    .line 561
    const/4 v9, 0x0

    .line 562
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    if-nez v6, :cond_1c

    .line 571
    .line 572
    move-object v5, v4

    .line 573
    :cond_1c
    if-nez v5, :cond_1d

    .line 574
    .line 575
    const-string v5, "-"

    .line 576
    .line 577
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_1e

    .line 582
    .line 583
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 584
    .line 585
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const v4, 0x7f130253

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    new-instance v4, Lag3;

    .line 600
    .line 601
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    filled-new-array {v0, v3, v5}, [Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    const v5, 0x7f130252

    .line 614
    .line 615
    .line 616
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-direct {v4, v3, v0}, Lag3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    goto :goto_19

    .line 627
    :cond_1e
    new-instance v4, Lag3;

    .line 628
    .line 629
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 630
    .line 631
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    const v5, 0x7f130257

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    invoke-direct {v4, v0}, Lag3;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 654
    .line 655
    .line 656
    :goto_19
    move-object v0, v4

    .line 657
    goto :goto_1b

    .line 658
    :goto_1a
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 659
    .line 660
    const-string v4, "FCW"

    .line 661
    .line 662
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    const-string v6, "Root/firewall diagnostic failed: "

    .line 667
    .line 668
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    const/4 v7, 0x4

    .line 673
    const/4 v8, 0x0

    .line 674
    const/4 v6, 0x0

    .line 675
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    new-instance v3, Lag3;

    .line 679
    .line 680
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 681
    .line 682
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    const v5, 0x7f130254

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    invoke-direct {v3, v0}, Lag3;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    move-object v0, v3

    .line 708
    :goto_1b
    sget-object v3, Lzn4;->a:Lzn4;

    .line 709
    .line 710
    iget-object v3, v1, Lj41;->c:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v3, Lil0;

    .line 713
    .line 714
    iget-object v4, v1, Lj41;->d:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v4, Lwa;

    .line 717
    .line 718
    iget-object v5, v1, Lj41;->e:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v5, Lyf3;

    .line 721
    .line 722
    new-instance v6, Leg3;

    .line 723
    .line 724
    invoke-direct {v6, v3, v4, v5, v0}, Leg3;-><init>(Lil0;Lwa;Lyf3;Lag3;)V

    .line 725
    .line 726
    .line 727
    const/4 v9, 0x1

    .line 728
    iput v9, v1, Lj41;->b:I

    .line 729
    .line 730
    invoke-static {v6, v1}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    if-ne v0, v2, :cond_1f

    .line 735
    .line 736
    move-object v5, v2

    .line 737
    goto :goto_1d

    .line 738
    :cond_1f
    :goto_1c
    sget-object v5, Lbe8;->a:Lbe8;

    .line 739
    .line 740
    :goto_1d
    return-object v5

    .line 741
    :pswitch_2
    sget-object v0, Lbe8;->a:Lbe8;

    .line 742
    .line 743
    iget-object v2, v1, Lj41;->c:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v2, Lxx1;

    .line 746
    .line 747
    sget-object v3, Lyx1;->a:Lyx1;

    .line 748
    .line 749
    iget v4, v1, Lj41;->b:I

    .line 750
    .line 751
    if-eqz v4, :cond_22

    .line 752
    .line 753
    const/4 v9, 0x1

    .line 754
    if-ne v4, v9, :cond_21

    .line 755
    .line 756
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    :cond_20
    move-object v5, v0

    .line 760
    goto :goto_1f

    .line 761
    :cond_21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 762
    .line 763
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    goto :goto_1f

    .line 767
    :cond_22
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    iget-object v4, v1, Lj41;->d:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v4, Lli3;

    .line 773
    .line 774
    iget-object v6, v1, Lj41;->e:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v6, Ll41;

    .line 777
    .line 778
    iget-object v7, v6, Ll41;->a:Lox1;

    .line 779
    .line 780
    iget v8, v6, Ll41;->b:I

    .line 781
    .line 782
    const/4 v9, -0x3

    .line 783
    if-ne v8, v9, :cond_23

    .line 784
    .line 785
    const/4 v8, -0x2

    .line 786
    :cond_23
    iget-object v9, v6, Ll41;->c:Lpw0;

    .line 787
    .line 788
    sget-object v10, Lay1;->b:Lay1;

    .line 789
    .line 790
    new-instance v11, Lk41;

    .line 791
    .line 792
    const/4 v12, 0x0

    .line 793
    invoke-direct {v11, v6, v5, v12}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 794
    .line 795
    .line 796
    const/4 v6, 0x4

    .line 797
    invoke-static {v8, v9, v6}, Lms8;->c(ILpw0;I)Luw0;

    .line 798
    .line 799
    .line 800
    move-result-object v6

    .line 801
    invoke-static {v2, v7}, Lw13;->p(Lxx1;Lox1;)Lox1;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    new-instance v7, Lr76;

    .line 806
    .line 807
    invoke-direct {v7, v2, v6}, Lr76;-><init>(Lox1;Luw0;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v7, v10, v7, v11}, Lo3;->a0(Lay1;Lo3;Lqt3;)V

    .line 811
    .line 812
    .line 813
    iput-object v5, v1, Lj41;->c:Ljava/lang/Object;

    .line 814
    .line 815
    const/4 v9, 0x1

    .line 816
    iput v9, v1, Lj41;->b:I

    .line 817
    .line 818
    invoke-static {v4, v7, v9, v1}, Ljd4;->m(Lli3;Lr76;ZLkv1;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    if-ne v1, v3, :cond_24

    .line 823
    .line 824
    goto :goto_1e

    .line 825
    :cond_24
    move-object v1, v0

    .line 826
    :goto_1e
    if-ne v1, v3, :cond_20

    .line 827
    .line 828
    move-object v5, v3

    .line 829
    :goto_1f
    return-object v5

    .line 830
    nop

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
