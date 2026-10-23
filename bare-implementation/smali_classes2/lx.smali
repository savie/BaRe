.class public final synthetic Llx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 15
    iput p1, p0, Llx;->a:I

    iput-object p2, p0, Llx;->b:Ljava/lang/Object;

    iput-object p3, p0, Llx;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmk2;Lji;)V
    .locals 1

    .line 14
    const/4 v0, 0x4

    iput v0, p0, Llx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llx;->c:Ljava/lang/Object;

    iput-object p2, p0, Llx;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lwb6$b;Lv76;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Llx;->a:I

    .line 3
    .line 4
    sget-object v0, Lwq0;->a:Lwq0;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llx;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Llx;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Llx;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Liu8;

    .line 17
    .line 18
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Let8;

    .line 21
    .line 22
    invoke-virtual {v1}, Liu8;->j()Lus8;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, v1, Lus8;->b:Ldt8;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ldt8;->a(Let8;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lbe8;->a:Lbe8;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_0
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lq47;

    .line 40
    .line 41
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/lang/String;

    .line 44
    .line 45
    sget-object v2, Lc47;->a:Lc47;

    .line 46
    .line 47
    invoke-virtual {v2}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsQuickActionSchedules()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move-object v9, v5

    .line 81
    check-cast v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 82
    .line 83
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_0

    .line 92
    .line 93
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isEnabled()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    xor-int/lit8 v18, v5, 0x1

    .line 98
    .line 99
    const/16 v19, 0xff

    .line 100
    .line 101
    const/16 v20, 0x0

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    const/4 v15, 0x0

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    invoke-static/range {v9 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    :cond_0
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    move-object v13, v3

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 v13, 0x0

    .line 124
    :goto_1
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsLabelSchedules()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    new-instance v3, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_4

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    move-object v14, v5

    .line 154
    check-cast v14, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 155
    .line 156
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_3

    .line 165
    .line 166
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isEnabled()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    xor-int/lit8 v22, v5, 0x1

    .line 171
    .line 172
    const/16 v23, 0x7f

    .line 173
    .line 174
    const/16 v24, 0x0

    .line 175
    .line 176
    const/4 v15, 0x0

    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    const/16 v20, 0x0

    .line 186
    .line 187
    const/16 v21, 0x0

    .line 188
    .line 189
    invoke-static/range {v14 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    :cond_3
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    move-object v14, v3

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    const/4 v14, 0x0

    .line 200
    :goto_3
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppConfigSchedules()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    new-instance v3, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_7

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    move-object v15, v5

    .line 230
    check-cast v15, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 231
    .line 232
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_6

    .line 241
    .line 242
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->isEnabled()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    xor-int/lit8 v20, v5, 0x1

    .line 247
    .line 248
    const/16 v21, 0xf

    .line 249
    .line 250
    const/16 v22, 0x0

    .line 251
    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const/16 v18, 0x0

    .line 257
    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    invoke-static/range {v15 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    :cond_6
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    move-object v15, v3

    .line 269
    goto :goto_5

    .line 270
    :cond_8
    const/4 v15, 0x0

    .line 271
    :goto_5
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-eqz v2, :cond_b

    .line 276
    .line 277
    new-instance v3, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_a

    .line 295
    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    move-object/from16 v16, v5

    .line 301
    .line 302
    check-cast v16, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 303
    .line 304
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_9

    .line 313
    .line 314
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isEnabled()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    xor-int/lit8 v22, v5, 0x1

    .line 319
    .line 320
    const/16 v23, 0x1f

    .line 321
    .line 322
    const/16 v24, 0x0

    .line 323
    .line 324
    const/16 v17, 0x0

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v19, 0x0

    .line 329
    .line 330
    const/16 v20, 0x0

    .line 331
    .line 332
    const/16 v21, 0x0

    .line 333
    .line 334
    invoke-static/range {v16 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 335
    .line 336
    .line 337
    move-result-object v16

    .line 338
    :cond_9
    move-object/from16 v5, v16

    .line 339
    .line 340
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_a
    move-object/from16 v16, v3

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_b
    const/16 v16, 0x0

    .line 348
    .line 349
    :goto_7
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    if-eqz v2, :cond_e

    .line 354
    .line 355
    new-instance v3, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_d

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    move-object/from16 v17, v5

    .line 379
    .line 380
    check-cast v17, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 381
    .line 382
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getItemId()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_c

    .line 391
    .line 392
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isEnabled()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    xor-int/lit8 v23, v5, 0x1

    .line 397
    .line 398
    const/16 v24, 0x1f

    .line 399
    .line 400
    const/16 v25, 0x0

    .line 401
    .line 402
    const/16 v18, 0x0

    .line 403
    .line 404
    const/16 v19, 0x0

    .line 405
    .line 406
    const/16 v20, 0x0

    .line 407
    .line 408
    const/16 v21, 0x0

    .line 409
    .line 410
    const/16 v22, 0x0

    .line 411
    .line 412
    invoke-static/range {v17 .. v25}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 413
    .line 414
    .line 415
    move-result-object v17

    .line 416
    :cond_c
    move-object/from16 v5, v17

    .line 417
    .line 418
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_d
    move-object/from16 v17, v3

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_e
    const/16 v17, 0x0

    .line 426
    .line 427
    :goto_9
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWallsSchedules()Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    if-eqz v2, :cond_11

    .line 432
    .line 433
    new-instance v3, Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .line 441
    .line 442
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eqz v5, :cond_10

    .line 451
    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    move-object/from16 v18, v5

    .line 457
    .line 458
    check-cast v18, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 459
    .line 460
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-eqz v5, :cond_f

    .line 469
    .line 470
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->isEnabled()Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    xor-int/lit8 v24, v5, 0x1

    .line 475
    .line 476
    const/16 v25, 0x1f

    .line 477
    .line 478
    const/16 v26, 0x0

    .line 479
    .line 480
    const/16 v19, 0x0

    .line 481
    .line 482
    const/16 v20, 0x0

    .line 483
    .line 484
    const/16 v21, 0x0

    .line 485
    .line 486
    const/16 v22, 0x0

    .line 487
    .line 488
    const/16 v23, 0x0

    .line 489
    .line 490
    invoke-static/range {v18 .. v26}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 491
    .line 492
    .line 493
    move-result-object v18

    .line 494
    :cond_f
    move-object/from16 v5, v18

    .line 495
    .line 496
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_10
    move-object/from16 v18, v3

    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_11
    const/16 v18, 0x0

    .line 504
    .line 505
    :goto_b
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWifiSchedules()Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    if-eqz v2, :cond_14

    .line 510
    .line 511
    new-instance v3, Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_13

    .line 529
    .line 530
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    move-object/from16 v19, v5

    .line 535
    .line 536
    check-cast v19, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 537
    .line 538
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-eqz v5, :cond_12

    .line 547
    .line 548
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->isEnabled()Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    xor-int/lit8 v25, v5, 0x1

    .line 553
    .line 554
    const/16 v26, 0x1f

    .line 555
    .line 556
    const/16 v27, 0x0

    .line 557
    .line 558
    const/16 v20, 0x0

    .line 559
    .line 560
    const/16 v21, 0x0

    .line 561
    .line 562
    const/16 v22, 0x0

    .line 563
    .line 564
    const/16 v23, 0x0

    .line 565
    .line 566
    const/16 v24, 0x0

    .line 567
    .line 568
    invoke-static/range {v19 .. v27}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 569
    .line 570
    .line 571
    move-result-object v19

    .line 572
    :cond_12
    move-object/from16 v5, v19

    .line 573
    .line 574
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_13
    move-object/from16 v19, v3

    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_14
    const/16 v19, 0x0

    .line 582
    .line 583
    :goto_d
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    if-eqz v2, :cond_17

    .line 588
    .line 589
    new-instance v6, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    .line 597
    .line 598
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_16

    .line 607
    .line 608
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    move-object/from16 v20, v3

    .line 613
    .line 614
    check-cast v20, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 615
    .line 616
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    if-eqz v3, :cond_15

    .line 625
    .line 626
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isEnabled()Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    xor-int/lit8 v29, v3, 0x1

    .line 631
    .line 632
    const/16 v30, 0xff

    .line 633
    .line 634
    const/16 v31, 0x0

    .line 635
    .line 636
    const/16 v21, 0x0

    .line 637
    .line 638
    const/16 v22, 0x0

    .line 639
    .line 640
    const/16 v23, 0x0

    .line 641
    .line 642
    const/16 v24, 0x0

    .line 643
    .line 644
    const/16 v25, 0x0

    .line 645
    .line 646
    const/16 v26, 0x0

    .line 647
    .line 648
    const/16 v27, 0x0

    .line 649
    .line 650
    const/16 v28, 0x0

    .line 651
    .line 652
    invoke-static/range {v20 .. v31}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 653
    .line 654
    .line 655
    move-result-object v20

    .line 656
    :cond_15
    move-object/from16 v3, v20

    .line 657
    .line 658
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    goto :goto_e

    .line 662
    :cond_16
    move-object/from16 v20, v6

    .line 663
    .line 664
    goto :goto_f

    .line 665
    :cond_17
    const/16 v20, 0x0

    .line 666
    .line 667
    :goto_f
    const/16 v22, 0x100f

    .line 668
    .line 669
    const/16 v23, 0x0

    .line 670
    .line 671
    const/4 v9, 0x0

    .line 672
    const/4 v10, 0x0

    .line 673
    const/4 v11, 0x0

    .line 674
    const/4 v12, 0x0

    .line 675
    const/16 v21, 0x0

    .line 676
    .line 677
    invoke-static/range {v8 .. v23}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v1, v0}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 682
    .line 683
    .line 684
    sget-object v0, Lbe8;->a:Lbe8;

    .line 685
    .line 686
    return-object v0

    .line 687
    :pswitch_1
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 690
    .line 691
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 694
    .line 695
    sget v4, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 696
    .line 697
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    iget-object v4, v4, Lub5;->c:Landroid/widget/ImageView;

    .line 702
    .line 703
    iget-object v6, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->M:Ldd1;

    .line 704
    .line 705
    invoke-virtual {v6}, Ldd1;->getBrandingIconRes()I

    .line 706
    .line 707
    .line 708
    move-result v8

    .line 709
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    iget-object v4, v4, Lub5;->n:Landroid/widget/TextView;

    .line 717
    .line 718
    invoke-virtual {v6}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v6

    .line 722
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    iget-object v4, v4, Lub5;->d:Landroid/widget/ImageView;

    .line 730
    .line 731
    new-instance v6, Les;

    .line 732
    .line 733
    const/16 v8, 0xb

    .line 734
    .line 735
    invoke-direct {v6, v1, v8}, Les;-><init>(Ljava/lang/Object;I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    .line 740
    .line 741
    iget-object v4, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N:Lgv7;

    .line 742
    .line 743
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 748
    .line 749
    const v6, 0x7f130214

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    invoke-virtual {v4, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 757
    .line 758
    .line 759
    iget-object v4, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O:Lgv7;

    .line 760
    .line 761
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v6

    .line 765
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 766
    .line 767
    new-instance v8, Ljq1;

    .line 768
    .line 769
    invoke-direct {v8, v1, v3}, Ljq1;-><init>(Lil0;I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 780
    .line 781
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 793
    .line 794
    const/16 v4, 0x21

    .line 795
    .line 796
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 797
    .line 798
    .line 799
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->P:Lgv7;

    .line 800
    .line 801
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 806
    .line 807
    const v4, 0x7f1303f7

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v3, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 818
    .line 819
    .line 820
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->Q:Lgv7;

    .line 821
    .line 822
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 827
    .line 828
    const/16 v6, 0x81

    .line 829
    .line 830
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 838
    .line 839
    invoke-static {v4}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v4

    .line 846
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 847
    .line 848
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getPassword()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 860
    .line 861
    new-instance v3, Lmv1;

    .line 862
    .line 863
    invoke-direct {v3, v1, v2}, Lmv1;-><init>(Lil0;I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->P()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-virtual {v0, v2}, Ltb5;->k(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V

    .line 878
    .line 879
    .line 880
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->R:Lgv7;

    .line 881
    .line 882
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 887
    .line 888
    new-instance v2, Lxd1;

    .line 889
    .line 890
    const/16 v3, 0x9

    .line 891
    .line 892
    invoke-direct {v2, v1, v3}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    iget-object v0, v0, Ltb5;->j:Lix6;

    .line 903
    .line 904
    new-instance v2, Lob5;

    .line 905
    .line 906
    invoke-direct {v2, v1, v7}, Lob5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;I)V

    .line 907
    .line 908
    .line 909
    new-instance v3, Lwb1;

    .line 910
    .line 911
    const/4 v4, 0x5

    .line 912
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v0, v1, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    iget-object v0, v0, Ltb5;->h:Lex6;

    .line 923
    .line 924
    new-instance v2, Lpb5;

    .line 925
    .line 926
    invoke-direct {v2, v1, v7}, Lpb5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;I)V

    .line 927
    .line 928
    .line 929
    new-instance v3, Lwb1;

    .line 930
    .line 931
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, v1, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    iget-object v0, v0, Ltb5;->i:Lex6;

    .line 942
    .line 943
    new-instance v2, Llm;

    .line 944
    .line 945
    const/16 v3, 0xe

    .line 946
    .line 947
    invoke-direct {v2, v1, v3}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 948
    .line 949
    .line 950
    new-instance v3, Lwb1;

    .line 951
    .line 952
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v0, v1, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    iget-object v0, v0, Ltb5;->k:Lix6;

    .line 963
    .line 964
    new-instance v2, Lob5;

    .line 965
    .line 966
    invoke-direct {v2, v1, v5}, Lob5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;I)V

    .line 967
    .line 968
    .line 969
    new-instance v3, Lwb1;

    .line 970
    .line 971
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v1, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    iget-object v0, v0, Ltb5;->m:Lix6;

    .line 982
    .line 983
    new-instance v2, Lpb5;

    .line 984
    .line 985
    invoke-direct {v2, v1, v5}, Lpb5;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;I)V

    .line 986
    .line 987
    .line 988
    new-instance v3, Lwb1;

    .line 989
    .line 990
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v0, v1, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    iget-object v0, v0, Ltb5;->l:Lex6;

    .line 1001
    .line 1002
    new-instance v2, Ld7;

    .line 1003
    .line 1004
    const/16 v3, 0x11

    .line 1005
    .line 1006
    invoke-direct {v2, v1, v3}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v3, Lwb1;

    .line 1010
    .line 1011
    invoke-direct {v3, v4, v2}, Lwb1;-><init>(ILmt3;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0, v1, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 1015
    .line 1016
    .line 1017
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1018
    .line 1019
    return-object v0

    .line 1020
    :pswitch_2
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1021
    .line 1022
    check-cast v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1023
    .line 1024
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v0, Lokhttp3/internal/http2/Settings;

    .line 1027
    .line 1028
    new-instance v2, Llh6;

    .line 1029
    .line 1030
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 1034
    .line 1035
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 1036
    .line 1037
    monitor-enter v3

    .line 1038
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1039
    :try_start_1
    iget-object v8, v1, Lokhttp3/internal/http2/Http2Connection;->K:Lokhttp3/internal/http2/Settings;

    .line 1040
    .line 1041
    new-instance v9, Lokhttp3/internal/http2/Settings;

    .line 1042
    .line 1043
    invoke-direct {v9}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    move v10, v5

    .line 1050
    :goto_10
    if-ge v10, v4, :cond_19

    .line 1051
    .line 1052
    shl-int v11, v7, v10

    .line 1053
    .line 1054
    iget v12, v8, Lokhttp3/internal/http2/Settings;->a:I

    .line 1055
    .line 1056
    and-int/2addr v11, v12

    .line 1057
    if-eqz v11, :cond_18

    .line 1058
    .line 1059
    iget-object v11, v8, Lokhttp3/internal/http2/Settings;->b:[I

    .line 1060
    .line 1061
    aget v11, v11, v10

    .line 1062
    .line 1063
    invoke-virtual {v9, v10, v11}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 1064
    .line 1065
    .line 1066
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 1067
    .line 1068
    goto :goto_10

    .line 1069
    :cond_19
    move v10, v5

    .line 1070
    :goto_11
    if-ge v10, v4, :cond_1b

    .line 1071
    .line 1072
    shl-int v11, v7, v10

    .line 1073
    .line 1074
    iget v12, v0, Lokhttp3/internal/http2/Settings;->a:I

    .line 1075
    .line 1076
    and-int/2addr v11, v12

    .line 1077
    if-eqz v11, :cond_1a

    .line 1078
    .line 1079
    iget-object v11, v0, Lokhttp3/internal/http2/Settings;->b:[I

    .line 1080
    .line 1081
    aget v11, v11, v10

    .line 1082
    .line 1083
    invoke-virtual {v9, v10, v11}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 1084
    .line 1085
    .line 1086
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    .line 1087
    .line 1088
    goto :goto_11

    .line 1089
    :cond_1b
    iput-object v9, v2, Llh6;->a:Ljava/lang/Object;

    .line 1090
    .line 1091
    invoke-virtual {v9}, Lokhttp3/internal/http2/Settings;->a()I

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    int-to-long v9, v0

    .line 1096
    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->a()I

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    int-to-long v7, v0

    .line 1101
    sub-long/2addr v9, v7

    .line 1102
    const-wide/16 v7, 0x0

    .line 1103
    .line 1104
    cmp-long v4, v9, v7

    .line 1105
    .line 1106
    if-eqz v4, :cond_1d

    .line 1107
    .line 1108
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 1109
    .line 1110
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    if-eqz v0, :cond_1c

    .line 1115
    .line 1116
    goto :goto_12

    .line 1117
    :cond_1c
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    new-array v6, v5, [Lokhttp3/internal/http2/Http2Stream;

    .line 1124
    .line 1125
    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    move-object v6, v0

    .line 1130
    check-cast v6, [Lokhttp3/internal/http2/Http2Stream;

    .line 1131
    .line 1132
    goto :goto_13

    .line 1133
    :catchall_0
    move-exception v0

    .line 1134
    goto :goto_16

    .line 1135
    :cond_1d
    :goto_12
    const/4 v6, 0x0

    .line 1136
    :goto_13
    iget-object v0, v2, Llh6;->a:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Lokhttp3/internal/http2/Settings;

    .line 1139
    .line 1140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1141
    .line 1142
    .line 1143
    iput-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->K:Lokhttp3/internal/http2/Settings;

    .line 1144
    .line 1145
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->q:Lokhttp3/internal/concurrent/TaskQueue;

    .line 1146
    .line 1147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .line 1151
    .line 1152
    iget-object v8, v1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    const-string v8, " onSettings"

    .line 1158
    .line 1159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v7

    .line 1166
    new-instance v8, Lrm;

    .line 1167
    .line 1168
    const/16 v11, 0xc

    .line 1169
    .line 1170
    invoke-direct {v8, v11, v1, v2}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    .line 1172
    .line 1173
    const/4 v11, 0x6

    .line 1174
    invoke-static {v0, v7, v8, v11}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    .line 1176
    .line 1177
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1178
    :try_start_3
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 1179
    .line 1180
    iget-object v2, v2, Llh6;->a:Ljava/lang/Object;

    .line 1181
    .line 1182
    check-cast v2, Lokhttp3/internal/http2/Settings;

    .line 1183
    .line 1184
    invoke-virtual {v0, v2}, Lokhttp3/internal/http2/Http2Writer;->a(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1185
    .line 1186
    .line 1187
    goto :goto_14

    .line 1188
    :catchall_1
    move-exception v0

    .line 1189
    goto :goto_17

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    :try_start_4
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 1192
    .line 1193
    invoke-virtual {v1, v2, v2, v0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1194
    .line 1195
    .line 1196
    :goto_14
    monitor-exit v3

    .line 1197
    if-eqz v6, :cond_1f

    .line 1198
    .line 1199
    array-length v0, v6

    .line 1200
    :goto_15
    if-ge v5, v0, :cond_1f

    .line 1201
    .line 1202
    aget-object v1, v6, v5

    .line 1203
    .line 1204
    monitor-enter v1

    .line 1205
    :try_start_5
    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 1206
    .line 1207
    add-long/2addr v2, v9

    .line 1208
    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 1209
    .line 1210
    if-lez v4, :cond_1e

    .line 1211
    .line 1212
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1213
    .line 1214
    .line 1215
    :cond_1e
    monitor-exit v1

    .line 1216
    add-int/lit8 v5, v5, 0x1

    .line 1217
    .line 1218
    goto :goto_15

    .line 1219
    :catchall_2
    move-exception v0

    .line 1220
    monitor-exit v1

    .line 1221
    throw v0

    .line 1222
    :cond_1f
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1223
    .line 1224
    return-object v0

    .line 1225
    :goto_16
    :try_start_6
    monitor-exit v1

    .line 1226
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1227
    :goto_17
    monitor-exit v3

    .line 1228
    throw v0

    .line 1229
    :pswitch_3
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1230
    .line 1231
    check-cast v1, Lzx3;

    .line 1232
    .line 1233
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1234
    .line 1235
    check-cast v0, Lkh0;

    .line 1236
    .line 1237
    new-instance v2, Ljava/io/File;

    .line 1238
    .line 1239
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1240
    .line 1241
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    const-string v4, "walls_thumb_cache"

    .line 1250
    .line 1251
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v3

    .line 1258
    if-nez v3, :cond_20

    .line 1259
    .line 1260
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1261
    .line 1262
    .line 1263
    :cond_20
    new-instance v3, Ljava/io/File;

    .line 1264
    .line 1265
    iget-object v4, v1, Lzx3;->a:Lyn8;

    .line 1266
    .line 1267
    iget-object v4, v4, Lyn8;->e:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1270
    .line 1271
    .line 1272
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    new-instance v2, Ljava/io/FileOutputStream;

    .line 1276
    .line 1277
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1278
    .line 1279
    .line 1280
    :try_start_7
    iget-object v1, v1, Lzx3;->a:Lyn8;

    .line 1281
    .line 1282
    iget-object v1, v1, Lyn8;->e:Ljava/lang/String;

    .line 1283
    .line 1284
    invoke-virtual {v0, v1, v2}, Lkh0;->p(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1288
    .line 1289
    .line 1290
    new-instance v0, Ljava/io/FileInputStream;

    .line 1291
    .line 1292
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1293
    .line 1294
    .line 1295
    return-object v0

    .line 1296
    :catchall_3
    move-exception v0

    .line 1297
    move-object v1, v0

    .line 1298
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1299
    :catchall_4
    move-exception v0

    .line 1300
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1301
    .line 1302
    .line 1303
    throw v0

    .line 1304
    :pswitch_4
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1305
    .line 1306
    check-cast v1, Lin3;

    .line 1307
    .line 1308
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v0, Lq63;

    .line 1311
    .line 1312
    new-instance v2, Lhn3;

    .line 1313
    .line 1314
    invoke-virtual {v1, v0}, Lin3;->j(Lq63;)Lzn7;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v3

    .line 1318
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v1}, Lin3;->l()Ljava/util/List;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    invoke-direct {v2, v3, v1, v0}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 1326
    .line 1327
    .line 1328
    return-object v2

    .line 1329
    :pswitch_5
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1330
    .line 1331
    check-cast v1, Lqk3;

    .line 1332
    .line 1333
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1334
    .line 1335
    move-object v9, v0

    .line 1336
    check-cast v9, Ljava/util/List;

    .line 1337
    .line 1338
    iget-object v0, v1, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 1339
    .line 1340
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-nez v0, :cond_21

    .line 1345
    .line 1346
    iget-object v0, v1, Lqk3;->S:Lgv7;

    .line 1347
    .line 1348
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    check-cast v0, Lok3;

    .line 1353
    .line 1354
    new-instance v8, Lfm7;

    .line 1355
    .line 1356
    const/4 v12, 0x0

    .line 1357
    const/16 v13, 0x1e

    .line 1358
    .line 1359
    const/4 v10, 0x0

    .line 1360
    const/4 v11, 0x0

    .line 1361
    invoke-direct/range {v8 .. v13}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v0, v8, v7}, Lgm7;->w(Lfm7;Z)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v1}, Lu35;->isShowing()Z

    .line 1368
    .line 1369
    .line 1370
    move-result v0

    .line 1371
    if-nez v0, :cond_21

    .line 1372
    .line 1373
    invoke-virtual {v1}, Lu35;->show()V

    .line 1374
    .line 1375
    .line 1376
    :cond_21
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1377
    .line 1378
    return-object v0

    .line 1379
    :pswitch_6
    iget-object v1, v0, Llx;->c:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v1, Lmk2;

    .line 1382
    .line 1383
    iget-object v0, v0, Llx;->b:Ljava/lang/Object;

    .line 1384
    .line 1385
    check-cast v0, Lji;

    .line 1386
    .line 1387
    sget-object v2, Lbe8;->a:Lbe8;

    .line 1388
    .line 1389
    iget-object v3, v1, Lmk2;->e:Lji;

    .line 1390
    .line 1391
    if-eqz v3, :cond_22

    .line 1392
    .line 1393
    move v3, v7

    .line 1394
    goto :goto_18

    .line 1395
    :cond_22
    move v3, v5

    .line 1396
    :goto_18
    iget-object v4, v1, Lmk2;->j:Lex6;

    .line 1397
    .line 1398
    iput-object v0, v1, Lmk2;->e:Lji;

    .line 1399
    .line 1400
    invoke-virtual {v0}, Lji;->refresh()V

    .line 1401
    .line 1402
    .line 1403
    sget-object v8, Lg00;->a:Lg00;

    .line 1404
    .line 1405
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v8

    .line 1409
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1410
    .line 1411
    .line 1412
    invoke-static {v5, v8}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v8

    .line 1416
    invoke-static {v8}, Lg00;->y(Landroid/content/pm/PackageInfo;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v8

    .line 1420
    iput-boolean v8, v1, Lmk2;->f:Z

    .line 1421
    .line 1422
    invoke-virtual {v0}, Lji;->isUninstalledWithoutBackup()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v8

    .line 1426
    if-eqz v8, :cond_23

    .line 1427
    .line 1428
    iget-object v0, v1, La55;->b:Ljava/lang/String;

    .line 1429
    .line 1430
    const-string v3, "Uninstalled and has no backup, finishing"

    .line 1431
    .line 1432
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v1}, Lqo0;->d()V

    .line 1436
    .line 1437
    .line 1438
    goto/16 :goto_1f

    .line 1439
    .line 1440
    :cond_23
    invoke-virtual {v0}, Lji;->isInstalled()Z

    .line 1441
    .line 1442
    .line 1443
    move-result v9

    .line 1444
    invoke-virtual {v0}, Lji;->getEnabled()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v8

    .line 1448
    iget-object v15, v1, Lmk2;->i:Lex6;

    .line 1449
    .line 1450
    move v10, v8

    .line 1451
    new-instance v8, Lvj2;

    .line 1452
    .line 1453
    if-eqz v9, :cond_24

    .line 1454
    .line 1455
    if-nez v10, :cond_24

    .line 1456
    .line 1457
    move v11, v10

    .line 1458
    move v10, v7

    .line 1459
    goto :goto_19

    .line 1460
    :cond_24
    move v11, v10

    .line 1461
    move v10, v5

    .line 1462
    :goto_19
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v12

    .line 1466
    move v13, v11

    .line 1467
    move-object v11, v12

    .line 1468
    invoke-virtual {v0}, Lji;->getName()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v12

    .line 1472
    if-eqz v9, :cond_25

    .line 1473
    .line 1474
    invoke-virtual {v0}, Lji;->getVersionName()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v14

    .line 1478
    invoke-virtual {v0}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v5

    .line 1482
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    const-string v14, " ("

    .line 1491
    .line 1492
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1496
    .line 1497
    .line 1498
    const-string v5, ")"

    .line 1499
    .line 1500
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v5

    .line 1507
    goto :goto_1a

    .line 1508
    :cond_25
    const-string v5, "-"

    .line 1509
    .line 1510
    :goto_1a
    if-eqz v9, :cond_26

    .line 1511
    .line 1512
    if-eqz v13, :cond_26

    .line 1513
    .line 1514
    invoke-virtual {v0}, Lji;->isLaunchable()Z

    .line 1515
    .line 1516
    .line 1517
    move-result v6

    .line 1518
    if-eqz v6, :cond_26

    .line 1519
    .line 1520
    move v14, v7

    .line 1521
    :goto_1b
    move-object v13, v5

    .line 1522
    goto :goto_1c

    .line 1523
    :cond_26
    const/4 v14, 0x0

    .line 1524
    goto :goto_1b

    .line 1525
    :goto_1c
    invoke-direct/range {v8 .. v14}, Lvj2;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v15, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v0}, Lji;->isInstalled()Z

    .line 1532
    .line 1533
    .line 1534
    move-result v0

    .line 1535
    if-eqz v0, :cond_27

    .line 1536
    .line 1537
    if-nez v3, :cond_28

    .line 1538
    .line 1539
    sget-object v0, Lbk2;->a:Lbk2;

    .line 1540
    .line 1541
    invoke-virtual {v4, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1542
    .line 1543
    .line 1544
    goto :goto_1d

    .line 1545
    :cond_27
    sget-object v0, Lck2;->a:Lck2;

    .line 1546
    .line 1547
    invoke-virtual {v4, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1548
    .line 1549
    .line 1550
    :cond_28
    :goto_1d
    if-nez v3, :cond_29

    .line 1551
    .line 1552
    iget-object v0, v1, Lmk2;->l:Lex6;

    .line 1553
    .line 1554
    new-instance v3, Lyj2;

    .line 1555
    .line 1556
    sget-object v4, Lxj2;->Loading:Lxj2;

    .line 1557
    .line 1558
    invoke-direct {v3, v4}, Lyj2;-><init>(Lxj2;)V

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 1562
    .line 1563
    .line 1564
    :cond_29
    iget-object v0, v1, Lmk2;->k:Lex6;

    .line 1565
    .line 1566
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    if-nez v0, :cond_2a

    .line 1571
    .line 1572
    move v5, v7

    .line 1573
    goto :goto_1e

    .line 1574
    :cond_2a
    const/4 v5, 0x0

    .line 1575
    :goto_1e
    sget-object v0, Lzn4;->a:Lzn4;

    .line 1576
    .line 1577
    new-instance v0, Ljk2;

    .line 1578
    .line 1579
    invoke-direct {v0, v1, v5}, Ljk2;-><init>(Lmk2;Z)V

    .line 1580
    .line 1581
    .line 1582
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v0, Lqj;

    .line 1586
    .line 1587
    const/4 v4, 0x0

    .line 1588
    invoke-direct {v0, v1, v4, v7}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 1589
    .line 1590
    .line 1591
    invoke-static {v4, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1592
    .line 1593
    .line 1594
    new-instance v0, Lek;

    .line 1595
    .line 1596
    const/16 v3, 0x16

    .line 1597
    .line 1598
    invoke-direct {v0, v1, v3}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 1599
    .line 1600
    .line 1601
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 1602
    .line 1603
    .line 1604
    sget-object v0, Lhx0;->b:Lhx0;

    .line 1605
    .line 1606
    invoke-virtual {v0, v1}, Lhx0;->i(Ljava/lang/Object;)V

    .line 1607
    .line 1608
    .line 1609
    :goto_1f
    return-object v2

    .line 1610
    :pswitch_7
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1611
    .line 1612
    check-cast v1, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 1613
    .line 1614
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1615
    .line 1616
    check-cast v0, Ljava/lang/Throwable;

    .line 1617
    .line 1618
    invoke-static {v1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$J4DokRjT_UNYCgGxPTnL9VjN24U(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Ljava/lang/Throwable;)Lbe8;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    return-object v0

    .line 1623
    :pswitch_8
    const/4 v4, 0x0

    .line 1624
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1625
    .line 1626
    check-cast v1, Lwb6$b;

    .line 1627
    .line 1628
    sget-object v5, Lwq0;->a:Lwq0;

    .line 1629
    .line 1630
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1631
    .line 1632
    check-cast v0, Lv76;

    .line 1633
    .line 1634
    sget-object v5, Lsq0;->a:[I

    .line 1635
    .line 1636
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1637
    .line 1638
    .line 1639
    move-result v1

    .line 1640
    aget v1, v5, v1

    .line 1641
    .line 1642
    if-eq v1, v7, :cond_2c

    .line 1643
    .line 1644
    if-eq v1, v3, :cond_2d

    .line 1645
    .line 1646
    if-ne v1, v2, :cond_2b

    .line 1647
    .line 1648
    goto :goto_20

    .line 1649
    :cond_2b
    invoke-static {}, Lq;->j()V

    .line 1650
    .line 1651
    .line 1652
    move-object v6, v4

    .line 1653
    goto :goto_21

    .line 1654
    :cond_2c
    sget-object v1, Lwq0;->d:Lix6;

    .line 1655
    .line 1656
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 1657
    .line 1658
    .line 1659
    :cond_2d
    :goto_20
    sget-object v6, Lbe8;->a:Lbe8;

    .line 1660
    .line 1661
    :goto_21
    return-object v6

    .line 1662
    :pswitch_9
    const/4 v4, 0x0

    .line 1663
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1664
    .line 1665
    check-cast v1, Ljx;

    .line 1666
    .line 1667
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1668
    .line 1669
    move-object v2, v0

    .line 1670
    check-cast v2, Lq63;

    .line 1671
    .line 1672
    invoke-virtual {v1}, Ljx;->invoke()Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    check-cast v0, Ljava/lang/Boolean;

    .line 1677
    .line 1678
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1679
    .line 1680
    .line 1681
    move-result v0

    .line 1682
    if-eqz v0, :cond_32

    .line 1683
    .line 1684
    invoke-virtual {v2}, Lq63;->j()Z

    .line 1685
    .line 1686
    .line 1687
    move-result v0

    .line 1688
    if-nez v0, :cond_2e

    .line 1689
    .line 1690
    goto :goto_25

    .line 1691
    :cond_2e
    :try_start_9
    invoke-static {v2}, Lcy0;->e(Lq63;)V

    .line 1692
    .line 1693
    .line 1694
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1695
    .line 1696
    goto :goto_22

    .line 1697
    :catchall_5
    move-exception v0

    .line 1698
    new-instance v1, Lbn6;

    .line 1699
    .line 1700
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 1701
    .line 1702
    .line 1703
    move-object v0, v1

    .line 1704
    :goto_22
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v1

    .line 1708
    if-nez v1, :cond_2f

    .line 1709
    .line 1710
    goto :goto_24

    .line 1711
    :cond_2f
    sget-boolean v0, Lq63;->d:Z

    .line 1712
    .line 1713
    const-string v0, "AtomicFileDelete"

    .line 1714
    .line 1715
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v2

    .line 1719
    const-string v3, "Unable to fully clean atomic delete trash at "

    .line 1720
    .line 1721
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v2

    .line 1725
    instance-of v3, v1, Ljava/lang/Exception;

    .line 1726
    .line 1727
    if-eqz v3, :cond_30

    .line 1728
    .line 1729
    move-object v6, v1

    .line 1730
    check-cast v6, Ljava/lang/Exception;

    .line 1731
    .line 1732
    goto :goto_23

    .line 1733
    :cond_30
    move-object v6, v4

    .line 1734
    :goto_23
    if-nez v6, :cond_31

    .line 1735
    .line 1736
    new-instance v6, Ljava/lang/RuntimeException;

    .line 1737
    .line 1738
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1739
    .line 1740
    .line 1741
    :cond_31
    sget-object v1, Lcy0;->b:Lrt3;

    .line 1742
    .line 1743
    invoke-interface {v1, v0, v2, v6}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1747
    .line 1748
    :goto_24
    check-cast v0, Ljava/lang/Boolean;

    .line 1749
    .line 1750
    :cond_32
    :goto_25
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1751
    .line 1752
    return-object v0

    .line 1753
    :pswitch_a
    iget-object v1, v0, Llx;->b:Ljava/lang/Object;

    .line 1754
    .line 1755
    check-cast v1, Lji;

    .line 1756
    .line 1757
    iget-object v0, v0, Llx;->c:Ljava/lang/Object;

    .line 1758
    .line 1759
    check-cast v0, Ljava/lang/String;

    .line 1760
    .line 1761
    invoke-virtual {v1}, Lji;->getName()Ljava/lang/String;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v1

    .line 1765
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1766
    .line 1767
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1771
    .line 1772
    .line 1773
    move-result v3

    .line 1774
    const/4 v5, 0x0

    .line 1775
    :goto_26
    if-ge v5, v3, :cond_34

    .line 1776
    .line 1777
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 1778
    .line 1779
    .line 1780
    move-result v4

    .line 1781
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v6

    .line 1785
    if-eqz v6, :cond_33

    .line 1786
    .line 1787
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 1788
    .line 1789
    .line 1790
    :cond_33
    add-int/lit8 v5, v5, 0x1

    .line 1791
    .line 1792
    goto :goto_26

    .line 1793
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v1

    .line 1797
    invoke-static {v1, v0, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1798
    .line 1799
    .line 1800
    move-result v0

    .line 1801
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    return-object v0

    .line 1806
    nop

    .line 1807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
