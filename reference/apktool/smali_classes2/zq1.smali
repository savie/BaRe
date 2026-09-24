.class public final Lzq1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lzq1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzq1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lzq1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lzq1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lzq1;

    .line 9
    .line 10
    check-cast p0, Lfs4;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lzq1;

    .line 18
    .line 19
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lzq1;

    .line 27
    .line 28
    check-cast p0, Lic2;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Lzq1;

    .line 36
    .line 37
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, p0, p2, v0}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    nop

    .line 45
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
    iget v0, p0, Lzq1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lzq1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lzq1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lzq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lzq1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lzq1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lzq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lzq1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lzq1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lzq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lzq1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lzq1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lzq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzq1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lyx1;->a:Lyx1;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    iget-object v8, v0, Lzq1;->c:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v8, Lfs4;

    .line 21
    .line 22
    iget v1, v0, Lzq1;->b:I

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-ne v1, v7, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v3, v9

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lil0;->G()Lqo0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v1, v9

    .line 54
    :goto_0
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const v5, 0x7f13042d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lqo0;->h(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    sget-object v5, Lg00;->a:Lg00;

    .line 63
    .line 64
    invoke-static {v4}, Lg00;->m(Z)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v10, Lcz3;

    .line 74
    .line 75
    invoke-direct {v10, v4}, Lcz3;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v5, v10}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_6

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Lji;

    .line 102
    .line 103
    new-instance v11, Lgj;

    .line 104
    .line 105
    const/16 v12, 0x15

    .line 106
    .line 107
    invoke-direct {v11, v10, v12}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    invoke-virtual {v11}, Lgj;->invoke()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_2

    .line 115
    :catch_0
    move-object v11, v9

    .line 116
    :goto_2
    check-cast v11, Ljava/util/List;

    .line 117
    .line 118
    if-eqz v11, :cond_4

    .line 119
    .line 120
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    new-instance v12, Lbz3;

    .line 128
    .line 129
    invoke-virtual {v10}, Lji;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v10}, Lji;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-direct {v12, v13, v10, v11}, Lbz3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-virtual {v1}, Lqo0;->f()V

    .line 147
    .line 148
    .line 149
    :cond_7
    sget-object v4, Lzn4;->a:Lzn4;

    .line 150
    .line 151
    new-instance v4, Lv20;

    .line 152
    .line 153
    invoke-direct {v4, v2, v8, v5, v1}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iput v7, v0, Lzq1;->b:I

    .line 157
    .line 158
    invoke-static {v4, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-ne v0, v6, :cond_8

    .line 163
    .line 164
    move-object v3, v6

    .line 165
    :cond_8
    :goto_3
    return-object v3

    .line 166
    :pswitch_0
    check-cast v8, Lorg/swiftapps/swiftbackup/intro/d;

    .line 167
    .line 168
    iget v1, v0, Lzq1;->b:I

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    if-eq v1, v7, :cond_9

    .line 173
    .line 174
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v3, v9

    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_9
    :try_start_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :cond_a
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :try_start_2
    sget-object v1, Lmp6;->a:Lmp6;

    .line 192
    .line 193
    invoke-static {}, Lmp6;->f()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_b

    .line 198
    .line 199
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->O()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .line 201
    .line 202
    sget-object v0, Lzn4;->a:Lzn4;

    .line 203
    .line 204
    new-instance v0, Lrk;

    .line 205
    .line 206
    iget-object v1, v8, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 207
    .line 208
    invoke-direct {v0, v1}, Lrk;-><init>(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_4
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_8

    .line 215
    .line 216
    :cond_b
    :try_start_3
    sget-object v1, Ldz5;->a:Ldz5;

    .line 217
    .line 218
    invoke-static {}, Ldz5;->f()V

    .line 219
    .line 220
    .line 221
    const-string v10, "android.permission.READ_SMS"

    .line 222
    .line 223
    const-string v11, "android.permission.WRITE_SMS"

    .line 224
    .line 225
    const-string v12, "android.permission.READ_CALL_LOG"

    .line 226
    .line 227
    const-string v13, "android.permission.WRITE_CALL_LOG"

    .line 228
    .line 229
    const-string v14, "android.permission.READ_CONTACTS"

    .line 230
    .line 231
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 232
    .line 233
    invoke-static {}, Lb67;->e()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_c

    .line 238
    .line 239
    move-object v15, v1

    .line 240
    goto :goto_5

    .line 241
    :cond_c
    move-object v15, v9

    .line 242
    :goto_5
    const-string v1, "com.android.permission.GET_INSTALLED_APPS"

    .line 243
    .line 244
    invoke-static {}, Ldz5;->j()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-static {v5}, Ldz5;->l(Z)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_d

    .line 253
    .line 254
    move-object/from16 v16, v1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_d
    move-object/from16 v16, v9

    .line 258
    .line 259
    :goto_6
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 266
    .line 267
    .line 268
    move v10, v4

    .line 269
    :goto_7
    if-ge v10, v2, :cond_f

    .line 270
    .line 271
    aget-object v11, v1, v10

    .line 272
    .line 273
    if-eqz v11, :cond_e

    .line 274
    .line 275
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_f
    sget-object v1, Lav;->a:Lgv7;

    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 287
    .line 288
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v5, v4, v9}, Lav;->e(Ljava/lang/String;Ljava/util/Set;ZLg55;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v9, v2}, Lorg/swiftapps/swiftbackup/common/Const;->b(Lzn7;I)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_10

    .line 307
    .line 308
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/intro/d;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    .line 310
    .line 311
    sget-object v0, Lzn4;->a:Lzn4;

    .line 312
    .line 313
    new-instance v0, Lrk;

    .line 314
    .line 315
    iget-object v1, v8, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 316
    .line 317
    invoke-direct {v0, v1}, Lrk;-><init>(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    :try_start_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    const-string v2, "File read/write check failed! Please restart the app."

    .line 326
    .line 327
    sget-object v3, Lzn4;->a:Lzn4;

    .line 328
    .line 329
    new-instance v3, Ll30;

    .line 330
    .line 331
    const/16 v5, 0xf

    .line 332
    .line 333
    invoke-direct {v3, v5, v1, v2}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 337
    .line 338
    .line 339
    const-string v1, "show_root_grant_permissions_button"

    .line 340
    .line 341
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 342
    .line 343
    if-eqz v2, :cond_12

    .line 344
    .line 345
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    .line 351
    .line 352
    iput v7, v0, Lzq1;->b:I

    .line 353
    .line 354
    const-wide/16 v1, 0x1388

    .line 355
    .line 356
    invoke-static {v1, v2, v0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-ne v0, v6, :cond_11

    .line 361
    .line 362
    move-object v3, v6

    .line 363
    :goto_8
    return-object v3

    .line 364
    :cond_11
    :goto_9
    sget-object v0, Ldz5;->a:Ldz5;

    .line 365
    .line 366
    invoke-static {}, Ldz5;->p()V

    .line 367
    .line 368
    .line 369
    const-string v0, "Storage access failed after revoking storage permission"

    .line 370
    .line 371
    invoke-static {v0, v7}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 372
    .line 373
    .line 374
    throw v9

    .line 375
    :cond_12
    const-string v0, "editor"

    .line 376
    .line 377
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    :goto_a
    sget-object v1, Lzn4;->a:Lzn4;

    .line 382
    .line 383
    new-instance v1, Lrk;

    .line 384
    .line 385
    iget-object v2, v8, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 386
    .line 387
    invoke-direct {v1, v2}, Lrk;-><init>(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :pswitch_1
    check-cast v8, Lic2;

    .line 395
    .line 396
    iget-object v1, v8, Lic2;->h:Ltr9;

    .line 397
    .line 398
    iget v2, v0, Lzq1;->b:I

    .line 399
    .line 400
    const/4 v3, 0x2

    .line 401
    if-eqz v2, :cond_15

    .line 402
    .line 403
    if-eq v2, v7, :cond_14

    .line 404
    .line 405
    if-ne v2, v3, :cond_13

    .line 406
    .line 407
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    move-object/from16 v0, p1

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_13
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    move-object v6, v9

    .line 417
    goto :goto_d

    .line 418
    :cond_14
    :try_start_5
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 419
    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_15
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ltr9;->c()Lem7;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    instance-of v2, v2, Lne3;

    .line 430
    .line 431
    if-eqz v2, :cond_16

    .line 432
    .line 433
    invoke-virtual {v1}, Ltr9;->c()Lem7;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    goto :goto_d

    .line 438
    :cond_16
    :try_start_6
    iput v7, v0, Lzq1;->b:I

    .line 439
    .line 440
    invoke-virtual {v8, v0}, Lic2;->h(Lkv1;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 444
    if-ne v1, v6, :cond_17

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_17
    :goto_b
    iput v3, v0, Lzq1;->b:I

    .line 448
    .line 449
    invoke-static {v8, v4, v0}, Lic2;->e(Lic2;ZLjv1;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-ne v0, v6, :cond_18

    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_18
    :goto_c
    move-object v6, v0

    .line 457
    check-cast v6, Lem7;

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :catchall_1
    move-exception v0

    .line 461
    new-instance v6, Ljf6;

    .line 462
    .line 463
    const/4 v1, -0x1

    .line 464
    invoke-direct {v6, v1, v0}, Ljf6;-><init>(ILjava/lang/Throwable;)V

    .line 465
    .line 466
    .line 467
    :goto_d
    return-object v6

    .line 468
    :pswitch_2
    check-cast v8, Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 469
    .line 470
    iget v1, v0, Lzq1;->b:I

    .line 471
    .line 472
    if-eqz v1, :cond_1a

    .line 473
    .line 474
    if-ne v1, v7, :cond_19

    .line 475
    .line 476
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_19
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    move-object v3, v9

    .line 484
    goto :goto_f

    .line 485
    :cond_1a
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    sget-object v1, Lbr1;->a:Lbr1;

    .line 489
    .line 490
    sget-boolean v2, Lbr1;->b:Z

    .line 491
    .line 492
    if-nez v2, :cond_1b

    .line 493
    .line 494
    iget-object v2, v8, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->g:Lex6;

    .line 495
    .line 496
    sget-object v4, Lym7;->LOADING:Lym7;

    .line 497
    .line 498
    invoke-virtual {v2, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Lbr1;->a()V

    .line 502
    .line 503
    .line 504
    :cond_1b
    sget-object v1, Lzn4;->a:Lzn4;

    .line 505
    .line 506
    new-instance v1, Lek;

    .line 507
    .line 508
    const/16 v2, 0x12

    .line 509
    .line 510
    invoke-direct {v1, v8, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 511
    .line 512
    .line 513
    iput v7, v0, Lzq1;->b:I

    .line 514
    .line 515
    invoke-static {v1, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-ne v0, v6, :cond_1c

    .line 520
    .line 521
    move-object v3, v6

    .line 522
    goto :goto_f

    .line 523
    :cond_1c
    :goto_e
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 524
    .line 525
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_1e

    .line 530
    .line 531
    sget-object v0, Lre3;->a:Lzc2;

    .line 532
    .line 533
    iget-object v0, v8, La55;->b:Ljava/lang/String;

    .line 534
    .line 535
    sget-object v1, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 536
    .line 537
    if-eqz v1, :cond_1d

    .line 538
    .line 539
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getSize()Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v2, "configs="

    .line 546
    .line 547
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    new-instance v2, Lqe3;

    .line 558
    .line 559
    invoke-direct {v2, v0, v1}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :try_start_7
    invoke-virtual {v2}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 563
    .line 564
    .line 565
    :catch_1
    :cond_1e
    :goto_f
    return-object v3

    .line 566
    nop

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
