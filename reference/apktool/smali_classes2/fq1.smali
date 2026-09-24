.class public abstract Lfq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "getAppTaskPropertiesForBackup: Loading apps list for "

    .line 13
    .line 14
    const-string v3, " custom settings"

    .line 15
    .line 16
    invoke-static {v0, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    const/4 v8, 0x4

    .line 23
    const/4 v9, 0x0

    .line 24
    const-string v5, "ConfigAppsLoader"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 32
    .line 33
    const/4 v14, 0x4

    .line 34
    const/4 v15, 0x0

    .line 35
    const-string v11, "ConfigAppsLoader"

    .line 36
    .line 37
    const-string v12, "getAppTaskPropertiesForBackup: Loading apps list for custom settings"

    .line 38
    .line 39
    const/4 v13, 0x0

    .line 40
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sget-object v0, Lg00;->a:Lg00;

    .line 44
    .line 45
    invoke-static {}, Lg00;->C()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lg00;->m(Z)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object v4, v3

    .line 72
    check-cast v4, Lji;

    .line 73
    .line 74
    invoke-virtual {v4}, Lji;->isInstalled()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x0

    .line 94
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_c

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    add-int/lit8 v6, v4, 0x1

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    if-ltz v4, :cond_b

    .line 108
    .line 109
    check-cast v5, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 110
    .line 111
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 112
    .line 113
    const-string v4, "Getting apps for ConfigSettings #"

    .line 114
    .line 115
    invoke-static {v6, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const/4 v12, 0x4

    .line 120
    const/4 v13, 0x0

    .line 121
    const-string v9, "ConfigAppsLoader"

    .line 122
    .line 123
    const/4 v11, 0x0

    .line 124
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-eqz v4, :cond_a

    .line 132
    .line 133
    invoke-virtual {v4, v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid(Z)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_9

    .line 138
    .line 139
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-nez v8, :cond_3

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    move-object v4, v7

    .line 153
    :goto_3
    if-eqz v4, :cond_8

    .line 154
    .line 155
    new-instance v8, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_5

    .line 169
    .line 170
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    move-object v11, v10

    .line 175
    check-cast v11, Ljava/lang/String;

    .line 176
    .line 177
    sget-object v12, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 178
    .line 179
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v11}, Lhr4;->c(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-nez v11, :cond_4

    .line 187
    .line 188
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_7

    .line 206
    .line 207
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    move-object v11, v10

    .line 212
    check-cast v11, Ljava/lang/String;

    .line 213
    .line 214
    sget-object v12, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 215
    .line 216
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v11}, Lhr4;->c(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-eqz v11, :cond_6

    .line 224
    .line 225
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_7
    sget-object v4, Liy;->a:Liy;

    .line 230
    .line 231
    invoke-static {v2, v7}, Liy;->f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    new-instance v7, Lll1;

    .line 236
    .line 237
    invoke-direct {v7, v4}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 238
    .line 239
    .line 240
    new-instance v4, Lcz;

    .line 241
    .line 242
    const/4 v10, 0x2

    .line 243
    invoke-direct {v4, v0, v10}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    new-instance v11, Lme3;

    .line 247
    .line 248
    invoke-direct {v11, v7, v1, v4}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 249
    .line 250
    .line 251
    new-instance v4, Lxs;

    .line 252
    .line 253
    invoke-direct {v4, v10, v9, v8}, Lxs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    new-instance v7, Lme3;

    .line 257
    .line 258
    invoke-direct {v7, v11, v1, v4}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v7}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 266
    .line 267
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    const-string v9, "Num of apps matching Labels="

    .line 272
    .line 273
    invoke-static {v8, v9}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    const/4 v11, 0x4

    .line 278
    const/4 v12, 0x0

    .line 279
    const-string v8, "ConfigAppsLoader"

    .line 280
    .line 281
    const/4 v10, 0x0

    .line 282
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    new-instance v7, Lll1;

    .line 286
    .line 287
    invoke-direct {v7, v4}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 288
    .line 289
    .line 290
    new-instance v4, Lv10;

    .line 291
    .line 292
    const/4 v8, 0x6

    .line 293
    invoke-direct {v4, v5, v8}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    new-instance v5, Lq98;

    .line 297
    .line 298
    invoke-direct {v5, v7, v4}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Lq98;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    :goto_6
    move-object v5, v4

    .line 306
    check-cast v5, Lp98;

    .line 307
    .line 308
    invoke-virtual {v5}, Lp98;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    if-eqz v7, :cond_8

    .line 313
    .line 314
    invoke-virtual {v5}, Lp98;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_8
    move v4, v6

    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_9
    const-string v0, "Failed requirement."

    .line 326
    .line 327
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v7

    .line 331
    :cond_a
    const-string v0, "Required value was null."

    .line 332
    .line 333
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-object v7

    .line 337
    :cond_b
    invoke-static {}, Lfl1;->F0()V

    .line 338
    .line 339
    .line 340
    throw v7

    .line 341
    :cond_c
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    const-string v3, "Apps list compiled with size "

    .line 348
    .line 349
    invoke-static {v2, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    const/4 v5, 0x4

    .line 354
    const/4 v6, 0x0

    .line 355
    const-string v2, "ConfigAppsLoader"

    .line 356
    .line 357
    const/4 v4, 0x0

    .line 358
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    return-object v0
.end method
