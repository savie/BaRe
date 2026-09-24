.class public final synthetic Lnu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnu;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lnu;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lah8;

    .line 12
    .line 13
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lah8;->Companion:Lah8$a;

    .line 19
    .line 20
    invoke-static {p0, p1, v3, v0, v3}, Lah8$a;->updateInDatabase$default(Lah8$a;Lah8;Lbt3;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :pswitch_0
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->e(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_1
    check-cast p1, Lzk3;

    .line 32
    .line 33
    sget p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p0, p1, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_3
    check-cast p1, Ljava/lang/Byte;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 58
    .line 59
    .line 60
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "%02x"

    .line 69
    .line 70
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x6

    .line 81
    const/16 v0, 0x2f

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v2, p0, p1}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-gez p0, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    add-int/2addr p0, v1

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p0, ".so"

    .line 97
    .line 98
    invoke-static {p1, p0, v2}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string p0, "/../"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_0
    return-object p1

    .line 112
    :pswitch_5
    check-cast p1, Lgb7;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p0, p1, Lgb7;->a:Lfb7;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_6
    check-cast p1, Lbt3;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    sget-object p0, Lzn4;->a:Lzn4;

    .line 130
    .line 131
    new-instance p0, Ltm;

    .line 132
    .line 133
    invoke-direct {p0, p1, v3, v0}, Ltm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 137
    .line 138
    .line 139
    return-object v2

    .line 140
    :pswitch_7
    check-cast p1, Lwz3;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object p0, p1, Lwz3;->b:Ljava/lang/Integer;

    .line 146
    .line 147
    if-eqz p0, :cond_2

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    const-string v0, "HTTP "

    .line 154
    .line 155
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const-string p0, "missing response"

    .line 161
    .line 162
    :goto_1
    iget-object v0, p1, Lwz3;->c:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_3

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    move-object v0, v3

    .line 172
    :goto_2
    const-string v1, ": "

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_4
    if-nez v3, :cond_5

    .line 181
    .line 182
    const-string v3, ""

    .line 183
    .line 184
    :cond_5
    iget-object p1, p1, Lwz3;->a:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {p1, v1, p0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :pswitch_8
    check-cast p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object p0, Lso5;->a:Lso5;

    .line 197
    .line 198
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    sget-object p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->Companion:Lmo5;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const-string p1, "notice_seen_id_"

    .line 211
    .line 212
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 217
    .line 218
    if-eqz p1, :cond_7

    .line 219
    .line 220
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    .line 226
    .line 227
    sget-object p0, Lso5;->d:Lex6;

    .line 228
    .line 229
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Ljava/util/List;

    .line 234
    .line 235
    if-nez p1, :cond_6

    .line 236
    .line 237
    sget-object p1, Lov2;->a:Lov2;

    .line 238
    .line 239
    :cond_6
    invoke-virtual {p0, p1}, Lex6;->l(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-object v2

    .line 243
    :cond_7
    const-string p0, "editor"

    .line 244
    .line 245
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v3

    .line 249
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    invoke-static {p0}, Ld01;->a(I)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    return-object p0

    .line 264
    :pswitch_a
    check-cast p1, Lji;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lji;->isCloudApp()Z

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    if-eqz p0, :cond_8

    .line 274
    .line 275
    invoke-virtual {p1}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    if-eqz p0, :cond_9

    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    if-eqz p0, :cond_9

    .line 286
    .line 287
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackedUpOrUpdated()J

    .line 288
    .line 289
    .line 290
    move-result-wide p0

    .line 291
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    goto :goto_3

    .line 296
    :cond_8
    invoke-virtual {p1}, Lji;->getDateBackedUpOrUpdated()Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :cond_9
    :goto_3
    return-object v3

    .line 301
    :pswitch_b
    check-cast p1, Lmx;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object p0, p1, Lmx;->a:Lji;

    .line 307
    .line 308
    iget-object p1, p1, Lmx;->h:Lgv7;

    .line 309
    .line 310
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Ljava/lang/Number;

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-lez p1, :cond_a

    .line 321
    .line 322
    move-object v3, p0

    .line 323
    :cond_a
    return-object v3

    .line 324
    :pswitch_c
    check-cast p1, Lsu;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    sget-object p0, Lav;->a:Lgv7;

    .line 330
    .line 331
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    check-cast p0, Ljava/util/Map;

    .line 336
    .line 337
    iget-object p1, p1, Lsu;->a:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    check-cast p0, Ljava/lang/Integer;

    .line 344
    .line 345
    if-eqz p0, :cond_b

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_b
    const p0, 0x7fffffff

    .line 349
    .line 350
    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    :goto_4
    return-object p0

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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
