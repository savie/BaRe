.class public final synthetic Llj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Llj2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Llj2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Llj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Llj2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Llj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Llj2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lgd6;

    .line 13
    .line 14
    check-cast v2, Lid6;

    .line 15
    .line 16
    check-cast p1, Lhd6;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lhd6;->a:Lzc6;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lgm7;->q(Ljl0;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 33
    .line 34
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iget-object v0, p2, Lzc6;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "ID_BACKUP_ALL_APPS"

    .line 41
    .line 42
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    invoke-static {p0, v3}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_0
    iget-object v0, p2, Lzc6;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "ID_BACKUP_SYNC_APPS"

    .line 55
    .line 56
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    invoke-static {p0, v3}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_1
    if-nez p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p2, Lzc6;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p0, p1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p2, Lzc6;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p0, p1}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_0
    invoke-virtual {v2, p0}, Lid6;->H(Ljava/util/Set;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :pswitch_0
    check-cast p0, Lli4;

    .line 86
    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 90
    .line 91
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    :try_start_0
    invoke-virtual {p0, v2}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, v2}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;)Ljava/util/Vector;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lli4;->F(Ljava/util/Vector;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    const/16 v0, 0xa

    .line 118
    .line 119
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 141
    .line 142
    invoke-static {v0, p2}, Log1;->f(Lcom/jcraft/jsch/ChannelSftp$LsEntry;Ljava/lang/String;)Lpg1;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move-object p0, v0

    .line 152
    invoke-static {p0}, Lli4;->z(Ljava/lang/Exception;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_3

    .line 157
    .line 158
    const-string p1, "JschService"

    .line 159
    .line 160
    const-string p2, "list"

    .line 161
    .line 162
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 166
    .line 167
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string p1, "list: "

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const/4 v4, 0x4

    .line 178
    const/4 v5, 0x0

    .line 179
    const-string v1, "JschService"

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    sget-object p1, Lov2;->a:Lov2;

    .line 186
    .line 187
    :cond_4
    return-object p1

    .line 188
    :pswitch_1
    check-cast p0, Lqk3;

    .line 189
    .line 190
    iget-object v0, p0, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 191
    .line 192
    check-cast v2, Ljava/util/List;

    .line 193
    .line 194
    check-cast p1, Llk3;

    .line 195
    .line 196
    check-cast p2, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object p2, p1, Llk3;->a:Ljava/lang/String;

    .line 205
    .line 206
    const-string v3, "New folder setup"

    .line 207
    .line 208
    invoke-static {p2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_5

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance p1, Landroid/content/Intent;

    .line 218
    .line 219
    const-class p2, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 220
    .line 221
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .line 223
    .line 224
    const/16 p2, 0x137b

    .line 225
    .line 226
    invoke-virtual {v0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lqk3;->j()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    invoke-static {p2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-nez p2, :cond_6

    .line 238
    .line 239
    iget p2, p1, Llk3;->e:I

    .line 240
    .line 241
    if-lez p2, :cond_8

    .line 242
    .line 243
    :cond_6
    invoke-virtual {p1}, Llk3;->c()Z

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    if-eqz p2, :cond_7

    .line 248
    .line 249
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 250
    .line 251
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_7

    .line 256
    .line 257
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 258
    .line 259
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lqk3;->j()V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_7
    sget p2, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 267
    .line 268
    invoke-static {v0, p1, v2}, Llg7;->G(Lil0;Llk3;Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lqk3;->j()V

    .line 272
    .line 273
    .line 274
    :cond_8
    :goto_2
    return-object v1

    .line 275
    :pswitch_2
    check-cast p0, Lyj2;

    .line 276
    .line 277
    check-cast v2, Lpj2;

    .line 278
    .line 279
    check-cast p1, Lcw7;

    .line 280
    .line 281
    check-cast p2, Lgk2;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lyj2;->b:Ljava/util/List;

    .line 290
    .line 291
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    const/4 v0, 0x0

    .line 300
    if-eqz p2, :cond_a

    .line 301
    .line 302
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    move-object v3, p2

    .line 307
    check-cast v3, Lwj2;

    .line 308
    .line 309
    iget-object v3, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 310
    .line 311
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iget-object v4, p1, Lcw7;->a:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_9

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_a
    move-object p2, v0

    .line 325
    :goto_3
    check-cast p2, Lwj2;

    .line 326
    .line 327
    if-eqz p2, :cond_b

    .line 328
    .line 329
    iget-object p0, v2, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 330
    .line 331
    iget-object p1, p2, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 332
    .line 333
    new-instance p2, Loj;

    .line 334
    .line 335
    const/4 v2, 0x2

    .line 336
    invoke-direct {p2, v2, v0, p0, p1}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 340
    .line 341
    .line 342
    :cond_b
    return-object v1

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
