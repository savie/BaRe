.class public final synthetic Lnj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lnj2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lnj2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lnj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnj2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object v3, p0, Lnj2;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lnj2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lji7;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    check-cast p1, Lwm2;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, v3}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lps6;->c:Lps6;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lwm2;->I:Lb05;

    .line 33
    .line 34
    invoke-virtual {p1, p0, v0, v1}, Lwm2;->h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    sget-object v0, Lps6;->b:Lps6;

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lwm2;->J:Lsl4;

    .line 47
    .line 48
    invoke-virtual {p1, p0, v0, v1}, Lwm2;->h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object p0, Lih1;->Missing:Lih1;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lih1;->Exists:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    const-string p1, "SmbService"

    .line 64
    .line 65
    const-string v0, "getMetadataPathExistence"

    .line 66
    .line 67
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 71
    .line 72
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "getMetadataPathExistence: "

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v5, 0x4

    .line 83
    const/4 v6, 0x0

    .line 84
    const-string v2, "SmbService"

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 91
    .line 92
    :goto_1
    return-object p0

    .line 93
    :pswitch_0
    check-cast p0, Ljd0;

    .line 94
    .line 95
    check-cast v3, Liz6;

    .line 96
    .line 97
    check-cast p1, Lz84;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 103
    .line 104
    invoke-static {p0, v3, p1}, Lmz6;->i(Ljd0;Liz6;Lz84;)Ljz6;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_1
    check-cast p0, Lqo5;

    .line 110
    .line 111
    check-cast v3, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 112
    .line 113
    check-cast p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 114
    .line 115
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->isLinkOnly()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-object p0, p0, Lgm7;->d:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v0, Ld11;

    .line 129
    .line 130
    const/16 v4, 0xd

    .line 131
    .line 132
    invoke-direct {v0, v4, v3, p1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const/16 p1, 0xa

    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    invoke-static {p0, v1, v3, v0, p1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getTitle()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 163
    .line 164
    const-class v1, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 165
    .line 166
    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "extra_title"

    .line 170
    .line 171
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const-string v0, "extra_message"

    .line 176
    .line 177
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_2
    return-object v2

    .line 188
    :pswitch_2
    move-object v4, p0

    .line 189
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 190
    .line 191
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 192
    .line 193
    check-cast p1, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    sget p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 199
    .line 200
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/b;->d(Ljava/lang/Integer;)I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const/4 v8, 0x5

    .line 214
    const/4 v9, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v7, 0x0

    .line 217
    invoke-static/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/settings/k;->k(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 226
    .line 227
    .line 228
    return-object v2

    .line 229
    :pswitch_3
    check-cast p0, Ljava/util/TreeMap;

    .line 230
    .line 231
    check-cast v3, Ljava/util/ArrayList;

    .line 232
    .line 233
    check-cast p1, Lza5;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    iget-object v0, p1, Lza5;->c:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_5

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Lbb5;

    .line 255
    .line 256
    iget v4, v1, Lbb5;->a:I

    .line 257
    .line 258
    iget-object v1, v1, Lbb5;->b:[B

    .line 259
    .line 260
    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_5
    iget v0, p1, Lza5;->a:I

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object p1, p1, Lza5;->b:[B

    .line 271
    .line 272
    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    return-object v2

    .line 276
    :pswitch_4
    check-cast p0, Lqj2;

    .line 277
    .line 278
    check-cast v3, Lzj2;

    .line 279
    .line 280
    move-object v5, p1

    .line 281
    check-cast v5, Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget-object v4, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 287
    .line 288
    sget-object v6, Liu;->MEDIA:Liu;

    .line 289
    .line 290
    iget-object p0, v3, Lzj2;->a:Liz4;

    .line 291
    .line 292
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    iget-object v7, p0, Lgm;->a:Lhk;

    .line 297
    .line 298
    iget-boolean p0, v3, Lzj2;->l:Z

    .line 299
    .line 300
    iget-object p1, v3, Lzj2;->m:Ljava/lang/String;

    .line 301
    .line 302
    if-eqz p0, :cond_6

    .line 303
    .line 304
    move-object v9, p1

    .line 305
    goto :goto_4

    .line 306
    :cond_6
    move-object v9, v1

    .line 307
    :goto_4
    const/4 v8, 0x0

    .line 308
    invoke-virtual/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-object v2

    .line 312
    :pswitch_5
    check-cast p0, Lpj2;

    .line 313
    .line 314
    check-cast v3, Lwj2;

    .line 315
    .line 316
    move-object v5, p1

    .line 317
    check-cast v5, Landroid/view/View;

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object v4, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 323
    .line 324
    sget-object v6, Liu;->DATA:Liu;

    .line 325
    .line 326
    iget-object v8, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 327
    .line 328
    iget-boolean p0, v3, Lwj2;->f:Z

    .line 329
    .line 330
    iget-object p1, v3, Lwj2;->g:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz p0, :cond_7

    .line 333
    .line 334
    move-object v9, p1

    .line 335
    goto :goto_5

    .line 336
    :cond_7
    move-object v9, v1

    .line 337
    :goto_5
    const/4 v7, 0x0

    .line 338
    invoke-virtual/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-object v2

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
