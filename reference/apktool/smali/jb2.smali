.class public final Ljb2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Serializable;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/Iterator;

.field public f:I

.field public k:I

.field public final synthetic n:Lic2;

.field public final synthetic p:Lkb2;


# direct methods
.method public constructor <init>(Lic2;Lkb2;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb2;->n:Lic2;

    .line 2
    .line 3
    iput-object p2, p0, Ljb2;->p:Lkb2;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance v0, Ljb2;

    .line 2
    .line 3
    iget-object v1, p0, Ljb2;->n:Lic2;

    .line 4
    .line 5
    iget-object p0, p0, Ljb2;->p:Lkb2;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Ljb2;-><init>(Lic2;Lkb2;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljv1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljb2;->create(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljb2;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljb2;->k:I

    .line 4
    .line 5
    iget-object v2, v0, Ljb2;->p:Lkb2;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    iget-object v6, v0, Ljb2;->n:Lic2;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    sget-object v9, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    if-eq v1, v7, :cond_3

    .line 19
    .line 20
    if-eq v1, v5, :cond_2

    .line 21
    .line 22
    if-eq v1, v4, :cond_1

    .line 23
    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    iget v1, v0, Ljb2;->f:I

    .line 27
    .line 28
    iget-object v0, v0, Ljb2;->a:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move v2, v1

    .line 34
    move-object v1, v0

    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v8

    .line 45
    :cond_1
    iget-object v1, v0, Ljb2;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lkj5;

    .line 48
    .line 49
    iget-object v2, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 50
    .line 51
    check-cast v2, Llh6;

    .line 52
    .line 53
    iget-object v4, v0, Ljb2;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Lih6;

    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_2
    iget-object v1, v0, Ljb2;->e:Ljava/util/Iterator;

    .line 63
    .line 64
    check-cast v1, Ljava/util/Iterator;

    .line 65
    .line 66
    iget-object v10, v0, Ljb2;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v10, Lib2;

    .line 69
    .line 70
    iget-object v11, v0, Ljb2;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v11, Llh6;

    .line 73
    .line 74
    iget-object v12, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 75
    .line 76
    check-cast v12, Lih6;

    .line 77
    .line 78
    iget-object v13, v0, Ljb2;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v13, Lkj5;

    .line 81
    .line 82
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v1, v0, Ljb2;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Llh6;

    .line 89
    .line 90
    iget-object v10, v0, Ljb2;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v10, Llh6;

    .line 93
    .line 94
    iget-object v11, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 95
    .line 96
    check-cast v11, Lih6;

    .line 97
    .line 98
    iget-object v12, v0, Ljb2;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v12, Lkj5;

    .line 101
    .line 102
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object v13, v12

    .line 106
    move-object v12, v11

    .line 107
    move-object v11, v10

    .line 108
    move-object/from16 v10, p1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance v12, Lmj5;

    .line 115
    .line 116
    invoke-direct {v12}, Lmj5;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v11, Lih6;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Llh6;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v12, v0, Ljb2;->a:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v11, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 132
    .line 133
    iput-object v1, v0, Ljb2;->c:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v1, v0, Ljb2;->d:Ljava/lang/Object;

    .line 136
    .line 137
    iput v7, v0, Ljb2;->k:I

    .line 138
    .line 139
    invoke-static {v6, v7, v0}, Lic2;->f(Lic2;ZLkv1;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    if-ne v10, v9, :cond_5

    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_5
    move-object v13, v12

    .line 148
    move-object v12, v11

    .line 149
    move-object v11, v1

    .line 150
    :goto_0
    check-cast v10, Lga2;

    .line 151
    .line 152
    iget-object v10, v10, Lga2;->b:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v10, v1, Llh6;->a:Ljava/lang/Object;

    .line 155
    .line 156
    new-instance v1, Lib2;

    .line 157
    .line 158
    invoke-direct {v1, v13, v12, v11, v6}, Lib2;-><init>(Lkj5;Lih6;Llh6;Lic2;)V

    .line 159
    .line 160
    .line 161
    iget-object v10, v2, Lkb2;->c:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v10, Ljava/util/List;

    .line 164
    .line 165
    if-eqz v10, :cond_7

    .line 166
    .line 167
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    move-object/from16 v16, v10

    .line 172
    .line 173
    move-object v10, v1

    .line 174
    move-object/from16 v1, v16

    .line 175
    .line 176
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-eqz v14, :cond_7

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    check-cast v14, Lqt3;

    .line 187
    .line 188
    iput-object v13, v0, Ljb2;->a:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v12, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 191
    .line 192
    iput-object v11, v0, Ljb2;->c:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v10, v0, Ljb2;->d:Ljava/lang/Object;

    .line 195
    .line 196
    move-object v15, v1

    .line 197
    check-cast v15, Ljava/util/Iterator;

    .line 198
    .line 199
    iput-object v15, v0, Ljb2;->e:Ljava/util/Iterator;

    .line 200
    .line 201
    iput v5, v0, Ljb2;->k:I

    .line 202
    .line 203
    invoke-interface {v14, v10, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    if-ne v14, v9, :cond_6

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_7
    move-object v1, v13

    .line 211
    iput-object v8, v2, Lkb2;->c:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v12, v0, Ljb2;->a:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v11, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 216
    .line 217
    iput-object v1, v0, Ljb2;->c:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v8, v0, Ljb2;->d:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v8, v0, Ljb2;->e:Ljava/util/Iterator;

    .line 222
    .line 223
    iput v4, v0, Ljb2;->k:I

    .line 224
    .line 225
    invoke-interface {v1, v0}, Lkj5;->a(Lkv1;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    if-ne v2, v9, :cond_8

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    move-object v2, v11

    .line 233
    move-object v4, v12

    .line 234
    :goto_2
    :try_start_0
    iput-boolean v7, v4, Lih6;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .line 236
    invoke-interface {v1, v8}, Lkj5;->b(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v2, Llh6;->a:Ljava/lang/Object;

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    goto :goto_3

    .line 248
    :cond_9
    const/4 v2, 0x0

    .line 249
    :goto_3
    invoke-virtual {v6}, Lic2;->g()Lsd4;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iput-object v1, v0, Ljb2;->a:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v8, v0, Ljb2;->b:Ljava/io/Serializable;

    .line 256
    .line 257
    iput-object v8, v0, Ljb2;->c:Ljava/lang/Object;

    .line 258
    .line 259
    iput v2, v0, Ljb2;->f:I

    .line 260
    .line 261
    iput v3, v0, Ljb2;->k:I

    .line 262
    .line 263
    invoke-interface {v4, v0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-ne v0, v9, :cond_a

    .line 268
    .line 269
    :goto_4
    return-object v9

    .line 270
    :cond_a
    :goto_5
    check-cast v0, Ljava/lang/Number;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    new-instance v3, Lga2;

    .line 277
    .line 278
    invoke-direct {v3, v1, v2, v0}, Lga2;-><init>(Ljava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    return-object v3

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    invoke-interface {v1, v8}, Lkj5;->b(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    throw v0
.end method
