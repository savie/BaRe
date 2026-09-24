.class public final synthetic Lyq;
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

    .line 1
    iput p1, p0, Lyq;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lyq;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lyq;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lyq;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 14
    .line 15
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lq47;

    .line 18
    .line 19
    sget-object v2, Lov2;->a:Lov2;

    .line 20
    .line 21
    sget-object v3, Lc47;->a:Lc47;

    .line 22
    .line 23
    invoke-virtual {v3}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v3, Lo47;->a:[I

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v1, v3, v1

    .line 34
    .line 35
    packed-switch v1, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lq;->j()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :pswitch_0
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 44
    .line 45
    const/16 v16, 0x1ff

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    invoke-direct/range {v6 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    move-object v1, v6

    .line 62
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object v2, v3

    .line 70
    :goto_0
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v17

    .line 74
    const/16 v19, 0x17ff

    .line 75
    .line 76
    const/16 v20, 0x0

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v18, 0x0

    .line 91
    .line 92
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_8

    .line 108
    .line 109
    :pswitch_1
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 110
    .line 111
    const/16 v13, 0x3f

    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-direct/range {v6 .. v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    .line 122
    .line 123
    move-object v1, v6

    .line 124
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWifiSchedules()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-nez v3, :cond_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move-object v2, v3

    .line 132
    :goto_1
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    const/16 v19, 0x1bff

    .line 137
    .line 138
    const/16 v20, 0x0

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    const/4 v9, 0x0

    .line 144
    const/4 v10, 0x0

    .line 145
    const/4 v11, 0x0

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v14, 0x0

    .line 149
    const/4 v15, 0x0

    .line 150
    const/16 v17, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_8

    .line 170
    .line 171
    :pswitch_2
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 172
    .line 173
    const/16 v13, 0x3f

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    const/4 v7, 0x0

    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v12, 0x0

    .line 182
    invoke-direct/range {v6 .. v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    .line 184
    .line 185
    move-object v1, v6

    .line 186
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWallsSchedules()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    if-nez v3, :cond_2

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_2
    move-object v2, v3

    .line 194
    :goto_2
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    const/16 v19, 0x1dff

    .line 199
    .line 200
    const/16 v20, 0x0

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v8, 0x0

    .line 205
    const/4 v9, 0x0

    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x0

    .line 209
    const/4 v13, 0x0

    .line 210
    const/4 v14, 0x0

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_8

    .line 233
    .line 234
    :pswitch_3
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 235
    .line 236
    const/16 v13, 0x3f

    .line 237
    .line 238
    const/4 v14, 0x0

    .line 239
    const/4 v7, 0x0

    .line 240
    const/4 v8, 0x0

    .line 241
    const/4 v9, 0x0

    .line 242
    const/4 v10, 0x0

    .line 243
    const/4 v11, 0x0

    .line 244
    const/4 v12, 0x0

    .line 245
    invoke-direct/range {v6 .. v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 246
    .line 247
    .line 248
    move-object v1, v6

    .line 249
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v3, :cond_3

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_3
    move-object v2, v3

    .line 257
    :goto_3
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    const/16 v19, 0x1eff

    .line 262
    .line 263
    const/16 v20, 0x0

    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v7, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    const/4 v10, 0x0

    .line 270
    const/4 v11, 0x0

    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v13, 0x0

    .line 273
    const/4 v15, 0x0

    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getItemId()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_8

    .line 296
    .line 297
    :pswitch_4
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 298
    .line 299
    const/16 v13, 0x3f

    .line 300
    .line 301
    const/4 v14, 0x0

    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    const/4 v9, 0x0

    .line 305
    const/4 v10, 0x0

    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    invoke-direct/range {v6 .. v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 309
    .line 310
    .line 311
    move-object v1, v6

    .line 312
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-nez v3, :cond_4

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_4
    move-object v2, v3

    .line 320
    :goto_4
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    const/16 v19, 0x1f7f

    .line 325
    .line 326
    const/16 v20, 0x0

    .line 327
    .line 328
    const/4 v6, 0x0

    .line 329
    const/4 v7, 0x0

    .line 330
    const/4 v8, 0x0

    .line 331
    const/4 v9, 0x0

    .line 332
    const/4 v10, 0x0

    .line 333
    const/4 v11, 0x0

    .line 334
    const/4 v12, 0x0

    .line 335
    const/4 v14, 0x0

    .line 336
    const/4 v15, 0x0

    .line 337
    const/16 v16, 0x0

    .line 338
    .line 339
    const/16 v17, 0x0

    .line 340
    .line 341
    const/16 v18, 0x0

    .line 342
    .line 343
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_8

    .line 359
    .line 360
    :pswitch_5
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 361
    .line 362
    const/16 v12, 0x1f

    .line 363
    .line 364
    const/4 v13, 0x0

    .line 365
    const/4 v7, 0x0

    .line 366
    const/4 v8, 0x0

    .line 367
    const/4 v9, 0x0

    .line 368
    const/4 v10, 0x0

    .line 369
    const/4 v11, 0x0

    .line 370
    invoke-direct/range {v6 .. v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 371
    .line 372
    .line 373
    move-object v1, v6

    .line 374
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppConfigSchedules()Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    if-nez v3, :cond_5

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_5
    move-object v2, v3

    .line 382
    :goto_5
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    const/16 v19, 0x1fbf

    .line 387
    .line 388
    const/16 v20, 0x0

    .line 389
    .line 390
    const/4 v6, 0x0

    .line 391
    const/4 v7, 0x0

    .line 392
    const/4 v8, 0x0

    .line 393
    const/4 v9, 0x0

    .line 394
    const/4 v10, 0x0

    .line 395
    const/4 v11, 0x0

    .line 396
    const/4 v13, 0x0

    .line 397
    const/4 v14, 0x0

    .line 398
    const/4 v15, 0x0

    .line 399
    const/16 v16, 0x0

    .line 400
    .line 401
    const/16 v17, 0x0

    .line 402
    .line 403
    const/16 v18, 0x0

    .line 404
    .line 405
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_8

    .line 421
    .line 422
    :pswitch_6
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 423
    .line 424
    const/16 v15, 0xff

    .line 425
    .line 426
    const/16 v16, 0x0

    .line 427
    .line 428
    const/4 v7, 0x0

    .line 429
    const/4 v8, 0x0

    .line 430
    const/4 v9, 0x0

    .line 431
    const/4 v10, 0x0

    .line 432
    const/4 v11, 0x0

    .line 433
    const/4 v12, 0x0

    .line 434
    const/4 v13, 0x0

    .line 435
    const/4 v14, 0x0

    .line 436
    invoke-direct/range {v6 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 437
    .line 438
    .line 439
    move-object v1, v6

    .line 440
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsLabelSchedules()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    if-nez v3, :cond_6

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_6
    move-object v2, v3

    .line 448
    :goto_6
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v11

    .line 452
    const/16 v19, 0x1fdf

    .line 453
    .line 454
    const/16 v20, 0x0

    .line 455
    .line 456
    const/4 v6, 0x0

    .line 457
    const/4 v7, 0x0

    .line 458
    const/4 v8, 0x0

    .line 459
    const/4 v9, 0x0

    .line 460
    const/4 v10, 0x0

    .line 461
    const/4 v12, 0x0

    .line 462
    const/4 v13, 0x0

    .line 463
    const/4 v14, 0x0

    .line 464
    const/4 v15, 0x0

    .line 465
    const/16 v16, 0x0

    .line 466
    .line 467
    const/16 v17, 0x0

    .line 468
    .line 469
    const/16 v18, 0x0

    .line 470
    .line 471
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 484
    .line 485
    .line 486
    goto :goto_8

    .line 487
    :pswitch_7
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 488
    .line 489
    const/16 v16, 0x1ff

    .line 490
    .line 491
    const/16 v17, 0x0

    .line 492
    .line 493
    const/4 v7, 0x0

    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v9, 0x0

    .line 496
    const/4 v10, 0x0

    .line 497
    const/4 v11, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    const/4 v13, 0x0

    .line 500
    const/4 v14, 0x0

    .line 501
    const/4 v15, 0x0

    .line 502
    invoke-direct/range {v6 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 503
    .line 504
    .line 505
    move-object v1, v6

    .line 506
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsQuickActionSchedules()Ljava/util/List;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    if-nez v3, :cond_7

    .line 511
    .line 512
    goto :goto_7

    .line 513
    :cond_7
    move-object v2, v3

    .line 514
    :goto_7
    invoke-static {v1, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    const/16 v19, 0x1fef

    .line 519
    .line 520
    const/16 v20, 0x0

    .line 521
    .line 522
    const/4 v6, 0x0

    .line 523
    const/4 v7, 0x0

    .line 524
    const/4 v8, 0x0

    .line 525
    const/4 v9, 0x0

    .line 526
    const/4 v11, 0x0

    .line 527
    const/4 v12, 0x0

    .line 528
    const/4 v13, 0x0

    .line 529
    const/4 v14, 0x0

    .line 530
    const/4 v15, 0x0

    .line 531
    const/16 v16, 0x0

    .line 532
    .line 533
    const/16 v17, 0x0

    .line 534
    .line 535
    const/16 v18, 0x0

    .line 536
    .line 537
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 550
    .line 551
    .line 552
    :goto_8
    sget-object v4, Lbe8;->a:Lbe8;

    .line 553
    .line 554
    :goto_9
    return-object v4

    .line 555
    :pswitch_8
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v1, Lmt3;

    .line 558
    .line 559
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v0, Lry5;

    .line 562
    .line 563
    invoke-interface {v1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    sget-object v0, Lbe8;->a:Lbe8;

    .line 567
    .line 568
    return-object v0

    .line 569
    :pswitch_9
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 572
    .line 573
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 574
    .line 575
    move-object v2, v0

    .line 576
    check-cast v2, Lokhttp3/internal/http2/Http2Stream;

    .line 577
    .line 578
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->a:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 579
    .line 580
    invoke-virtual {v0, v2}, Lokhttp3/internal/http2/Http2Connection$Listener;->c(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .line 582
    .line 583
    goto :goto_a

    .line 584
    :catch_0
    move-exception v0

    .line 585
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 586
    .line 587
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 588
    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v5, "Http2Connection.Listener failure for "

    .line 592
    .line 593
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    const/4 v4, 0x4

    .line 606
    invoke-virtual {v3, v4, v1, v0}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    .line 608
    .line 609
    :try_start_1
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 610
    .line 611
    invoke-virtual {v2, v1, v0}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    .line 613
    .line 614
    :catch_1
    :goto_a
    sget-object v0, Lbe8;->a:Lbe8;

    .line 615
    .line 616
    return-object v0

    .line 617
    :pswitch_a
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v1, Lin3;

    .line 620
    .line 621
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v0, Lq63;

    .line 624
    .line 625
    new-instance v2, Lhn3;

    .line 626
    .line 627
    invoke-virtual {v1, v0}, Lin3;->j(Lq63;)Lzn7;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1}, Lin3;->l()Ljava/util/List;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-direct {v2, v3, v1, v0}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 639
    .line 640
    .line 641
    return-object v2

    .line 642
    :pswitch_b
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v1, Lmk2;

    .line 645
    .line 646
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v0, Ljava/lang/String;

    .line 649
    .line 650
    sget-object v2, Lbe8;->a:Lbe8;

    .line 651
    .line 652
    iget-object v5, v1, Lmk2;->k:Lex6;

    .line 653
    .line 654
    new-instance v6, Lak2;

    .line 655
    .line 656
    const/4 v7, 0x2

    .line 657
    invoke-direct {v6, v7, v4}, Lak2;-><init>(ILjava/util/List;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v5, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    iget-object v5, v1, Lmk2;->j:Lex6;

    .line 664
    .line 665
    sget-object v6, Lbk2;->a:Lbk2;

    .line 666
    .line 667
    invoke-virtual {v5, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    iget-object v5, v1, Lmk2;->l:Lex6;

    .line 671
    .line 672
    new-instance v6, Lyj2;

    .line 673
    .line 674
    sget-object v7, Lxj2;->Loading:Lxj2;

    .line 675
    .line 676
    invoke-direct {v6, v7}, Lyj2;-><init>(Lxj2;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v5, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    sget-object v5, Lmp6;->a:Lmp6;

    .line 683
    .line 684
    const/4 v6, 0x3

    .line 685
    invoke-static {v5, v3, v3, v6}, Lmp6;->d(Lmp6;ZZI)Z

    .line 686
    .line 687
    .line 688
    sget-object v5, Lg00;->a:Lg00;

    .line 689
    .line 690
    invoke-static {}, Lai8;->b()V

    .line 691
    .line 692
    .line 693
    invoke-static {v3, v0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    if-eqz v3, :cond_8

    .line 698
    .line 699
    sget-object v4, Lji;->Companion:Lji$a;

    .line 700
    .line 701
    invoke-virtual {v4, v3}, Lji$a;->fromPackageInfo(Landroid/content/pm/PackageInfo;)Lji;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    :cond_8
    if-nez v4, :cond_9

    .line 706
    .line 707
    sget-object v3, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 708
    .line 709
    invoke-static {v0}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    if-eqz v3, :cond_9

    .line 714
    .line 715
    invoke-static {v3}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    check-cast v3, Lhk;

    .line 720
    .line 721
    if-eqz v3, :cond_9

    .line 722
    .line 723
    sget-object v4, Lji;->Companion:Lji$a;

    .line 724
    .line 725
    invoke-virtual {v3}, Lhk;->v()Lq63;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v4, v3}, Lji$a;->fromMetadataFile(Lq63;)Lji;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    :cond_9
    if-nez v4, :cond_c

    .line 734
    .line 735
    invoke-static {}, Lai8;->h()Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-nez v3, :cond_a

    .line 740
    .line 741
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 742
    .line 743
    const/4 v9, 0x4

    .line 744
    const/4 v10, 0x0

    .line 745
    const-string v6, "AppUtil"

    .line 746
    .line 747
    const-string v7, "createAppFromPackage: Internet not working or unavailable"

    .line 748
    .line 749
    const/4 v8, 0x0

    .line 750
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    goto :goto_b

    .line 754
    :cond_a
    sget-object v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 755
    .line 756
    invoke-virtual {v3, v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fetchForPackage(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    if-eqz v3, :cond_b

    .line 765
    .line 766
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 767
    .line 768
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v3}, Lwc2;->c()Lxc2;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-static {v3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    const/4 v9, 0x4

    .line 781
    const/4 v10, 0x0

    .line 782
    const-string v6, "AppUtil"

    .line 783
    .line 784
    const/4 v8, 0x0

    .line 785
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 786
    .line 787
    .line 788
    :cond_b
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getAppCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    if-eqz v3, :cond_c

    .line 793
    .line 794
    sget-object v3, Lji;->Companion:Lji$a;

    .line 795
    .line 796
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getAppCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-virtual {v3, v0}, Lji$a;->fromCloudBackups(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;)Lji;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    :cond_c
    :goto_b
    if-nez v4, :cond_d

    .line 805
    .line 806
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 807
    .line 808
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    const v3, 0x7f1303d6

    .line 813
    .line 814
    .line 815
    invoke-static {v0, v3}, Lai8;->m(Landroid/content/Context;I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1}, Lqo0;->d()V

    .line 819
    .line 820
    .line 821
    goto :goto_c

    .line 822
    :cond_d
    new-instance v0, Llx;

    .line 823
    .line 824
    invoke-direct {v0, v1, v4}, Llx;-><init>(Lmk2;Lji;)V

    .line 825
    .line 826
    .line 827
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 828
    .line 829
    .line 830
    :goto_c
    return-object v2

    .line 831
    :pswitch_c
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v1, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 834
    .line 835
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v0, Lorg/json/JSONException;

    .line 838
    .line 839
    invoke-static {v1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$p2ejyZfFzISnqWGB5xuk0Ww1tK8(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lorg/json/JSONException;)Lbe8;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    return-object v0

    .line 844
    :pswitch_d
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 845
    .line 846
    check-cast v1, Lmt3;

    .line 847
    .line 848
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v0, Llh6;

    .line 851
    .line 852
    invoke-static {v1, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->$r8$lambda$frtSp-QNAEdzTZHBCRu3VcqA-Pg(Lmt3;Llh6;)Lbe8;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    return-object v0

    .line 857
    :pswitch_e
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 858
    .line 859
    check-cast v1, Ljava/util/List;

    .line 860
    .line 861
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast v0, Ljava/lang/String;

    .line 864
    .line 865
    new-instance v3, Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .line 869
    .line 870
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    :cond_e
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    if-eqz v4, :cond_f

    .line 879
    .line 880
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v4

    .line 884
    check-cast v4, Ljava/lang/String;

    .line 885
    .line 886
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 887
    .line 888
    .line 889
    move-result-object v4

    .line 890
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    invoke-static {v4}, Lnq7;->c0(Ljava/lang/String;)Ljava/lang/Character;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    if-eqz v4, :cond_e

    .line 899
    .line 900
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    goto :goto_d

    .line 904
    :cond_f
    const/4 v7, 0x0

    .line 905
    const/16 v8, 0x3e

    .line 906
    .line 907
    const-string v4, ""

    .line 908
    .line 909
    const/4 v5, 0x0

    .line 910
    const/4 v6, 0x0

    .line 911
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    invoke-static {v1, v0, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    return-object v0

    .line 924
    :pswitch_f
    iget-object v1, v0, Lyq;->b:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v1, Lil0;

    .line 927
    .line 928
    iget-object v0, v0, Lyq;->c:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v0, Ljava/lang/Exception;

    .line 931
    .line 932
    sget-boolean v5, Lcr;->c:Z

    .line 933
    .line 934
    if-eqz v5, :cond_10

    .line 935
    .line 936
    invoke-virtual {v1}, Lil0;->H()V

    .line 937
    .line 938
    .line 939
    :cond_10
    new-instance v5, Lcw5;

    .line 940
    .line 941
    const v6, 0x7f130222

    .line 942
    .line 943
    .line 944
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v6

    .line 948
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    .line 950
    .line 951
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-direct {v5, v6, v0}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    sget-object v6, Lar;->STATUS_FAILURE:Lar;

    .line 959
    .line 960
    sget-object v7, Lcr;->e:Lmt3;

    .line 961
    .line 962
    sget-object v8, Lcr;->f:Lmt3;

    .line 963
    .line 964
    sput-object v4, Lcr;->a:Ljava/lang/ref/WeakReference;

    .line 965
    .line 966
    sput-boolean v3, Lcr;->b:Z

    .line 967
    .line 968
    sput-boolean v2, Lcr;->c:Z

    .line 969
    .line 970
    sput-boolean v2, Lcr;->d:Z

    .line 971
    .line 972
    sput-object v4, Lcr;->e:Lmt3;

    .line 973
    .line 974
    sput-object v4, Lcr;->f:Lmt3;

    .line 975
    .line 976
    if-eqz v7, :cond_11

    .line 977
    .line 978
    invoke-interface {v7, v5}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    goto :goto_e

    .line 982
    :cond_11
    sget-object v2, Lzn4;->a:Lzn4;

    .line 983
    .line 984
    new-instance v2, Lcv;

    .line 985
    .line 986
    const/16 v3, 0xe

    .line 987
    .line 988
    invoke-direct {v2, v3, v1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 992
    .line 993
    .line 994
    if-eqz v8, :cond_12

    .line 995
    .line 996
    invoke-interface {v8, v6}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    :cond_12
    :goto_e
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1000
    .line 1001
    return-object v0

    .line 1002
    nop

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :pswitch_data_1
    .packed-switch 0x1
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
