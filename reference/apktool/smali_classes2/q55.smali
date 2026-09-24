.class public final Lq55;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lu55;

.field public final synthetic c:Lry5;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lu55;Lry5;Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq55;->b:Lu55;

    .line 2
    .line 3
    iput-object p2, p0, Lq55;->c:Lry5;

    .line 4
    .line 5
    iput-object p3, p0, Lq55;->d:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 6
    .line 7
    iput p4, p0, Lq55;->e:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lq55;

    .line 2
    .line 3
    iget-object v3, p0, Lq55;->d:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 4
    .line 5
    iget v4, p0, Lq55;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Lq55;->b:Lu55;

    .line 8
    .line 9
    iget-object v2, p0, Lq55;->c:Lry5;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lq55;-><init>(Lu55;Lry5;Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;ILjv1;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lq55;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lq55;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lq55;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq55;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Llh6;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Lq55;->b:Lu55;

    .line 31
    .line 32
    iget v5, v4, Lu55;->a:I

    .line 33
    .line 34
    iget v6, v4, Lu55;->a:I

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    iget-object v8, v0, Lq55;->c:Lry5;

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    iget-object v9, v8, Lry5;->g:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v10, v8, Lry5;->j:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v11, v8, Lry5;->l:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v12, v8, Lry5;->s:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v13, v8, Lry5;->q:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v14, v8, Lry5;->n:Ljava/lang/String;

    .line 52
    .line 53
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move v9, v7

    .line 58
    :goto_0
    const/4 v10, 0x6

    .line 59
    if-ge v9, v10, :cond_2

    .line 60
    .line 61
    aget-object v10, v5, v9

    .line 62
    .line 63
    sget-boolean v11, Lq63;->d:Z

    .line 64
    .line 65
    invoke-static {v10}, Lcy0;->g(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v9, v9, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-ne v6, v3, :cond_3

    .line 72
    .line 73
    iget-object v10, v8, Lry5;->h:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v12, v8, Lry5;->t:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v13, v8, Lry5;->k:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v14, v8, Lry5;->m:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v15, v8, Lry5;->r:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v5, v8, Lry5;->o:Ljava/lang/String;

    .line 84
    .line 85
    move-object v11, v10

    .line 86
    move-object/from16 v16, v5

    .line 87
    .line 88
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    move v9, v7

    .line 93
    :goto_1
    const/4 v10, 0x7

    .line 94
    if-ge v9, v10, :cond_3

    .line 95
    .line 96
    aget-object v10, v5, v9

    .line 97
    .line 98
    sget-boolean v11, Lq63;->d:Z

    .line 99
    .line 100
    invoke-static {v10}, Lcy0;->g(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v9, v9, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v5, 0x2

    .line 107
    const/4 v9, 0x3

    .line 108
    if-ne v6, v9, :cond_4

    .line 109
    .line 110
    iget-object v10, v8, Lry5;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-lez v11, :cond_4

    .line 120
    .line 121
    invoke-static {v10}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-nez v11, :cond_4

    .line 126
    .line 127
    new-instance v11, Lq63;

    .line 128
    .line 129
    invoke-direct {v11, v10, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v11}, Lcy0;->e(Lq63;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    :catch_0
    :cond_4
    iget-object v10, v0, Lq55;->d:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 136
    .line 137
    if-eq v6, v9, :cond_5

    .line 138
    .line 139
    if-ne v6, v5, :cond_9

    .line 140
    .line 141
    :cond_5
    sget v5, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 142
    .line 143
    :try_start_1
    sget-object v5, Ld45;->b:Ld45;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    :cond_6
    move-object v5, v2

    .line 164
    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-static {v5, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_7

    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_7
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v5}, Lai8;->i(Landroid/content/Context;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_8

    .line 186
    .line 187
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 188
    .line 189
    invoke-virtual {v10}, Lk28;->r()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    const/4 v15, 0x4

    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    const-string v13, "Clearing saved settings in cloud"

    .line 197
    .line 198
    const/4 v14, 0x0

    .line 199
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lre3;->k()Lzc2;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    const-string v9, "appSettings"

    .line 207
    .line 208
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lre3;->k()Lzc2;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const-string v9, "favoriteApps"

    .line 220
    .line 221
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lre3;->k()Lzc2;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    const-string v9, "blacklistApps"

    .line 233
    .line 234
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lre3;->k()Lzc2;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const-string v9, "labelsData"

    .line 246
    .line 247
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lre3;->k()Lzc2;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    const-string v9, "configs"

    .line 259
    .line 260
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lre3;->k()Lzc2;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    const-string v9, "schedule_data"

    .line 272
    .line 273
    invoke-virtual {v5, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-static {v5, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 282
    .line 283
    invoke-virtual {v10}, Lk28;->r()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    const/4 v15, 0x4

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const-string v13, "Unable to clear saved settings in cloud due to internet issues"

    .line 291
    .line 292
    const/4 v14, 0x0

    .line 293
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 297
    .line 298
    invoke-static {v10, v8, v7}, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Z)Lu55;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    iput-object v2, v1, Llh6;->a:Ljava/lang/Object;

    .line 303
    .line 304
    :cond_a
    if-ne v6, v3, :cond_b

    .line 305
    .line 306
    invoke-static {v10, v8, v3}, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Z)Lu55;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    iput-object v2, v1, Llh6;->a:Ljava/lang/Object;

    .line 311
    .line 312
    :cond_b
    sget-object v2, Lzn4;->a:Lzn4;

    .line 313
    .line 314
    new-instance v2, Lp55;

    .line 315
    .line 316
    iget v5, v0, Lq55;->e:I

    .line 317
    .line 318
    invoke-direct {v2, v10, v4, v1, v5}, Lp55;-><init>(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lu55;Llh6;I)V

    .line 319
    .line 320
    .line 321
    iput v3, v0, Lq55;->a:I

    .line 322
    .line 323
    invoke-static {v2, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sget-object v1, Lyx1;->a:Lyx1;

    .line 328
    .line 329
    if-ne v0, v1, :cond_c

    .line 330
    .line 331
    return-object v1

    .line 332
    :cond_c
    :goto_4
    sget-object v0, Lbe8;->a:Lbe8;

    .line 333
    .line 334
    return-object v0
.end method
